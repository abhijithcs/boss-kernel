/*
 * Core SOA file.
 * Stores definitions of publish, find and bind for different SOA classes
 */

#include <linux/soa.h>

#include <c++/begin_include.h>
#include <linux/slab.h>
#include <linux/gfp.h>
#include <c++/end_include.h>
#include <linux/sched/rt.h>

#define NICE_TO_PRIO(nice)	(MAX_RT_PRIO + (nice) + 20)
////////////////////////////////////////////////////////////////////////////////////////////////
/*
 * Definition of members of 'keyword_manager' class
 */

struct primes_entry keyword_manager::primes_table[];
int keyword_manager::size=0;
unsigned int keyword_manager::last_prime=0;
spinlock_t keyword_manager::kw_list_lock;

int keyword_manager::insert_keyword(const char *keyword) {
	char *retval;
	unsigned int prime_val, existent_prime;

	prime_val = get_next_prime(last_prime);

	if(size == 0) {
		spin_lock_init(&kw_list_lock);
	}

	if (size >= max_keywords) {
		printk("Can't add anymore keywords for any service!! Please increase value of 'max_keywords' in class keyword_manager\n");
		return -1;
	}

	spin_lock(&kw_list_lock);
	while((retval = strsep(&keyword,"/"))) {
		existent_prime = 0;
		existent_prime = get_prime_from_keyword(retval);
		if(existent_prime > 0 ) {
			//printk("Existent prime while inserting a keyword for a service!");
			spin_unlock(&kw_list_lock);
			return 0;
		}

		primes_table[size].keyword = NULL;
		primes_table[size].keyword = kstrdup(retval, GFP_KERNEL);//kmalloc(strlen(retval), GFP_KERNEL);
		if (primes_table[size].keyword == NULL) {
			printk("Can't allocate memory for storing keywords of service description!!\n");
			spin_unlock(&kw_list_lock);
			return -1;
		}
		//strcpy(primes_table[size].keyword, retval);
		primes_table[size].prime = prime_val;
		size++;
	}
	last_prime = prime_val;
	spin_unlock(&kw_list_lock);
	return 0;
}

unsigned int keyword_manager::get_prime_from_keyword(const char *keyword) {
	int i;
	int len= strlen(keyword);
	for(i=0; i<size; i++) {
		if (strnicmp(primes_table[i].keyword, keyword, len) == 0) {
			return primes_table[i].prime;
		}
	}
	/*
	 * Indicates failure in finding the prime number!
	 */
	return 0;
}

unsigned int keyword_manager::get_next_prime(unsigned int prev_prime) {
	int i,j,brk;
	switch(prev_prime)
	{
		case 1: return 2;
		case 2: return 3;
		case 3: return 5;
	}
	if(prev_prime%2==0)
		prev_prime++;
	else
		prev_prime+=2;

	for(i=prev_prime;;i+=2) {
		brk=0;
		for(j=2;j<=(i/2)+1;j++)
			if(i%j==0){
				brk=1;
				break;
			}
		if(brk==0)
			break;
	}
	return i;
}
////////////////////////////////////////////////////////////////////////////////////////////////

unsigned short soa_class::reg_size = 0;
class st_desc * soa_class::registry[];

int soa_class::register_service_type(int service_type_index, void * service_type)
{
	if(service_type_index >= NR_SERVICE_TYPES)
	{
		printk("Can't add service types anymore! Please increase NR_SERVICE_TYPES.\n");
		return -1;
	}
	registry[service_type_index]= (class st_desc*)service_type;
	return 0;
}

static class soa_class * soa_class::find_service_type(const char *subsys, const char *capability) {
	int i, len_subsys, len_cap;
	len_subsys = strlen(subsys);
	len_cap = strlen(capability);

	if(subsys == NULL || capability ==NULL)
		return NULL;
	for(i=0; i<NR_SERVICE_TYPES; i++) {
		if(registry[i] == NULL || registry[i]->subsystem ==NULL || registry[i]->capability ==NULL)
			return NULL;
		if(strnicmp(registry[i]->subsystem, subsys, len_subsys)==0)
			if(strnicmp(registry[i]->capability, capability, len_cap)==0)
				return registry[i]->st_obj_ptr;
	}
	return NULL;
}
/////////////////////////////////////////////////////////////////////////////////////////////

static struct si_desc *sched_soa_class::sched_si_desc_list;

__attribute__ ((constructor(101))) sched_soa_class::sched_soa_class() {
//	static struct st_desc sched_st_desc;
//	static char subsys[25], capab[25];
//	sched_st_desc.subsystem = subsys;
//	sched_st_desc.capability = capab;
////	sched_st_desc.subsystem = sched_st_desc.capability =  NULL; //sched_st_desc.attr_val_wt_list =
////	sched_st_desc.subsystem = kmalloc(sizeof(char)*25, GFP_KERNEL);
////	sched_st_desc.capability = kmalloc(sizeof(char)*25, GFP_KERNEL);
////	if(sched_st_desc.subsystem == NULL || sched_st_desc.capability == NULL)
////		return;
//
//	strcpy(sched_st_desc.subsystem, "process_management");
//	strcpy(sched_st_desc.capability, "process_scheduling");
//	sched_st_desc.st_obj_ptr = this;
//
//	registry[reg_size++] = &sched_st_desc;
}

static struct st_desc sched_st_desc;
class sched_soa_class __attribute__ ((__section__ (".sched.data"))) sched_soa_class_service_type_obj ;
static int __init initialize_sched_service_type() {

		sched_st_desc.subsystem = sched_st_desc.capability =  NULL; //sched_st_desc.attr_val_wt_list =
//		sched_st_desc.subsystem = kmalloc_track_caller(sizeof(char)*25, GFP_KERNEL);
//		sched_st_desc.capability = kmalloc_track_caller(sizeof(char)*25, GFP_KERNEL);
		sched_st_desc.subsystem = kstrdup("process_management", GFP_KERNEL);
		sched_st_desc.capability = kstrdup("process_scheduling", GFP_KERNEL);

		if(sched_st_desc.subsystem == NULL || sched_st_desc.capability == NULL)
			return;

//		strcpy(sched_st_desc.subsystem, "process_management");
//			strcpy(sched_st_desc.capability, "process_scheduling");
			sched_st_desc.st_obj_ptr = &sched_soa_class_service_type_obj;

			sched_soa_class::registry[sched_soa_class::reg_size++] = &sched_st_desc;
			return 0;
}
core_initcall(initialize_sched_service_type);

int sched_soa_class::__publish_service(int nr_args, int service_type, void *service_instance_sched,...)
{
	int start_prio, end_prio,i, j;
	struct si_desc *service_inst_desc,*temp_si_desc;
	static class soa_class * st_ptr;
	class keyword_manager keywd_mgr_obj;
	unsigned int primes_prod;

	/*
	 * A LITTLE HOUSE-KEEPING FOR VARIABLE NUMBER OF ARGUMENTS
	 */
	va_list args;
	va_start(args, nr_args);

//	start_prio = va_arg(args, int);
//	end_prio = va_arg(args, int);

	service_inst_desc = va_arg(args, struct si_desc *);
	va_end(args);

	if(service_inst_desc == NULL)
	{
			printk("Service_inst_desc is NULL. Publishing service failed.\n");
			return -1;
	}
	/*
	 * ACTUAL FUNCTION TASKS:
	 */

	if (service_instance_sched==NULL)
	{
		printk("service_instance_sched NULL. Publishing service failed.\n");
		return -1;
	}
	if(service_type >= NR_SERVICE_TYPES)
	{
		printk("No such service types. Publishing service failed.\n");
		return -1;
	}
	static struct prio_desc *prio_desc_sched;
	prio_desc_sched= kmalloc_track_caller(sizeof(struct prio_desc), GFP_KERNEL);
	if(prio_desc_sched == NULL)
	{
		printk("Could not allocate memory for new prio desc. Publishing service failed.\n");
		return -1;
	}

//		subsys = va_arg(args, char *);
//	capability = va_arg(args, char *);
//	/*
//	 * Finding appropriate service type from subsystem and capability specified.
//	 */
//	st_ptr = soa_class::find_service_type(subsys, capability);
//	if(st_ptr == NULL)
//	{
//		printk("No service type was found for given subsystem and capability. Publishing service failed.\n");
//				return -1;
//	}

	/*
	 * Extracting service_instance's specific information from attr_value_list
	 */
	for(i=0; i<service_inst_desc->attr_val_list_len; i++) {
		if(strcmp(service_inst_desc->attr_val_wt_list[i].attr, "start_prio")==0)
			start_prio = *((int *)service_inst_desc->attr_val_wt_list[i].val);
		if(strcmp(service_inst_desc->attr_val_wt_list[i].attr, "end_prio")==0)
			end_prio = *((int *)service_inst_desc->attr_val_wt_list[i].val);
	}


	/*
	 * Inserting all the keywords into the list of keywords-primes.
	 * Calculating product of primes of primes corresponding to every keyword.
	 * Storing the keyword_prime_product in si_desc structure.
	 */
	primes_prod = 1;
	for(i=0; i<service_inst_desc->keyword_list_len; i++) {
		if(keywd_mgr_obj.insert_keyword(service_inst_desc->keyword_wt_list[i].keyword) != -1)
			primes_prod *= keywd_mgr_obj.get_prime_from_keyword(service_inst_desc->keyword_wt_list[i].keyword);
	}
	service_inst_desc->kw_prime_prod = primes_prod;

	/*
	 * Inserting given si_desc in list of sched_si_desc;
	 */

	if(sched_si_desc_list == NULL)
		sched_si_desc_list = service_inst_desc;
	else {
		temp_si_desc = sched_si_desc_list;
		while(temp_si_desc->next != NULL)
			temp_si_desc = temp_si_desc->next;
		temp_si_desc->next =  service_inst_desc;
	}

	/*
	 * Initializing prio_desc data structure with the values extracted earlier
	 */
	prio_desc_sched->start_prio = start_prio;
	prio_desc_sched->end_prio = end_prio;
	prio_desc_sched->sched_policy = service_instance_sched;
	prio_desc_sched->prev=prio_desc_sched->next = NULL;

	//static struct prio_desc prio_desc_sched ={start_prio,end_prio,service_instance_sched, NULL, NULL};

	class mool_scheduler *sched_obj=NULL;
	prio_manager::add_prio_node(prio_desc_sched);
	if(sched_classes==NULL)
	{
		sched_classes=service_instance_sched;
		return 0;
	}

	/*
	 * If already in-place service instance is encountered, do not insert it again and return
	 */
	for (sched_obj = sched_classes; sched_obj != NULL; sched_obj = sched_obj->next)
		if(sched_obj == service_instance_sched)
			return 0;

	sched_obj = prio_manager::get_prev_sched_pol(start_prio, end_prio); // ALWAYS CALL get_prev_sched_pol() _AFTER_ add_prio_node()
	if(sched_obj==NULL)
	{
		printk("Could not find a suitable place to place given service instance. Publishing service failed.\n");
		return -1;
	}
	if(sched_obj->next!=NULL)
		((class mool_scheduler *)service_instance_sched)->next=sched_obj->next;
	else
		((class mool_scheduler *)service_instance_sched)->next=NULL;
	sched_obj->next= service_instance_sched;
	return 0;

}

/*
 * Wrapper for __publish_service.
 * Makes sure that variable number of arguments are passed correctly.
 */
int sched_soa_class::publish_service(int service_type, void *service_instance_sched, int start_prio, int end_prio) {
	return __publish_service(2, service_type, service_instance_sched, start_prio, end_prio);
}

void *sched_soa_class::__find_service(int nr_args, int service_type, ...) {

	int primes_prod = 1;
	int max_ser_inst = 0,nr_si_found = 0;
	int i = 0,j;
	unsigned int *gcd_list;
	struct si_desc *temp_si_desc;
	static struct si_desc **ret_list;
	int min_gcd_index = -1;
	unsigned int min_gcd,curr_gcd;
	unsigned int remainder,temp_num;

	/*
	 * A LITTLE HOUSE-KEEPING FOR VARIABLE NUMBER OF ARGUMENTS
	 */
	va_list args;
	va_start(args, nr_args);
	primes_prod = va_arg(args, int);
	max_ser_inst = va_arg(args, int);
	va_end(args);

	/*
	 * Actual function tasks:
	 */

	gcd_list = NULL;
	gcd_list = kmalloc(sizeof(unsigned int)*max_ser_inst, GFP_KERNEL);
	ret_list = kmalloc(sizeof(struct si_desc *)*max_ser_inst, GFP_USER);

	if(gcd_list == NULL || ret_list==NULL) {
		printk("Can't allocate memory in sched_soa_class::__find_service()!!\n");
		return;
	}
	for(i=0; i<max_ser_inst; i++) {
		*(gcd_list+i) = 0;
		*(ret_list+i) = NULL;
	}

	i=0;
	temp_si_desc = sched_si_desc_list;
	/*
	 * Maintain a list of SIs of size max_ser_inst, in descending order of GCD of products of primes of SI_request and SI_available.
	 * Return default SI if none of the SI_available matches.
	 */
	while(temp_si_desc) {

		/*
		 * Finding GCD of products of primes of SI_req and SI_avail
		 */
		temp_num = temp_si_desc->kw_prime_prod;
		do {
			remainder = primes_prod % temp_num;
			if(remainder == 0) {
				curr_gcd = temp_num;
				break;
			}
			else {
				primes_prod = temp_num;
				temp_num = remainder;
			}
		} while(remainder != 0);

		/*
		 * Checking if the current SI_avail will be short-listed or not
		 */
		min_gcd_index = -1;
		min_gcd = *gcd_list;

		for(i=0;i<max_ser_inst;i++) {
			if(*(gcd_list+i) <= min_gcd) {
				min_gcd_index = i;
				min_gcd = *(gcd_list+i);
			}
		}

		if(min_gcd < curr_gcd) {
			*(gcd_list + min_gcd_index) = curr_gcd;
			*(ret_list + min_gcd_index) = temp_si_desc;
		}

		temp_si_desc = temp_si_desc->next;
	}
	/*
	 * Sorting the short-listed SI_avail descriptors based on number of keywords matched
	 */

	temp_si_desc=NULL;
	temp_num=0;

	for(i=0; i<max_ser_inst; i++) {
		for(j=0;j<i;j++) {
			if(*(gcd_list+i) > *(gcd_list+j)) {
				temp_num = *(gcd_list+i);
				*(gcd_list+i) = *(gcd_list+j);
				*(gcd_list+j) = temp_num;

				temp_si_desc = *(ret_list+i);
				*(ret_list+i) = *(ret_list+j);
				*(ret_list+j) = temp_si_desc;
			}
		}
	}

	/*
	 * Freeing gcd_list and returning the selected SI_avail_desc
	 */
	kfree(gcd_list);
	return ret_list;
}

int sched_soa_class::__bind_service(int nr_args, struct task_struct *p, void * service_instance, ...) {
	class mool_scheduler *sched_service_instance = (class mool_scheduler *)service_instance;
	class mool_scheduler *sched_service_instance_iterator = sched_classes;
	class mool_scheduler *temp_sched_obj;


	struct rq *rq;
	int on_rq;
	unsigned long flags;
	long nice;
	struct attr_val_wt *attr_val_list;
	int attr_val_list_len,i;

	/*
	 * A LITTLE HOUSE-KEEPING FOR VARIABLE NUMBER OF ARGUMENTS
	 */
	va_list args;
	va_start(args, nr_args);
	attr_val_list = va_arg(args, struct attr_val_wt *);
	attr_val_list_len = va_arg(args, int);
	va_end(args);


	for(i=0; i<attr_val_list_len; i++) {
		if(strcmp(attr_val_list->attr, "nice") ==0)
			nice = *((long *)attr_val_list->val);
	}
	/*
	 * Checking if requested service_instance is active or not and if it is,
	 * assigning service_instance to sched_class of the task
	 */
	for(;sched_service_instance_iterator != NULL;sched_service_instance_iterator = sched_service_instance_iterator->next) {
		if(sched_service_instance_iterator == sched_service_instance){
			temp_sched_obj = ((class mool_scheduler *)p->sched_class);
			rq = temp_sched_obj->task_rq_lock(p, &flags);
			temp_sched_obj->update_rq_clock(rq);
			on_rq = p->se.on_rq;
			if (on_rq) {
					//sched_obj_ptr
				temp_sched_obj->dequeue_task(rq, p, 0);
				//temp_sched_obj->dec_load(rq, p);
			}
			p->static_prio = NICE_TO_PRIO(nice);
			p->sched_class = sched_service_instance;
			temp_sched_obj = ((class mool_scheduler *)p->sched_class);
			if (on_rq) {
					//sched_obj_ptr->
				temp_sched_obj->enqueue_task(rq, p, 0);
				//temp_sched_obj->inc_load(rq, p);
					/*
					 * If the task increased its priority or is running and
					 * lowered its priority, then reschedule its CPU:
					 */
					//if (delta < 0 || (delta > 0 && task_running(rq, p)))
					//	resched_task(rq->curr);
			}
			temp_sched_obj->task_rq_unlock(rq,p,&flags);
			return 0;
		}
	}

	printk("Could not find the requested service_instance for binding. Binding failed!!\n");
	return -1;
}

void *sched_soa_class::find_service(int service_type, int start_prio, int end_prio) {

}
int sched_soa_class::bind_service(struct task_struct *p, void * service_instance) {

}

//class sched_soa_class __attribute__ ((__section__ (".sched.data"))) sched_soa_class_service_type_obj __attribute__ ((init_priority (101)));

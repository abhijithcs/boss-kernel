/*
 * soa_syscalls.cc
 *
 *  Created on: Jun 15, 2011
 *      Author: hemang
 */

#include <linux/soa.h>


asmlinkage long sys_find_service(struct service_request_desc __user *sr_req, struct service_reply_desc __user *sr_rep) {
	class soa_class *st_obj_ptr=NULL;
	int i;
	unsigned int primes_prod,prime;
	class keyword_manager kw_man_obj;

	if(sr_req==NULL)
		return -1;
	if(sr_req->capability==NULL || sr_req->subsystem==NULL || sr_req->keyword_list==NULL)
		return -1;

	/*
	 * Finding Service_type
	 */
	st_obj_ptr = soa_class::find_service_type(sr_req->subsystem,sr_req->capability);

	/*
	 * Finding product of primes corresponding to keywords of service_request
	 */

	primes_prod = 1;
	for(i=0; i<sr_req->keyword_list_len; i++)
		if((prime = kw_man_obj.get_prime_from_keyword(sr_req->keyword_list[i])) > 0)
			if(primes_prod % prime != 0) // To avoid repetition of keywords
				primes_prod *= prime;
	/*
	 * Finding suitable Service_instances, building service_reply structure
	 */
	sr_rep->si_desc_matched = st_obj_ptr->__find_service(2, 0, sr_req->max_ser_inst,primes_prod);
	sr_rep->st_obj_ptr = st_obj_ptr;

	return 0;
}

asmlinkage long sys_bind_service(struct service_reply_desc __user *sr_rep, struct attr_val_wt __user *attr_val_list, int attr_val_list_len) {

	int i;

	struct task_struct *current_proc;
	/*
	 * GET task_struct of the current process --> PENDING
	 */

	current_proc = current;
	// ASSUMING ONLY ONE SI_DESC PTR IS PASSED AS AN ARGUEMENT, AT THE FIRST LOCATION OF SI_DESC_MATCHED (LIST)
	return ((class soa_class *)sr_rep->st_obj_ptr)->__bind_service(2, current_proc, sr_rep->si_desc_matched[0]->si_obj_ptr, attr_val_list, attr_val_list_len);

}

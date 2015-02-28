class fair_sched_class_mool : public mool_scheduler
{

public:
fair_sched_class_mool();
/*scheduler_type schedType; 

scheduler_type getSchedulerType()
{
  return schedType;
}*/
	  void enqueue_task(struct rq *rq, struct task_struct *p, int flags);
	  void dequeue_task(struct rq *rq, struct task_struct *p, int flags);
	  void yield_task(struct rq *rq);
	  bool yield_to_task(struct rq *rq, struct task_struct *p, bool preempt);
	  void check_preempt_curr(struct rq *rq, struct task_struct *p, int flags);
	  struct task_struct * pick_next_task(struct rq *rq);
	  void put_prev_task(struct rq *rq, struct task_struct *p);
#ifdef CONFIG_SMP
	  int  select_task_rq(struct task_struct *p, int sd_flag, int flags);
	  void migrate_task_rq(struct task_struct *p, int next_cpu);
	  void task_waking(struct task_struct *task);
	  void rq_online(struct rq *rq);
	  void rq_offline(struct rq *rq);
#endif
	  void set_curr_task(struct rq *rq);
	  void task_tick(struct rq *rq, struct task_struct *p, int queued);
	  void task_fork(struct task_struct *p);
	  void switched_from(struct rq *this_rq, struct task_struct *task);
	  void switched_to(struct rq *this_rq, struct task_struct *task);
	  void prio_changed(struct rq *this_rq, struct task_struct *task,
			     int oldprio);
	  unsigned int get_rr_interval(struct rq *rq,
					 struct task_struct *task);
//#ifdef CONFIG_FAIR_GROUP_SCHED
	 // void task_move_group(struct task_struct *p, int on_rq);
//#endif
#ifdef CONFIG_SMP
void move_task(struct task_struct *p, struct lb_env *env);
#endif
};
//static __attribute__ ((__section__ (".sched.data"))) 
static class fair_sched_class_mool  *fair_sched_obj_ptr;
//static __attribute__ ((__section__ (".sched.data"))) class fair_sched_class_mool /*sched_obj,*/ *fair_sched_obj_ptr;
//static fair_sched_class_mool __attribute__ ((__section__ (".sched.data"))) fair_sched_class_mool_obj;
 DECLARE_PER_CPU_SHARED_ALIGNED(class fair_sched_class_mool, fair_object);

static __get_fair_sched_obj(int cpu)
{
	fair_sched_class_mool *fair_sched_obj_ptr_tmp;
	fair_sched_obj_ptr_tmp = &per_cpu(fair_object,cpu);
     if(fair_sched_obj_ptr_tmp->fair_sched_obj_ptr_in==NULL)
        {
	 fair_sched_obj_ptr_tmp->fair_sched_obj_ptr_in=new fair_sched_class_mool();
	}
        return fair_sched_obj_ptr_tmp->fair_sched_obj_ptr_in;
}


static  get_fair_sched_obj()
{
  return __get_fair_sched_obj(smp_processor_id());
}



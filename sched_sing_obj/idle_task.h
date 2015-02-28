
class idle_sched_class_mool : public mool_scheduler 
{
public:
idle_sched_class_mool();
/*scheduler_type schedType; 

scheduler_type getSchedulerType()
{
  return schedType;
}*/
	 void dequeue_task(struct rq *rq, struct task_struct *p, int flags);
	 void check_preempt_curr(struct rq *rq, struct task_struct *p, int flags);
	 struct task_struct * pick_next_task(struct rq *rq);
	 void put_prev_task(struct rq *rq, struct task_struct *p);
#ifdef CONFIG_SMP
	 int  select_task_rq(struct task_struct *p, int sd_flag, int flags);
	 void pre_schedule(struct rq *this_rq, struct task_struct *task);
	 void post_schedule(struct rq *this_rq);
#endif
	 void set_curr_task(struct rq *rq);
	 void task_tick(struct rq *rq, struct task_struct *p, int queued);
	 void switched_to(struct rq *this_rq, struct task_struct *task);
	 void prio_changed(struct rq *this_rq, struct task_struct *task,
			     int oldprio);
	 unsigned int get_rr_interval(struct rq *rq,
					 struct task_struct *task);
};
//static idle_sched_class_mool __attribute__ ((__section__ (".sched.data"))) idle_sched_class_mool_obj(4);
static idle_sched_class_mool __attribute__ ((__section__ (".sched.data"))) idle_sched_class_mool_obj;


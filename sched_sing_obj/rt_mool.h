class rt_sched_class_mool : public mool_scheduler
{
public:
rt_sched_class_mool();
/*scheduler_type schedType; 

scheduler_type getSchedulerType()
{
  return schedType;
}*/
	 void enqueue_task(struct rq *rq, struct task_struct *p, int flags);
	 void dequeue_task(struct rq *rq, struct task_struct *p, int flags);
	 void yield_task(struct rq *rq);
	 void check_preempt_curr(struct rq *rq, struct task_struct *p, int flags);

	 struct task_struct * pick_next_task(struct rq *rq);
	 void put_prev_task(struct rq *rq, struct task_struct *p);

#ifdef CONFIG_SMP
	 int select_task_rq(struct task_struct *p, int sd_flag, int flags);
	 void pre_schedule(struct rq *this_rq, struct task_struct *task);
	 void post_schedule(struct rq *this_rq);
	 void task_woken(struct rq *this_rq, struct task_struct *task);
	 void switched_from(struct rq *this_rq, struct task_struct *task);
	 void set_cpus_allowed(struct task_struct *p,
				 const struct cpumask *newmask);
	 void rq_online(struct rq *rq);
	 void rq_offline(struct rq *rq);
#endif
	 void set_curr_task(struct rq *rq);
	 void task_tick(struct rq *rq, struct task_struct *p, int queued);
	 void switched_to(struct rq *this_rq, struct task_struct *task);
	 void prio_changed(struct rq *this_rq, struct task_struct *task,
			     int oldprio);
	 unsigned int get_rr_interval(struct rq *rq,
					 struct task_struct *task);
};

//static rt_sched_class_mool __attribute__ ((__section__ (".sched.data"))) rt_sched_class_mool_obj(2);
static rt_sched_class_mool __attribute__ ((__section__ (".sched.data"))) rt_sched_class_mool_obj;


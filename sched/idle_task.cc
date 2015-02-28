#include <linux/soa.h>

#include "idle_task.h"

#include "sched.h"

/*
 * idle-task scheduling class.
 *
 * (NOTE: these are not related to SCHED_IDLE tasks which are
 *  handled in sched/fair.c)
 */

#ifdef CONFIG_SMP
int idle_sched_class_mool::select_task_rq(struct task_struct *p, int sd_flag, int flags)
{
	return task_cpu(p); /* IDLE tasks as never migrated */
}

void idle_sched_class_mool::pre_schedule(struct rq *rq, struct task_struct *prev)
{
	idle_exit_fair(rq);
	rq_last_tick_reset(rq);
}

void idle_sched_class_mool::post_schedule(struct rq *rq)
{
	idle_enter_fair(rq);
}
#endif /* CONFIG_SMP */
/*
 * Idle tasks are unconditionally rescheduled:
 */
void idle_sched_class_mool::check_preempt_curr(struct rq *rq, struct task_struct *p, int flags)
{
	resched_task(rq->idle);
}

struct task_struct *idle_sched_class_mool::pick_next_task(struct rq *rq)
{
	schedstat_inc(rq, sched_goidle);
#ifdef CONFIG_SMP
	/* Trigger the post schedule to do an idle_enter for CFS */
	rq->post_schedule = 1;
#endif
	return rq->idle;
}

/*
 * It is not legal to sleep in the idle task - print a warning
 * message if some code attempts to do it:
 */
void idle_sched_class_mool::dequeue_task(struct rq *rq, struct task_struct *p, int flags)
{
	raw_spin_unlock_irq(&rq->lock);
	printk(KERN_ERR "bad: scheduling from the idle thread!\n");
	dump_stack();
	raw_spin_lock_irq(&rq->lock);
}

void idle_sched_class_mool::put_prev_task(struct rq *rq, struct task_struct *prev)
{
}

void idle_sched_class_mool::task_tick(struct rq *rq, struct task_struct *curr, int queued)
{
 // printk(KERN_INFO "idle task_tick called");
}

void idle_sched_class_mool::set_curr_task(struct rq *rq)
{
}

void idle_sched_class_mool::switched_to(struct rq *rq, struct task_struct *p)
{
	BUG();
}

static void idle_sched_class_mool::
prio_changed(struct rq *rq, struct task_struct *p, int oldprio)
{
	BUG();
}

static unsigned int idle_sched_class_mool::get_rr_interval(struct rq *rq, struct task_struct *task)
{
	return 0;
}

/*
 * Simple, special scheduling class for the per-CPU idle tasks:
 */

//const struct sched_class idle_sched_class = {
	/* .next is NULL */
	/* no enqueue/yield_task for idle tasks */

	/* dequeue is not valid, we print a debug message there: */
/*	.dequeue_task		= dequeue_task_idle,

	.check_preempt_curr	= check_preempt_curr_idle,

	.pick_next_task		= pick_next_task_idle,
	.put_prev_task		= put_prev_task_idle,

#ifdef CONFIG_SMP
	.select_task_rq		= select_task_rq_idle,
	.pre_schedule		= pre_schedule_idle,
	.post_schedule		= post_schedule_idle,
#endif

	.set_curr_task          = set_curr_task_idle,
	.task_tick		= task_tick_idle,

	.get_rr_interval	= get_rr_interval_idle,

	.prio_changed		= prio_changed_idle,
	.switched_to		= switched_to_idle,
};*/
//idle_sched_class_mool::idle_sched_class_mool(int x):mool_scheduler(x)
idle_sched_class_mool::idle_sched_class_mool():mool_scheduler()
{
//printk(KERN_NOTICE "Entering idle task scheduler\n");
schedType = IDLE;
}


static int __init init_idletask_service() {
//printk(KERN_NOTICE "idle task service\n");
	int j;
	static struct si_desc idle_si_desc;
	class soa_class *st_obj_ptr=NULL;
	st_obj_ptr = soa_class::find_service_type("process_management","process_scheduling");

	if(st_obj_ptr == NULL)
		return -1;

	idle_si_desc.name = idle_si_desc.working =  NULL;//idle_si_desc.attr_val_wt_list =
//	idle_si_desc.name = kmalloc_track_caller(sizeof(char)*30, GFP_KERNEL);
//	idle_si_desc.working = kmalloc_track_caller(sizeof(char)*150, GFP_KERNEL);

	idle_si_desc.name = kstrdup("Idle task scheduling policy", GFP_KERNEL);
	idle_si_desc.working = kstrdup("Scheduling policy for idle task. Does nothing but schedules idle process.", GFP_KERNEL);
	idle_si_desc.attr_val_wt_list = kmalloc_track_caller(sizeof(struct attr_val_wt)*2,GFP_KERNEL);

	if(idle_si_desc.name == NULL || idle_si_desc.working == NULL || idle_si_desc.attr_val_wt_list == NULL)
			return -1;
//	strcpy(idle_si_desc.name, "Idle task scheduling policy");
//	strcpy(idle_si_desc.working, "Scheduling policy for idle task. Does nothing but schedules idle process.");

	idle_si_desc.keyword_list_len = 1;
	idle_si_desc.keyword_wt_list = kmalloc(sizeof (struct keyword_wt)* idle_si_desc.keyword_list_len, GFP_KERNEL);
//	for(j=0; j<idle_si_desc.keyword_list_len ; j++) {
//		idle_si_desc.keyword_wt_list[j].keyword = kmalloc_track_caller(sizeof(char)*32, GFP_KERNEL);
//	}
	idle_si_desc.keyword_wt_list[0].keyword = kstrdup("idletask", GFP_KERNEL);

	idle_si_desc.kw_prime_prod = 1;
	idle_si_desc.si_obj_ptr = &idle_object;

	idle_si_desc.attr_val_list_len = 2;
	for(j=0; j<idle_si_desc.attr_val_list_len ; j++) {
		//idle_si_desc.attr_val_wt_list[j].attr = kmalloc(sizeof(char)*15, GFP_KERNEL);
		idle_si_desc.attr_val_wt_list[j].val = kmalloc(sizeof(int), GFP_KERNEL);
	}
	idle_si_desc.attr_val_wt_list[0].attr = kstrdup("start_prio", GFP_KERNEL);
	idle_si_desc.attr_val_wt_list[1].attr = kstrdup("end_prio", GFP_KERNEL);
	*((int *)idle_si_desc.attr_val_wt_list[0].val) = 990;
	*((int *)idle_si_desc.attr_val_wt_list[1].val) = 1000;



	st_obj_ptr->__publish_service(1, 0, &idle_object, &idle_si_desc);

	printk("idle task service initialized\n");
	return 0;
}

late_initcall(init_idletask_service);


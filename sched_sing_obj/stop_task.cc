#include <linux/soa.h>


#include "stop_task.h"
#include "sched.h"

/*
 * stop-task scheduling class.
 *
 * The stop task is the highest priority task in the system, it preempts
 * everything and will be preempted by nothing.
 *
 * See kernel/stop_machine.c
 */

#ifdef CONFIG_SMP
int stop_sched_class_mool::
select_task_rq(struct task_struct *p, int sd_flag, int flags)
{
	return task_cpu(p); /* stop tasks as never migrate */
}
#endif /* CONFIG_SMP */

void stop_sched_class_mool::
check_preempt_curr(struct rq *rq, struct task_struct *p, int flags)
{
	/* we're never preempted */
}

struct task_struct *stop_sched_class_mool::pick_next_task(struct rq *rq)
{
	struct task_struct *stop = rq->stop;

	if (stop && stop->on_rq) {
		stop->se.exec_start = rq_clock_task(rq);
		return stop;
	}

	return NULL;
}

void stop_sched_class_mool::
enqueue_task(struct rq *rq, struct task_struct *p, int flags)
{
	inc_nr_running(rq);
}

void stop_sched_class_mool::
dequeue_task(struct rq *rq, struct task_struct *p, int flags)
{
	dec_nr_running(rq);
}

void stop_sched_class_mool::yield_task(struct rq *rq)
{
	BUG(); /* the stop task should never yield, its pointless. */
}

void stop_sched_class_mool::put_prev_task(struct rq *rq, struct task_struct *prev)
{
	struct task_struct *curr = rq->curr;
	u64 delta_exec;

	delta_exec = rq_clock_task(rq) - curr->se.exec_start;
	if (unlikely((s64)delta_exec < 0))
		delta_exec = 0;

	schedstat_set(curr->se.statistics.exec_max,
			max(curr->se.statistics.exec_max, delta_exec));

	curr->se.sum_exec_runtime += delta_exec;
	account_group_exec_runtime(curr, delta_exec);

	curr->se.exec_start = rq_clock_task(rq);
	cpuacct_charge(curr, delta_exec);
}

void stop_sched_class_mool::task_tick(struct rq *rq, struct task_struct *curr, int queued)
{
  printk(KERN_INFO "stop task_tick called");
}


void stop_sched_class_mool::set_curr_task(struct rq *rq)
{
	struct task_struct *stop = rq->stop;

	stop->se.exec_start = rq_clock_task(rq);
}

void stop_sched_class_mool::switched_to(struct rq *rq, struct task_struct *p)
{
	BUG(); /* its impossible to change to this class */
}

void stop_sched_class_mool::
prio_changed(struct rq *rq, struct task_struct *p, int oldprio)
{
	BUG(); /* how!?, what priority? */
}

unsigned int stop_sched_class_mool::
get_rr_interval(struct rq *rq, struct task_struct *task)
{
	return 0;
}

/*
 * Simple, special scheduling class for the per-CPU stop tasks:

const struct sched_class stop_sched_class = {
	.next			= &rt_sched_class,

	.enqueue_task		= enqueue_task_stop,
	.dequeue_task		= dequeue_task_stop,
	.yield_task		= yield_task_stop,

	.check_preempt_curr	= check_preempt_curr_stop,

	.pick_next_task		= pick_next_task_stop,
	.put_prev_task		= put_prev_task_stop,

#ifdef CONFIG_SMP
	.select_task_rq		= select_task_rq_stop,
#endif

	.set_curr_task          = set_curr_task_stop,
	.task_tick		= task_tick_stop,

	.get_rr_interval	= get_rr_interval_stop,

	.prio_changed		= prio_changed_stop,
	.switched_to		= switched_to_stop,
};
 */
//stop_sched_class_mool::stop_sched_class_mool(int x):mool_scheduler(x) {
stop_sched_class_mool::stop_sched_class_mool():mool_scheduler() {
//printk(KERN_NOTICE "Entering stop task\n");
schedType = STOP;
}


static int __init initialize_stop_service() {
//printk(KERN_NOTICE "stop time service\n");
	int j;
	static struct si_desc stop_si_desc;
		class soa_class *st_obj_ptr=NULL;
		st_obj_ptr = soa_class::find_service_type("process_management","process_scheduling");

		if(st_obj_ptr == NULL)
			return;

		stop_si_desc.name = stop_si_desc.working = NULL;		
		stop_si_desc.attr_val_wt_list = kmalloc(sizeof(struct attr_val_wt)*2,GFP_KERNEL);

		stop_si_desc.name = kstrdup("stop time scheduling policy", GFP_KERNEL);
		stop_si_desc.working = kstrdup("Tasks are arranged in a priority queue and are chosen for scheduling based on priority. This policy has higher priority over all other policies.", GFP_KERNEL);
		if(stop_si_desc.name == NULL || stop_si_desc.working == NULL || stop_si_desc.attr_val_wt_list == NULL)
				return;
		
		stop_si_desc.attr_val_list_len = 2;
		for(j=0; j<stop_si_desc.attr_val_list_len ; j++) {
					stop_si_desc.attr_val_wt_list[j].val = kmalloc(sizeof(int), GFP_KERNEL);
		}
		stop_si_desc.attr_val_wt_list[0].attr = kstrdup("start_prio", GFP_KERNEL);
		stop_si_desc.attr_val_wt_list[1].attr = kstrdup("end_prio", GFP_KERNEL);
		*((int *)stop_si_desc.attr_val_wt_list[0].val) = -999;
		*((int *)stop_si_desc.attr_val_wt_list[1].val) = 0;

		stop_si_desc.keyword_list_len = 3;
		stop_si_desc.keyword_wt_list = kmalloc(sizeof (struct keyword_wt)* stop_si_desc.keyword_list_len, GFP_KERNEL);
		stop_si_desc.keyword_wt_list[0].keyword = kstrdup("real time", GFP_KERNEL);
		stop_si_desc.keyword_wt_list[1].keyword = kstrdup("high priority", GFP_KERNEL);
		stop_si_desc.keyword_wt_list[2].keyword = kstrdup("high interactiveness", GFP_KERNEL);

		stop_si_desc.kw_prime_prod = 1;
		stop_si_desc.si_obj_ptr = &stop_sched_class_obj;

		st_obj_ptr->__publish_service(1, 0, &stop_sched_class_obj, &stop_si_desc);
}

late_initcall(initialize_stop_service);



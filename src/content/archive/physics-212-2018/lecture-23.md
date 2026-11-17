---
title: "Lecture 23"
group: "physics-212-2018"
wiki_title: "Physics 212, 2018: Lecture 23"
order: 210
---

In these lectures, we discuss the basics of high performance computing.

## What is a High Performance Computing (HPC)?

**Processor or Central Processing Unit (CPU)**

The part of a computer in which operations are controlled and executed.

**Sequential Processing**

Execution of a program step by step on one CPU.

**Concurrent Processing**

Having multiple CPUs working simultaneously on different parts of the same problem.

**High Performance Computing**

Is basically another name for solving a computational problem concurrently on multiple CPUs.

## Organization of Parallel Processing

Consider how you arrange multiple people in a group to do a certain complex task that consists of many different subtasks. There are many different ways of doing this

- The simplest option is not to delegate, and for just one person to complete all of the steps of the task. This is equivalent to sequential processing.
- The second option is to have the captain assign a list of subtasks to each of the people in the group, and let them all focus on each of their assigned tasks. This incurs communication cost. First, the partitioning of the full list of tasks into pieces must be done, and then these sublists must be communicated to the people. When they complete their individual tasks, the results of the completion must be communicated to the leader. Further, there are additional inefficiencies. While the task is being partitioned, the people will be waiting for their assignments, doing nothing. Then some of them will finish their subtasks before the others, and will again wait, doing nothing.
- The arrangement above may possibly be improved, where whenever a person finishes his/her task, s/he starts helping the others who are still doing theirs. But this is easier said then done. Whom should they help? To know this, each person must be constantly communicating his/her progress, either broadcasting it to everyone in the group, or at least sending it to the captain, so that either everyone knows who needs help, or the captain can tell everyone. Further, when a helper arrives, the task that is running behind now needs to be partitioned again, which will take additional time and resources.
- To avoid some of these problems, one may want to duplicate the tasks originally, but prioritize them, so that every person first works on his/her task, and then switches on other pre-assignees tasks, constantly reporting results. You can fill in the gaps of what kind of problems this solution carries with itself.
- Can you suggest other arrangements of how the tasks can be divided over multiple individuals?

Note that, in all of these (and yours) suggestion, the more complicated the arrangement is, the more communication needs to be done. And communication takes time -- so that, at a certain point, communication cost outweighs the savings one will generate from a complex task-partitioning scheme.

With these different arrangements, it makes sense to have a bit finer gradation of concurrent processing:

**Parallel processing**

Collection of connected, tightly coupled, strongly communicating processors concurrently solving a problem.

**Distributed processing**

Loosely coupled processors, perhaps great distances from each other, working concurrently on a problem with minimal communication among them.

Parallel processing is further distinguished by how memory of the computers is organized

**Shared memory**

Parallel processors access the same memory during concurrent processing, requiring minimal communication beyond the shared memory.

**Distributed memory**

Each processor has it's own memory to operate with, and synchronization of tasks is achieved through communication.

## Parallelization

Crucially, a program written for sequential processing won't execute on many processors. It needs to be parallelized or scaled to many processors. This usually involves careful consideration of how concurrent processing will be organized, how the tasks will be partitioned, how multiple data streams and execution streams will be synchronized, etc.

A useful metric of how well the code is parallelized is the speedup, the ratio of the time it takes to execute it on n processors compared to on 1. Speedup is usually less than n due to communication costs.

## Parallel algorithms

**Embarrassingly parallel algorithms**

The task can be divided into subtasks that have virtually no communication.

Typically problems such as generating statistics (e.g., producing many DLA clusters of Module 4) are embarrassingly parallelizable.

**Data partitioning algorithms**

For example, when calculating a larger sum, the data set can be partitioned into parts, each part can be summed independently, and then the sums will be added. Here a *root* process partitions the data into subsets, and then collects the results. The root has a privileged state -- it distributes the tasks, but doesn't execute them itself.

**Divide and conquer algorithms**

Work without a root, where each processor partitions its tasks into manageable blocks and recruits additional processors to help.

**Coarsening algorithms**

Here the processors solve the problem on multiple scales.

For any of these algorithms, it is crucial to think how the data must be organized to speed up communication.

cd apps 
cd hadoop
~/apps/hadoop$ sbin/start-all.sh
~/apps/hadoop$ jps

~/apps/hadoop$ cd
 hadoop fs -put text1 /
 hadoop fs -put text2 /
 hadoop fs -lsr /
hadoop fs -cat /text3
~$ hadoop fs -cat /text3
hadoop fs -cat /text1
hadoop fs -cat /text1
hadoop fs -cat /text2
hadoop fs -cat /text3
hadoop fs -rm /text3
hadoop fs -cat /text1
hadoop fs -cat /text3
hadoop fs -cat /text3
hadoop fs -rm /text3
hadoop fs -rm /text3
hadoop fs -cat /text3
hadoop fs -cat /text1
hadoop fs -cat /text3
hadoop fs -cat /text2
hadoop fs -cat /text3
hadoop fs -rm /text3
hadoop fs -cat /text3
hadoop fs -cat /text1
hadoop fs -cat /text2
hadoop fs -cat /text3
gedit song.txt
cat song.txt
hadoop fs -cat song.txt
ls
ll

ls
hadoop@ubuntu:~$ rm -rf file
hadoop@ubuntu:~$ mkdir ~/file
hadoop@ubuntu:~$ ls
apps       Downloads         Music                       Public     text2
Desktop    examples.desktop  my-mapreduce-wordcount.jar  Templates  Videos
Documents  file              Pictures                    text1      workspace
hadoop@ubuntu:~$ cd file
hadoop@ubuntu:~/file$ ls
hadoop@ubuntu:~/file$ echo "hellow word" > file1.txt
hadoop@ubuntu:~/file$ ls
file1.txt
hadoop@ubuntu:~/file$ echo "hellow hadoop" > file2.txt
hadoop@ubuntu:~/file$ ls
file1.txt  file2.txt
hadoop@ubuntu:~/file$ cat *\
> 
hellow word
hellow hadoop
hadoop@ubuntu:~/file$ cd ~/apps/hadoop/sbin
hadoop@ubuntu:~/apps/hadoop/sbin$ cd ..
hadoop@ubuntu:~/apps/hadoop$ cd ~/apps/hadoop/
hadoop@ubuntu:~/apps/hadoop$ sbin/start-all.sh
This script is Deprecated. Instead use start-dfs.sh and start-yarn.sh
Starting namenodes on [localhost]
localhost: namenode running as process 2482. Stop it first.
localhost: datanode running as process 2615. Stop it first.
Starting secondary namenodes [0.0.0.0]
0.0.0.0: secondarynamenode running as process 2781. Stop it first.
starting yarn daemons
resourcemanager running as process 3007. Stop it first.
localhost: starting nodemanager, logging to /home/hadoop/apps/hadoop/logs/yarn-hadoop-nodemanager-ubuntu.out
hadoop@ubuntu:~/apps/hadoop$ hadoop fs -mkdir /input
mkdir: `/input': Is not a directory
hadoop@ubuntu:~/apps/hadoop$ hadoop fs -mkdir /input
mkdir: `/input': Is not a directory
hadoop@ubuntu:~/apps/hadoop$ hadoop fs -rm -r -f /input
17/12/15 15:01:48 INFO fs.TrashPolicyDefault: Namenode trash configuration: Deletion interval = 0 minutes, Emptier interval = 0 minutes.
Deleted /input
hadoop@ubuntu:~/apps/hadoop$ hadoop fs -mkdir /input
hadoop@ubuntu:~/apps/hadoop$ hadoop fs -put ~/file/*.txt /input
hadoop@ubuntu:~/apps/hadoop$ hadoop fs -cat /input/*
hellow word
hellow hadoop
hadoop@ubuntu:~/apps/hadoop$ ls
bin  file1.txt  include  libexec      logs        README.txt  share  tmp
etc  file2.txt  lib      LICENSE.txt  NOTICE.txt  sbin        src
hadoop@ubuntu:~/apps/hadoop$ cd ~
hadoop@ubuntu:~$ ls
apps       Downloads         Music                       Public     text2
Desktop    examples.desktop  my-mapreduce-wordcount.jar  Templates  Videos
Documents  file              Pictures                    text1      workspace
hadoop@ubuntu:~$ ll
total 148
drwxr-xr-x 21 hadoop hadoop 4096 Dec 15 14:57 ./
drwxr-xr-x  3 root   root   4096 Nov 22 07:47 ../
drwxrwxr-x  5 hadoop hadoop 4096 Nov 22 09:39 apps/
-rw-------  1 hadoop hadoop   56 Dec  8 15:29 .bash_history
-rw-r--r--  1 hadoop hadoop  220 Nov 22 07:47 .bash_logout
-rw-r--r--  1 hadoop hadoop 3923 Nov 22 09:56 .bashrc
drwx------ 14 hadoop hadoop 4096 Dec  8 14:15 .cache/
drwx------ 16 hadoop hadoop 4096 Dec  8 14:15 .config/
drwxr-xr-x  2 hadoop hadoop 4096 Dec  8 15:47 Desktop/
-rw-r--r--  1 hadoop hadoop   25 Nov 22 07:51 .dmrc
drwxr-xr-x  2 hadoop hadoop 4096 Nov 22 07:51 Documents/
drwxr-xr-x  2 hadoop hadoop 4096 Nov 22 07:51 Downloads/
-rw-r--r--  1 hadoop hadoop 8980 Nov 22 07:47 examples.desktop
drwxrwxr-x  2 hadoop hadoop 4096 Dec 15 14:58 file/
drwx------  2 hadoop hadoop 4096 Dec 14 18:59 .gconf/
drwx------  3 hadoop hadoop 4096 Dec 14 18:37 .gnupg/
-rw-------  1 hadoop hadoop 1908 Dec 14 18:37 .ICEauthority
drwx------  3 hadoop hadoop 4096 Nov 22 07:51 .local/
drwx------  5 hadoop hadoop 4096 Dec  8 15:29 .mozilla/
drwxr-xr-x  2 hadoop hadoop 4096 Nov 22 07:51 Music/
-rw-rw-r--  1 hadoop hadoop 4862 Dec 15 14:56 my-mapreduce-wordcount.jar
drwxrwxr-x  2 hadoop hadoop 4096 Nov 22 11:42 .oracle_jre_usage/
drwxr-xr-x  2 hadoop hadoop 4096 Nov 22 07:51 Pictures/
-rw-r--r--  1 hadoop hadoop  675 Nov 22 07:47 .profile
drwxr-xr-x  2 hadoop hadoop 4096 Nov 22 07:51 Public/
drwx------  2 hadoop hadoop 4096 Nov 22 10:01 .ssh/
-rw-r--r--  1 hadoop hadoop    0 Nov 22 09:54 .sudo_as_admin_successful
drwxr-xr-x  2 hadoop hadoop 4096 Nov 22 07:51 Templates/
-rw-rw-r--  1 hadoop hadoop   26 Dec 15 13:35 text1
-rw-rw-r--  1 hadoop hadoop   18 Dec 14 18:49 text2
drwxr-xr-x  2 hadoop hadoop 4096 Nov 22 07:51 Videos/
drwxrwxr-x  5 hadoop hadoop 4096 Dec 15 14:43 workspace/
-rw-------  1 hadoop hadoop  102 Dec 14 18:36 .Xauthority
-rw-------  1 hadoop hadoop   82 Dec 14 18:37 .xsession-errors
-rw-------  1 hadoop hadoop   82 Dec  8 15:26 .xsession-errors.old
hadoop@ubuntu:~$ hadoop jar my-mapreduce-wordcount.jar WordCount /input/*.txt /output
17/12/15 15:04:55 INFO Configuration.deprecation: session.id is deprecated. Instead, use dfs.metrics.session-id
17/12/15 15:04:55 INFO jvm.JvmMetrics: Initializing JVM Metrics with processName=JobTracker, sessionId=
17/12/15 15:04:57 INFO input.FileInputFormat: Total input paths to process : 2
17/12/15 15:04:57 INFO mapreduce.JobSubmitter: number of splits:2
17/12/15 15:04:58 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_local149217521_0001
17/12/15 15:04:58 INFO mapreduce.Job: The url to track the job: http://localhost:8080/
17/12/15 15:04:58 INFO mapreduce.Job: Running job: job_local149217521_0001
17/12/15 15:04:58 INFO mapred.LocalJobRunner: OutputCommitter set in config null
17/12/15 15:04:58 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
17/12/15 15:04:58 INFO mapred.LocalJobRunner: OutputCommitter is org.apache.hadoop.mapreduce.lib.output.FileOutputCommitter
17/12/15 15:04:59 INFO mapred.LocalJobRunner: Waiting for map tasks
17/12/15 15:04:59 INFO mapred.LocalJobRunner: Starting task: attempt_local149217521_0001_m_000000_0
17/12/15 15:04:59 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
17/12/15 15:04:59 INFO mapred.Task:  Using ResourceCalculatorProcessTree : [ ]
17/12/15 15:04:59 INFO mapred.MapTask: Processing split: hdfs://localhost:9000/input/file2.txt:0+14
17/12/15 15:04:59 INFO mapreduce.Job: Job job_local149217521_0001 running in uber mode : false
17/12/15 15:04:59 INFO mapred.MapTask: (EQUATOR) 0 kvi 26214396(104857584)
17/12/15 15:04:59 INFO mapred.MapTask: mapreduce.task.io.sort.mb: 100
17/12/15 15:04:59 INFO mapred.MapTask: soft limit at 83886080
17/12/15 15:04:59 INFO mapred.MapTask: bufstart = 0; bufvoid = 104857600
17/12/15 15:04:59 INFO mapred.MapTask: kvstart = 26214396; length = 6553600
17/12/15 15:04:59 INFO mapreduce.Job:  map 0% reduce 0%
17/12/15 15:05:06 INFO mapred.MapTask: Map output collector class = org.apache.hadoop.mapred.MapTask$MapOutputBuffer
17/12/15 15:05:09 INFO mapred.LocalJobRunner: 
17/12/15 15:05:09 INFO mapred.MapTask: Starting flush of map output
17/12/15 15:05:09 INFO mapred.MapTask: Spilling map output
17/12/15 15:05:09 INFO mapred.MapTask: bufstart = 0; bufend = 22; bufvoid = 104857600
17/12/15 15:05:09 INFO mapred.MapTask: kvstart = 26214396(104857584); kvend = 26214392(104857568); length = 5/6553600
17/12/15 15:05:09 INFO mapred.MapTask: Finished spill 0
17/12/15 15:05:09 INFO mapred.Task: Task:attempt_local149217521_0001_m_000000_0 is done. And is in the process of committing
17/12/15 15:05:10 INFO mapred.LocalJobRunner: map
17/12/15 15:05:10 INFO mapred.Task: Task 'attempt_local149217521_0001_m_000000_0' done.
17/12/15 15:05:10 INFO mapred.LocalJobRunner: Finishing task: attempt_local149217521_0001_m_000000_0
17/12/15 15:05:10 INFO mapred.LocalJobRunner: Starting task: attempt_local149217521_0001_m_000001_0
17/12/15 15:05:10 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
17/12/15 15:05:10 INFO mapred.Task:  Using ResourceCalculatorProcessTree : [ ]
17/12/15 15:05:10 INFO mapred.MapTask: Processing split: hdfs://localhost:9000/input/file1.txt:0+12
17/12/15 15:05:10 INFO mapred.MapTask: (EQUATOR) 0 kvi 26214396(104857584)
17/12/15 15:05:10 INFO mapred.MapTask: mapreduce.task.io.sort.mb: 100
17/12/15 15:05:10 INFO mapred.MapTask: soft limit at 83886080
17/12/15 15:05:10 INFO mapred.MapTask: bufstart = 0; bufvoid = 104857600
17/12/15 15:05:10 INFO mapred.MapTask: kvstart = 26214396; length = 6553600
17/12/15 15:05:10 INFO mapred.MapTask: Map output collector class = org.apache.hadoop.mapred.MapTask$MapOutputBuffer
17/12/15 15:05:10 INFO mapred.LocalJobRunner: 
17/12/15 15:05:10 INFO mapred.MapTask: Starting flush of map output
17/12/15 15:05:10 INFO mapred.MapTask: Spilling map output
17/12/15 15:05:10 INFO mapred.MapTask: bufstart = 0; bufend = 20; bufvoid = 104857600
17/12/15 15:05:10 INFO mapred.MapTask: kvstart = 26214396(104857584); kvend = 26214392(104857568); length = 5/6553600
17/12/15 15:05:10 INFO mapred.MapTask: Finished spill 0
17/12/15 15:05:10 INFO mapred.Task: Task:attempt_local149217521_0001_m_000001_0 is done. And is in the process of committing
17/12/15 15:05:10 INFO mapred.LocalJobRunner: map
17/12/15 15:05:10 INFO mapred.Task: Task 'attempt_local149217521_0001_m_000001_0' done.
17/12/15 15:05:10 INFO mapred.LocalJobRunner: Finishing task: attempt_local149217521_0001_m_000001_0
17/12/15 15:05:10 INFO mapred.LocalJobRunner: map task executor complete.
17/12/15 15:05:10 INFO mapred.LocalJobRunner: Waiting for reduce tasks
17/12/15 15:05:10 INFO mapred.LocalJobRunner: Starting task: attempt_local149217521_0001_r_000000_0
17/12/15 15:05:10 INFO mapreduce.Job:  map 100% reduce 0%
17/12/15 15:05:11 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
17/12/15 15:05:11 INFO mapred.Task:  Using ResourceCalculatorProcessTree : [ ]
17/12/15 15:05:11 INFO mapred.ReduceTask: Using ShuffleConsumerPlugin: org.apache.hadoop.mapreduce.task.reduce.Shuffle@7d6bd0d2
17/12/15 15:05:12 INFO reduce.MergeManagerImpl: MergerManager: memoryLimit=334338464, maxSingleShuffleLimit=83584616, mergeThreshold=220663392, ioSortFactor=10, memToMemMergeOutputsThreshold=10
17/12/15 15:05:12 INFO reduce.EventFetcher: attempt_local149217521_0001_r_000000_0 Thread started: EventFetcher for fetching Map Completion Events
17/12/15 15:05:12 INFO reduce.LocalFetcher: localfetcher#1 about to shuffle output of map attempt_local149217521_0001_m_000000_0 decomp: 28 len: 32 to MEMORY
17/12/15 15:05:14 INFO reduce.InMemoryMapOutput: Read 28 bytes from map-output for attempt_local149217521_0001_m_000000_0
17/12/15 15:05:14 INFO reduce.MergeManagerImpl: closeInMemoryFile -> map-output of size: 28, inMemoryMapOutputs.size() -> 1, commitMemory -> 0, usedMemory ->28
17/12/15 15:05:14 INFO reduce.LocalFetcher: localfetcher#1 about to shuffle output of map attempt_local149217521_0001_m_000001_0 decomp: 26 len: 30 to MEMORY
17/12/15 15:05:14 INFO reduce.InMemoryMapOutput: Read 26 bytes from map-output for attempt_local149217521_0001_m_000001_0
17/12/15 15:05:14 INFO reduce.MergeManagerImpl: closeInMemoryFile -> map-output of size: 26, inMemoryMapOutputs.size() -> 2, commitMemory -> 28, usedMemory ->54
17/12/15 15:05:14 INFO reduce.EventFetcher: EventFetcher is interrupted.. Returning
17/12/15 15:05:14 INFO mapred.LocalJobRunner: 2 / 2 copied.
17/12/15 15:05:14 INFO reduce.MergeManagerImpl: finalMerge called with 2 in-memory map-outputs and 0 on-disk map-outputs
17/12/15 15:05:14 INFO mapred.Merger: Merging 2 sorted segments
17/12/15 15:05:14 INFO mapred.Merger: Down to the last merge-pass, with 2 segments left of total size: 36 bytes
17/12/15 15:05:14 INFO reduce.MergeManagerImpl: Merged 2 segments, 54 bytes to disk to satisfy reduce memory limit
17/12/15 15:05:14 INFO reduce.MergeManagerImpl: Merging 1 files, 56 bytes from disk
17/12/15 15:05:14 INFO reduce.MergeManagerImpl: Merging 0 segments, 0 bytes from memory into reduce
17/12/15 15:05:14 INFO mapred.Merger: Merging 1 sorted segments
17/12/15 15:05:14 INFO mapred.Merger: Down to the last merge-pass, with 1 segments left of total size: 43 bytes
17/12/15 15:05:14 INFO mapred.LocalJobRunner: 2 / 2 copied.
17/12/15 15:05:15 INFO Configuration.deprecation: mapred.skip.on is deprecated. Instead, use mapreduce.job.skiprecords
17/12/15 15:05:17 INFO mapred.LocalJobRunner: reduce > reduce
17/12/15 15:05:18 INFO mapreduce.Job:  map 100% reduce 100%
17/12/15 15:05:20 INFO mapred.LocalJobRunner: reduce > reduce
17/12/15 15:05:23 INFO mapred.Task: Task:attempt_local149217521_0001_r_000000_0 is done. And is in the process of committing
17/12/15 15:05:23 INFO mapred.LocalJobRunner: reduce > reduce
17/12/15 15:05:23 INFO mapred.Task: Task attempt_local149217521_0001_r_000000_0 is allowed to commit now
17/12/15 15:05:23 INFO output.FileOutputCommitter: Saved output of task 'attempt_local149217521_0001_r_000000_0' to hdfs://localhost:9000/output/_temporary/0/task_local149217521_0001_r_000000
17/12/15 15:05:23 INFO mapred.LocalJobRunner: reduce > reduce
17/12/15 15:05:23 INFO mapred.Task: Task 'attempt_local149217521_0001_r_000000_0' done.
17/12/15 15:05:23 INFO mapred.LocalJobRunner: Finishing task: attempt_local149217521_0001_r_000000_0
17/12/15 15:05:23 INFO mapred.LocalJobRunner: reduce task executor complete.
17/12/15 15:05:24 INFO mapreduce.Job: Job job_local149217521_0001 completed successfully
17/12/15 15:05:24 INFO mapreduce.Job: Counters: 35
	File System Counters
		FILE: Number of bytes read=16009
		FILE: Number of bytes written=1056741
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=66
		HDFS: Number of bytes written=25
		HDFS: Number of read operations=25
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=5
	Map-Reduce Framework
		Map input records=2
		Map output records=4
		Map output bytes=42
		Map output materialized bytes=62
		Input split bytes=204
		Combine input records=4
		Combine output records=4
		Reduce input groups=3
		Reduce shuffle bytes=62
		Reduce input records=4
		Reduce output records=3
		Spilled Records=8
		Shuffled Maps =2
		Failed Shuffles=0
		Merged Map outputs=2
		GC time elapsed (ms)=5697
		Total committed heap usage (bytes)=1102577664
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters 
		Bytes Read=26
	File Output Format Counters 
		Bytes Written=25
hadoop@ubuntu:~$ hadoop fs -ls /output
Found 2 items
-rw-r--r--   1 hadoop supergroup          0 2017-12-15 15:05 /output/_SUCCESS
-rw-r--r--   1 hadoop supergroup         25 2017-12-15 15:05 /output/part-r-00000
hadoop@ubuntu:~$ hadoop fs -ls /output/*
-rw-r--r--   1 hadoop supergroup          0 2017-12-15 15:05 /output/_SUCCESS
-rw-r--r--   1 hadoop supergroup         25 2017-12-15 15:05 /output/part-r-00000
hadoop@ubuntu:~$ hadoop fs -cat /output/*
hadoop	1
hellow	2
word	1
hadoop@ubuntu:~$ gegit song.txt
No command 'gegit' found, did you mean:
 Command 'legit' from package 'legit' (universe)
 Command 'gedit' from package 'gedit' (main)
gegit: command not found
hadoop@ubuntu:~$ ls
apps       examples.desktop            Pictures   text1            workspace
Desktop    file                        Public     text2
Documents  Music                       song       Untitled Folder
Downloads  my-mapreduce-wordcount.jar  Templates  Videos
hadoop@ubuntu:~$ hadoop fs -rm -r -f /music
hadoop@ubuntu:~$ hadoop fs -mkdir /music
hadoop@ubuntu:~$ hadoop fs -mkdir /music/input
hadoop@ubuntu:~$ hadoop fs -put song.txt /music/input 
put: `song.txt': No such file or directory
hadoop@ubuntu:~$ hadoop fs -put song.txt /music/input 
put: `song.txt': No such file or directory
hadoop@ubuntu:~$ gedit song.txt
hadoop@ubuntu:~$ hadoop fs -put song.txt /music/input 
hadoop@ubuntu:~$ -ls /music/input/
No command '-ls' found, did you mean:
 Command 'ils' from package 'sleuthkit' (universe)
 Command 'bls' from package 'bareos-tools' (universe)
 Command 'bls' from package 'bacula-sd' (universe)
 Command 'jls' from package 'sleuthkit' (universe)
 Command 'als' from package 'atool' (universe)
 Command 'fls' from package 'sleuthkit' (universe)
 Command 'i-ls' from package 'integrit' (universe)
 Command 'ls' from package 'coreutils' (main)
 Command 'ols' from package 'speech-tools' (universe)
 Command 'hls' from package 'hfsutils' (main)
-ls: command not found
hadoop@ubuntu:~$ hadoop fs -ls /music/input/
Found 1 items
-rw-r--r--   1 hadoop supergroup        823 2017-12-15 15:19 /music/input/song.txt
hadoop@ubuntu:~$ hadoop jar my-mapreduce-wordcount.jar WordCount /music/input/* /music/output
17/12/15 15:24:13 INFO Configuration.deprecation: session.id is deprecated. Instead, use dfs.metrics.session-id
17/12/15 15:24:13 INFO jvm.JvmMetrics: Initializing JVM Metrics with processName=JobTracker, sessionId=
17/12/15 15:24:14 INFO input.FileInputFormat: Total input paths to process : 1
17/12/15 15:24:14 INFO mapreduce.JobSubmitter: number of splits:1
17/12/15 15:24:14 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_local986595326_0001
17/12/15 15:24:14 INFO mapreduce.Job: The url to track the job: http://localhost:8080/
17/12/15 15:24:14 INFO mapreduce.Job: Running job: job_local986595326_0001
17/12/15 15:24:14 INFO mapred.LocalJobRunner: OutputCommitter set in config null
17/12/15 15:24:15 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
17/12/15 15:24:15 INFO mapred.LocalJobRunner: OutputCommitter is org.apache.hadoop.mapreduce.lib.output.FileOutputCommitter
17/12/15 15:24:15 INFO mapred.LocalJobRunner: Waiting for map tasks
17/12/15 15:24:15 INFO mapred.LocalJobRunner: Starting task: attempt_local986595326_0001_m_000000_0
17/12/15 15:24:15 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
17/12/15 15:24:15 INFO mapred.Task:  Using ResourceCalculatorProcessTree : [ ]
17/12/15 15:24:15 INFO mapred.MapTask: Processing split: hdfs://localhost:9000/music/input/song.txt:0+823
17/12/15 15:24:16 INFO mapreduce.Job: Job job_local986595326_0001 running in uber mode : false
17/12/15 15:24:16 INFO mapred.MapTask: (EQUATOR) 0 kvi 26214396(104857584)
17/12/15 15:24:16 INFO mapred.MapTask: mapreduce.task.io.sort.mb: 100
17/12/15 15:24:16 INFO mapred.MapTask: soft limit at 83886080
17/12/15 15:24:16 INFO mapred.MapTask: bufstart = 0; bufvoid = 104857600
17/12/15 15:24:16 INFO mapred.MapTask: kvstart = 26214396; length = 6553600
17/12/15 15:24:16 INFO mapreduce.Job:  map 0% reduce 0%
17/12/15 15:24:16 INFO mapred.MapTask: Map output collector class = org.apache.hadoop.mapred.MapTask$MapOutputBuffer
17/12/15 15:24:17 INFO mapred.LocalJobRunner: 
17/12/15 15:24:17 INFO mapred.MapTask: Starting flush of map output
17/12/15 15:24:17 INFO mapred.MapTask: Spilling map output
17/12/15 15:24:17 INFO mapred.MapTask: bufstart = 0; bufend = 1545; bufvoid = 104857600
17/12/15 15:24:17 INFO mapred.MapTask: kvstart = 26214396(104857584); kvend = 26213676(104854704); length = 721/6553600
17/12/15 15:24:17 INFO mapred.MapTask: Finished spill 0
17/12/15 15:24:17 INFO mapred.Task: Task:attempt_local986595326_0001_m_000000_0 is done. And is in the process of committing
17/12/15 15:24:17 INFO mapred.LocalJobRunner: map
17/12/15 15:24:17 INFO mapred.Task: Task 'attempt_local986595326_0001_m_000000_0' done.
17/12/15 15:24:17 INFO mapred.LocalJobRunner: Finishing task: attempt_local986595326_0001_m_000000_0
17/12/15 15:24:17 INFO mapred.LocalJobRunner: map task executor complete.
17/12/15 15:24:17 INFO mapred.LocalJobRunner: Waiting for reduce tasks
17/12/15 15:24:17 INFO mapred.LocalJobRunner: Starting task: attempt_local986595326_0001_r_000000_0
17/12/15 15:24:17 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
17/12/15 15:24:17 INFO mapred.Task:  Using ResourceCalculatorProcessTree : [ ]
17/12/15 15:24:17 INFO mapred.ReduceTask: Using ShuffleConsumerPlugin: org.apache.hadoop.mapreduce.task.reduce.Shuffle@7eaa0b3c
17/12/15 15:24:17 INFO reduce.MergeManagerImpl: MergerManager: memoryLimit=334338464, maxSingleShuffleLimit=83584616, mergeThreshold=220663392, ioSortFactor=10, memToMemMergeOutputsThreshold=10
17/12/15 15:24:17 INFO reduce.EventFetcher: attempt_local986595326_0001_r_000000_0 Thread started: EventFetcher for fetching Map Completion Events
17/12/15 15:24:17 INFO mapreduce.Job:  map 100% reduce 0%
17/12/15 15:24:17 INFO reduce.LocalFetcher: localfetcher#1 about to shuffle output of map attempt_local986595326_0001_m_000000_0 decomp: 951 len: 955 to MEMORY
17/12/15 15:24:17 INFO reduce.InMemoryMapOutput: Read 951 bytes from map-output for attempt_local986595326_0001_m_000000_0
17/12/15 15:24:17 INFO reduce.MergeManagerImpl: closeInMemoryFile -> map-output of size: 951, inMemoryMapOutputs.size() -> 1, commitMemory -> 0, usedMemory ->951
17/12/15 15:24:17 INFO reduce.EventFetcher: EventFetcher is interrupted.. Returning
17/12/15 15:24:17 INFO mapred.LocalJobRunner: 1 / 1 copied.
17/12/15 15:24:17 INFO reduce.MergeManagerImpl: finalMerge called with 1 in-memory map-outputs and 0 on-disk map-outputs
17/12/15 15:24:17 INFO mapred.Merger: Merging 1 sorted segments
17/12/15 15:24:17 INFO mapred.Merger: Down to the last merge-pass, with 1 segments left of total size: 943 bytes
17/12/15 15:24:17 INFO reduce.MergeManagerImpl: Merged 1 segments, 951 bytes to disk to satisfy reduce memory limit
17/12/15 15:24:17 INFO reduce.MergeManagerImpl: Merging 1 files, 955 bytes from disk
17/12/15 15:24:17 INFO reduce.MergeManagerImpl: Merging 0 segments, 0 bytes from memory into reduce
17/12/15 15:24:17 INFO mapred.Merger: Merging 1 sorted segments
17/12/15 15:24:17 INFO mapred.Merger: Down to the last merge-pass, with 1 segments left of total size: 943 bytes
17/12/15 15:24:17 INFO mapred.LocalJobRunner: 1 / 1 copied.
17/12/15 15:24:17 INFO Configuration.deprecation: mapred.skip.on is deprecated. Instead, use mapreduce.job.skiprecords
17/12/15 15:24:18 INFO mapred.Task: Task:attempt_local986595326_0001_r_000000_0 is done. And is in the process of committing
17/12/15 15:24:18 INFO mapred.LocalJobRunner: 1 / 1 copied.
17/12/15 15:24:18 INFO mapred.Task: Task attempt_local986595326_0001_r_000000_0 is allowed to commit now
17/12/15 15:24:18 INFO output.FileOutputCommitter: Saved output of task 'attempt_local986595326_0001_r_000000_0' to hdfs://localhost:9000/music/output/_temporary/0/task_local986595326_0001_r_000000
17/12/15 15:24:18 INFO mapred.LocalJobRunner: reduce > reduce
17/12/15 15:24:18 INFO mapred.Task: Task 'attempt_local986595326_0001_r_000000_0' done.
17/12/15 15:24:18 INFO mapred.LocalJobRunner: Finishing task: attempt_local986595326_0001_r_000000_0
17/12/15 15:24:18 INFO mapred.LocalJobRunner: reduce task executor complete.
17/12/15 15:24:19 INFO mapreduce.Job:  map 100% reduce 100%
17/12/15 15:24:19 INFO mapreduce.Job: Job job_local986595326_0001 completed successfully
17/12/15 15:24:19 INFO mapreduce.Job: Counters: 35
	File System Counters
		FILE: Number of bytes read=11986
		FILE: Number of bytes written=706997
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=1646
		HDFS: Number of bytes written=612
		HDFS: Number of read operations=15
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=4
	Map-Reduce Framework
		Map input records=29
		Map output records=181
		Map output bytes=1545
		Map output materialized bytes=955
		Input split bytes=107
		Combine input records=181
		Combine output records=85
		Reduce input groups=85
		Reduce shuffle bytes=955
		Reduce input records=85
		Reduce output records=85
		Spilled Records=170
		Shuffled Maps =1
		Failed Shuffles=0
		Merged Map outputs=1
		GC time elapsed (ms)=0
		Total committed heap usage (bytes)=455081984
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters 
		Bytes Read=823
	File Output Format Counters 
		Bytes Written=612
hadoop@ubuntu:~$ hadoop fs -cat /music/output/*
(love	1
And	4
Every	1
Far	3
Go	1
Heart	1
I	9
In	1
Love	2
My	1
Near	2
On	1
Once	2
That	1
Titanic)	1
We'll	1
Will	1
You	2
You're	1
a	1
across	1
always	1
and	8
are	3
believe	2
between	1
can	1
come	1
distance	1
does	2
door	2
dreams	1
fear	1
feel	1
for	1
forever	1
from	1
go	10
gone	1
have	1
heart	9
here	3
hold	1
how	1
in	4
is	1
know	2
last	1
let	1
life	1
lifetime	1
loved	1
more	2
my	9
never	1
night	1
nothing	1
on	12
one	2
opened	2
safe	1
see	1
show	1
spaces	1
stay	1
that	3
the	5
theme	1
there's	1
this	1
till	1
time	2
to	1
touch	1
true	1
us	2
was	1
way	1
we'll	1
we're	1
when	1
wherever	2
will	4
you	10
you're	2
hadoop@ubuntu:~$ hadoop fs -cat /text3
hadoop@ubuntu:~$ hadoop fs -ls /music/output/
Found 2 items
-rw-r--r--   1 hadoop supergroup          0 2017-12-15 15:24 /music/output/_SUCCESS
-rw-r--r--   1 hadoop supergroup        612 2017-12-15 15:24 /music/output/part-r-00000
hadoop@ubuntu:~$ ^C
hadoop@ubuntu:~$ hadoop fs -cat /text3
hadoop@ubuntu:~$ 

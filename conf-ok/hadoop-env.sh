# Set Hadoop-specific environment variables here.

# The only required environment variable is JAVA_HOME.  All others are
# optional.  When running a distributed configuration it is best to
# set JAVA_HOME in this file, so that it is correctly defined on
# remote nodes.

# The java implementation to use.  Required.
  export JAVA_HOME=/home/hadoop/jdk1.6.0_38

# Extra Java CLASSPATH elements.  Optional.
# export HADOOP_CLASSPATH="<extra_entries>:$HADOOP_CLASSPATH"

# The maximum amount of heap to use, in MB. Default is 1000.
# export HADOOP_HEAPSIZE=2000

# Extra Java runtime options.  Empty by default.
# if [ "$HADOOP_OPTS" == "" ]; then export HADOOP_OPTS=-server; else HADOOP_OPTS+=" -server"; fi

# Command specific options appended to HADOOP_OPTS when specified
export HADOOP_NAMENODE_OPTS="-Xmx48g -verbose:gc -XX:+PrintHeapAtGC -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -XX:+PrintGCApplicationStoppedTime -XX:+UseConcMarkSweepGC -Xloggc:$HADOOP_HOME/logs/gc-$(hostname)-hadoop-namenode.log -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=7875 -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false $HADOOP_NAMENODE_OPTS"
export HADOOP_SECONDARYNAMENODE_OPTS="-Xmx48g -verbose:gc -XX:+PrintHeapAtGC -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -XX:+PrintGCApplicationStoppedTime -XX:+UseConcMarkSweepGC -Xloggc:$HADOOP_HOME/logs/gc-$(hostname)-hadoop-secondarynamenode.log -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=7876 -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false $HADOOP_SECONDARYNAMENODE_OPTS"
export HADOOP_DATANODE_OPTS="-Xmx2g -verbose:gc -XX:+PrintHeapAtGC -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -XX:+PrintGCApplicationStoppedTime -XX:+UseConcMarkSweepGC -Xloggc:$HADOOP_HOME/logs/gc-$(hostname)-hadoop-datanode.log -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=7877 -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false $HADOOP_DATANODE_OPTS"
export HADOOP_BALANCER_OPTS="-Dcom.sun.management.jmxremote $HADOOP_BALANCER_OPTS"
export HADOOP_JOBTRACKER_OPTS="-Xmx32g -verbose:gc -XX:+PrintHeapAtGC -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -XX:+PrintGCApplicationStoppedTime -XX:+UseConcMarkSweepGC -Xloggc:$HADOOP_HOME/logs/gc-$(hostname)-hadoop-jobtracker.log -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=7878 -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false $HADOOP_JOBTRACKER_OPTS"
export HADOOP_TASKTRACKER_OPTS="-Xmx2g -verbose:gc -XX:+PrintHeapAtGC -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -XX:+PrintGCApplicationStoppedTime -XX:+UseConcMarkSweepGC -Xloggc:$HADOOP_HOME/logs/gc-$(hostname)-hadoop-tasktracker.log  -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=7879 -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false"
# The following applies to multiple commands (fs, dfs, fsck, distcp etc)
# export HADOOP_CLIENT_OPTS

# Extra ssh options.  Empty by default.
# export HADOOP_SSH_OPTS="-o ConnectTimeout=1 -o SendEnv=HADOOP_CONF_DIR"

# Where log files are stored.  $HADOOP_HOME/logs by default.
# export HADOOP_LOG_DIR=${HADOOP_HOME}/logs

# File naming remote slave hosts.  $HADOOP_HOME/conf/slaves by default.
# export HADOOP_SLAVES=${HADOOP_HOME}/conf/slaves

# host:path where hadoop code should be rsync'd from.  Unset by default.
# export HADOOP_MASTER=master:/home/$USER/src/hadoop

# Seconds to sleep between slave commands.  Unset by default.  This
# can be useful in large clusters, where, e.g., slave rsyncs can
# otherwise arrive faster than the master can service them.
# export HADOOP_SLAVE_SLEEP=0.1

# The directory where pid files are stored. /tmp by default.
# NOTE: this should be set to a directory that can only be written to by 
#       the users that are going to run the hadoop daemons.  Otherwise there is
#       the potential for a symlink attack.
# export HADOOP_PID_DIR=/var/hadoop/pids

# A string representing this instance of hadoop. $USER by default.
# export HADOOP_IDENT_STRING=$USER

# The scheduling priority for daemon processes.  See 'man nice'.
#  export HADOOP_NICENESS=10

Apache pig tutorial

1. Download Apache Pig in hduser home directory.
      https://mirrors.estointernet.in/apache/pig/pig-0.16.0/pig-0.16.0.tar.gz

2. extract the tar file.
      tar -xvf pig-0.16.0.tar.gz 

3. Open the bashrc file 

       sudo nano ~/.bashrc  

       add the following Pig environment variables.

        export PIG_HOME=/home/hduser/pig-0.16.0  
        export PATH=$PATH:$PIG_HOME/bin 

         Save the file.

4. Update shell environment
         source ~/.bashrc  

5. Check Pig
         source ~/.bashrc  

Apache Pig executes in 2 modes - Local Mode and MapReduce Mode

Local Mode - It executes in a single JV. It is used for development purpose.
It runs using localhost.The local mode works on a local file system. The input and output data is stored in the local file system.

The Local Mode is started using command

pig -x local 

MapReduce Mode -
The MapReduce mode or Hadoop Mode is the default mode for Pig.
In this Pig renders Pig Latin into MapReduce jobs and executes them on the cluster.
It can be executed on a semi-distributed or fully distributed Hadoop cluster.
Here, the input and output data are present on HDFS

The MapReduce Mode is started using command 

pig
or 
pig -x mapreduce

Pig program can be exeuted in the following ways.
Interative Mode - This mode executes in the Grunt shell. You type Pig Latin statements and ommand interatively at the command prompt.

Bath Mode - This mode allows you to run scripts which contain Pig Latin commands. The extension of the file is .pig.

Embedded Mode - This mode allows you to define your own functions. These functions can be written in Java and Python.

6. Using Pig find the most occurred start letter.

Create a file in hduser home directory by name demo.txt.
Type following
001,Rajiv,23,Hyderabad
002,siddarth,27,Kolkata
003,Rajesh,22,Delhi
004,Soham,21,Pune
Save the file.

Then start pig in interactive mode. And type following 

demo  =   LOAD '/pig-test/demo.txt' USING PigStorage(',') 
   as (id:int,name:chararray,age:int,city:chararray);

dump demo;
  


 

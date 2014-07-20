#!/bin/sh

# -- create directory «pig_statement_examples» if it doesn't exist
hadoop fs -test -d pig_statement_examples
if [ $? -ne 0 ]; then
  hadoop fs -mkdir pig_statement_examples
fi

# -- load local file «load_data.csv» into hdfs
hadoop fs -put    load_data.csv   pig_statement_examples


# Run 4 variants of LOAD

pig_cmd="pig -4 /etc/pig/conf/log4j.properties"

echo          ----------------------------------
echo          load__dump.pig
echo
$pig_cmd -f   load__dump.pig                        2>/dev/null

echo          ----------------------------------
echo          load-as__dump.pig
echo
$pig_cmd -f   load-as__dump.pig                     2>/dev/null

echo          ----------------------------------
echo          load-using-PigStorage__dump.pig
echo
$pig_cmd -f   load-using-PigStorage__dump.pig       2>/dev/null

echo          ----------------------------------
echo          load-as-using-PigStorage__dump.pig
echo
$pig_cmd -f   load-as-using-PigStorage__dump.pig    2>/dev/null


# Remove file from HDFS
hadoop fs -rm -r pig_statement_examples

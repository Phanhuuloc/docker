package org.apache.hadoop.example1;

import java.io.IOException;
import au.com.bytecode.opencsv.CSVParser;
import org.apache.hadoop.io.*;
import org.apache.hadoop.mapreduce.Mapper;

public class FlightsByCarrierMapper extends
        Mapper<LongWritable, Text, Text, IntWritable>{
    @Override
    protected void map(LongWritable key, Text value, Context context)
            throws IOException, InterruptedException {

        if (key.get() > 0) {
            String[] lines = new
                    CSVParser().parseLine(value.toString());
            context.write(new Text(lines[8]), new IntWritable(1));
        }
    }
}

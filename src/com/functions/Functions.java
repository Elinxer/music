package com.functions;
import java.io.*;
import java.util.*;

public class Functions {
	
	/* 获取当前时间戳，10位长，针对mysql */
    public String getNowTime() {
    	Date date = new Date();
	    long time = date.getTime();
	    //mysq 时间戳只有10位 要做处理
	    String createTime = time + "";
	    createTime = createTime.substring(0, 10);
    	return createTime;
    }
	
}

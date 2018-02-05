package com.teamRocket.utils;

import java.util.UUID;

//TeamRocket工具类
public class TRStringUtils {

    //获取uuid
    public static String getUUID(){

        String uuid = UUID.randomUUID().toString();

        //去掉“-”
        return uuid.replaceAll("-", "");

    }

    //判断字符串
    public static boolean regular(Object str){

        //判断是否为空
        if (str != null){

            //判断是否为String
            if(str instanceof String){

                String newStr = ((String)str).trim().toUpperCase();

                if(!newStr.equals("")) return true;

            }

        }

        return false;

    }

}

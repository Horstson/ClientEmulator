package com.c4game.client.core.util.beetl;

import org.beetl.core.Context;
import org.beetl.core.Function;

import com.c4game.client.core.util.UUIDUtil;

public class UUIDFunction implements Function {

    @Override
    public String call(Object[] arg0, Context arg1) {
        return UUIDUtil.uuid();
    }

}

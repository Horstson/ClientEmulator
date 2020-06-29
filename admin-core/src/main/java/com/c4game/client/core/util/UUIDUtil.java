package com.c4game.client.core.util;

import java.util.UUID;

public class UUIDUtil {
    public static String uuid() {
        UUID uuid = UUID.randomUUID();
        String randomUUIDString = uuid.toString();
        return randomUUIDString;
    }
    
}

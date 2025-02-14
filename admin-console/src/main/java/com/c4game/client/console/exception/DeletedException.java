package com.c4game.client.console.exception;

import com.c4game.client.core.util.PlatformException;

/**
 * 描述:  已删除异常
 *
 * @author : xiandafu
 */
public class DeletedException extends PlatformException {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public DeletedException() {
        super();
    }

    public DeletedException(String message) {
        super(message);
    }
}

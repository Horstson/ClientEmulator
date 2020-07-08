package com.c4game.client.console.exception;

import com.c4game.client.core.util.PlatformException;

/**
 * 描述: 资源不存在异常
 *
 * @author : xiandafu
 */
public class NoResourceException extends PlatformException {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public NoResourceException() {
        super();
    }

    public NoResourceException(String message) {
        super(message);
    }
}

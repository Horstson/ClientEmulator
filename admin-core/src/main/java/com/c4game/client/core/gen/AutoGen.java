package com.c4game.client.core.gen;

import java.io.Writer;

import com.c4game.client.core.gen.model.Entity;

public interface AutoGen {
	public void make(Target target,Entity entity);
	public String getName();
}

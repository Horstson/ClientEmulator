package com.c4game.client.core.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import com.c4game.client.core.util.enums.CoreDictType;

/**
 * 描述: 用来标注词典字段
 * 
 *
 * @author : lijiazhi
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.FIELD)
public @interface Dict {

    /**
     * 类型
     *
     * @return
     */
    public String type() default "";

    /**
     * 默认值
     *
     * @return
     */
    public String defaultDisplay() default "";

    /**
     * 字典文本的后缀
     *
     * @return
     */
    public String suffix() default "Text";
}

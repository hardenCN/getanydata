package com.getanydata.annotations;

import java.lang.annotation.*;

/**
 * Created by pans on 15/11/7.
 */
@Target({ElementType.METHOD, ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface GetAnyDataSecurity {
    enum SecurityType{
        阻止机器提交
    }
    String value() default "";
    SecurityType type() default SecurityType.阻止机器提交;

}



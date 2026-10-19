package com.nearme.platform.opensdk.pay.download.util;

import com.json.o2;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;

/* JADX INFO: loaded from: classes4.dex */
public class BeanUtils {
    private BeanUtils() {
    }

    protected static Field a(Class<?> cls, String str) {
        while (cls != Object.class) {
            try {
                return cls.getDeclaredField(str);
            } catch (NoSuchFieldException unused) {
                cls = cls.getSuperclass();
            }
        }
        return null;
    }

    protected static Field b(Object obj, String str) {
        return a(obj.getClass(), str);
    }

    protected static void c(Field field) {
        if (Modifier.isPublic(field.getModifiers()) && Modifier.isPublic(field.getDeclaringClass().getModifiers())) {
            return;
        }
        field.setAccessible(true);
    }

    public static void setFieldValue(Object obj, String str, Object obj2) {
        Field fieldB = b(obj, str);
        if (fieldB != null) {
            c(fieldB);
            try {
                fieldB.set(obj, obj2);
                return;
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
                return;
            }
        }
        throw new IllegalArgumentException("Could not find field [" + str + "] on target [" + obj + o2.i.f6491e);
    }
}

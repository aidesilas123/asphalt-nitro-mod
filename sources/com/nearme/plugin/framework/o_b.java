package com.nearme.plugin.framework;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: RefInvoker.java */
/* JADX INFO: loaded from: classes4.dex */
public final class o_b {
    public static Object o_a(Object obj, String str, String str2, Class<?>[] clsArr, Object[] objArr) throws Exception {
        try {
            Method declaredMethod = Class.forName(str).getDeclaredMethod(str2, clsArr);
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(obj, objArr);
        } catch (Exception e2) {
            throw e2;
        }
    }

    public static Object o_b(Object obj, String str, String str2, Class<?>[] clsArr, Object[] objArr) {
        try {
            Method declaredMethod = Class.forName(str).getDeclaredMethod(str2, clsArr);
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(obj, objArr);
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
            return null;
        } catch (IllegalAccessException e3) {
            e3.printStackTrace();
            return null;
        } catch (IllegalArgumentException e4) {
            e4.printStackTrace();
            return null;
        } catch (NoSuchMethodException e5) {
            e5.printStackTrace();
            return null;
        } catch (SecurityException e6) {
            e6.printStackTrace();
            return null;
        } catch (InvocationTargetException e7) {
            e7.printStackTrace();
            return null;
        } catch (Exception e8) {
            e8.printStackTrace();
            return null;
        }
    }
}

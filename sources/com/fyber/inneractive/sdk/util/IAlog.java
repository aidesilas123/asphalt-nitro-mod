package com.fyber.inneractive.sdk.util;

import com.fyber.inneractive.sdk.logger.FMPLogger;
import com.json.o2;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class IAlog {
    public static int a = 4;
    public static final com.fyber.inneractive.sdk.logger.a b = new com.fyber.inneractive.sdk.logger.a();
    public static final List<FMPLogger> c = new a();

    public class a extends CopyOnWriteArrayList<FMPLogger> {
        public a() {
            add(IAlog.b);
        }
    }

    public static String a(Class<?> cls) {
        return "(" + Thread.currentThread().getName() + "): " + cls.getSimpleName() + o2.i.f6490d + Integer.toHexString(System.identityHashCode(cls)) + "] ";
    }

    public static String a(Object obj) {
        return "(" + Thread.currentThread().getName() + "): " + obj.getClass().getSimpleName() + o2.i.f6490d + Integer.toHexString(System.identityHashCode(obj)) + "] ";
    }

    public static void a(int i, Exception exc, String str, Object... objArr) {
        Iterator it = ((CopyOnWriteArrayList) c).iterator();
        while (it.hasNext()) {
            ((FMPLogger) it.next()).log(i, null, str, objArr);
        }
    }

    public static void a(String str, Throwable th, Object... objArr) {
        Iterator it = ((CopyOnWriteArrayList) c).iterator();
        while (it.hasNext()) {
            ((FMPLogger) it.next()).error(str, th, objArr);
        }
    }

    public static void a(String str, Object... objArr) {
        Iterator it = ((CopyOnWriteArrayList) c).iterator();
        while (it.hasNext()) {
            ((FMPLogger) it.next()).debug(str, objArr);
        }
    }

    public static void b(String str, Object... objArr) {
        Iterator it = ((CopyOnWriteArrayList) c).iterator();
        while (it.hasNext()) {
            ((FMPLogger) it.next()).error(str, null, objArr);
        }
    }

    public static void c(String str, Object... objArr) {
        Iterator it = ((CopyOnWriteArrayList) c).iterator();
        while (it.hasNext()) {
            ((FMPLogger) it.next()).info(str, objArr);
        }
    }

    public static void d(String str, Object... objArr) {
        Iterator it = ((CopyOnWriteArrayList) c).iterator();
        while (it.hasNext()) {
            ((FMPLogger) it.next()).verbose(str, objArr);
        }
    }

    public static void e(String str, Object... objArr) {
        Iterator it = ((CopyOnWriteArrayList) c).iterator();
        while (it.hasNext()) {
            ((FMPLogger) it.next()).warning(str, objArr);
        }
    }
}

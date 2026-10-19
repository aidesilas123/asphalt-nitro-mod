package com.pgl.ssdk;

import java.lang.Thread;

/* JADX INFO: loaded from: classes4.dex */
public class m implements Thread.UncaughtExceptionHandler {
    private static volatile m c;
    private volatile boolean b = false;
    private final Thread.UncaughtExceptionHandler a = Thread.getDefaultUncaughtExceptionHandler();

    private m() {
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    public static m b() {
        if (c == null) {
            synchronized (m.class) {
                if (c == null) {
                    c = new m();
                }
            }
        }
        return c;
    }

    public boolean a() {
        return this.b;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        this.b = true;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.a;
        if (uncaughtExceptionHandler == null || uncaughtExceptionHandler == this) {
            return;
        }
        uncaughtExceptionHandler.uncaughtException(thread, th);
    }
}

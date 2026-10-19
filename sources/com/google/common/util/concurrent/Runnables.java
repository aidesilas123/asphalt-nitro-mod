package com.google.common.util.concurrent;

/* JADX INFO: loaded from: classes3.dex */
public final class Runnables {
    private static final Runnable a = new a();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    private Runnables() {
    }

    public static Runnable doNothing() {
        return a;
    }
}

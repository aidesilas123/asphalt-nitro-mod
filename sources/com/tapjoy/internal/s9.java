package com.tapjoy.internal;

/* JADX INFO: loaded from: classes4.dex */
public abstract class s9 {
    public static void a(Exception exc) {
        if (Error.class.isInstance(exc)) {
            try {
                throw ((Throwable) Error.class.cast(exc));
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        if (RuntimeException.class.isInstance(exc)) {
            try {
                throw ((Throwable) RuntimeException.class.cast(exc));
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        throw new RuntimeException(exc);
    }
}

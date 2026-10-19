package com.google.zxing;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ReaderException extends Exception {
    protected static boolean a;
    protected static final StackTraceElement[] b;

    static {
        a = System.getProperty("surefire.test.class.path") != null;
        b = new StackTraceElement[0];
    }

    ReaderException() {
    }

    ReaderException(Throwable th) {
        super(th);
    }

    public static void setStackTrace(boolean z) {
        a = z;
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        return null;
    }
}

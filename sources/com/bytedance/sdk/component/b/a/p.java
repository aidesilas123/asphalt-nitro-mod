package com.bytedance.sdk.component.b.a;

import java.io.Closeable;
import java.io.InputStream;

/* JADX INFO: compiled from: ResponseBody.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class p implements Closeable {
    public abstract long a();

    public abstract String b();

    public abstract InputStream c();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close();

    public abstract byte[] d();

    public abstract i e();
}

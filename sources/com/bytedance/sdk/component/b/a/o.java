package com.bytedance.sdk.component.b.a;

import java.io.Closeable;
import java.io.IOException;

/* JADX INFO: compiled from: Response.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class o implements Closeable {
    public abstract long a();

    public abstract String a(String str, String str2);

    public abstract long b();

    public abstract int c();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close();

    public abstract boolean d();

    public abstract String e() throws IOException;

    public abstract p f();

    public abstract f g();

    public abstract l h();

    public abstract j i();
}

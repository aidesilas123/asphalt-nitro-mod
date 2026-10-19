package com.fyber.inneractive.sdk.click;

import com.fyber.inneractive.sdk.click.l;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    public final l.d a;
    public final Throwable b;
    public final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f1923d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f1924e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List<i> f1925f = new ArrayList();

    public b(String str, l.d dVar, String str2, Throwable th) {
        this.f1923d = str;
        this.a = dVar;
        this.c = str2;
        this.b = th;
    }

    public String toString() {
        l.d dVar = this.a;
        if (dVar != l.d.FAILED) {
            return String.format("Open result: Success! target: %s method: %s", dVar, this.c);
        }
        Object[] objArr = new Object[1];
        Throwable th = this.b;
        objArr[0] = th != null ? th.getMessage() : "none";
        return String.format("Open result: Failed! error: %s", objArr);
    }
}

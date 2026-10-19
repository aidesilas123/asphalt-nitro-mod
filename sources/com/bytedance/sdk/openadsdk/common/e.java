package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.model.n;
import com.bytedance.sdk.openadsdk.core.model.p;

/* JADX INFO: compiled from: LandingPageLoadingStyle.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class e {
    protected final n b;
    protected String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected String[] f1258d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected View f1259e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected Context f1260f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected p f1261g;

    public e(Context context, String str, String[] strArr, n nVar, p pVar) {
        this.c = str;
        this.f1258d = strArr;
        this.f1260f = context;
        this.b = nVar;
        this.f1261g = pVar;
        a();
    }

    protected abstract void a();

    public abstract void a(int i);

    public abstract void b();

    public abstract void c();

    public void d() {
        c();
        this.f1259e = null;
        this.f1260f = null;
    }

    public View e() {
        return this.f1259e;
    }
}

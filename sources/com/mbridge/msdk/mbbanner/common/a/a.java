package com.mbridge.msdk.mbbanner.common.a;

import android.text.TextUtils;
import com.json.o2;
import com.mbridge.msdk.foundation.tools.w;

/* JADX INFO: compiled from: BannerReportData.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    private String a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7260d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f7261e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f7262f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f7263g;
    private int h;
    private boolean i;

    private a() {
    }

    public static a a() {
        return new a();
    }

    public final a a(int i) {
        this.h = i;
        return this;
    }

    public final a a(String str) {
        this.a = str;
        return this;
    }

    public final a a(boolean z) {
        this.i = z;
        return this;
    }

    public final a b(String str) {
        this.b = str;
        return this;
    }

    public final String b() {
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(this.b)) {
            sb.append("unit_id=");
            sb.append(this.b);
            sb.append(o2.i.c);
        }
        if (!TextUtils.isEmpty(this.c)) {
            sb.append("cid=");
            sb.append(this.c);
            sb.append(o2.i.c);
        }
        if (!TextUtils.isEmpty(this.f7260d)) {
            sb.append("rid=");
            sb.append(this.f7260d);
            sb.append(o2.i.c);
        }
        if (!TextUtils.isEmpty(this.f7261e)) {
            sb.append("rid_n=");
            sb.append(this.f7261e);
            sb.append(o2.i.c);
        }
        if (!TextUtils.isEmpty(this.f7262f)) {
            sb.append("creative_id=");
            sb.append(this.f7262f);
            sb.append(o2.i.c);
        }
        if (!TextUtils.isEmpty(this.f7263g)) {
            sb.append("reason=");
            sb.append(this.f7263g);
            sb.append(o2.i.c);
        }
        if (this.h != 0) {
            sb.append("result=");
            sb.append(this.h);
            sb.append(o2.i.c);
        }
        if (this.i) {
            sb.append("hb=1");
            sb.append(o2.i.c);
        }
        sb.append("network_type=");
        sb.append(w.r(com.mbridge.msdk.foundation.controller.b.d().g()));
        sb.append(o2.i.c);
        if (!TextUtils.isEmpty(this.a)) {
            sb.append("key=");
            sb.append(this.a);
        }
        return sb.toString();
    }

    public final a c(String str) {
        this.c = str;
        return this;
    }

    public final a d(String str) {
        this.f7261e = str;
        return this;
    }

    public final a e(String str) {
        this.f7260d = str;
        return this;
    }

    public final a f(String str) {
        this.f7262f = str;
        return this;
    }

    public final a g(String str) {
        this.f7263g = str;
        return this;
    }
}

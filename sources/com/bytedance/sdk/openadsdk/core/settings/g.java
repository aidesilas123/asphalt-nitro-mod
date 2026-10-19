package com.bytedance.sdk.openadsdk.core.settings;

import android.text.TextUtils;

/* JADX INFO: compiled from: MediationConfig.java */
/* JADX INFO: loaded from: classes2.dex */
public class g implements Comparable<g> {
    private final String a;
    private final String b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f1678d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f1679e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f1680f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f1681g;
    private final String h;

    public g(String str, String str2, int i, int i2, String str3, int i3, int i4, String str4) {
        this.a = str;
        this.b = str2;
        this.c = i;
        this.f1678d = i2;
        this.f1679e = str3;
        if (TextUtils.isEmpty(str3)) {
            this.f1679e = "0";
        }
        this.f1680f = i3;
        this.f1681g = i4;
        this.h = str4;
    }

    public int a() {
        return this.f1680f;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(g gVar) {
        if (this.f1680f < gVar.a()) {
            return -1;
        }
        return this.f1680f == gVar.a() ? 0 : 1;
    }
}

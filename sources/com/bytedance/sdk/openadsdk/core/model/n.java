package com.bytedance.sdk.openadsdk.core.model;

import android.text.TextUtils;

/* JADX INFO: compiled from: Image.java */
/* JADX INFO: loaded from: classes2.dex */
public class n {
    private String a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private double f1582d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f1583e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f1584f;

    public String a() {
        return this.a;
    }

    public void a(int i) {
        this.b = i;
    }

    public void a(String str) {
        this.a = str;
    }

    public void a(boolean z) {
        this.f1583e = z;
    }

    public int b() {
        return this.b;
    }

    public void b(int i) {
        this.c = i;
    }

    public void b(String str) {
        this.f1584f = str;
    }

    public int c() {
        return this.c;
    }

    public double d() {
        return this.f1582d;
    }

    public boolean e() {
        return !TextUtils.isEmpty(this.a) && this.b > 0 && this.c > 0;
    }

    public boolean f() {
        return this.f1583e;
    }

    public String g() {
        return this.f1584f;
    }
}

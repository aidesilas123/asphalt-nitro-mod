package com.mbridge.msdk.foundation.entity;

import java.util.List;

/* JADX INFO: compiled from: BidCacheBean.java */
/* JADX INFO: loaded from: classes4.dex */
public final class b {
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7054d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7055e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<String> f7057g;
    private String a = "";
    private String b = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f7056f = "";
    private long h = 0;
    private long i = 0;
    private long j = 0;

    public final String a() {
        return this.f7056f;
    }

    public final void a(int i) {
        this.f7055e = i;
    }

    public final void a(long j) {
        this.h = j;
    }

    public final void a(String str) {
        this.f7056f = str;
    }

    public final void a(List<String> list) {
        this.f7057g = list;
    }

    public final String b() {
        return this.a;
    }

    public final void b(int i) {
        this.f7054d = i;
    }

    public final void b(long j) {
        this.i = j;
    }

    public final void b(String str) {
        this.a = str;
    }

    public final List<String> c() {
        return this.f7057g;
    }

    public final void c(int i) {
        this.c = i;
    }

    public final void c(long j) {
        this.j = j;
    }

    public final void c(String str) {
        this.b = str;
    }

    public final long d() {
        return this.i;
    }

    public final long e() {
        return this.j;
    }

    public final String f() {
        return this.b;
    }
}

package com.json;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class b2 {
    private final int a;
    private final String b;
    private final Map<String, Object> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f6054d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f6055e;

    public b2(int i, String str, Map<String, Object> map, long j, String str2) {
        this.a = i;
        this.b = str;
        this.c = map;
        this.f6054d = j;
        this.f6055e = str2;
    }

    public Map<String, Object> a() {
        return this.c;
    }

    public String b() {
        return this.f6055e;
    }

    public String c() {
        return this.b;
    }

    public int d() {
        return this.a;
    }

    public long e() {
        return this.f6054d;
    }
}

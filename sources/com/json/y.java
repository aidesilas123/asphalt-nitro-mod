package com.json;

/* JADX INFO: loaded from: classes2.dex */
public class y {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f6738e = -1;
    private final a a;
    private final long b;
    private final long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f6739d;

    public enum a {
        MANUAL,
        MANUAL_WITH_AUTOMATIC_RELOAD,
        AUTOMATIC_LOAD_AFTER_CLOSE,
        AUTOMATIC_LOAD_WHILE_SHOW
    }

    public y(a aVar, long j, long j2, long j3) {
        this.a = aVar;
        this.b = j;
        this.c = j2;
        this.f6739d = j3;
    }

    public a a() {
        return this.a;
    }

    public long b() {
        return this.f6739d;
    }

    public long c() {
        return this.c;
    }

    public long d() {
        return this.b;
    }

    public boolean e() {
        a aVar = this.a;
        return aVar == a.AUTOMATIC_LOAD_AFTER_CLOSE || aVar == a.AUTOMATIC_LOAD_WHILE_SHOW;
    }

    public boolean f() {
        a aVar = this.a;
        return aVar == a.MANUAL || aVar == a.MANUAL_WITH_AUTOMATIC_RELOAD;
    }
}

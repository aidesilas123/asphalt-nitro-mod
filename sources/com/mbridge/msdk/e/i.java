package com.mbridge.msdk.e;

import java.io.Serializable;

/* JADX INFO: compiled from: EventTable.java */
/* JADX INFO: loaded from: classes4.dex */
public final class i implements Serializable {
    static String a = "CREATE TABLE IF NOT EXISTS %s (id INTEGER PRIMARY KEY,uuid TEXT,name TEXT,type INTEGER,time_stamp INTEGER,duration INTEGER,properties TEXT,priority INTEGER,state INTEGER,invalid_time INTEGER,ignore_max_timeout INTEGER,ignore_max_retry_times INTEGER,report_count INTEGER)";
    static String b = "DROP TABLE IF EXISTS %s";
    private final e c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6972d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f6973e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f6974f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f6975g;
    private boolean h = false;
    private boolean i = false;

    public i(e eVar) {
        this.c = eVar;
        this.f6974f = eVar.e();
    }

    public final void a(int i) {
        this.f6972d = i;
    }

    public final void a(long j) {
        this.f6975g = j;
    }

    public final void a(boolean z) {
        this.h = z;
    }

    public final boolean a() {
        return this.h;
    }

    public final void b(int i) {
        this.f6973e = i;
    }

    public final void b(boolean z) {
        this.i = z;
    }

    public final boolean b() {
        return this.i;
    }

    public final e c() {
        return this.c;
    }

    public final int d() {
        return this.f6972d;
    }

    public final int e() {
        return this.f6973e;
    }

    public final String f() {
        return this.f6974f;
    }

    public final long g() {
        return this.f6975g;
    }
}

package com.mbridge.msdk.e;

import java.io.Serializable;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: compiled from: Event.java */
/* JADX INFO: loaded from: classes4.dex */
public final class e implements Serializable {
    private String a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private JSONObject f6966d;
    private h i;
    private int b = 0;
    private int c = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f6969g = 0;
    private long h = 604800000;
    private boolean j = false;
    private boolean k = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f6968f = System.currentTimeMillis();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6967e = UUID.randomUUID().toString();

    public e(String str) {
        this.a = str;
    }

    public final String a() {
        return this.a;
    }

    public final void a(int i) {
        this.b = i;
    }

    public final void a(long j) {
        this.f6968f = j;
    }

    public final void a(h hVar) {
        this.i = hVar;
    }

    final void a(String str) {
        this.f6967e = str;
    }

    public final void a(JSONObject jSONObject) {
        this.f6966d = jSONObject;
    }

    public final void a(boolean z) {
        this.k = z;
    }

    public final int b() {
        return this.b;
    }

    public final void b(int i) {
        this.c = i;
    }

    public final void b(long j) {
        this.f6969g = j;
    }

    public final int c() {
        return this.c;
    }

    final void c(long j) {
        this.h = j;
    }

    public final JSONObject d() {
        return this.f6966d;
    }

    public final String e() {
        return this.f6967e;
    }

    public final long f() {
        return this.f6968f;
    }

    public final long g() {
        return this.f6969g;
    }

    public final long h() {
        return this.h;
    }

    public final h i() {
        return this.i;
    }

    public final boolean j() {
        return this.j;
    }

    public final boolean k() {
        return this.k;
    }
}

package com.mbridge.msdk.click.a;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashSet;

/* JADX INFO: compiled from: RetryUrlRecordData.java */
/* JADX INFO: loaded from: classes4.dex */
public final class b {
    public static int a = 0;
    public static int b = 1;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6793d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private HashSet<String> f6794e = new HashSet<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f6795f = System.currentTimeMillis();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private CampaignEx f6796g;
    private String h;
    private int i;
    private boolean j;
    private boolean k;
    private int l;

    public b(String str, String str2) {
        this.c = str;
        b(str2);
    }

    public final void a(int i) {
        this.l = i;
    }

    public final void a(CampaignEx campaignEx) {
        this.f6796g = campaignEx;
    }

    public final void a(String str) {
        this.h = str;
    }

    public final void a(boolean z) {
        this.j = z;
    }

    public final boolean a() {
        return this.j;
    }

    public final void b(int i) {
        this.i = i;
    }

    public final void b(String str) {
        this.f6793d++;
        this.f6794e.add(str);
    }

    public final void b(boolean z) {
        this.k = z;
    }

    public final boolean b() {
        return this.k;
    }

    public final int c() {
        return this.l;
    }

    public final int d() {
        return this.i;
    }

    public final String e() {
        return this.h;
    }

    public final CampaignEx f() {
        return this.f6796g;
    }

    public final String g() {
        return this.c;
    }

    public final int h() {
        return this.f6793d;
    }

    public final HashSet<String> i() {
        return this.f6794e;
    }

    public final long j() {
        return this.f6795f;
    }
}

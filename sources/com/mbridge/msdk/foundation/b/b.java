package com.mbridge.msdk.foundation.b;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.u;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: CandidateEntity.java */
/* JADX INFO: loaded from: classes4.dex */
public final class b {
    private String a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CopyOnWriteArrayList<CampaignEx> f7008d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f7009e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private double f7010f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f7011g;
    private int h;
    private long i;

    public final long a() {
        return this.i;
    }

    public final void a(int i) {
        this.f7011g = i;
    }

    public final void a(long j) {
        this.i = j;
    }

    public final void a(String str) {
        this.a = str;
    }

    public final void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
        this.f7008d = copyOnWriteArrayList;
    }

    public final String b() {
        return this.a;
    }

    public final void b(int i) {
        this.h = i;
    }

    public final void b(long j) {
        this.f7009e = j;
    }

    public final void b(String str) {
        this.b = str;
    }

    public final String c() {
        return this.b;
    }

    public final void c(String str) {
        this.c = str;
    }

    public final String d() {
        return this.c;
    }

    public final void d(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String strB = u.b(str);
        if (TextUtils.isEmpty(strB)) {
            return;
        }
        try {
            double d2 = Double.parseDouble(strB);
            if (d2 <= 0.0d) {
                return;
            }
            this.f7010f = d2;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final CopyOnWriteArrayList<CampaignEx> e() {
        return this.f7008d;
    }

    public final long f() {
        return this.f7009e;
    }

    public final double g() {
        return this.f7010f;
    }

    public final int h() {
        return this.f7011g;
    }

    public final int i() {
        return this.h;
    }
}

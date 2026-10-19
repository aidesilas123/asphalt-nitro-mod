package com.json.adqualitysdk.sdk.i;

/* JADX INFO: loaded from: classes4.dex */
public final class hq {
    private static hq a;
    private final hj b = new hj();
    private final hs c = new hs();

    private hq() {
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static synchronized void m769() {
        a = null;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static synchronized hq m770() {
        if (a == null) {
            a = new hq();
        }
        return a;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final hs m771() {
        return this.c;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final hj m772() {
        return this.b;
    }
}

package com.tapjoy.internal;

import android.support.v4.media.session.PlaybackStateCompat;

/* JADX INFO: loaded from: classes4.dex */
public abstract class v6 {
    public static r7 a;
    public static long b;

    public static r7 a() {
        synchronized (v6.class) {
            r7 r7Var = a;
            if (r7Var == null) {
                return new r7();
            }
            a = r7Var.f7986f;
            r7Var.f7986f = null;
            b -= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            return r7Var;
        }
    }

    public static void a(r7 r7Var) {
        if (r7Var.f7986f != null || r7Var.f7987g != null) {
            throw new IllegalArgumentException();
        }
        if (r7Var.f7984d) {
            return;
        }
        synchronized (v6.class) {
            long j = b + PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            if (j > PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                return;
            }
            b = j;
            r7Var.f7986f = a;
            r7Var.c = 0;
            r7Var.b = 0;
            a = r7Var;
        }
    }
}

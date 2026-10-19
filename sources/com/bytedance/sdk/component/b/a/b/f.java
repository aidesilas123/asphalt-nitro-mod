package com.bytedance.sdk.component.b.a.b;

import android.support.v4.media.session.PlaybackStateCompat;

/* JADX INFO: compiled from: SegmentPool.java */
/* JADX INFO: loaded from: classes2.dex */
final class f {
    static e a;
    static long b;

    private f() {
    }

    static e a() {
        synchronized (f.class) {
            e eVar = a;
            if (eVar == null) {
                return new e();
            }
            a = eVar.f900f;
            eVar.f900f = null;
            b -= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            return eVar;
        }
    }

    static void a(e eVar) {
        if (eVar.f900f != null || eVar.f901g != null) {
            throw new IllegalArgumentException();
        }
        if (eVar.f898d) {
            return;
        }
        synchronized (f.class) {
            long j = b;
            if (j + PlaybackStateCompat.ACTION_PLAY_FROM_URI > PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                return;
            }
            b = j + PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            eVar.f900f = a;
            eVar.c = 0;
            eVar.b = 0;
            a = eVar;
        }
    }
}

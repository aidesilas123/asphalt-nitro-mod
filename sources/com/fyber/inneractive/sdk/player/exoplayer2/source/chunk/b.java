package com.fyber.inneractive.sdk.player.exoplayer2.source.chunk;

import android.util.Log;
import com.fyber.inneractive.sdk.player.exoplayer2.trackselection.e;
import com.fyber.inneractive.sdk.player.exoplayer2.upstream.v;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    public static boolean a(e eVar, int i, Exception exc, long j) {
        if (!a(exc)) {
            return false;
        }
        boolean zA = eVar.a(i, j);
        int i2 = ((v) exc).a;
        if (zA) {
            Log.w("ChunkedTrackBlacklist", "Blacklisted: duration=" + j + ", responseCode=" + i2 + ", format=" + eVar.a(i));
        } else {
            Log.w("ChunkedTrackBlacklist", "Blacklisting failed (cannot blacklist last enabled track): responseCode=" + i2 + ", format=" + eVar.a(i));
        }
        return zA;
    }

    public static boolean a(Exception exc) {
        if (!(exc instanceof v)) {
            return false;
        }
        int i = ((v) exc).a;
        return i == 404 || i == 410;
    }
}

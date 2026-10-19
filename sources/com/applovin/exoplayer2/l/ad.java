package com.applovin.exoplayer2.l;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ad implements d {
    protected ad() {
    }

    @Override // com.applovin.exoplayer2.l.d
    public o a(Looper looper, @Nullable Handler.Callback callback) {
        return new ae(new Handler(looper, callback));
    }

    @Override // com.applovin.exoplayer2.l.d
    public long oK() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.applovin.exoplayer2.l.d
    public long oL() {
        return SystemClock.uptimeMillis();
    }

    @Override // com.applovin.exoplayer2.l.d
    public void oM() {
    }
}

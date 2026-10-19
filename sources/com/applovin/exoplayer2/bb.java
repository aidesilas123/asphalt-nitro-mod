package com.applovin.exoplayer2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class bb {

    @Nullable
    private final PowerManager iT;

    @Nullable
    private PowerManager.WakeLock iU;
    private boolean iV;
    private boolean iW;

    public bb(Context context) {
        this.iT = (PowerManager) context.getApplicationContext().getSystemService("power");
    }

    @SuppressLint({"WakelockTimeout"})
    /* JADX INFO: renamed from: do, reason: not valid java name */
    private void m27do() {
        PowerManager.WakeLock wakeLock = this.iU;
        if (wakeLock == null) {
            return;
        }
        if (this.iV && this.iW) {
            wakeLock.acquire();
        } else {
            wakeLock.release();
        }
    }

    public void C(boolean z) {
        this.iW = z;
        m27do();
    }

    public void setEnabled(boolean z) {
        if (z && this.iU == null) {
            PowerManager powerManager = this.iT;
            if (powerManager == null) {
                com.applovin.exoplayer2.l.q.h("WakeLockManager", "PowerManager is null, therefore not creating the WakeLock.");
                return;
            } else {
                PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, "ExoPlayer:WakeLockManager");
                this.iU = wakeLockNewWakeLock;
                wakeLockNewWakeLock.setReferenceCounted(false);
            }
        }
        this.iV = z;
        m27do();
    }
}

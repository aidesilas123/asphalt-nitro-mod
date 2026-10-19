package com.applovin.exoplayer2;

import android.content.Context;
import android.net.wifi.WifiManager;
import androidx.annotation.Nullable;
import com.json.k2;

/* JADX INFO: loaded from: classes.dex */
final class bc {
    private boolean iV;
    private boolean iW;

    @Nullable
    private final WifiManager iX;

    @Nullable
    private WifiManager.WifiLock iY;

    public bc(Context context) {
        this.iX = (WifiManager) context.getApplicationContext().getSystemService(k2.b);
    }

    private void dp() {
        WifiManager.WifiLock wifiLock = this.iY;
        if (wifiLock == null) {
            return;
        }
        if (this.iV && this.iW) {
            wifiLock.acquire();
        } else {
            wifiLock.release();
        }
    }

    public void C(boolean z) {
        this.iW = z;
        dp();
    }

    public void setEnabled(boolean z) {
        if (z && this.iY == null) {
            WifiManager wifiManager = this.iX;
            if (wifiManager == null) {
                com.applovin.exoplayer2.l.q.h("WifiLockManager", "WifiManager is null, therefore not creating the WifiLock.");
                return;
            } else {
                WifiManager.WifiLock wifiLockCreateWifiLock = wifiManager.createWifiLock(3, "ExoPlayer:WifiLockManager");
                this.iY = wifiLockCreateWifiLock;
                wifiLockCreateWifiLock.setReferenceCounted(false);
            }
        }
        this.iV = z;
        dp();
    }
}

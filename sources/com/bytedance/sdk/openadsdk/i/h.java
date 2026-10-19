package com.bytedance.sdk.openadsdk.i;

import android.content.Context;
import android.media.AudioManager;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;

/* JADX INFO: compiled from: VolumeChangeObserver.java */
/* JADX INFO: loaded from: classes2.dex */
public class h {
    private final AudioManager a;
    private int b = -1;
    private boolean c = false;

    public h(Context context) {
        this.a = (AudioManager) context.getApplicationContext().getSystemService("audio");
    }

    private void a(int i, int i2, int i3) {
        try {
            this.a.setStreamVolume(i, i2, i3);
        } catch (Throwable unused) {
        }
    }

    public int a() {
        return this.b;
    }

    public void a(int i) {
        this.b = i;
    }

    public void a(boolean z) {
        a(z, false);
    }

    public void a(boolean z, boolean z2) {
        if (this.a == null) {
            return;
        }
        int i = 0;
        if (z) {
            int iF = DeviceUtils.f();
            if (iF != 0) {
                this.b = iF;
            }
            l.b("VolumeChangeObserver", "mute set volume to 0");
            a(3, 0, 0);
            this.c = true;
            return;
        }
        int iH = this.b;
        if (iH != 0) {
            if (iH == -1) {
                if (!z2) {
                    return;
                } else {
                    iH = DeviceUtils.h() / 15;
                }
            }
            l.b("VolumeChangeObserver", "not mute set volume to " + iH + " mLastVolume=" + this.b);
            this.b = -1;
            a(3, iH, i);
            this.c = true;
        }
        iH = DeviceUtils.h() / 15;
        i = 1;
        l.b("VolumeChangeObserver", "not mute set volume to " + iH + " mLastVolume=" + this.b);
        this.b = -1;
        a(3, iH, i);
        this.c = true;
    }

    public boolean b() {
        if (!this.c) {
            return false;
        }
        this.c = false;
        return true;
    }
}

package com.gameloft.glads;

import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;

/* JADX INFO: compiled from: VolumeObserver.java */
/* JADX INFO: loaded from: classes2.dex */
public class b extends ContentObserver {
    int a;
    AndroidAds b;

    public b(AndroidAds androidAds) {
        super(new Handler(Utils.GetContext().getMainLooper()));
        this.a = -1;
        this.b = androidAds;
        Utils.GetContext().getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    int a() {
        return ((AudioManager) Utils.GetContext().getSystemService("audio")).getStreamVolume(3);
    }

    public void b() {
        Utils.GetContext().getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public boolean deliverSelfNotifications() {
        return super.deliverSelfNotifications();
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        int iA = a();
        if (iA != this.a) {
            this.b.OnVolumeChanged();
            this.a = iA;
        }
    }
}

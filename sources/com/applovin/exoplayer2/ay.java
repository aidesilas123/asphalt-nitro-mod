package com.applovin.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class ay {
    private final Handler I;
    private final AudioManager K;
    private final Context hr;
    private final a ip;

    @Nullable
    private b iq;
    private int ir;
    private int is;
    private boolean it;

    public interface a {
        void ai(int i);

        void f(int i, boolean z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class b extends BroadcastReceiver {
        private b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Handler handler = ay.this.I;
            final ay ayVar = ay.this;
            handler.post(new Runnable() { // from class: com.applovin.exoplayer2.o0
                @Override // java.lang.Runnable
                public final void run() {
                    ay.d(ayVar);
                }
            });
        }
    }

    public ay(Context context, Handler handler, a aVar) {
        Context applicationContext = context.getApplicationContext();
        this.hr = applicationContext;
        this.I = handler;
        this.ip = aVar;
        AudioManager audioManager = (AudioManager) com.applovin.exoplayer2.l.a.N((AudioManager) applicationContext.getSystemService("audio"));
        this.K = audioManager;
        this.ir = 3;
        this.is = a(audioManager, 3);
        this.it = b(audioManager, this.ir);
        b bVar = new b();
        try {
            applicationContext.registerReceiver(bVar, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            this.iq = bVar;
        } catch (RuntimeException e2) {
            com.applovin.exoplayer2.l.q.b("StreamVolumeManager", "Error registering stream volume receiver", e2);
        }
    }

    private static int a(AudioManager audioManager, int i) {
        try {
            return audioManager.getStreamVolume(i);
        } catch (RuntimeException e2) {
            com.applovin.exoplayer2.l.q.b("StreamVolumeManager", "Could not retrieve stream volume for stream type " + i, e2);
            return audioManager.getStreamMaxVolume(i);
        }
    }

    private static boolean b(AudioManager audioManager, int i) {
        return com.applovin.exoplayer2.l.ai.acV >= 23 ? audioManager.isStreamMute(i) : a(audioManager, i) == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void d(ay ayVar) {
        ayVar.dc();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dc() {
        int iA = a(this.K, this.ir);
        boolean zB = b(this.K, this.ir);
        if (this.is == iA && this.it == zB) {
            return;
        }
        this.is = iA;
        this.it = zB;
        this.ip.f(iA, zB);
    }

    public void aj(int i) {
        if (this.ir == i) {
            return;
        }
        this.ir = i;
        dc();
        this.ip.ai(i);
    }

    public int da() {
        if (com.applovin.exoplayer2.l.ai.acV >= 28) {
            return this.K.getStreamMinVolume(this.ir);
        }
        return 0;
    }

    public int db() {
        return this.K.getStreamMaxVolume(this.ir);
    }

    public void release() {
        b bVar = this.iq;
        if (bVar != null) {
            try {
                this.hr.unregisterReceiver(bVar);
            } catch (RuntimeException e2) {
                com.applovin.exoplayer2.l.q.b("StreamVolumeManager", "Error unregistering stream volume receiver", e2);
            }
            this.iq = null;
        }
    }
}

package com.applovin.exoplayer2;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
final class c {
    private final AudioManager K;
    private final a L;

    @Nullable
    private b M;

    @Nullable
    private com.applovin.exoplayer2.b.d N;
    private int P;
    private AudioFocusRequest R;
    private boolean S;
    private float Q = 1.0f;
    private int O = 0;

    /* JADX INFO: Access modifiers changed from: private */
    class a implements AudioManager.OnAudioFocusChangeListener {
        private final Handler I;

        public a(Handler handler) {
            this.I = handler;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void m(int i) {
            c.this.k(i);
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(final int i) {
            this.I.post(new Runnable() { // from class: com.applovin.exoplayer2.t0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.m(i);
                }
            });
        }
    }

    public interface b {
        void b(float f2);

        void l(int i);
    }

    public c(Context context, Handler handler, b bVar) {
        this.K = (AudioManager) com.applovin.exoplayer2.l.a.checkNotNull((AudioManager) context.getApplicationContext().getSystemService("audio"));
        this.M = bVar;
        this.L = new a(handler);
    }

    private static int b(@Nullable com.applovin.exoplayer2.b.d dVar) {
        if (dVar == null) {
            return 0;
        }
        switch (dVar.jG) {
            case 0:
                com.applovin.exoplayer2.l.q.h("AudioFocusManager", "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
                return 1;
            case 1:
            case 14:
                return 1;
            case 2:
            case 4:
                return 2;
            case 3:
                return 0;
            case 11:
                if (dVar.jE == 1) {
                    return 2;
                }
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 12:
            case 13:
                return 3;
            case 15:
            default:
                com.applovin.exoplayer2.l.q.h("AudioFocusManager", "Unidentified audio usage: " + dVar.jG);
                return 0;
            case 16:
                return com.applovin.exoplayer2.l.ai.acV >= 19 ? 4 : 2;
        }
    }

    private boolean i(int i) {
        return i == 1 || this.P != 1;
    }

    private void j(int i) {
        if (this.O == i) {
            return;
        }
        this.O = i;
        float f2 = i == 3 ? 0.2f : 1.0f;
        if (this.Q == f2) {
            return;
        }
        this.Q = f2;
        b bVar = this.M;
        if (bVar != null) {
            bVar.b(f2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(int i) {
        if (i == -3 || i == -2) {
            if (i != -2 && !u()) {
                j(3);
                return;
            } else {
                l(0);
                j(2);
                return;
            }
        }
        if (i == -1) {
            l(-1);
            p();
        } else if (i == 1) {
            j(1);
            l(1);
        } else {
            com.applovin.exoplayer2.l.q.h("AudioFocusManager", "Unknown focus change type: " + i);
        }
    }

    private void l(int i) {
        b bVar = this.M;
        if (bVar != null) {
            bVar.l(i);
        }
    }

    private int o() {
        if (this.O == 1) {
            return 1;
        }
        if ((com.applovin.exoplayer2.l.ai.acV >= 26 ? r() : q()) == 1) {
            j(1);
            return 1;
        }
        j(0);
        return -1;
    }

    private void p() {
        if (this.O == 0) {
            return;
        }
        if (com.applovin.exoplayer2.l.ai.acV >= 26) {
            t();
        } else {
            s();
        }
        j(0);
    }

    private int q() {
        return this.K.requestAudioFocus(this.L, com.applovin.exoplayer2.l.ai.fM(((com.applovin.exoplayer2.b.d) com.applovin.exoplayer2.l.a.checkNotNull(this.N)).jG), this.P);
    }

    @RequiresApi(26)
    private int r() {
        AudioFocusRequest audioFocusRequest = this.R;
        if (audioFocusRequest == null || this.S) {
            this.R = (audioFocusRequest == null ? new AudioFocusRequest.Builder(this.P) : new AudioFocusRequest.Builder(this.R)).setAudioAttributes(((com.applovin.exoplayer2.b.d) com.applovin.exoplayer2.l.a.checkNotNull(this.N)).dA()).setWillPauseWhenDucked(u()).setOnAudioFocusChangeListener(this.L).build();
            this.S = false;
        }
        return this.K.requestAudioFocus(this.R);
    }

    private void s() {
        this.K.abandonAudioFocus(this.L);
    }

    @RequiresApi(26)
    private void t() {
        AudioFocusRequest audioFocusRequest = this.R;
        if (audioFocusRequest != null) {
            this.K.abandonAudioFocusRequest(audioFocusRequest);
        }
    }

    private boolean u() {
        com.applovin.exoplayer2.b.d dVar = this.N;
        return dVar != null && dVar.jE == 1;
    }

    public int a(boolean z, int i) {
        if (i(i)) {
            p();
            return z ? 1 : -1;
        }
        if (z) {
            return o();
        }
        return -1;
    }

    public void a(@Nullable com.applovin.exoplayer2.b.d dVar) {
        if (com.applovin.exoplayer2.l.ai.r(this.N, dVar)) {
            return;
        }
        this.N = dVar;
        int iB = b(dVar);
        this.P = iB;
        boolean z = true;
        if (iB != 1 && iB != 0) {
            z = false;
        }
        com.applovin.exoplayer2.l.a.checkArgument(z, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
    }

    public float n() {
        return this.Q;
    }

    public void release() {
        this.M = null;
        p();
    }
}

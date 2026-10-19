package com.applovin.exoplayer2.b;

import android.media.AudioTrack;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.work.WorkRequest;
import com.applovin.exoplayer2.l.ai;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
final class j {
    private long kA;
    private int kB;
    private int kC;
    private long kD;
    private long kE;
    private long kF;
    private long kG;
    private long kH;
    private long kI;
    private boolean kJ;
    private long kK;
    private long kL;

    @Nullable
    private AudioTrack kc;
    private final a kh;
    private final long[] ki;
    private int kj;
    private int kk;

    @Nullable
    private i kl;
    private int km;
    private boolean kn;
    private long ko;
    private float kp;
    private boolean kq;
    private long kr;
    private long ks;

    @Nullable
    private Method kt;
    private long ku;
    private boolean kv;
    private boolean kw;
    private long kx;
    private long ky;
    private long kz;

    public interface a {
        void E(long j);

        void P(long j);

        void a(long j, long j2, long j3, long j4);

        void b(long j, long j2, long j3, long j4);

        void c(int i, long j);
    }

    public j(a aVar) {
        this.kh = (a) com.applovin.exoplayer2.l.a.checkNotNull(aVar);
        if (ai.acV >= 18) {
            try {
                this.kt = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.ki = new long[10];
    }

    private void N(long j) {
        Method method;
        if (!this.kw || (method = this.kt) == null || j - this.kx < 500000) {
            return;
        }
        try {
            long jIntValue = (((long) ((Integer) ai.R((Integer) method.invoke(com.applovin.exoplayer2.l.a.checkNotNull(this.kc), new Object[0]))).intValue()) * 1000) - this.ko;
            this.ku = jIntValue;
            long jMax = Math.max(jIntValue, 0L);
            this.ku = jMax;
            if (jMax > 5000000) {
                this.kh.P(jMax);
                this.ku = 0L;
            }
        } catch (Exception unused) {
            this.kt = null;
        }
        this.kx = j;
    }

    private long O(long j) {
        return (j * 1000000) / ((long) this.km);
    }

    private static boolean ay(int i) {
        return ai.acV < 23 && (i == 5 || i == 6);
    }

    private void dZ() {
        long jEc = ec();
        if (jEc == 0) {
            return;
        }
        long jNanoTime = System.nanoTime() / 1000;
        if (jNanoTime - this.ks >= WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
            long[] jArr = this.ki;
            int i = this.kB;
            jArr[i] = jEc - jNanoTime;
            this.kB = (i + 1) % 10;
            int i2 = this.kC;
            if (i2 < 10) {
                this.kC = i2 + 1;
            }
            this.ks = jNanoTime;
            this.kr = 0L;
            int i3 = 0;
            while (true) {
                int i4 = this.kC;
                if (i3 >= i4) {
                    break;
                }
                this.kr += this.ki[i3] / ((long) i4);
                i3++;
            }
        }
        if (this.kn) {
            return;
        }
        h(jNanoTime, jEc);
        N(jNanoTime);
    }

    private void ea() {
        this.kr = 0L;
        this.kC = 0;
        this.kB = 0;
        this.ks = 0L;
        this.kI = 0L;
        this.kL = 0L;
        this.kq = false;
    }

    private boolean eb() {
        return this.kn && ((AudioTrack) com.applovin.exoplayer2.l.a.checkNotNull(this.kc)).getPlayState() == 2 && ed() == 0;
    }

    private long ec() {
        return O(ed());
    }

    private long ed() {
        AudioTrack audioTrack = (AudioTrack) com.applovin.exoplayer2.l.a.checkNotNull(this.kc);
        if (this.kD != C.TIME_UNSET) {
            return Math.min(this.kG, this.kF + ((((SystemClock.elapsedRealtime() * 1000) - this.kD) * ((long) this.km)) / 1000000));
        }
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = 4294967295L & ((long) audioTrack.getPlaybackHeadPosition());
        if (this.kn) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.kA = this.ky;
            }
            playbackHeadPosition += this.kA;
        }
        if (ai.acV <= 29) {
            if (playbackHeadPosition == 0 && this.ky > 0 && playState == 3) {
                if (this.kE == C.TIME_UNSET) {
                    this.kE = SystemClock.elapsedRealtime();
                }
                return this.ky;
            }
            this.kE = C.TIME_UNSET;
        }
        if (this.ky > playbackHeadPosition) {
            this.kz++;
        }
        this.ky = playbackHeadPosition;
        return playbackHeadPosition + (this.kz << 32);
    }

    private void h(long j, long j2) {
        i iVar = (i) com.applovin.exoplayer2.l.a.checkNotNull(this.kl);
        if (iVar.G(j)) {
            long jDV = iVar.dV();
            long jDW = iVar.dW();
            if (Math.abs(jDV - j) > 5000000) {
                this.kh.b(jDW, jDV, j, j2);
                iVar.dS();
            } else if (Math.abs(O(jDW) - j2) <= 5000000) {
                iVar.dT();
            } else {
                this.kh.a(jDW, jDV, j, j2);
                iVar.dS();
            }
        }
    }

    public long F(boolean z) {
        long jEc;
        if (((AudioTrack) com.applovin.exoplayer2.l.a.checkNotNull(this.kc)).getPlayState() == 3) {
            dZ();
        }
        long jNanoTime = System.nanoTime() / 1000;
        i iVar = (i) com.applovin.exoplayer2.l.a.checkNotNull(this.kl);
        boolean zDU = iVar.dU();
        if (zDU) {
            jEc = O(iVar.dW()) + ai.a(jNanoTime - iVar.dV(), this.kp);
        } else {
            jEc = this.kC == 0 ? ec() : this.kr + jNanoTime;
            if (!z) {
                jEc = Math.max(0L, jEc - this.ku);
            }
        }
        if (this.kJ != zDU) {
            this.kL = this.kI;
            this.kK = this.kH;
        }
        long j = jNanoTime - this.kL;
        if (j < 1000000) {
            long jA = this.kK + ai.a(j, this.kp);
            long j2 = (j * 1000) / 1000000;
            jEc = ((jEc * j2) + ((1000 - j2) * jA)) / 1000;
        }
        if (!this.kq) {
            long j3 = this.kH;
            if (jEc > j3) {
                this.kq = true;
                this.kh.E(System.currentTimeMillis() - com.applovin.exoplayer2.h.f(ai.b(com.applovin.exoplayer2.h.f(jEc - j3), this.kp)));
            }
        }
        this.kI = jNanoTime;
        this.kH = jEc;
        this.kJ = zDU;
        return jEc;
    }

    public boolean H(long j) {
        int playState = ((AudioTrack) com.applovin.exoplayer2.l.a.checkNotNull(this.kc)).getPlayState();
        if (this.kn) {
            if (playState == 2) {
                this.kv = false;
                return false;
            }
            if (playState == 1 && ed() == 0) {
                return false;
            }
        }
        boolean z = this.kv;
        boolean zM = M(j);
        this.kv = zM;
        if (z && !zM && playState != 1) {
            this.kh.c(this.kk, com.applovin.exoplayer2.h.f(this.ko));
        }
        return true;
    }

    public int I(long j) {
        return this.kk - ((int) (j - (ed() * ((long) this.kj))));
    }

    public long J(long j) {
        return com.applovin.exoplayer2.h.f(O(j - ed()));
    }

    public boolean K(long j) {
        return this.kE != C.TIME_UNSET && j > 0 && SystemClock.elapsedRealtime() - this.kE >= 200;
    }

    public void L(long j) {
        this.kF = ed();
        this.kD = SystemClock.elapsedRealtime() * 1000;
        this.kG = j;
    }

    public boolean M(long j) {
        return j > ed() || eb();
    }

    public void Y() {
        ea();
        this.kc = null;
        this.kl = null;
    }

    public void a(AudioTrack audioTrack, boolean z, int i, int i2, int i3) {
        this.kc = audioTrack;
        this.kj = i2;
        this.kk = i3;
        this.kl = new i(audioTrack);
        this.km = audioTrack.getSampleRate();
        this.kn = z && ay(i);
        boolean zFJ = ai.fJ(i);
        this.kw = zFJ;
        this.ko = zFJ ? O(i3 / i2) : -9223372036854775807L;
        this.ky = 0L;
        this.kz = 0L;
        this.kA = 0L;
        this.kv = false;
        this.kD = C.TIME_UNSET;
        this.kE = C.TIME_UNSET;
        this.kx = 0L;
        this.ku = 0L;
        this.kp = 1.0f;
    }

    public boolean dY() {
        ea();
        if (this.kD != C.TIME_UNSET) {
            return false;
        }
        ((i) com.applovin.exoplayer2.l.a.checkNotNull(this.kl)).Y();
        return true;
    }

    public void i(float f2) {
        this.kp = f2;
        i iVar = this.kl;
        if (iVar != null) {
            iVar.Y();
        }
    }

    public void start() {
        ((i) com.applovin.exoplayer2.l.a.checkNotNull(this.kl)).Y();
    }

    public boolean v() {
        return ((AudioTrack) com.applovin.exoplayer2.l.a.checkNotNull(this.kc)).getPlayState() == 3;
    }
}

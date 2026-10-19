package com.applovin.exoplayer2.b;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.applovin.exoplayer2.am;
import com.applovin.exoplayer2.b.f;
import com.applovin.exoplayer2.b.h;
import com.applovin.exoplayer2.b.j;
import com.applovin.exoplayer2.l.ai;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.DefaultOggSeeker;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class n implements com.applovin.exoplayer2.b.h {
    public static boolean kX;
    private com.applovin.exoplayer2.b.d N;
    private final boolean bk;
    private final boolean bl;
    private int hR;
    private float hS;
    private boolean hi;

    @Nullable
    private ByteBuffer kT;

    @Nullable
    private final com.applovin.exoplayer2.b.e kY;
    private final a kZ;

    @Nullable
    private AudioTrack kc;
    private long lA;
    private com.applovin.exoplayer2.b.f[] lB;
    private ByteBuffer[] lC;

    @Nullable
    private ByteBuffer lD;
    private int lE;
    private byte[] lF;
    private int lG;
    private int lH;
    private boolean lI;
    private boolean lJ;
    private boolean lK;
    private boolean lL;
    private k lM;
    private long lN;
    private boolean lO;
    private boolean lP;
    private final m la;
    private final x lb;
    private final com.applovin.exoplayer2.b.f[] lc;
    private final com.applovin.exoplayer2.b.f[] ld;
    private final ConditionVariable le;
    private final j lf;
    private final ArrayDeque<e> lg;
    private final int lh;
    private h li;
    private final f<h.b> lj;
    private final f<h.e> lk;

    @Nullable
    private h.c ll;

    @Nullable
    private b lm;
    private b ln;

    @Nullable
    private e lo;
    private e lp;
    private am lq;

    @Nullable
    private ByteBuffer lr;
    private int ls;
    private long lt;
    private long lu;
    private long lv;
    private long lw;
    private int lx;
    private boolean ly;
    private boolean lz;

    public interface a {
        boolean H(boolean z);

        long U(long j);

        com.applovin.exoplayer2.b.f[] ex();

        long ey();

        am f(am amVar);
    }

    private static final class b {
        public final int kj;
        public final int kk;
        public final int km;
        public final com.applovin.exoplayer2.v lS;
        public final int lT;
        public final int lU;
        public final int lV;
        public final int lW;
        public final com.applovin.exoplayer2.b.f[] lX;

        public b(com.applovin.exoplayer2.v vVar, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, com.applovin.exoplayer2.b.f[] fVarArr) {
            this.lS = vVar;
            this.lT = i;
            this.lU = i2;
            this.kj = i3;
            this.km = i4;
            this.lV = i5;
            this.lW = i6;
            this.lX = fVarArr;
            this.kk = g(i7, z);
        }

        private int X(long j) {
            int iAD = n.aD(this.lW);
            if (this.lW == 5) {
                iAD *= 2;
            }
            return (int) ((j * ((long) iAD)) / 1000000);
        }

        @RequiresApi(21)
        private static AudioAttributes a(com.applovin.exoplayer2.b.d dVar, boolean z) {
            return z ? ez() : dVar.dA();
        }

        private AudioTrack a(com.applovin.exoplayer2.b.d dVar, int i) {
            int iFM = ai.fM(dVar.jG);
            return i == 0 ? new AudioTrack(iFM, this.km, this.lV, this.lW, this.kk, 1) : new AudioTrack(iFM, this.km, this.lV, this.lW, this.kk, 1, i);
        }

        private AudioTrack b(boolean z, com.applovin.exoplayer2.b.d dVar, int i) {
            int i2 = ai.acV;
            return i2 >= 29 ? c(z, dVar, i) : i2 >= 21 ? d(z, dVar, i) : a(dVar, i);
        }

        @RequiresApi(29)
        private AudioTrack c(boolean z, com.applovin.exoplayer2.b.d dVar, int i) {
            return new AudioTrack.Builder().setAudioAttributes(a(dVar, z)).setAudioFormat(n.c(this.km, this.lV, this.lW)).setTransferMode(1).setBufferSizeInBytes(this.kk).setSessionId(i).setOffloadedPlayback(this.lU == 1).build();
        }

        @RequiresApi(21)
        private AudioTrack d(boolean z, com.applovin.exoplayer2.b.d dVar, int i) {
            return new AudioTrack(a(dVar, z), n.c(this.km, this.lV, this.lW), this.kk, 1, i);
        }

        @RequiresApi(21)
        private static AudioAttributes ez() {
            return new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
        }

        private int g(int i, boolean z) {
            if (i != 0) {
                return i;
            }
            int i2 = this.lU;
            if (i2 == 0) {
                return j(z ? 8.0f : 1.0f);
            }
            if (i2 == 1) {
                return X(50000000L);
            }
            if (i2 == 2) {
                return X(250000L);
            }
            throw new IllegalStateException();
        }

        private int j(float f2) {
            int minBufferSize = AudioTrack.getMinBufferSize(this.km, this.lV, this.lW);
            com.applovin.exoplayer2.l.a.checkState(minBufferSize != -2);
            int iK = ai.k(minBufferSize * 4, ((int) W(250000L)) * this.kj, Math.max(minBufferSize, ((int) W(750000L)) * this.kj));
            return f2 != 1.0f ? Math.round(iK * f2) : iK;
        }

        public long O(long j) {
            return (j * 1000000) / ((long) this.km);
        }

        public long V(long j) {
            return (j * 1000000) / ((long) this.lS.dM);
        }

        public long W(long j) {
            return (j * ((long) this.km)) / 1000000;
        }

        public AudioTrack a(boolean z, com.applovin.exoplayer2.b.d dVar, int i) throws h.b {
            try {
                AudioTrack audioTrackB = b(z, dVar, i);
                int state = audioTrackB.getState();
                if (state == 1) {
                    return audioTrackB;
                }
                try {
                    audioTrackB.release();
                } catch (Exception unused) {
                }
                throw new h.b(state, this.km, this.lV, this.kk, this.lS, eA(), null);
            } catch (IllegalArgumentException | UnsupportedOperationException e2) {
                throw new h.b(0, this.km, this.lV, this.kk, this.lS, eA(), e2);
            }
        }

        public boolean a(b bVar) {
            return bVar.lU == this.lU && bVar.lW == this.lW && bVar.km == this.km && bVar.lV == this.lV && bVar.kj == this.kj;
        }

        public boolean eA() {
            return this.lU == 1;
        }
    }

    public static class c implements a {
        private final com.applovin.exoplayer2.b.f[] lY;
        private final u lZ;
        private final w ma;

        public c(com.applovin.exoplayer2.b.f... fVarArr) {
            this(fVarArr, new u(), new w());
        }

        public c(com.applovin.exoplayer2.b.f[] fVarArr, u uVar, w wVar) {
            com.applovin.exoplayer2.b.f[] fVarArr2 = new com.applovin.exoplayer2.b.f[fVarArr.length + 2];
            this.lY = fVarArr2;
            System.arraycopy(fVarArr, 0, fVarArr2, 0, fVarArr.length);
            this.lZ = uVar;
            this.ma = wVar;
            fVarArr2[fVarArr.length] = uVar;
            fVarArr2[fVarArr.length + 1] = wVar;
        }

        @Override // com.applovin.exoplayer2.b.n.a
        public boolean H(boolean z) {
            this.lZ.setEnabled(z);
            return z;
        }

        @Override // com.applovin.exoplayer2.b.n.a
        public long U(long j) {
            return this.ma.U(j);
        }

        @Override // com.applovin.exoplayer2.b.n.a
        public com.applovin.exoplayer2.b.f[] ex() {
            return this.lY;
        }

        @Override // com.applovin.exoplayer2.b.n.a
        public long ey() {
            return this.lZ.eM();
        }

        @Override // com.applovin.exoplayer2.b.n.a
        public am f(am amVar) {
            this.ma.l(amVar.gD);
            this.ma.m(amVar.gE);
            return amVar;
        }
    }

    public static final class d extends RuntimeException {
        private d(String str) {
            super(str);
        }
    }

    private static final class e {
        public final am gy;
        public final boolean mb;
        public final long mc;
        public final long md;

        private e(am amVar, boolean z, long j, long j2) {
            this.gy = amVar;
            this.mb = z;
            this.mc = j;
            this.md = j2;
        }
    }

    private static final class f<T extends Exception> {
        private final long me;

        @Nullable
        private T mf;
        private long mg;

        public f(long j) {
            this.me = j;
        }

        public void clear() {
            this.mf = null;
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: T extends java.lang.Exception */
        public void h(T t) throws Exception {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (this.mf == null) {
                this.mf = t;
                this.mg = this.me + jElapsedRealtime;
            }
            if (jElapsedRealtime >= this.mg) {
                T t2 = this.mf;
                if (t2 != t) {
                    t2.addSuppressed(t);
                }
                T t3 = this.mf;
                clear();
                throw t3;
            }
        }
    }

    private final class g implements j.a {
        private g() {
        }

        @Override // com.applovin.exoplayer2.b.j.a
        public void E(long j) {
            if (n.this.ll != null) {
                n.this.ll.E(j);
            }
        }

        @Override // com.applovin.exoplayer2.b.j.a
        public void P(long j) {
            com.applovin.exoplayer2.l.q.h("DefaultAudioSink", "Ignoring impossibly large audio latency: " + j);
        }

        @Override // com.applovin.exoplayer2.b.j.a
        public void a(long j, long j2, long j3, long j4) {
            String str = "Spurious audio timestamp (frame position mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + n.this.eu() + ", " + n.this.ev();
            if (n.kX) {
                throw new d(str);
            }
            com.applovin.exoplayer2.l.q.h("DefaultAudioSink", str);
        }

        @Override // com.applovin.exoplayer2.b.j.a
        public void b(long j, long j2, long j3, long j4) {
            String str = "Spurious audio timestamp (system clock mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + n.this.eu() + ", " + n.this.ev();
            if (n.kX) {
                throw new d(str);
            }
            com.applovin.exoplayer2.l.q.h("DefaultAudioSink", str);
        }

        @Override // com.applovin.exoplayer2.b.j.a
        public void c(int i, long j) {
            if (n.this.ll != null) {
                n.this.ll.e(i, j, SystemClock.elapsedRealtime() - n.this.lN);
            }
        }
    }

    @RequiresApi(29)
    private final class h {
        private final Handler jS = new Handler();
        private final AudioTrack.StreamEventCallback mh;

        public h() {
            this.mh = new AudioTrack.StreamEventCallback() { // from class: com.applovin.exoplayer2.b.n.h.1
                @Override // android.media.AudioTrack.StreamEventCallback
                public void onDataRequest(AudioTrack audioTrack, int i) {
                    com.applovin.exoplayer2.l.a.checkState(audioTrack == n.this.kc);
                    if (n.this.ll == null || !n.this.lK) {
                        return;
                    }
                    n.this.ll.dR();
                }

                @Override // android.media.AudioTrack.StreamEventCallback
                public void onTearDown(@NonNull AudioTrack audioTrack) {
                    com.applovin.exoplayer2.l.a.checkState(audioTrack == n.this.kc);
                    if (n.this.ll == null || !n.this.lK) {
                        return;
                    }
                    n.this.ll.dR();
                }
            };
        }

        public void c(AudioTrack audioTrack) {
            final Handler handler = this.jS;
            Objects.requireNonNull(handler);
            audioTrack.registerStreamEventCallback(new Executor() { // from class: com.applovin.exoplayer2.b.k0
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    handler.post(runnable);
                }
            }, this.mh);
        }

        public void d(AudioTrack audioTrack) {
            audioTrack.unregisterStreamEventCallback(this.mh);
            this.jS.removeCallbacksAndMessages(null);
        }
    }

    public n(@Nullable com.applovin.exoplayer2.b.e eVar, a aVar, boolean z, boolean z2, int i) {
        this.kY = eVar;
        this.kZ = (a) com.applovin.exoplayer2.l.a.checkNotNull(aVar);
        int i2 = ai.acV;
        this.bk = i2 >= 21 && z;
        this.bl = i2 >= 23 && z2;
        this.lh = i2 < 29 ? 0 : i;
        this.le = new ConditionVariable(true);
        this.lf = new j(new g());
        m mVar = new m();
        this.la = mVar;
        x xVar = new x();
        this.lb = xVar;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new t(), mVar, xVar);
        Collections.addAll(arrayList, aVar.ex());
        this.lc = (com.applovin.exoplayer2.b.f[]) arrayList.toArray(new com.applovin.exoplayer2.b.f[0]);
        this.ld = new com.applovin.exoplayer2.b.f[]{new p()};
        this.hS = 1.0f;
        this.N = com.applovin.exoplayer2.b.d.jD;
        this.hR = 0;
        this.lM = new k(0, 0.0f);
        am amVar = am.gC;
        this.lp = new e(amVar, false, 0L, 0L);
        this.lq = amVar;
        this.lH = -1;
        this.lB = new com.applovin.exoplayer2.b.f[0];
        this.lC = new ByteBuffer[0];
        this.lg = new ArrayDeque<>();
        this.lj = new f<>(100L);
        this.lk = new f<>(100L);
    }

    private void Q(long j) throws Exception {
        ByteBuffer byteBuffer;
        int length = this.lB.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.lC[i - 1];
            } else {
                byteBuffer = this.lD;
                if (byteBuffer == null) {
                    byteBuffer = com.applovin.exoplayer2.b.f.jO;
                }
            }
            if (i == length) {
                a(byteBuffer, j);
            } else {
                com.applovin.exoplayer2.b.f fVar = this.lB[i];
                if (i > this.lH) {
                    fVar.d(byteBuffer);
                }
                ByteBuffer byteBufferDH = fVar.dH();
                this.lC[i] = byteBufferDH;
                if (byteBufferDH.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            } else {
                i--;
            }
        }
    }

    private void R(long j) {
        am amVarF = es() ? this.kZ.f(eq()) : am.gC;
        boolean zH = es() ? this.kZ.H(en()) : false;
        this.lg.add(new e(amVarF, zH, Math.max(0L, j), this.ln.O(ev())));
        eh();
        h.c cVar = this.ll;
        if (cVar != null) {
            cVar.A(zH);
        }
    }

    private long S(long j) {
        while (!this.lg.isEmpty() && j >= this.lg.getFirst().md) {
            this.lp = this.lg.remove();
        }
        e eVar = this.lp;
        long j2 = j - eVar.md;
        if (eVar.gy.equals(am.gC)) {
            return this.lp.mc + j2;
        }
        if (this.lg.isEmpty()) {
            return this.lp.mc + this.kZ.U(j2);
        }
        e first = this.lg.getFirst();
        return first.mc - ai.a(first.md - j, this.lp.gy.gD);
    }

    private long T(long j) {
        return j + this.ln.O(this.kZ.ey());
    }

    private static int a(int i, ByteBuffer byteBuffer) {
        switch (i) {
            case 5:
            case 6:
            case 18:
                return com.applovin.exoplayer2.b.b.a(byteBuffer);
            case 7:
            case 8:
                return o.e(byteBuffer);
            case 9:
                int iAH = r.aH(ai.b(byteBuffer, byteBuffer.position()));
                if (iAH != -1) {
                    return iAH;
                }
                throw new IllegalArgumentException();
            case 10:
                return 1024;
            case 11:
            case 12:
                return 2048;
            case 13:
            default:
                throw new IllegalStateException("Unexpected audio encoding: " + i);
            case 14:
                int iB = com.applovin.exoplayer2.b.b.b(byteBuffer);
                if (iB == -1) {
                    return 0;
                }
                return com.applovin.exoplayer2.b.b.a(byteBuffer, iB) * 16;
            case 15:
                return 512;
            case 16:
                return 1024;
            case 17:
                return com.applovin.exoplayer2.b.c.c(byteBuffer);
        }
    }

    private int a(AudioFormat audioFormat, AudioAttributes audioAttributes) {
        int i = ai.acV;
        if (i >= 31) {
            return AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
        }
        if (AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes)) {
            return (i == 30 && ai.acY.startsWith("Pixel")) ? 2 : 1;
        }
        return 0;
    }

    @RequiresApi(21)
    private static int a(AudioTrack audioTrack, ByteBuffer byteBuffer, int i) {
        return audioTrack.write(byteBuffer, i, 1);
    }

    @RequiresApi(21)
    private int a(AudioTrack audioTrack, ByteBuffer byteBuffer, int i, long j) {
        if (ai.acV >= 26) {
            return audioTrack.write(byteBuffer, i, 1, j * 1000);
        }
        if (this.lr == null) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
            this.lr = byteBufferAllocate;
            byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
            this.lr.putInt(1431633921);
        }
        if (this.ls == 0) {
            this.lr.putInt(4, i);
            this.lr.putLong(8, j * 1000);
            this.lr.position(0);
            this.ls = i;
        }
        int iRemaining = this.lr.remaining();
        if (iRemaining > 0) {
            int iWrite = audioTrack.write(this.lr, iRemaining, 1);
            if (iWrite < 0) {
                this.ls = 0;
                return iWrite;
            }
            if (iWrite < iRemaining) {
                return 0;
            }
        }
        int iA = a(audioTrack, byteBuffer, i);
        if (iA < 0) {
            this.ls = 0;
            return iA;
        }
        this.ls -= iA;
        return iA;
    }

    @RequiresApi(29)
    private void a(AudioTrack audioTrack) {
        if (this.li == null) {
            this.li = new h();
        }
        this.li.c(audioTrack);
    }

    @RequiresApi(21)
    private static void a(AudioTrack audioTrack, float f2) {
        audioTrack.setVolume(f2);
    }

    private void a(ByteBuffer byteBuffer, long j) throws Exception {
        int iA;
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer2 = this.kT;
            if (byteBuffer2 != null) {
                com.applovin.exoplayer2.l.a.checkArgument(byteBuffer2 == byteBuffer);
            } else {
                this.kT = byteBuffer;
                if (ai.acV < 21) {
                    int iRemaining = byteBuffer.remaining();
                    byte[] bArr = this.lF;
                    if (bArr == null || bArr.length < iRemaining) {
                        this.lF = new byte[iRemaining];
                    }
                    int iPosition = byteBuffer.position();
                    byteBuffer.get(this.lF, 0, iRemaining);
                    byteBuffer.position(iPosition);
                    this.lG = 0;
                }
            }
            int iRemaining2 = byteBuffer.remaining();
            if (ai.acV < 21) {
                int I = this.lf.I(this.lv);
                if (I > 0) {
                    iA = this.kc.write(this.lF, this.lG, Math.min(iRemaining2, I));
                    if (iA > 0) {
                        this.lG += iA;
                        byteBuffer.position(byteBuffer.position() + iA);
                    }
                } else {
                    iA = 0;
                }
            } else if (this.hi) {
                com.applovin.exoplayer2.l.a.checkState(j != C.TIME_UNSET);
                iA = a(this.kc, byteBuffer, iRemaining2, j);
            } else {
                iA = a(this.kc, byteBuffer, iRemaining2);
            }
            this.lN = SystemClock.elapsedRealtime();
            if (iA < 0) {
                boolean zAA = aA(iA);
                if (zAA) {
                    el();
                }
                h.e eVar = new h.e(iA, this.ln.lS, zAA);
                h.c cVar = this.ll;
                if (cVar != null) {
                    cVar.b(eVar);
                }
                if (eVar.by) {
                    throw eVar;
                }
                this.lk.h(eVar);
                return;
            }
            this.lk.clear();
            if (b(this.kc)) {
                long j2 = this.lw;
                if (j2 > 0) {
                    this.lP = false;
                }
                if (this.lK && this.ll != null && iA < iRemaining2 && !this.lP) {
                    this.ll.F(this.lf.J(j2));
                }
            }
            int i = this.ln.lU;
            if (i == 0) {
                this.lv += (long) iA;
            }
            if (iA == iRemaining2) {
                if (i != 0) {
                    com.applovin.exoplayer2.l.a.checkState(byteBuffer == this.lD);
                    this.lw += (long) (this.lx * this.lE);
                }
                this.kT = null;
            }
        }
    }

    private boolean a(com.applovin.exoplayer2.v vVar, com.applovin.exoplayer2.b.d dVar) {
        int iK;
        int iFL;
        int iA;
        if (ai.acV < 29 || this.lh == 0 || (iK = com.applovin.exoplayer2.l.u.k((String) com.applovin.exoplayer2.l.a.checkNotNull(vVar.dz), vVar.dw)) == 0 || (iFL = ai.fL(vVar.dL)) == 0 || (iA = a(c(vVar.dM, iFL, iK), dVar.dA())) == 0) {
            return false;
        }
        if (iA == 1) {
            return ((vVar.dO != 0 || vVar.dP != 0) && (this.lh == 1)) ? false : true;
        }
        if (iA == 2) {
            return true;
        }
        throw new IllegalStateException();
    }

    private static boolean a(com.applovin.exoplayer2.v vVar, @Nullable com.applovin.exoplayer2.b.e eVar) {
        return b(vVar, eVar) != null;
    }

    private static boolean aA(int i) {
        return (ai.acV >= 24 && i == -6) || i == -32;
    }

    private boolean aB(int i) {
        return this.bk && ai.fK(i);
    }

    private static int aC(int i) {
        int i2 = ai.acV;
        if (i2 <= 28) {
            if (i == 7) {
                i = 8;
            } else if (i == 3 || i == 4 || i == 5) {
                i = 6;
            }
        }
        if (i2 <= 26 && "fugu".equals(ai.acW) && i == 1) {
            i = 2;
        }
        return ai.fL(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int aD(int i) {
        switch (i) {
            case 5:
                return 80000;
            case 6:
            case 18:
                return 768000;
            case 7:
                return 192000;
            case 8:
                return 2250000;
            case 9:
                return 40000;
            case 10:
                return DefaultOggSeeker.MATCH_BYTE_RANGE;
            case 11:
                return 16000;
            case 12:
                return 7000;
            case 13:
            default:
                throw new IllegalArgumentException();
            case 14:
                return 3062500;
            case 15:
                return 8000;
            case 16:
                return 256000;
            case 17:
                return 336000;
        }
    }

    @Nullable
    private static Pair<Integer, Integer> b(com.applovin.exoplayer2.v vVar, @Nullable com.applovin.exoplayer2.b.e eVar) {
        if (eVar == null) {
            return null;
        }
        int iK = com.applovin.exoplayer2.l.u.k((String) com.applovin.exoplayer2.l.a.checkNotNull(vVar.dz), vVar.dw);
        int iK2 = 6;
        if (!(iK == 5 || iK == 6 || iK == 18 || iK == 17 || iK == 7 || iK == 8 || iK == 14)) {
            return null;
        }
        if (iK == 18 && !eVar.av(18)) {
            iK = 6;
        } else if (iK == 8 && !eVar.av(8)) {
            iK = 7;
        }
        if (!eVar.av(iK)) {
            return null;
        }
        if (iK != 18) {
            iK2 = vVar.dL;
            if (iK2 > eVar.dC()) {
                return null;
            }
        } else if (ai.acV >= 29 && (iK2 = k(18, vVar.dM)) == 0) {
            com.applovin.exoplayer2.l.q.h("DefaultAudioSink", "E-AC3 JOC encoding supported but no channel count supported");
            return null;
        }
        int iAC = aC(iK2);
        if (iAC == 0) {
            return null;
        }
        return Pair.create(Integer.valueOf(iK), Integer.valueOf(iAC));
    }

    private static void b(AudioTrack audioTrack, float f2) {
        audioTrack.setStereoVolume(f2, f2);
    }

    private void b(am amVar, boolean z) {
        e eVarEr = er();
        if (amVar.equals(eVarEr.gy) && z == eVarEr.mb) {
            return;
        }
        e eVar = new e(amVar, z, C.TIME_UNSET, C.TIME_UNSET);
        if (et()) {
            this.lo = eVar;
        } else {
            this.lp = eVar;
        }
    }

    private static boolean b(AudioTrack audioTrack) {
        return ai.acV >= 29 && audioTrack.isOffloadedPlayback();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    public static AudioFormat c(int i, int i2, int i3) {
        return new AudioFormat.Builder().setSampleRate(i).setChannelMask(i2).setEncoding(i3).build();
    }

    @RequiresApi(23)
    private void e(am amVar) {
        if (et()) {
            try {
                this.kc.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(amVar.gD).setPitch(amVar.gE).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e2) {
                com.applovin.exoplayer2.l.q.b("DefaultAudioSink", "Failed to set playback params", e2);
            }
            amVar = new am(this.kc.getPlaybackParams().getSpeed(), this.kc.getPlaybackParams().getPitch());
            this.lf.i(amVar.gD);
        }
        this.lq = amVar;
    }

    private void eh() {
        com.applovin.exoplayer2.b.f[] fVarArr = this.ln.lX;
        ArrayList arrayList = new ArrayList();
        for (com.applovin.exoplayer2.b.f fVar : fVarArr) {
            if (fVar.isActive()) {
                arrayList.add(fVar);
            } else {
                fVar.dI();
            }
        }
        int size = arrayList.size();
        this.lB = (com.applovin.exoplayer2.b.f[]) arrayList.toArray(new com.applovin.exoplayer2.b.f[size]);
        this.lC = new ByteBuffer[size];
        ei();
    }

    private void ei() {
        int i = 0;
        while (true) {
            com.applovin.exoplayer2.b.f[] fVarArr = this.lB;
            if (i >= fVarArr.length) {
                return;
            }
            com.applovin.exoplayer2.b.f fVar = fVarArr[i];
            fVar.dI();
            this.lC[i] = fVar.dH();
            i++;
        }
    }

    private void ej() throws h.b {
        this.le.block();
        AudioTrack audioTrackEk = ek();
        this.kc = audioTrackEk;
        if (b(audioTrackEk)) {
            a(this.kc);
            if (this.lh != 3) {
                AudioTrack audioTrack = this.kc;
                com.applovin.exoplayer2.v vVar = this.ln.lS;
                audioTrack.setOffloadDelayPadding(vVar.dO, vVar.dP);
            }
        }
        this.hR = this.kc.getAudioSessionId();
        j jVar = this.lf;
        AudioTrack audioTrack2 = this.kc;
        b bVar = this.ln;
        jVar.a(audioTrack2, bVar.lU == 2, bVar.lW, bVar.kj, bVar.kk);
        eo();
        int i = this.lM.kM;
        if (i != 0) {
            this.kc.attachAuxEffect(i);
            this.kc.setAuxEffectSendLevel(this.lM.kN);
        }
        this.lz = true;
    }

    private AudioTrack ek() throws h.b {
        try {
            return ((b) com.applovin.exoplayer2.l.a.checkNotNull(this.ln)).a(this.hi, this.N, this.hR);
        } catch (h.b e2) {
            el();
            h.c cVar = this.ll;
            if (cVar != null) {
                cVar.b(e2);
            }
            throw e2;
        }
    }

    private void el() {
        if (this.ln.eA()) {
            this.lO = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0029 -> B:5:0x0009). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean em() throws java.lang.Exception {
        /*
            r9 = this;
            int r0 = r9.lH
            r1 = -1
            r2 = 1
            r3 = 0
            if (r0 != r1) goto Lb
            r9.lH = r3
        L9:
            r0 = 1
            goto Lc
        Lb:
            r0 = 0
        Lc:
            int r4 = r9.lH
            com.applovin.exoplayer2.b.f[] r5 = r9.lB
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L2f
            r4 = r5[r4]
            if (r0 == 0) goto L1f
            r4.dG()
        L1f:
            r9.Q(r7)
            boolean r0 = r4.cR()
            if (r0 != 0) goto L29
            return r3
        L29:
            int r0 = r9.lH
            int r0 = r0 + r2
            r9.lH = r0
            goto L9
        L2f:
            java.nio.ByteBuffer r0 = r9.kT
            if (r0 == 0) goto L3b
            r9.a(r0, r7)
            java.nio.ByteBuffer r0 = r9.kT
            if (r0 == 0) goto L3b
            return r3
        L3b:
            r9.lH = r1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.b.n.em():boolean");
    }

    private void eo() {
        if (et()) {
            if (ai.acV >= 21) {
                a(this.kc, this.hS);
            } else {
                b(this.kc, this.hS);
            }
        }
    }

    private void ep() {
        this.lt = 0L;
        this.lu = 0L;
        this.lv = 0L;
        this.lw = 0L;
        this.lP = false;
        this.lx = 0;
        this.lp = new e(eq(), en(), 0L, 0L);
        this.lA = 0L;
        this.lo = null;
        this.lg.clear();
        this.lD = null;
        this.lE = 0;
        this.kT = null;
        this.lJ = false;
        this.lI = false;
        this.lH = -1;
        this.lr = null;
        this.ls = 0;
        this.lb.eQ();
        ei();
    }

    private am eq() {
        return er().gy;
    }

    private e er() {
        e eVar = this.lo;
        return eVar != null ? eVar : !this.lg.isEmpty() ? this.lg.getLast() : this.lp;
    }

    private boolean es() {
        return (this.hi || !MimeTypes.AUDIO_RAW.equals(this.ln.lS.dz) || aB(this.ln.lS.dN)) ? false : true;
    }

    private boolean et() {
        return this.kc != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long eu() {
        b bVar = this.ln;
        return bVar.lU == 0 ? this.lt / ((long) bVar.lT) : this.lu;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long ev() {
        b bVar = this.ln;
        return bVar.lU == 0 ? this.lv / ((long) bVar.kj) : this.lw;
    }

    private void ew() {
        if (this.lJ) {
            return;
        }
        this.lJ = true;
        this.lf.L(ev());
        this.kc.stop();
        this.ls = 0;
    }

    @RequiresApi(29)
    private static int k(int i, int i2) {
        AudioAttributes audioAttributesBuild = new AudioAttributes.Builder().setUsage(1).setContentType(3).build();
        for (int i3 = 8; i3 > 0; i3--) {
            if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i).setSampleRate(i2).setChannelMask(ai.fL(i3)).build(), audioAttributesBuild)) {
                return i3;
            }
        }
        return 0;
    }

    @Override // com.applovin.exoplayer2.b.h
    public long F(boolean z) {
        if (!et() || this.lz) {
            return Long.MIN_VALUE;
        }
        return T(S(Math.min(this.lf.F(z), this.ln.O(ev()))));
    }

    @Override // com.applovin.exoplayer2.b.h
    public void G(boolean z) {
        b(eq(), z);
    }

    @Override // com.applovin.exoplayer2.b.h
    public void Y() {
        dI();
        for (com.applovin.exoplayer2.b.f fVar : this.lc) {
            fVar.Y();
        }
        for (com.applovin.exoplayer2.b.f fVar2 : this.ld) {
            fVar2.Y();
        }
        this.lK = false;
        this.lO = false;
    }

    @Override // com.applovin.exoplayer2.b.h
    public void a(am amVar) {
        am amVar2 = new am(ai.a(amVar.gD, 0.1f, 8.0f), ai.a(amVar.gE, 0.1f, 8.0f));
        if (!this.bl || ai.acV < 23) {
            b(amVar2, en());
        } else {
            e(amVar2);
        }
    }

    @Override // com.applovin.exoplayer2.b.h
    public void a(com.applovin.exoplayer2.b.d dVar) {
        if (this.N.equals(dVar)) {
            return;
        }
        this.N = dVar;
        if (this.hi) {
            return;
        }
        dI();
    }

    @Override // com.applovin.exoplayer2.b.h
    public void a(h.c cVar) {
        this.ll = cVar;
    }

    @Override // com.applovin.exoplayer2.b.h
    public void a(k kVar) {
        if (this.lM.equals(kVar)) {
            return;
        }
        int i = kVar.kM;
        float f2 = kVar.kN;
        AudioTrack audioTrack = this.kc;
        if (audioTrack != null) {
            if (this.lM.kM != i) {
                audioTrack.attachAuxEffect(i);
            }
            if (i != 0) {
                this.kc.setAuxEffectSendLevel(f2);
            }
        }
        this.lM = kVar;
    }

    @Override // com.applovin.exoplayer2.b.h
    public void a(com.applovin.exoplayer2.v vVar, int i, @Nullable int[] iArr) throws h.a {
        com.applovin.exoplayer2.b.f[] fVarArr;
        int iIntValue;
        int iP;
        int iP2;
        int iIntValue2;
        int i2;
        int i3;
        int[] iArr2;
        if (MimeTypes.AUDIO_RAW.equals(vVar.dz)) {
            com.applovin.exoplayer2.l.a.checkArgument(ai.fJ(vVar.dN));
            iP = ai.P(vVar.dN, vVar.dL);
            com.applovin.exoplayer2.b.f[] fVarArr2 = aB(vVar.dN) ? this.ld : this.lc;
            this.lb.o(vVar.dO, vVar.dP);
            if (ai.acV < 21 && vVar.dL == 8 && iArr == null) {
                iArr2 = new int[6];
                for (int i4 = 0; i4 < 6; i4++) {
                    iArr2[i4] = i4;
                }
            } else {
                iArr2 = iArr;
            }
            this.la.c(iArr2);
            f.a aVar = new f.a(vVar.dM, vVar.dL, vVar.dN);
            for (com.applovin.exoplayer2.b.f fVar : fVarArr2) {
                try {
                    f.a aVarA = fVar.a(aVar);
                    if (fVar.isActive()) {
                        aVar = aVarA;
                    }
                } catch (f.b e2) {
                    throw new h.a(e2, vVar);
                }
            }
            int i5 = aVar.jQ;
            i2 = aVar.dM;
            iIntValue2 = ai.fL(aVar.dL);
            fVarArr = fVarArr2;
            iIntValue = i5;
            iP2 = ai.P(i5, aVar.dL);
            i3 = 0;
        } else {
            com.applovin.exoplayer2.b.f[] fVarArr3 = new com.applovin.exoplayer2.b.f[0];
            int i6 = vVar.dM;
            if (a(vVar, this.N)) {
                fVarArr = fVarArr3;
                iIntValue = com.applovin.exoplayer2.l.u.k((String) com.applovin.exoplayer2.l.a.checkNotNull(vVar.dz), vVar.dw);
                iIntValue2 = ai.fL(vVar.dL);
                iP = -1;
                iP2 = -1;
                i2 = i6;
                i3 = 1;
            } else {
                Pair<Integer, Integer> pairB = b(vVar, this.kY);
                if (pairB == null) {
                    throw new h.a("Unable to configure passthrough for: " + vVar, vVar);
                }
                fVarArr = fVarArr3;
                iIntValue = ((Integer) pairB.first).intValue();
                iP = -1;
                iP2 = -1;
                iIntValue2 = ((Integer) pairB.second).intValue();
                i2 = i6;
                i3 = 2;
            }
        }
        if (iIntValue == 0) {
            throw new h.a("Invalid output encoding (mode=" + i3 + ") for: " + vVar, vVar);
        }
        if (iIntValue2 == 0) {
            throw new h.a("Invalid output channel config (mode=" + i3 + ") for: " + vVar, vVar);
        }
        this.lO = false;
        b bVar = new b(vVar, iP, i3, iP2, i2, iIntValue2, iIntValue, i, this.bl, fVarArr);
        if (et()) {
            this.lm = bVar;
        } else {
            this.ln = bVar;
        }
    }

    @Override // com.applovin.exoplayer2.b.h
    public boolean a(ByteBuffer byteBuffer, long j, int i) throws Exception {
        ByteBuffer byteBuffer2 = this.lD;
        com.applovin.exoplayer2.l.a.checkArgument(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.lm != null) {
            if (!em()) {
                return false;
            }
            if (this.lm.a(this.ln)) {
                this.ln = this.lm;
                this.lm = null;
                if (b(this.kc) && this.lh != 3) {
                    this.kc.setOffloadEndOfStream();
                    AudioTrack audioTrack = this.kc;
                    com.applovin.exoplayer2.v vVar = this.ln.lS;
                    audioTrack.setOffloadDelayPadding(vVar.dO, vVar.dP);
                    this.lP = true;
                }
            } else {
                ew();
                if (dM()) {
                    return false;
                }
                dI();
            }
            R(j);
        }
        if (!et()) {
            try {
                ej();
            } catch (h.b e2) {
                if (e2.by) {
                    throw e2;
                }
                this.lj.h(e2);
                return false;
            }
        }
        this.lj.clear();
        if (this.lz) {
            this.lA = Math.max(0L, j);
            this.ly = false;
            this.lz = false;
            if (this.bl && ai.acV >= 23) {
                e(this.lq);
            }
            R(j);
            if (this.lK) {
                dJ();
            }
        }
        if (!this.lf.H(ev())) {
            return false;
        }
        if (this.lD == null) {
            com.applovin.exoplayer2.l.a.checkArgument(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            b bVar = this.ln;
            if (bVar.lU != 0 && this.lx == 0) {
                int iA = a(bVar.lW, byteBuffer);
                this.lx = iA;
                if (iA == 0) {
                    return true;
                }
            }
            if (this.lo != null) {
                if (!em()) {
                    return false;
                }
                R(j);
                this.lo = null;
            }
            long jV = this.lA + this.ln.V(eu() - this.lb.eR());
            if (!this.ly && Math.abs(jV - j) > 200000) {
                this.ll.b(new h.d(j, jV));
                this.ly = true;
            }
            if (this.ly) {
                if (!em()) {
                    return false;
                }
                long j2 = j - jV;
                this.lA += j2;
                this.ly = false;
                R(j);
                h.c cVar = this.ll;
                if (cVar != null && j2 != 0) {
                    cVar.dQ();
                }
            }
            if (this.ln.lU == 0) {
                this.lt += (long) byteBuffer.remaining();
            } else {
                this.lu += (long) (this.lx * i);
            }
            this.lD = byteBuffer;
            this.lE = i;
        }
        Q(j);
        if (!this.lD.hasRemaining()) {
            this.lD = null;
            this.lE = 0;
            return true;
        }
        if (!this.lf.K(ev())) {
            return false;
        }
        com.applovin.exoplayer2.l.q.h("DefaultAudioSink", "Resetting stalled audio track");
        dI();
        return true;
    }

    @Override // com.applovin.exoplayer2.b.h
    public am av() {
        return this.bl ? this.lq : eq();
    }

    @Override // com.applovin.exoplayer2.b.h
    public void aw(int i) {
        if (this.hR != i) {
            this.hR = i;
            this.lL = i != 0;
            dI();
        }
    }

    @Override // com.applovin.exoplayer2.b.h
    public boolean cR() {
        return !et() || (this.lI && !dM());
    }

    @Override // com.applovin.exoplayer2.b.h
    public boolean d(com.applovin.exoplayer2.v vVar) {
        return e(vVar) != 0;
    }

    @Override // com.applovin.exoplayer2.b.h
    public void dI() {
        if (et()) {
            ep();
            if (this.lf.v()) {
                this.kc.pause();
            }
            if (b(this.kc)) {
                ((h) com.applovin.exoplayer2.l.a.checkNotNull(this.li)).d(this.kc);
            }
            final AudioTrack audioTrack = this.kc;
            this.kc = null;
            if (ai.acV < 21 && !this.lL) {
                this.hR = 0;
            }
            b bVar = this.lm;
            if (bVar != null) {
                this.ln = bVar;
                this.lm = null;
            }
            this.lf.Y();
            this.le.close();
            new Thread("ExoPlayer:AudioTrackReleaseThread") { // from class: com.applovin.exoplayer2.b.n.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        audioTrack.flush();
                        audioTrack.release();
                    } finally {
                        n.this.le.open();
                    }
                }
            }.start();
        }
        this.lk.clear();
        this.lj.clear();
    }

    @Override // com.applovin.exoplayer2.b.h
    public void dJ() {
        this.lK = true;
        if (et()) {
            this.lf.start();
            this.kc.play();
        }
    }

    @Override // com.applovin.exoplayer2.b.h
    public void dK() {
        this.ly = true;
    }

    @Override // com.applovin.exoplayer2.b.h
    public void dL() throws h.e {
        if (!this.lI && et() && em()) {
            ew();
            this.lI = true;
        }
    }

    @Override // com.applovin.exoplayer2.b.h
    public boolean dM() {
        return et() && this.lf.M(ev());
    }

    @Override // com.applovin.exoplayer2.b.h
    public void dN() {
        com.applovin.exoplayer2.l.a.checkState(ai.acV >= 21);
        com.applovin.exoplayer2.l.a.checkState(this.lL);
        if (this.hi) {
            return;
        }
        this.hi = true;
        dI();
    }

    @Override // com.applovin.exoplayer2.b.h
    public void dO() {
        if (this.hi) {
            this.hi = false;
            dI();
        }
    }

    @Override // com.applovin.exoplayer2.b.h
    public void dP() {
        if (ai.acV < 25) {
            dI();
            return;
        }
        this.lk.clear();
        this.lj.clear();
        if (et()) {
            ep();
            if (this.lf.v()) {
                this.kc.pause();
            }
            this.kc.flush();
            this.lf.Y();
            j jVar = this.lf;
            AudioTrack audioTrack = this.kc;
            b bVar = this.ln;
            jVar.a(audioTrack, bVar.lU == 2, bVar.lW, bVar.kj, bVar.kk);
            this.lz = true;
        }
    }

    @Override // com.applovin.exoplayer2.b.h
    public int e(com.applovin.exoplayer2.v vVar) {
        if (!MimeTypes.AUDIO_RAW.equals(vVar.dz)) {
            return ((this.lO || !a(vVar, this.N)) && !a(vVar, this.kY)) ? 0 : 2;
        }
        if (ai.fJ(vVar.dN)) {
            int i = vVar.dN;
            return (i == 2 || (this.bk && i == 4)) ? 2 : 1;
        }
        com.applovin.exoplayer2.l.q.h("DefaultAudioSink", "Invalid PCM encoding: " + vVar.dN);
        return 0;
    }

    public boolean en() {
        return er().mb;
    }

    @Override // com.applovin.exoplayer2.b.h
    public void h(float f2) {
        if (this.hS != f2) {
            this.hS = f2;
            eo();
        }
    }

    @Override // com.applovin.exoplayer2.b.h
    public void pause() {
        this.lK = false;
        if (et() && this.lf.dY()) {
            this.kc.pause();
        }
    }
}

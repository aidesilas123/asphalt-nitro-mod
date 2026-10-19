package com.applovin.exoplayer2.m;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.Surface;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.applovin.exoplayer2.l.ai;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
public final class m {
    private boolean GL;

    @Nullable
    private Surface Hm;
    private float TU;
    private final com.applovin.exoplayer2.m.e aeN = new com.applovin.exoplayer2.m.e();

    @Nullable
    private final b aeO;

    @Nullable
    private final e aeP;
    private float aeQ;
    private float aeR;
    private float aeS;
    private int aeT;
    private long aeU;
    private long aeV;
    private long aeW;
    private long aeX;
    private long aeY;
    private long aeZ;
    private long afa;

    @RequiresApi(30)
    private static final class a {
        public static void a(Surface surface, float f2) {
            try {
                surface.setFrameRate(f2, f2 == 0.0f ? 0 : 1);
            } catch (IllegalStateException e2) {
                com.applovin.exoplayer2.l.q.c("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface b {

        public interface a {
            void onDefaultDisplayChanged(@Nullable Display display);
        }

        void a(a aVar);

        void qB();
    }

    private static final class c implements b {
        private final WindowManager afb;

        private c(WindowManager windowManager) {
            this.afb = windowManager;
        }

        @Nullable
        public static b s(Context context) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null) {
                return new c(windowManager);
            }
            return null;
        }

        @Override // com.applovin.exoplayer2.m.m.b
        public void a(b.a aVar) {
            aVar.onDefaultDisplayChanged(this.afb.getDefaultDisplay());
        }

        @Override // com.applovin.exoplayer2.m.m.b
        public void qB() {
        }
    }

    @RequiresApi(17)
    private static final class d implements DisplayManager.DisplayListener, b {
        private final DisplayManager afc;

        @Nullable
        private b.a afd;

        private d(DisplayManager displayManager) {
            this.afc = displayManager;
        }

        private Display qC() {
            return this.afc.getDisplay(0);
        }

        @Nullable
        public static b s(Context context) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            if (displayManager != null) {
                return new d(displayManager);
            }
            return null;
        }

        @Override // com.applovin.exoplayer2.m.m.b
        public void a(b.a aVar) {
            this.afd = aVar;
            this.afc.registerDisplayListener(this, ai.pX());
            aVar.onDefaultDisplayChanged(qC());
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            b.a aVar = this.afd;
            if (aVar == null || i != 0) {
                return;
            }
            aVar.onDefaultDisplayChanged(qC());
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
        }

        @Override // com.applovin.exoplayer2.m.m.b
        public void qB() {
            this.afc.unregisterDisplayListener(this);
            this.afd = null;
        }
    }

    private static final class e implements Handler.Callback, Choreographer.FrameCallback {
        private static final e aff = new e();
        public volatile long afe = C.TIME_UNSET;
        private final HandlerThread afg;
        private Choreographer afh;
        private int afi;
        private final Handler jS;

        private e() {
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
            this.afg = handlerThread;
            handlerThread.start();
            Handler handlerB = ai.b(handlerThread.getLooper(), this);
            this.jS = handlerB;
            handlerB.sendEmptyMessage(0);
        }

        public static e qD() {
            return aff;
        }

        private void qG() {
            this.afh = Choreographer.getInstance();
        }

        private void qH() {
            int i = this.afi + 1;
            this.afi = i;
            if (i == 1) {
                ((Choreographer) com.applovin.exoplayer2.l.a.checkNotNull(this.afh)).postFrameCallback(this);
            }
        }

        private void qI() {
            int i = this.afi - 1;
            this.afi = i;
            if (i == 0) {
                ((Choreographer) com.applovin.exoplayer2.l.a.checkNotNull(this.afh)).removeFrameCallback(this);
                this.afe = C.TIME_UNSET;
            }
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            this.afe = j;
            ((Choreographer) com.applovin.exoplayer2.l.a.checkNotNull(this.afh)).postFrameCallbackDelayed(this, 500L);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                qG();
                return true;
            }
            if (i == 1) {
                qH();
                return true;
            }
            if (i != 2) {
                return false;
            }
            qI();
            return true;
        }

        public void qE() {
            this.jS.sendEmptyMessage(1);
        }

        public void qF() {
            this.jS.sendEmptyMessage(2);
        }
    }

    public m(@Nullable Context context) {
        b bVarR = r(context);
        this.aeO = bVarR;
        this.aeP = bVarR != null ? e.qD() : null;
        this.aeU = C.TIME_UNSET;
        this.aeV = C.TIME_UNSET;
        this.aeQ = -1.0f;
        this.TU = 1.0f;
        this.aeT = 0;
    }

    private static boolean D(long j, long j2) {
        return Math.abs(j - j2) <= 20000000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@Nullable Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / ((double) display.getRefreshRate()));
            this.aeU = refreshRate;
            this.aeV = (refreshRate * 80) / 100;
        } else {
            com.applovin.exoplayer2.l.q.h("VideoFrameReleaseHelper", "Unable to query display refresh rate");
            this.aeU = C.TIME_UNSET;
            this.aeV = C.TIME_UNSET;
        }
    }

    private void at(boolean z) {
        Surface surface;
        if (ai.acV < 30 || (surface = this.Hm) == null || this.aeT == Integer.MIN_VALUE) {
            return;
        }
        float f2 = 0.0f;
        if (this.GL) {
            float f3 = this.aeR;
            if (f3 != -1.0f) {
                f2 = this.TU * f3;
            }
        }
        if (z || this.aeS != f2) {
            this.aeS = f2;
            a.a(surface, f2);
        }
    }

    private static long f(long j, long j2, long j3) {
        long j4;
        long j5 = j2 + (((j - j2) / j3) * j3);
        if (j <= j5) {
            j4 = j5 - j3;
        } else {
            j5 = j3 + j5;
            j4 = j5;
        }
        return j5 - j < j - j4 ? j5 : j4;
    }

    private void qA() {
        Surface surface;
        if (ai.acV < 30 || (surface = this.Hm) == null || this.aeT == Integer.MIN_VALUE || this.aeS == 0.0f) {
            return;
        }
        this.aeS = 0.0f;
        a.a(surface, 0.0f);
    }

    private void qy() {
        this.aeW = 0L;
        this.aeZ = -1L;
        this.aeX = -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void qz() {
        /*
            r8 = this;
            int r0 = com.applovin.exoplayer2.l.ai.acV
            r1 = 30
            if (r0 < r1) goto L73
            android.view.Surface r0 = r8.Hm
            if (r0 != 0) goto Lc
            goto L73
        Lc:
            com.applovin.exoplayer2.m.e r0 = r8.aeN
            boolean r0 = r0.qd()
            if (r0 == 0) goto L1b
            com.applovin.exoplayer2.m.e r0 = r8.aeN
            float r0 = r0.qh()
            goto L1d
        L1b:
            float r0 = r8.aeQ
        L1d:
            float r2 = r8.aeR
            int r3 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r3 != 0) goto L24
            return
        L24:
            r3 = -1082130432(0xffffffffbf800000, float:-1.0)
            r4 = 0
            r5 = 1
            int r6 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r6 == 0) goto L61
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 == 0) goto L61
            com.applovin.exoplayer2.m.e r1 = r8.aeN
            boolean r1 = r1.qd()
            if (r1 == 0) goto L49
            com.applovin.exoplayer2.m.e r1 = r8.aeN
            long r1 = r1.qf()
            r6 = 5000000000(0x12a05f200, double:2.470328229E-314)
            int r3 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r3 < 0) goto L49
            r1 = 1
            goto L4a
        L49:
            r1 = 0
        L4a:
            if (r1 == 0) goto L50
            r1 = 1017370378(0x3ca3d70a, float:0.02)
            goto L52
        L50:
            r1 = 1065353216(0x3f800000, float:1.0)
        L52:
            float r2 = r8.aeR
            float r2 = r0 - r2
            float r2 = java.lang.Math.abs(r2)
            int r1 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r1 < 0) goto L5f
            goto L6c
        L5f:
            r5 = 0
            goto L6c
        L61:
            if (r6 == 0) goto L64
            goto L6c
        L64:
            com.applovin.exoplayer2.m.e r2 = r8.aeN
            int r2 = r2.qe()
            if (r2 < r1) goto L5f
        L6c:
            if (r5 == 0) goto L73
            r8.aeR = r0
            r8.at(r4)
        L73:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.m.m.qz():void");
    }

    @Nullable
    private static b r(@Nullable Context context) {
        if (context == null) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        b bVarS = ai.acV >= 17 ? d.s(applicationContext) : null;
        return bVarS == null ? c.s(applicationContext) : bVarS;
    }

    public void aa() {
        this.GL = true;
        qy();
        at(false);
    }

    public void ab() {
        this.GL = false;
        qA();
    }

    public void ac() {
        b bVar = this.aeO;
        if (bVar != null) {
            bVar.qB();
            ((e) com.applovin.exoplayer2.l.a.checkNotNull(this.aeP)).qF();
        }
    }

    public long bD(long j) {
        long j2;
        if (this.aeZ == -1 || !this.aeN.qd()) {
            j2 = j;
        } else {
            long jQg = this.afa + ((long) ((this.aeN.qg() * (this.aeW - this.aeZ)) / this.TU));
            if (D(j, jQg)) {
                j2 = jQg;
            } else {
                qy();
                j2 = j;
            }
        }
        this.aeX = this.aeW;
        this.aeY = j2;
        e eVar = this.aeP;
        if (eVar == null || this.aeU == C.TIME_UNSET) {
            return j2;
        }
        long j3 = eVar.afe;
        return j3 == C.TIME_UNSET ? j2 : f(j2, j3, this.aeU) - this.aeV;
    }

    public void bw(long j) {
        long j2 = this.aeX;
        if (j2 != -1) {
            this.aeZ = j2;
            this.afa = this.aeY;
        }
        this.aeW++;
        this.aeN.bw(j * 1000);
        qz();
    }

    public void c(@Nullable Surface surface) {
        if (surface instanceof com.applovin.exoplayer2.m.d) {
            surface = null;
        }
        if (this.Hm == surface) {
            return;
        }
        qA();
        this.Hm = surface;
        at(true);
    }

    public void fS(int i) {
        if (this.aeT == i) {
            return;
        }
        this.aeT = i;
        at(true);
    }

    public void qw() {
        if (this.aeO != null) {
            ((e) com.applovin.exoplayer2.l.a.checkNotNull(this.aeP)).qE();
            this.aeO.a(new b.a() { // from class: com.applovin.exoplayer2.m.q
                @Override // com.applovin.exoplayer2.m.m.b.a
                public final void onDefaultDisplayChanged(Display display) {
                    this.a.a(display);
                }
            });
        }
    }

    public void qx() {
        qy();
    }

    public void v(float f2) {
        this.TU = f2;
        qy();
        at(false);
    }

    public void y(float f2) {
        this.aeQ = f2;
        this.aeN.Y();
        qz();
    }
}

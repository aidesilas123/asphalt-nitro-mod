package com.applovin.exoplayer2;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.AudioTrack;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.an;
import com.applovin.exoplayer2.ao;
import com.applovin.exoplayer2.ay;
import com.applovin.exoplayer2.b;
import com.applovin.exoplayer2.c;
import com.applovin.exoplayer2.k;
import com.applovin.exoplayer2.m.a.i;
import com.applovin.exoplayer2.q;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class aw extends d implements q {
    private com.applovin.exoplayer2.b.d N;
    protected final ar[] bB;
    private final com.applovin.exoplayer2.a.a bM;
    private final bc hA;
    private final long hB;

    @Nullable
    private v hC;

    @Nullable
    private v hD;

    @Nullable
    private AudioTrack hE;

    @Nullable
    private Object hF;

    @Nullable
    private Surface hG;

    @Nullable
    private SurfaceHolder hH;

    @Nullable
    private com.applovin.exoplayer2.m.a.i hI;
    private boolean hJ;

    @Nullable
    private TextureView hK;
    private int hL;
    private int hM;
    private int hN;
    private int hO;

    @Nullable
    private com.applovin.exoplayer2.c.e hP;

    @Nullable
    private com.applovin.exoplayer2.c.e hQ;
    private int hR;
    private float hS;
    private boolean hT;
    private List<com.applovin.exoplayer2.i.a> hU;
    private boolean hV;
    private boolean hW;

    @Nullable
    private com.applovin.exoplayer2.l.aa hX;
    private boolean hY;
    private boolean hZ;
    private final com.applovin.exoplayer2.l.g hq;
    private final Context hr;
    private final r hs;
    private final b ht;
    private final c hu;
    private final CopyOnWriteArraySet<an.d> hv;
    private final com.applovin.exoplayer2.b hw;
    private final com.applovin.exoplayer2.c hx;
    private final ay hy;
    private final bb hz;
    private o ia;
    private com.applovin.exoplayer2.m.o ib;

    @Deprecated
    public static final class a {
        private final Context E;
        private com.applovin.exoplayer2.b.d N;
        private com.applovin.exoplayer2.j.j bC;
        private boolean bK;
        private com.applovin.exoplayer2.h.r bL;
        private com.applovin.exoplayer2.a.a bM;
        private com.applovin.exoplayer2.k.d bO;
        private long bP;
        private long bQ;
        private com.applovin.exoplayer2.l.d bR;
        private av bY;
        private boolean bZ;
        private aa cl;
        private z ct;
        private long cu;
        private Looper gU;
        private long hB;
        private int hL;
        private int hM;
        private boolean hT;

        @Nullable
        private com.applovin.exoplayer2.l.aa hX;
        private final au ic;
        private long id;
        private boolean ie;

        /* JADX INFO: renamed from: if, reason: not valid java name */
        private int f0if;
        private boolean ig;
        private boolean ih;

        @Deprecated
        public a(Context context) {
            this(context, new n(context), new com.applovin.exoplayer2.e.f());
        }

        @Deprecated
        public a(Context context, au auVar, com.applovin.exoplayer2.e.l lVar) {
            this(context, auVar, new com.applovin.exoplayer2.j.c(context), new com.applovin.exoplayer2.h.f(context, lVar), new l(), com.applovin.exoplayer2.k.n.i(context), new com.applovin.exoplayer2.a.a(com.applovin.exoplayer2.l.d.abJ));
        }

        @Deprecated
        public a(Context context, au auVar, com.applovin.exoplayer2.j.j jVar, com.applovin.exoplayer2.h.r rVar, aa aaVar, com.applovin.exoplayer2.k.d dVar, com.applovin.exoplayer2.a.a aVar) {
            this.E = context;
            this.ic = auVar;
            this.bC = jVar;
            this.bL = rVar;
            this.cl = aaVar;
            this.bO = dVar;
            this.bM = aVar;
            this.gU = com.applovin.exoplayer2.l.ai.pZ();
            this.N = com.applovin.exoplayer2.b.d.jD;
            this.f0if = 0;
            this.hL = 1;
            this.hM = 0;
            this.bK = true;
            this.bY = av.hn;
            this.bP = 5000L;
            this.bQ = 15000L;
            this.ct = new k.a().ao();
            this.bR = com.applovin.exoplayer2.l.d.abJ;
            this.cu = 500L;
            this.hB = AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS;
        }

        @Deprecated
        public aw cY() {
            com.applovin.exoplayer2.l.a.checkState(!this.ih);
            this.ih = true;
            return new aw(this);
        }
    }

    private final class b implements SurfaceHolder.Callback, TextureView.SurfaceTextureListener, an.b, ay.a, b.InterfaceC0018b, com.applovin.exoplayer2.b.g, c.b, com.applovin.exoplayer2.g.e, com.applovin.exoplayer2.i.l, i.a, com.applovin.exoplayer2.m.n, q.a {
        private b() {
        }

        @Override // com.applovin.exoplayer2.b.g
        public void A(boolean z) {
            if (aw.this.hT == z) {
                return;
            }
            aw.this.hT = z;
            aw.this.cV();
        }

        @Override // com.applovin.exoplayer2.an.b
        public void Z(int i) {
            aw.this.cW();
        }

        @Override // com.applovin.exoplayer2.b.g
        public void a(int i, long j, long j2) {
            aw.this.bM.a(i, j, j2);
        }

        @Override // com.applovin.exoplayer2.m.n
        public void a(long j, int i) {
            aw.this.bM.a(j, i);
        }

        @Override // com.applovin.exoplayer2.m.a.i.a
        public void a(Surface surface) {
            aw.this.i((Object) null);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void a(ab abVar, int i) {
            w1.b(this, abVar, i);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void a(ac acVar) {
            w1.c(this, acVar);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void a(ak akVar) {
            w1.d(this, akVar);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void a(an.e eVar, an.e eVar2, int i) {
            w1.e(this, eVar, eVar2, i);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void a(an anVar, an.c cVar) {
            w1.f(this, anVar, cVar);
        }

        @Override // com.applovin.exoplayer2.m.n
        public void a(com.applovin.exoplayer2.c.e eVar) {
            aw.this.hP = eVar;
            aw.this.bM.a(eVar);
        }

        @Override // com.applovin.exoplayer2.g.e
        public void a(com.applovin.exoplayer2.g.a aVar) {
            aw.this.bM.a(aVar);
            aw.this.hs.a(aVar);
            Iterator it = aw.this.hv.iterator();
            while (it.hasNext()) {
                ((an.d) it.next()).a(aVar);
            }
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void a(com.applovin.exoplayer2.h.ad adVar, com.applovin.exoplayer2.j.h hVar) {
            w1.g(this, adVar, hVar);
        }

        @Override // com.applovin.exoplayer2.m.n
        public void a(com.applovin.exoplayer2.m.o oVar) {
            aw.this.ib = oVar;
            aw.this.bM.a(oVar);
            Iterator it = aw.this.hv.iterator();
            while (it.hasNext()) {
                ((an.d) it.next()).a(oVar);
            }
        }

        @Override // com.applovin.exoplayer2.m.n
        public void a(v vVar, @Nullable com.applovin.exoplayer2.c.h hVar) {
            aw.this.hC = vVar;
            aw.this.bM.a(vVar, hVar);
        }

        @Override // com.applovin.exoplayer2.m.n
        public void a(Exception exc) {
            aw.this.bM.a(exc);
        }

        @Override // com.applovin.exoplayer2.m.n
        public void a(Object obj, long j) {
            aw.this.bM.a(obj, j);
            if (aw.this.hF == obj) {
                Iterator it = aw.this.hv.iterator();
                while (it.hasNext()) {
                    ((an.d) it.next()).cE();
                }
            }
        }

        @Override // com.applovin.exoplayer2.m.n
        public void a(String str, long j, long j2) {
            aw.this.bM.a(str, j, j2);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void aa(int i) {
            w1.h(this, i);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void ab(int i) {
            w1.i(this, i);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void ac(int i) {
            w1.j(this, i);
        }

        @Override // com.applovin.exoplayer2.ay.a
        public void ai(int i) {
            o oVarA = aw.a(aw.this.hy);
            if (oVarA.equals(aw.this.ia)) {
                return;
            }
            aw.this.ia = oVarA;
            Iterator it = aw.this.hv.iterator();
            while (it.hasNext()) {
                ((an.d) it.next()).a(oVarA);
            }
        }

        @Override // com.applovin.exoplayer2.c.b
        public void b(float f2) {
            aw.this.cU();
        }

        @Override // com.applovin.exoplayer2.m.n
        public void b(int i, long j) {
            aw.this.bM.b(i, j);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void b(ak akVar) {
            w1.k(this, akVar);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void b(am amVar) {
            w1.l(this, amVar);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void b(ba baVar, int i) {
            w1.m(this, baVar, i);
        }

        @Override // com.applovin.exoplayer2.m.n
        public void b(com.applovin.exoplayer2.c.e eVar) {
            aw.this.bM.b(eVar);
            aw.this.hC = null;
            aw.this.hP = null;
        }

        @Override // com.applovin.exoplayer2.b.g
        public void b(v vVar, @Nullable com.applovin.exoplayer2.c.h hVar) {
            aw.this.hD = vVar;
            aw.this.bM.b(vVar, hVar);
        }

        @Override // com.applovin.exoplayer2.b.g
        public void b(Exception exc) {
            aw.this.bM.b(exc);
        }

        @Override // com.applovin.exoplayer2.b.g
        public void b(String str, long j, long j2) {
            aw.this.bM.b(str, j, j2);
        }

        @Override // com.applovin.exoplayer2.b.g
        public void c(com.applovin.exoplayer2.c.e eVar) {
            aw.this.hQ = eVar;
            aw.this.bM.c(eVar);
        }

        @Override // com.applovin.exoplayer2.b.g
        public /* synthetic */ void c(v vVar) {
            com.applovin.exoplayer2.b.l0.g(this, vVar);
        }

        @Override // com.applovin.exoplayer2.b.g
        public void c(Exception exc) {
            aw.this.bM.c(exc);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void cD() {
            w1.n(this);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void d(an.a aVar) {
            w1.o(this, aVar);
        }

        @Override // com.applovin.exoplayer2.b.g
        public void d(com.applovin.exoplayer2.c.e eVar) {
            aw.this.bM.d(eVar);
            aw.this.hD = null;
            aw.this.hQ = null;
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void d(boolean z, int i) {
            w1.p(this, z, i);
        }

        @Override // com.applovin.exoplayer2.i.l
        public void e(List<com.applovin.exoplayer2.i.a> list) {
            aw.this.hU = list;
            Iterator it = aw.this.hv.iterator();
            while (it.hasNext()) {
                ((an.d) it.next()).e(list);
            }
        }

        @Override // com.applovin.exoplayer2.an.b
        public void e(boolean z, int i) {
            aw.this.cW();
        }

        @Override // com.applovin.exoplayer2.ay.a
        public void f(int i, boolean z) {
            Iterator it = aw.this.hv.iterator();
            while (it.hasNext()) {
                ((an.d) it.next()).e(i, z);
            }
        }

        @Override // com.applovin.exoplayer2.q.a
        public /* synthetic */ void i(boolean z) {
            b2.a(this, z);
        }

        @Override // com.applovin.exoplayer2.q.a
        public void j(boolean z) {
            aw.this.cW();
        }

        @Override // com.applovin.exoplayer2.c.b
        public void l(int i) {
            boolean zAE = aw.this.aE();
            aw.this.b(zAE, i, aw.f(zAE, i));
        }

        @Override // com.applovin.exoplayer2.b.InterfaceC0018b
        public void m() {
            aw.this.b(false, -1, 3);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            aw.this.a(surfaceTexture);
            aw.this.g(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            aw.this.i((Object) null);
            aw.this.g(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            aw.this.g(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // com.applovin.exoplayer2.m.n
        public void r(String str) {
            aw.this.bM.r(str);
        }

        @Override // com.applovin.exoplayer2.b.g
        public void s(String str) {
            aw.this.bM.s(str);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            aw.this.g(i2, i3);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            if (aw.this.hJ) {
                aw.this.i(surfaceHolder.getSurface());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            if (aw.this.hJ) {
                aw.this.i((Object) null);
            }
            aw.this.g(0, 0);
        }

        @Override // com.applovin.exoplayer2.an.b
        public void w(boolean z) {
            if (aw.this.hX != null) {
                if (z && !aw.this.hY) {
                    aw.this.hX.cR(0);
                    aw.this.hY = true;
                } else {
                    if (z || !aw.this.hY) {
                        return;
                    }
                    aw.this.hX.fF(0);
                    aw.this.hY = false;
                }
            }
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void x(boolean z) {
            w1.s(this, z);
        }

        @Override // com.applovin.exoplayer2.m.n
        public /* synthetic */ void y(v vVar) {
            com.applovin.exoplayer2.m.c0.k(this, vVar);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void y(boolean z) {
            w1.t(this, z);
        }

        @Override // com.applovin.exoplayer2.b.g
        public void z(long j) {
            aw.this.bM.z(j);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void z(boolean z) {
            w1.u(this, z);
        }
    }

    private static final class c implements ao.b, com.applovin.exoplayer2.m.a.a, com.applovin.exoplayer2.m.l {

        @Nullable
        private com.applovin.exoplayer2.m.l ij;

        @Nullable
        private com.applovin.exoplayer2.m.a.a ik;

        @Nullable
        private com.applovin.exoplayer2.m.l il;

        @Nullable
        private com.applovin.exoplayer2.m.a.a im;

        private c() {
        }

        @Override // com.applovin.exoplayer2.ao.b
        public void a(int i, @Nullable Object obj) {
            if (i == 7) {
                this.ij = (com.applovin.exoplayer2.m.l) obj;
                return;
            }
            if (i == 8) {
                this.ik = (com.applovin.exoplayer2.m.a.a) obj;
                return;
            }
            if (i != 10000) {
                return;
            }
            com.applovin.exoplayer2.m.a.i iVar = (com.applovin.exoplayer2.m.a.i) obj;
            if (iVar == null) {
                this.il = null;
                this.im = null;
            } else {
                this.il = iVar.getVideoFrameMetadataListener();
                this.im = iVar.getCameraMotionListener();
            }
        }

        @Override // com.applovin.exoplayer2.m.l
        public void a(long j, long j2, v vVar, @Nullable MediaFormat mediaFormat) {
            com.applovin.exoplayer2.m.l lVar = this.il;
            if (lVar != null) {
                lVar.a(j, j2, vVar, mediaFormat);
            }
            com.applovin.exoplayer2.m.l lVar2 = this.ij;
            if (lVar2 != null) {
                lVar2.a(j, j2, vVar, mediaFormat);
            }
        }

        @Override // com.applovin.exoplayer2.m.a.a
        public void a(long j, float[] fArr) {
            com.applovin.exoplayer2.m.a.a aVar = this.im;
            if (aVar != null) {
                aVar.a(j, fArr);
            }
            com.applovin.exoplayer2.m.a.a aVar2 = this.ik;
            if (aVar2 != null) {
                aVar2.a(j, fArr);
            }
        }

        @Override // com.applovin.exoplayer2.m.a.a
        public void cZ() {
            com.applovin.exoplayer2.m.a.a aVar = this.im;
            if (aVar != null) {
                aVar.cZ();
            }
            com.applovin.exoplayer2.m.a.a aVar2 = this.ik;
            if (aVar2 != null) {
                aVar2.cZ();
            }
        }
    }

    protected aw(a aVar) throws Throwable {
        aw awVar;
        com.applovin.exoplayer2.l.g gVar = new com.applovin.exoplayer2.l.g();
        this.hq = gVar;
        try {
            Context applicationContext = aVar.E.getApplicationContext();
            this.hr = applicationContext;
            com.applovin.exoplayer2.a.a aVar2 = aVar.bM;
            this.bM = aVar2;
            this.hX = aVar.hX;
            this.N = aVar.N;
            this.hL = aVar.hL;
            this.hM = aVar.hM;
            this.hT = aVar.hT;
            this.hB = aVar.hB;
            b bVar = new b();
            this.ht = bVar;
            c cVar = new c();
            this.hu = cVar;
            this.hv = new CopyOnWriteArraySet<>();
            Handler handler = new Handler(aVar.gU);
            ar[] arVarArrA = aVar.ic.a(handler, bVar, bVar, bVar, bVar);
            this.bB = arVarArrA;
            this.hS = 1.0f;
            if (com.applovin.exoplayer2.l.ai.acV < 21) {
                this.hR = ah(0);
            } else {
                this.hR = h.c(applicationContext);
            }
            this.hU = Collections.emptyList();
            this.hV = true;
            try {
                r rVar = new r(arVarArrA, aVar.bC, aVar.bL, aVar.cl, aVar.bO, aVar2, aVar.bK, aVar.bY, aVar.bP, aVar.bQ, aVar.ct, aVar.cu, aVar.bZ, aVar.bR, aVar.gU, this, new an.a.C0017a().a(20, 21, 22, 23, 24, 25, 26, 27).cC());
                awVar = this;
                try {
                    awVar.hs = rVar;
                    rVar.a((an.b) bVar);
                    rVar.a((q.a) bVar);
                    if (aVar.id > 0) {
                        rVar.j(aVar.id);
                    }
                    com.applovin.exoplayer2.b bVar2 = new com.applovin.exoplayer2.b(aVar.E, handler, bVar);
                    awVar.hw = bVar2;
                    bVar2.setEnabled(aVar.ig);
                    com.applovin.exoplayer2.c cVar2 = new com.applovin.exoplayer2.c(aVar.E, handler, bVar);
                    awVar.hx = cVar2;
                    cVar2.a(aVar.ie ? awVar.N : null);
                    ay ayVar = new ay(aVar.E, handler, bVar);
                    awVar.hy = ayVar;
                    ayVar.aj(com.applovin.exoplayer2.l.ai.fM(awVar.N.jG));
                    bb bbVar = new bb(aVar.E);
                    awVar.hz = bbVar;
                    bbVar.setEnabled(aVar.f0if != 0);
                    bc bcVar = new bc(aVar.E);
                    awVar.hA = bcVar;
                    bcVar.setEnabled(aVar.f0if == 2);
                    awVar.ia = a(ayVar);
                    awVar.ib = com.applovin.exoplayer2.m.o.afk;
                    awVar.a(1, 10, Integer.valueOf(awVar.hR));
                    awVar.a(2, 10, Integer.valueOf(awVar.hR));
                    awVar.a(1, 3, awVar.N);
                    awVar.a(2, 4, Integer.valueOf(awVar.hL));
                    awVar.a(2, 5, Integer.valueOf(awVar.hM));
                    awVar.a(1, 9, Boolean.valueOf(awVar.hT));
                    awVar.a(2, 7, cVar);
                    awVar.a(6, 8, cVar);
                    gVar.oN();
                } catch (Throwable th) {
                    th = th;
                    awVar.hq.oN();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                awVar = this;
            }
        } catch (Throwable th3) {
            th = th3;
            awVar = this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static o a(ay ayVar) {
        return new o(0, ayVar.da(), ayVar.db());
    }

    private void a(int i, int i2, @Nullable Object obj) {
        for (ar arVar : this.bB) {
            if (arVar.M() == i) {
                this.hs.a(arVar).ad(i2).h(obj).cM();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        i(surface);
        this.hG = surface;
    }

    private int ah(int i) {
        AudioTrack audioTrack = this.hE;
        if (audioTrack != null && audioTrack.getAudioSessionId() != i) {
            this.hE.release();
            this.hE = null;
        }
        if (this.hE == null) {
            this.hE = new AudioTrack(3, 4000, 4, 2, 2, 0, i);
        }
        return this.hE.getAudioSessionId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z, int i, int i2) {
        int i3 = 0;
        boolean z2 = z && i != -1;
        if (z2 && i != 1) {
            i3 = 1;
        }
        this.hs.a(z2, i3, i2);
    }

    private void c(SurfaceHolder surfaceHolder) {
        this.hJ = false;
        this.hH = surfaceHolder;
        surfaceHolder.addCallback(this.ht);
        Surface surface = this.hH.getSurface();
        if (surface == null || !surface.isValid()) {
            g(0, 0);
        } else {
            Rect surfaceFrame = this.hH.getSurfaceFrame();
            g(surfaceFrame.width(), surfaceFrame.height());
        }
    }

    private void cT() {
        if (this.hI != null) {
            this.hs.a(this.hu).ad(10000).h(null).cM();
            this.hI.b(this.ht);
            this.hI = null;
        }
        TextureView textureView = this.hK;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.ht) {
                com.applovin.exoplayer2.l.q.h("SimpleExoPlayer", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.hK.setSurfaceTextureListener(null);
            }
            this.hK = null;
        }
        SurfaceHolder surfaceHolder = this.hH;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.ht);
            this.hH = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cU() {
        a(1, 2, Float.valueOf(this.hS * this.hx.n()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cV() {
        this.bM.A(this.hT);
        Iterator<an.d> it = this.hv.iterator();
        while (it.hasNext()) {
            it.next().A(this.hT);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cW() {
        int iAB = aB();
        if (iAB != 1) {
            if (iAB == 2 || iAB == 3) {
                this.hz.C(aE() && !ay());
                this.hA.C(aE());
                return;
            } else if (iAB != 4) {
                throw new IllegalStateException();
            }
        }
        this.hz.C(false);
        this.hA.C(false);
    }

    private void cX() {
        this.hq.oQ();
        if (Thread.currentThread() != az().getThread()) {
            String strA = com.applovin.exoplayer2.l.ai.a("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), az().getThread().getName());
            if (this.hV) {
                throw new IllegalStateException(strA);
            }
            com.applovin.exoplayer2.l.q.b("SimpleExoPlayer", strA, this.hW ? null : new IllegalStateException());
            this.hW = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int f(boolean z, int i) {
        return (!z || i == 1) ? 1 : 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(int i, int i2) {
        if (i == this.hN && i2 == this.hO) {
            return;
        }
        this.hN = i;
        this.hO = i2;
        this.bM.f(i, i2);
        Iterator<an.d> it = this.hv.iterator();
        while (it.hasNext()) {
            it.next().f(i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(@Nullable Object obj) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        ar[] arVarArr = this.bB;
        int length = arVarArr.length;
        int i = 0;
        while (true) {
            z = true;
            if (i >= length) {
                break;
            }
            ar arVar = arVarArr[i];
            if (arVar.M() == 2) {
                arrayList.add(this.hs.a(arVar).ad(1).h(obj).cM());
            }
            i++;
        }
        Object obj2 = this.hF;
        if (obj2 == null || obj2 == obj) {
            z = false;
        } else {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((ao) it.next()).y(this.hB);
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
            }
            z = false;
            Object obj3 = this.hF;
            Surface surface = this.hG;
            if (obj3 == surface) {
                surface.release();
                this.hG = null;
            }
        }
        this.hF = obj;
        if (z) {
            this.hs.a(false, p.a(new u(3), 1003));
        }
    }

    @Override // com.applovin.exoplayer2.an
    public void a(int i, long j) {
        cX();
        this.bM.dq();
        this.hs.a(i, j);
    }

    public void a(@Nullable SurfaceHolder surfaceHolder) {
        cX();
        if (surfaceHolder == null) {
            cS();
            return;
        }
        cT();
        this.hJ = true;
        this.hH = surfaceHolder;
        surfaceHolder.addCallback(this.ht);
        Surface surface = surfaceHolder.getSurface();
        if (surface == null || !surface.isValid()) {
            i((Object) null);
            g(0, 0);
        } else {
            i(surface);
            Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
            g(surfaceFrame.width(), surfaceFrame.height());
        }
    }

    @Override // com.applovin.exoplayer2.an
    public void a(@Nullable SurfaceView surfaceView) {
        cX();
        if (surfaceView instanceof com.applovin.exoplayer2.m.k) {
            cT();
            i(surfaceView);
            c(surfaceView.getHolder());
        } else {
            if (!(surfaceView instanceof com.applovin.exoplayer2.m.a.i)) {
                a(surfaceView == null ? null : surfaceView.getHolder());
                return;
            }
            cT();
            this.hI = (com.applovin.exoplayer2.m.a.i) surfaceView;
            this.hs.a(this.hu).ad(10000).h(this.hI).cM();
            this.hI.a(this.ht);
            i(this.hI.getVideoSurface());
            c(surfaceView.getHolder());
        }
    }

    @Override // com.applovin.exoplayer2.an
    public void a(@Nullable TextureView textureView) {
        cX();
        if (textureView == null) {
            cS();
            return;
        }
        cT();
        this.hK = textureView;
        if (textureView.getSurfaceTextureListener() != null) {
            com.applovin.exoplayer2.l.q.h("SimpleExoPlayer", "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.ht);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            i((Object) null);
            g(0, 0);
        } else {
            a(surfaceTexture);
            g(textureView.getWidth(), textureView.getHeight());
        }
    }

    @Override // com.applovin.exoplayer2.an
    public void a(an.d dVar) {
        com.applovin.exoplayer2.l.a.checkNotNull(dVar);
        this.hv.add(dVar);
        f(dVar);
    }

    public void a(com.applovin.exoplayer2.h.p pVar) {
        cX();
        this.hs.a(pVar);
    }

    @Override // com.applovin.exoplayer2.an
    public an.a aA() {
        cX();
        return this.hs.aA();
    }

    @Override // com.applovin.exoplayer2.an
    public int aB() {
        cX();
        return this.hs.aB();
    }

    @Override // com.applovin.exoplayer2.an
    public int aC() {
        cX();
        return this.hs.aC();
    }

    @Override // com.applovin.exoplayer2.an
    public void aD() {
        cX();
        boolean zAE = aE();
        int iA = this.hx.a(zAE, 2);
        b(zAE, iA, f(zAE, iA));
        this.hs.aD();
    }

    @Override // com.applovin.exoplayer2.an
    public boolean aE() {
        cX();
        return this.hs.aE();
    }

    @Override // com.applovin.exoplayer2.an
    public int aF() {
        cX();
        return this.hs.aF();
    }

    @Override // com.applovin.exoplayer2.an
    public boolean aG() {
        cX();
        return this.hs.aG();
    }

    @Override // com.applovin.exoplayer2.an
    public long aH() {
        cX();
        return this.hs.aH();
    }

    @Override // com.applovin.exoplayer2.an
    public long aI() {
        cX();
        return this.hs.aI();
    }

    @Override // com.applovin.exoplayer2.an
    public long aJ() {
        cX();
        return this.hs.aJ();
    }

    @Override // com.applovin.exoplayer2.an
    public int aK() {
        cX();
        return this.hs.aK();
    }

    @Override // com.applovin.exoplayer2.an
    public int aL() {
        cX();
        return this.hs.aL();
    }

    @Override // com.applovin.exoplayer2.an
    public long aM() {
        cX();
        return this.hs.aM();
    }

    @Override // com.applovin.exoplayer2.an
    public long aN() {
        cX();
        return this.hs.aN();
    }

    @Override // com.applovin.exoplayer2.an
    public long aO() {
        cX();
        return this.hs.aO();
    }

    @Override // com.applovin.exoplayer2.an
    public boolean aP() {
        cX();
        return this.hs.aP();
    }

    @Override // com.applovin.exoplayer2.an
    public int aQ() {
        cX();
        return this.hs.aQ();
    }

    @Override // com.applovin.exoplayer2.an
    public int aR() {
        cX();
        return this.hs.aR();
    }

    @Override // com.applovin.exoplayer2.an
    public long aS() {
        cX();
        return this.hs.aS();
    }

    @Override // com.applovin.exoplayer2.an
    public long aT() {
        cX();
        return this.hs.aT();
    }

    @Override // com.applovin.exoplayer2.an
    public com.applovin.exoplayer2.h.ad aU() {
        cX();
        return this.hs.aU();
    }

    @Override // com.applovin.exoplayer2.an
    public com.applovin.exoplayer2.j.h aV() {
        cX();
        return this.hs.aV();
    }

    @Override // com.applovin.exoplayer2.an
    public ac aW() {
        return this.hs.aW();
    }

    @Override // com.applovin.exoplayer2.an
    public ba aX() {
        cX();
        return this.hs.aX();
    }

    @Override // com.applovin.exoplayer2.an
    public com.applovin.exoplayer2.m.o aY() {
        return this.ib;
    }

    @Override // com.applovin.exoplayer2.an
    public am av() {
        cX();
        return this.hs.av();
    }

    @Override // com.applovin.exoplayer2.an, com.applovin.exoplayer2.q
    @Nullable
    /* JADX INFO: renamed from: aw, reason: merged with bridge method [inline-methods] */
    public p ax() {
        cX();
        return this.hs.ax();
    }

    public boolean ay() {
        cX();
        return this.hs.ay();
    }

    @Override // com.applovin.exoplayer2.an
    public Looper az() {
        return this.hs.az();
    }

    public void b(@Nullable SurfaceHolder surfaceHolder) {
        cX();
        if (surfaceHolder == null || surfaceHolder != this.hH) {
            return;
        }
        cS();
    }

    @Override // com.applovin.exoplayer2.an
    public void b(@Nullable SurfaceView surfaceView) {
        cX();
        b(surfaceView == null ? null : surfaceView.getHolder());
    }

    @Override // com.applovin.exoplayer2.an
    public void b(@Nullable TextureView textureView) {
        cX();
        if (textureView == null || textureView != this.hK) {
            return;
        }
        cS();
    }

    @Override // com.applovin.exoplayer2.an
    public void b(an.d dVar) {
        com.applovin.exoplayer2.l.a.checkNotNull(dVar);
        this.hv.remove(dVar);
        g(dVar);
    }

    @Override // com.applovin.exoplayer2.an
    public List<com.applovin.exoplayer2.i.a> bd() {
        cX();
        return this.hU;
    }

    public void cS() {
        cX();
        cT();
        i((Object) null);
        g(0, 0);
    }

    @Deprecated
    public void f(an.b bVar) {
        com.applovin.exoplayer2.l.a.checkNotNull(bVar);
        this.hs.a(bVar);
    }

    @Deprecated
    public void g(an.b bVar) {
        this.hs.b(bVar);
    }

    public void h(float f2) {
        cX();
        float fA = com.applovin.exoplayer2.l.ai.a(f2, 0.0f, 1.0f);
        if (this.hS == fA) {
            return;
        }
        this.hS = fA;
        cU();
        this.bM.g(fA);
        Iterator<an.d> it = this.hv.iterator();
        while (it.hasNext()) {
            it.next().g(fA);
        }
    }

    @Override // com.applovin.exoplayer2.an
    public void k(boolean z) {
        cX();
        int iA = this.hx.a(z, aB());
        b(z, iA, f(z, iA));
    }

    @Override // com.applovin.exoplayer2.an
    public void l(boolean z) {
        cX();
        this.hs.l(z);
    }

    public void release() {
        AudioTrack audioTrack;
        cX();
        if (com.applovin.exoplayer2.l.ai.acV < 21 && (audioTrack = this.hE) != null) {
            audioTrack.release();
            this.hE = null;
        }
        this.hw.setEnabled(false);
        this.hy.release();
        this.hz.C(false);
        this.hA.C(false);
        this.hx.release();
        this.hs.release();
        this.bM.release();
        cT();
        Surface surface = this.hG;
        if (surface != null) {
            surface.release();
            this.hG = null;
        }
        if (this.hY) {
            ((com.applovin.exoplayer2.l.aa) com.applovin.exoplayer2.l.a.checkNotNull(this.hX)).fF(0);
            this.hY = false;
        }
        this.hU = Collections.emptyList();
        this.hZ = true;
    }

    @Override // com.applovin.exoplayer2.an
    public void u(int i) {
        cX();
        this.hs.u(i);
    }
}

package com.applovin.exoplayer2.d;

import android.annotation.SuppressLint;
import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.applovin.exoplayer2.d.e;
import com.applovin.exoplayer2.d.f;
import com.applovin.exoplayer2.d.g;
import com.applovin.exoplayer2.d.m;
import com.applovin.exoplayer2.k.v;
import com.applovin.exoplayer2.l.ai;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(18)
class b implements com.applovin.exoplayer2.d.f {
    private int Z;
    final UUID ey;
    private final int rm;

    @Nullable
    public final List<e.a> se;
    private final m sf;
    private final a sg;
    private final InterfaceC0026b sh;
    private final boolean si;
    private final boolean sj;
    private final HashMap<String, String> sk;
    private final com.applovin.exoplayer2.l.i<g.a> sl;
    private final com.applovin.exoplayer2.k.v sm;
    final r sn;
    final e so;
    private int sp;

    @Nullable
    private HandlerThread sq;

    @Nullable
    private c sr;

    @Nullable
    private com.applovin.exoplayer2.c.b ss;

    @Nullable
    private f.a st;

    @Nullable
    private byte[] su;
    private byte[] sv;

    @Nullable
    private m.a sw;

    @Nullable
    private m.d sx;

    public interface a {
        void a(Exception exc, boolean z);

        void b(b bVar);

        void hr();
    }

    /* JADX INFO: renamed from: com.applovin.exoplayer2.d.b$b, reason: collision with other inner class name */
    public interface InterfaceC0026b {
        void a(b bVar, int i);

        void b(b bVar, int i);
    }

    @SuppressLint({"HandlerLeak"})
    private class c extends Handler {

        @GuardedBy("this")
        private boolean sy;

        public c(Looper looper) {
            super(looper);
        }

        private boolean a(Message message, s sVar) {
            d dVar = (d) message.obj;
            if (!dVar.sB) {
                return false;
            }
            int i = dVar.sE + 1;
            dVar.sE = i;
            if (i > b.this.sm.fl(3)) {
                return false;
            }
            long jA = b.this.sm.a(new v.a(new com.applovin.exoplayer2.h.j(dVar.sA, sVar.tw, sVar.tx, sVar.ty, SystemClock.elapsedRealtime(), SystemClock.elapsedRealtime() - dVar.sC, sVar.tz), new com.applovin.exoplayer2.h.m(3), sVar.getCause() instanceof IOException ? (IOException) sVar.getCause() : new f(sVar.getCause()), dVar.sE));
            if (jA == C.TIME_UNSET) {
                return false;
            }
            synchronized (this) {
                if (this.sy) {
                    return false;
                }
                sendMessageDelayed(Message.obtain(message), jA);
                return true;
            }
        }

        void a(int i, Object obj, boolean z) {
            obtainMessage(i, new d(com.applovin.exoplayer2.h.j.kV(), z, SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Object objA;
            d dVar = (d) message.obj;
            try {
                int i = message.what;
                if (i == 0) {
                    b bVar = b.this;
                    objA = bVar.sn.a(bVar.ey, (m.d) dVar.sD);
                } else {
                    if (i != 1) {
                        throw new RuntimeException();
                    }
                    b bVar2 = b.this;
                    objA = bVar2.sn.a(bVar2.ey, (m.a) dVar.sD);
                }
            } catch (s e2) {
                boolean zA = a(message, e2);
                objA = e2;
                if (zA) {
                    return;
                }
            } catch (Exception e3) {
                com.applovin.exoplayer2.l.q.b("DefaultDrmSession", "Key/provisioning request produced an unexpected exception. Not retrying.", e3);
                objA = e3;
            }
            b.this.sm.bm(dVar.sA);
            synchronized (this) {
                if (!this.sy) {
                    b.this.so.obtainMessage(message.what, Pair.create(dVar.sD, objA)).sendToTarget();
                }
            }
        }

        public synchronized void release() {
            removeCallbacksAndMessages(null);
            this.sy = true;
        }
    }

    private static final class d {
        public final long sA;
        public final boolean sB;
        public final long sC;
        public final Object sD;
        public int sE;

        public d(long j, boolean z, long j2, Object obj) {
            this.sA = j;
            this.sB = z;
            this.sC = j2;
            this.sD = obj;
        }
    }

    @SuppressLint({"HandlerLeak"})
    private class e extends Handler {
        public e(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i = message.what;
            if (i == 0) {
                b.this.o(obj, obj2);
            } else {
                if (i != 1) {
                    return;
                }
                b.this.p(obj, obj2);
            }
        }
    }

    public static final class f extends IOException {
        public f(@Nullable Throwable th) {
            super(th);
        }
    }

    public b(UUID uuid, m mVar, a aVar, InterfaceC0026b interfaceC0026b, @Nullable List<e.a> list, int i, boolean z, boolean z2, @Nullable byte[] bArr, HashMap<String, String> map, r rVar, Looper looper, com.applovin.exoplayer2.k.v vVar) {
        if (i == 1 || i == 3) {
            com.applovin.exoplayer2.l.a.checkNotNull(bArr);
        }
        this.ey = uuid;
        this.sg = aVar;
        this.sh = interfaceC0026b;
        this.sf = mVar;
        this.rm = i;
        this.si = z;
        this.sj = z2;
        if (bArr != null) {
            this.sv = bArr;
            this.se = null;
        } else {
            this.se = Collections.unmodifiableList((List) com.applovin.exoplayer2.l.a.checkNotNull(list));
        }
        this.sk = map;
        this.sn = rVar;
        this.sl = new com.applovin.exoplayer2.l.i<>();
        this.sm = vVar;
        this.Z = 2;
        this.so = new e(looper);
    }

    private void J(boolean z) {
        if (this.sj) {
            return;
        }
        byte[] bArr = (byte[]) ai.R(this.su);
        int i = this.rm;
        if (i != 0 && i != 1) {
            if (i == 2) {
                if (this.sv == null || hy()) {
                    a(bArr, 2, z);
                    return;
                }
                return;
            }
            if (i != 3) {
                return;
            }
            com.applovin.exoplayer2.l.a.checkNotNull(this.sv);
            com.applovin.exoplayer2.l.a.checkNotNull(this.su);
            a(this.sv, 3, z);
            return;
        }
        if (this.sv == null) {
            a(bArr, 1, z);
            return;
        }
        if (this.Z == 4 || hy()) {
            long jHz = hz();
            if (this.rm != 0 || jHz > 60) {
                if (jHz <= 0) {
                    a(new q(), 2);
                    return;
                } else {
                    this.Z = 4;
                    a(new com.applovin.exoplayer2.l.h() { // from class: com.applovin.exoplayer2.d.x
                        @Override // com.applovin.exoplayer2.l.h
                        public final void accept(Object obj) {
                            ((g.a) obj).hH();
                        }
                    });
                    return;
                }
            }
            com.applovin.exoplayer2.l.q.f("DefaultDrmSession", "Offline license has expired or will expire soon. Remaining seconds: " + jHz);
            a(bArr, 2, z);
        }
    }

    private void a(com.applovin.exoplayer2.l.h<g.a> hVar) {
        Iterator<g.a> it = this.sl.gN().iterator();
        while (it.hasNext()) {
            hVar.accept(it.next());
        }
    }

    private void a(final Exception exc, int i) {
        this.st = new f.a(exc, j.b(exc, i));
        com.applovin.exoplayer2.l.q.c("DefaultDrmSession", "DRM session error", exc);
        a(new com.applovin.exoplayer2.l.h() { // from class: com.applovin.exoplayer2.d.z
            @Override // com.applovin.exoplayer2.l.h
            public final void accept(Object obj) {
                ((g.a) obj).j(exc);
            }
        });
        if (this.Z != 4) {
            this.Z = 1;
        }
    }

    private void a(byte[] bArr, int i, boolean z) {
        try {
            this.sw = this.sf.a(bArr, this.se, i, this.sk);
            ((c) ai.R(this.sr)).a(1, com.applovin.exoplayer2.l.a.checkNotNull(this.sw), z);
        } catch (Exception e2) {
            b(e2, true);
        }
    }

    private void b(Exception exc, boolean z) {
        if (exc instanceof NotProvisionedException) {
            this.sg.b(this);
        } else {
            a(exc, z ? 1 : 2);
        }
    }

    private void hA() {
        if (this.rm == 0 && this.Z == 4) {
            ai.R(this.su);
            J(false);
        }
    }

    private boolean hB() {
        int i = this.Z;
        return i == 3 || i == 4;
    }

    private boolean hx() {
        if (hB()) {
            return true;
        }
        try {
            byte[] bArrHL = this.sf.hL();
            this.su = bArrHL;
            this.ss = this.sf.s(bArrHL);
            final int i = 3;
            this.Z = 3;
            a(new com.applovin.exoplayer2.l.h() { // from class: com.applovin.exoplayer2.d.y
                @Override // com.applovin.exoplayer2.l.h
                public final void accept(Object obj) {
                    ((g.a) obj).bF(i);
                }
            });
            com.applovin.exoplayer2.l.a.checkNotNull(this.su);
            return true;
        } catch (NotProvisionedException unused) {
            this.sg.b(this);
            return false;
        } catch (Exception e2) {
            a(e2, 1);
            return false;
        }
    }

    private boolean hy() {
        try {
            this.sf.b(this.su, this.sv);
            return true;
        } catch (Exception e2) {
            a(e2, 1);
            return false;
        }
    }

    private long hz() {
        if (!com.applovin.exoplayer2.h.am.equals(this.ey)) {
            return Long.MAX_VALUE;
        }
        Pair pair = (Pair) com.applovin.exoplayer2.l.a.checkNotNull(u.b(this));
        return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(Object obj, Object obj2) {
        if (obj == this.sx) {
            if (this.Z == 2 || hB()) {
                this.sx = null;
                if (obj2 instanceof Exception) {
                    this.sg.a((Exception) obj2, false);
                    return;
                }
                try {
                    this.sf.q((byte[]) obj2);
                    this.sg.hr();
                } catch (Exception e2) {
                    this.sg.a(e2, true);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(Object obj, Object obj2) {
        if (obj == this.sw && hB()) {
            this.sw = null;
            if (obj2 instanceof Exception) {
                b((Exception) obj2, false);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (this.rm == 3) {
                    this.sf.a((byte[]) ai.R(this.sv), bArr);
                    a(new com.applovin.exoplayer2.l.h() { // from class: com.applovin.exoplayer2.d.w
                        @Override // com.applovin.exoplayer2.l.h
                        public final void accept(Object obj3) {
                            ((g.a) obj3).hI();
                        }
                    });
                    return;
                }
                byte[] bArrA = this.sf.a(this.su, bArr);
                int i = this.rm;
                if ((i == 2 || (i == 0 && this.sv != null)) && bArrA != null && bArrA.length != 0) {
                    this.sv = bArrA;
                }
                this.Z = 4;
                a(new com.applovin.exoplayer2.l.h() { // from class: com.applovin.exoplayer2.d.v
                    @Override // com.applovin.exoplayer2.l.h
                    public final void accept(Object obj3) {
                        ((g.a) obj3).hG();
                    }
                });
            } catch (Exception e2) {
                b(e2, true);
            }
        }
    }

    @Override // com.applovin.exoplayer2.d.f
    public boolean A(String str) {
        return this.sf.a((byte[]) com.applovin.exoplayer2.l.a.N(this.su), str);
    }

    @Override // com.applovin.exoplayer2.d.f
    public final int P() {
        return this.Z;
    }

    @Override // com.applovin.exoplayer2.d.f
    public void a(@Nullable g.a aVar) {
        com.applovin.exoplayer2.l.a.checkState(this.sp >= 0);
        if (aVar != null) {
            this.sl.add(aVar);
        }
        int i = this.sp + 1;
        this.sp = i;
        if (i == 1) {
            com.applovin.exoplayer2.l.a.checkState(this.Z == 2);
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DrmRequestHandler");
            this.sq = handlerThread;
            handlerThread.start();
            this.sr = new c(this.sq.getLooper());
            if (hx()) {
                J(true);
            }
        } else if (aVar != null && hB() && this.sl.P(aVar) == 1) {
            aVar.bF(this.Z);
        }
        this.sh.a(this, this.sp);
    }

    public void a(Exception exc, boolean z) {
        a(exc, z ? 1 : 3);
    }

    @Override // com.applovin.exoplayer2.d.f
    public void b(@Nullable g.a aVar) {
        com.applovin.exoplayer2.l.a.checkState(this.sp > 0);
        int i = this.sp - 1;
        this.sp = i;
        if (i == 0) {
            this.Z = 0;
            ((e) ai.R(this.so)).removeCallbacksAndMessages(null);
            ((c) ai.R(this.sr)).release();
            this.sr = null;
            ((HandlerThread) ai.R(this.sq)).quit();
            this.sq = null;
            this.ss = null;
            this.st = null;
            this.sw = null;
            this.sx = null;
            byte[] bArr = this.su;
            if (bArr != null) {
                this.sf.p(bArr);
                this.su = null;
            }
        }
        if (aVar != null) {
            this.sl.O(aVar);
            if (this.sl.P(aVar) == 0) {
                aVar.hJ();
            }
        }
        this.sh.b(this, this.sp);
    }

    public void bB(int i) {
        if (i != 2) {
            return;
        }
        hA();
    }

    public void hq() {
        this.sx = this.sf.hM();
        ((c) ai.R(this.sr)).a(0, com.applovin.exoplayer2.l.a.checkNotNull(this.sx), true);
    }

    public void hr() {
        if (hx()) {
            J(true);
        }
    }

    @Override // com.applovin.exoplayer2.d.f
    public boolean hs() {
        return this.si;
    }

    @Override // com.applovin.exoplayer2.d.f
    @Nullable
    public final f.a ht() {
        if (this.Z == 1) {
            return this.st;
        }
        return null;
    }

    @Override // com.applovin.exoplayer2.d.f
    public final UUID hu() {
        return this.ey;
    }

    @Override // com.applovin.exoplayer2.d.f
    @Nullable
    public final com.applovin.exoplayer2.c.b hv() {
        return this.ss;
    }

    @Override // com.applovin.exoplayer2.d.f
    @Nullable
    public Map<String, String> hw() {
        byte[] bArr = this.su;
        if (bArr == null) {
            return null;
        }
        return this.sf.r(bArr);
    }

    public boolean n(byte[] bArr) {
        return Arrays.equals(this.su, bArr);
    }
}

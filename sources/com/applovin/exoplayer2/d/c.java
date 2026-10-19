package com.applovin.exoplayer2.d;

import android.annotation.SuppressLint;
import android.media.ResourceBusyException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.work.PeriodicWorkRequest;
import com.applovin.exoplayer2.common.a.aq;
import com.applovin.exoplayer2.common.a.ax;
import com.applovin.exoplayer2.d.b;
import com.applovin.exoplayer2.d.e;
import com.applovin.exoplayer2.d.f;
import com.applovin.exoplayer2.d.g;
import com.applovin.exoplayer2.d.h;
import com.applovin.exoplayer2.d.m;
import com.applovin.exoplayer2.l.ai;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(18)
public class c implements h {
    private Looper co;
    private final boolean eB;
    private final UUID ey;
    private int rm;
    private final m.c sF;
    private final int[] sG;
    private final f sH;
    private final g sI;
    private final long sJ;
    private final List<com.applovin.exoplayer2.d.b> sK;
    private final Set<e> sL;
    private final Set<com.applovin.exoplayer2.d.b> sM;
    private int sN;

    @Nullable
    private m sO;

    @Nullable
    private com.applovin.exoplayer2.d.b sP;

    @Nullable
    private com.applovin.exoplayer2.d.b sQ;
    private Handler sR;

    @Nullable
    volatile HandlerC0027c sS;
    private final boolean si;
    private final HashMap<String, String> sk;
    private final com.applovin.exoplayer2.k.v sm;
    private final r sn;

    @Nullable
    private byte[] sv;

    public static final class a {
        private boolean eB;
        private boolean si;
        private final HashMap<String, String> sk = new HashMap<>();
        private UUID ey = com.applovin.exoplayer2.h.am;
        private m.c sF = o.tq;
        private com.applovin.exoplayer2.k.v sm = new com.applovin.exoplayer2.k.r();
        private int[] sG = new int[0];
        private long sJ = PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;

        public a K(boolean z) {
            this.eB = z;
            return this;
        }

        public a L(boolean z) {
            this.si = z;
            return this;
        }

        public a a(UUID uuid, m.c cVar) {
            this.ey = (UUID) com.applovin.exoplayer2.l.a.checkNotNull(uuid);
            this.sF = (m.c) com.applovin.exoplayer2.l.a.checkNotNull(cVar);
            return this;
        }

        public c a(r rVar) {
            return new c(this.ey, this.sF, rVar, this.sk, this.eB, this.sG, this.si, this.sm, this.sJ);
        }

        public a e(int... iArr) {
            for (int i : iArr) {
                boolean z = true;
                if (i != 2 && i != 1) {
                    z = false;
                }
                com.applovin.exoplayer2.l.a.checkArgument(z);
            }
            this.sG = (int[]) iArr.clone();
            return this;
        }
    }

    private class b implements m.b {
        private b() {
        }

        @Override // com.applovin.exoplayer2.d.m.b
        public void a(m mVar, @Nullable byte[] bArr, int i, int i2, @Nullable byte[] bArr2) {
            ((HandlerC0027c) com.applovin.exoplayer2.l.a.checkNotNull(c.this.sS)).obtainMessage(i, bArr).sendToTarget();
        }
    }

    /* JADX INFO: renamed from: com.applovin.exoplayer2.d.c$c, reason: collision with other inner class name */
    @SuppressLint({"HandlerLeak"})
    private class HandlerC0027c extends Handler {
        public HandlerC0027c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr == null) {
                return;
            }
            for (com.applovin.exoplayer2.d.b bVar : c.this.sK) {
                if (bVar.n(bArr)) {
                    bVar.bB(message.what);
                    return;
                }
            }
        }
    }

    public static final class d extends Exception {
        private d(UUID uuid) {
            super("Media does not support uuid: " + uuid);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class e implements h.a {

        @Nullable
        private final g.a sU;

        @Nullable
        private com.applovin.exoplayer2.d.f sV;
        private boolean sy;

        public e(@Nullable g.a aVar) {
            this.sU = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void hF() {
            if (this.sy) {
                return;
            }
            com.applovin.exoplayer2.d.f fVar = this.sV;
            if (fVar != null) {
                fVar.b(this.sU);
            }
            c.this.sL.remove(this);
            this.sy = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void i(com.applovin.exoplayer2.v vVar) {
            if (c.this.sN == 0 || this.sy) {
                return;
            }
            c cVar = c.this;
            this.sV = cVar.a((Looper) com.applovin.exoplayer2.l.a.checkNotNull(cVar.co), this.sU, vVar, false);
            c.this.sL.add(this);
        }

        public void h(final com.applovin.exoplayer2.v vVar) {
            ((Handler) com.applovin.exoplayer2.l.a.checkNotNull(c.this.sR)).post(new Runnable() { // from class: com.applovin.exoplayer2.d.b0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.i(vVar);
                }
            });
        }

        @Override // com.applovin.exoplayer2.d.h.a
        public void release() {
            ai.a((Handler) com.applovin.exoplayer2.l.a.checkNotNull(c.this.sR), new Runnable() { // from class: com.applovin.exoplayer2.d.a0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.hF();
                }
            });
        }
    }

    private class f implements b.a {
        private final Set<com.applovin.exoplayer2.d.b> sW = new HashSet();

        @Nullable
        private com.applovin.exoplayer2.d.b sX;

        public f() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.applovin.exoplayer2.d.b.a
        public void a(Exception exc, boolean z) {
            this.sX = null;
            com.applovin.exoplayer2.common.a.s sVarD = com.applovin.exoplayer2.common.a.s.d(this.sW);
            this.sW.clear();
            ax it = sVarD.iterator();
            while (it.hasNext()) {
                ((com.applovin.exoplayer2.d.b) it.next()).a(exc, z);
            }
        }

        @Override // com.applovin.exoplayer2.d.b.a
        public void b(com.applovin.exoplayer2.d.b bVar) {
            this.sW.add(bVar);
            if (this.sX != null) {
                return;
            }
            this.sX = bVar;
            bVar.hq();
        }

        public void c(com.applovin.exoplayer2.d.b bVar) {
            this.sW.remove(bVar);
            if (this.sX == bVar) {
                this.sX = null;
                if (this.sW.isEmpty()) {
                    return;
                }
                com.applovin.exoplayer2.d.b next = this.sW.iterator().next();
                this.sX = next;
                next.hq();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.applovin.exoplayer2.d.b.a
        public void hr() {
            this.sX = null;
            com.applovin.exoplayer2.common.a.s sVarD = com.applovin.exoplayer2.common.a.s.d(this.sW);
            this.sW.clear();
            ax it = sVarD.iterator();
            while (it.hasNext()) {
                ((com.applovin.exoplayer2.d.b) it.next()).hr();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class g implements b.InterfaceC0026b {
        private g() {
        }

        @Override // com.applovin.exoplayer2.d.b.InterfaceC0026b
        public void a(com.applovin.exoplayer2.d.b bVar, int i) {
            if (c.this.sJ != C.TIME_UNSET) {
                c.this.sM.remove(bVar);
                ((Handler) com.applovin.exoplayer2.l.a.checkNotNull(c.this.sR)).removeCallbacksAndMessages(bVar);
            }
        }

        @Override // com.applovin.exoplayer2.d.b.InterfaceC0026b
        public void b(final com.applovin.exoplayer2.d.b bVar, int i) {
            if (i == 1 && c.this.sN > 0 && c.this.sJ != C.TIME_UNSET) {
                c.this.sM.add(bVar);
                ((Handler) com.applovin.exoplayer2.l.a.checkNotNull(c.this.sR)).postAtTime(new Runnable() { // from class: com.applovin.exoplayer2.d.c0
                    @Override // java.lang.Runnable
                    public final void run() {
                        bVar.b(null);
                    }
                }, bVar, SystemClock.uptimeMillis() + c.this.sJ);
            } else if (i == 0) {
                c.this.sK.remove(bVar);
                if (c.this.sP == bVar) {
                    c.this.sP = null;
                }
                if (c.this.sQ == bVar) {
                    c.this.sQ = null;
                }
                c.this.sH.c(bVar);
                if (c.this.sJ != C.TIME_UNSET) {
                    ((Handler) com.applovin.exoplayer2.l.a.checkNotNull(c.this.sR)).removeCallbacksAndMessages(bVar);
                    c.this.sM.remove(bVar);
                }
            }
            c.this.hE();
        }
    }

    private c(UUID uuid, m.c cVar, r rVar, HashMap<String, String> map, boolean z, int[] iArr, boolean z2, com.applovin.exoplayer2.k.v vVar, long j) {
        com.applovin.exoplayer2.l.a.checkNotNull(uuid);
        com.applovin.exoplayer2.l.a.checkArgument(!com.applovin.exoplayer2.h.ak.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.ey = uuid;
        this.sF = cVar;
        this.sn = rVar;
        this.sk = map;
        this.eB = z;
        this.sG = iArr;
        this.si = z2;
        this.sm = vVar;
        this.sH = new f();
        this.sI = new g();
        this.rm = 0;
        this.sK = new ArrayList();
        this.sL = aq.gT();
        this.sM = aq.gT();
        this.sJ = j;
    }

    private com.applovin.exoplayer2.d.b a(@Nullable List<e.a> list, boolean z, @Nullable g.a aVar) {
        com.applovin.exoplayer2.l.a.checkNotNull(this.sO);
        com.applovin.exoplayer2.d.b bVar = new com.applovin.exoplayer2.d.b(this.ey, this.sO, this.sH, this.sI, list, this.rm, this.si | z, z, this.sv, this.sk, this.sn, (Looper) com.applovin.exoplayer2.l.a.checkNotNull(this.co), this.sm);
        bVar.a(aVar);
        if (this.sJ != C.TIME_UNSET) {
            bVar.a((g.a) null);
        }
        return bVar;
    }

    private com.applovin.exoplayer2.d.b a(@Nullable List<e.a> list, boolean z, @Nullable g.a aVar, boolean z2) {
        com.applovin.exoplayer2.d.b bVarA = a(list, z, aVar);
        if (a(bVarA) && !this.sM.isEmpty()) {
            hC();
            a(bVarA, aVar);
            bVarA = a(list, z, aVar);
        }
        if (!a(bVarA) || !z2 || this.sL.isEmpty()) {
            return bVarA;
        }
        hD();
        if (!this.sM.isEmpty()) {
            hC();
        }
        a(bVarA, aVar);
        return a(list, z, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Nullable
    public com.applovin.exoplayer2.d.f a(Looper looper, @Nullable g.a aVar, com.applovin.exoplayer2.v vVar, boolean z) {
        List<e.a> listA;
        b(looper);
        com.applovin.exoplayer2.d.e eVar = vVar.dC;
        if (eVar == null) {
            return h(com.applovin.exoplayer2.l.u.ba(vVar.dz), z);
        }
        com.applovin.exoplayer2.d.b bVarA = null;
        Object[] objArr = 0;
        if (this.sv == null) {
            listA = a((com.applovin.exoplayer2.d.e) com.applovin.exoplayer2.l.a.checkNotNull(eVar), this.ey, false);
            if (listA.isEmpty()) {
                d dVar = new d(this.ey);
                com.applovin.exoplayer2.l.q.c("DefaultDrmSessionMgr", "DRM error", dVar);
                if (aVar != null) {
                    aVar.j(dVar);
                }
                return new l(new f.a(dVar, 6003));
            }
        } else {
            listA = null;
        }
        if (this.eB) {
            Iterator<com.applovin.exoplayer2.d.b> it = this.sK.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                com.applovin.exoplayer2.d.b next = it.next();
                if (ai.r(next.se, listA)) {
                    bVarA = next;
                    break;
                }
            }
        } else {
            bVarA = this.sQ;
        }
        if (bVarA == null) {
            bVarA = a(listA, false, aVar, z);
            if (!this.eB) {
                this.sQ = bVarA;
            }
            this.sK.add(bVarA);
        } else {
            bVarA.a(aVar);
        }
        return bVarA;
    }

    private static List<e.a> a(com.applovin.exoplayer2.d.e eVar, UUID uuid, boolean z) {
        ArrayList arrayList = new ArrayList(eVar.td);
        for (int i = 0; i < eVar.td; i++) {
            e.a aVarBC = eVar.bC(i);
            if ((aVarBC.a(uuid) || (com.applovin.exoplayer2.h.al.equals(uuid) && aVarBC.a(com.applovin.exoplayer2.h.ak))) && (aVarBC.tf != null || z)) {
                arrayList.add(aVarBC);
            }
        }
        return arrayList;
    }

    private synchronized void a(Looper looper) {
        Looper looper2 = this.co;
        if (looper2 == null) {
            this.co = looper;
            this.sR = new Handler(looper);
        } else {
            com.applovin.exoplayer2.l.a.checkState(looper2 == looper);
            com.applovin.exoplayer2.l.a.checkNotNull(this.sR);
        }
    }

    private void a(com.applovin.exoplayer2.d.f fVar, @Nullable g.a aVar) {
        fVar.b(aVar);
        if (this.sJ != C.TIME_UNSET) {
            fVar.b(null);
        }
    }

    private static boolean a(com.applovin.exoplayer2.d.f fVar) {
        return fVar.P() == 1 && (ai.acV < 19 || (((f.a) com.applovin.exoplayer2.l.a.checkNotNull(fVar.ht())).getCause() instanceof ResourceBusyException));
    }

    private void b(Looper looper) {
        if (this.sS == null) {
            this.sS = new HandlerC0027c(looper);
        }
    }

    private boolean b(com.applovin.exoplayer2.d.e eVar) {
        if (this.sv != null) {
            return true;
        }
        if (a(eVar, this.ey, true).isEmpty()) {
            if (eVar.td != 1 || !eVar.bC(0).a(com.applovin.exoplayer2.h.ak)) {
                return false;
            }
            com.applovin.exoplayer2.l.q.h("DefaultDrmSessionMgr", "DrmInitData only contains common PSSH SchemeData. Assuming support for: " + this.ey);
        }
        String str = eVar.tc;
        if (str == null || C.CENC_TYPE_cenc.equals(str)) {
            return true;
        }
        return C.CENC_TYPE_cbcs.equals(str) ? ai.acV >= 25 : (C.CENC_TYPE_cbc1.equals(str) || C.CENC_TYPE_cens.equals(str)) ? false : true;
    }

    @Nullable
    private com.applovin.exoplayer2.d.f h(int i, boolean z) {
        m mVar = (m) com.applovin.exoplayer2.l.a.checkNotNull(this.sO);
        if ((mVar.hN() == 2 && n.to) || ai.c(this.sG, i) == -1 || mVar.hN() == 1) {
            return null;
        }
        com.applovin.exoplayer2.d.b bVar = this.sP;
        if (bVar == null) {
            com.applovin.exoplayer2.d.b bVarA = a((List<e.a>) com.applovin.exoplayer2.common.a.s.ga(), true, (g.a) null, z);
            this.sK.add(bVarA);
            this.sP = bVarA;
        } else {
            bVar.a((g.a) null);
        }
        return this.sP;
    }

    private void hC() {
        ax it = com.applovin.exoplayer2.common.a.w.e(this.sM).iterator();
        while (it.hasNext()) {
            ((com.applovin.exoplayer2.d.f) it.next()).b(null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void hD() {
        ax it = com.applovin.exoplayer2.common.a.w.e(this.sL).iterator();
        while (it.hasNext()) {
            ((e) it.next()).release();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hE() {
        if (this.sO != null && this.sN == 0 && this.sK.isEmpty() && this.sL.isEmpty()) {
            ((m) com.applovin.exoplayer2.l.a.checkNotNull(this.sO)).release();
            this.sO = null;
        }
    }

    @Override // com.applovin.exoplayer2.d.h
    public h.a a(Looper looper, @Nullable g.a aVar, com.applovin.exoplayer2.v vVar) {
        com.applovin.exoplayer2.l.a.checkState(this.sN > 0);
        a(looper);
        e eVar = new e(aVar);
        eVar.h(vVar);
        return eVar;
    }

    public void a(int i, @Nullable byte[] bArr) {
        com.applovin.exoplayer2.l.a.checkState(this.sK.isEmpty());
        if (i == 1 || i == 3) {
            com.applovin.exoplayer2.l.a.checkNotNull(bArr);
        }
        this.rm = i;
        this.sv = bArr;
    }

    @Override // com.applovin.exoplayer2.d.h
    public final void aD() {
        int i = this.sN;
        this.sN = i + 1;
        if (i != 0) {
            return;
        }
        if (this.sO == null) {
            m mVarAcquireExoMediaDrm = this.sF.acquireExoMediaDrm(this.ey);
            this.sO = mVarAcquireExoMediaDrm;
            mVarAcquireExoMediaDrm.a(new b());
        } else if (this.sJ != C.TIME_UNSET) {
            for (int i2 = 0; i2 < this.sK.size(); i2++) {
                this.sK.get(i2).a((g.a) null);
            }
        }
    }

    @Override // com.applovin.exoplayer2.d.h
    @Nullable
    public com.applovin.exoplayer2.d.f b(Looper looper, @Nullable g.a aVar, com.applovin.exoplayer2.v vVar) {
        com.applovin.exoplayer2.l.a.checkState(this.sN > 0);
        a(looper);
        return a(looper, aVar, vVar, true);
    }

    @Override // com.applovin.exoplayer2.d.h
    public int g(com.applovin.exoplayer2.v vVar) {
        int iHN = ((m) com.applovin.exoplayer2.l.a.checkNotNull(this.sO)).hN();
        com.applovin.exoplayer2.d.e eVar = vVar.dC;
        if (eVar != null) {
            if (b(eVar)) {
                return iHN;
            }
            return 1;
        }
        if (ai.c(this.sG, com.applovin.exoplayer2.l.u.ba(vVar.dz)) != -1) {
            return iHN;
        }
        return 0;
    }

    @Override // com.applovin.exoplayer2.d.h
    public final void release() {
        int i = this.sN - 1;
        this.sN = i;
        if (i != 0) {
            return;
        }
        if (this.sJ != C.TIME_UNSET) {
            ArrayList arrayList = new ArrayList(this.sK);
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                ((com.applovin.exoplayer2.d.b) arrayList.get(i2)).b(null);
            }
        }
        hD();
        hE();
    }
}

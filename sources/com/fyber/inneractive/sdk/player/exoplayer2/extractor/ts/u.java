package com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.m;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.v;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class u implements com.fyber.inneractive.sdk.player.exoplayer2.extractor.f {
    public static final long l = com.fyber.inneractive.sdk.player.exoplayer2.util.u.a("AC-3");
    public static final long m = com.fyber.inneractive.sdk.player.exoplayer2.util.u.a("EAC3");
    public static final long n = com.fyber.inneractive.sdk.player.exoplayer2.util.u.a("HEVC");
    public final int a;
    public final List<com.fyber.inneractive.sdk.player.exoplayer2.util.r> b;
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.k c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SparseIntArray f2446d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final v.c f2447e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SparseArray<v> f2448f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final SparseBooleanArray f2449g;
    public com.fyber.inneractive.sdk.player.exoplayer2.extractor.h h;
    public int i;
    public boolean j;
    public v k;

    public class a implements q {
        public final com.fyber.inneractive.sdk.player.exoplayer2.util.j a = new com.fyber.inneractive.sdk.player.exoplayer2.util.j(new byte[4]);

        public a() {
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.q
        public void a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar) {
            if (kVar.l() != 0) {
                return;
            }
            kVar.f(7);
            int iA = kVar.a() / 4;
            for (int i = 0; i < iA; i++) {
                kVar.a(this.a, 4);
                int iA2 = this.a.a(16);
                this.a.c(3);
                if (iA2 == 0) {
                    this.a.c(13);
                } else {
                    int iA3 = this.a.a(13);
                    u uVar = u.this;
                    uVar.f2448f.put(iA3, new r(uVar.new b(iA3)));
                    u.this.i++;
                }
            }
            u uVar2 = u.this;
            if (uVar2.a != 2) {
                uVar2.f2448f.remove(0);
            }
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.q
        public void a(com.fyber.inneractive.sdk.player.exoplayer2.util.r rVar, com.fyber.inneractive.sdk.player.exoplayer2.extractor.h hVar, v.d dVar) {
        }
    }

    public class b implements q {
        public final com.fyber.inneractive.sdk.player.exoplayer2.util.j a = new com.fyber.inneractive.sdk.player.exoplayer2.util.j(new byte[5]);
        public final SparseArray<v> b = new SparseArray<>();
        public final SparseIntArray c = new SparseIntArray();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f2450d;

        public b(int i) {
            this.f2450d = i;
        }

        /* JADX WARN: Removed duplicated region for block: B:36:0x0107  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0118  */
        @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.q
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void a(com.fyber.inneractive.sdk.player.exoplayer2.util.k r25) {
            /*
                Method dump skipped, instruction units count: 707
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.u.b.a(com.fyber.inneractive.sdk.player.exoplayer2.util.k):void");
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.q
        public void a(com.fyber.inneractive.sdk.player.exoplayer2.util.r rVar, com.fyber.inneractive.sdk.player.exoplayer2.extractor.h hVar, v.d dVar) {
        }
    }

    public u(int i, com.fyber.inneractive.sdk.player.exoplayer2.util.r rVar, v.c cVar) {
        this.f2447e = (v.c) com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(cVar);
        this.a = i;
        if (i == 1 || i == 2) {
            this.b = Collections.singletonList(rVar);
        } else {
            ArrayList arrayList = new ArrayList();
            this.b = arrayList;
            arrayList.add(rVar);
        }
        this.c = new com.fyber.inneractive.sdk.player.exoplayer2.util.k(940);
        this.f2449g = new SparseBooleanArray();
        this.f2448f = new SparseArray<>();
        this.f2446d = new SparseIntArray();
        a();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public int a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g gVar, com.fyber.inneractive.sdk.player.exoplayer2.extractor.l lVar) throws InterruptedException, IOException {
        v vVar;
        com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar = this.c;
        byte[] bArr = kVar.a;
        if (940 - kVar.b < 188) {
            int iA = kVar.a();
            if (iA > 0) {
                System.arraycopy(bArr, this.c.b, bArr, 0, iA);
            }
            this.c.a(bArr, iA);
        }
        while (this.c.a() < 188) {
            int i = this.c.c;
            int iA2 = ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).a(bArr, i, 940 - i);
            if (iA2 == -1) {
                return -1;
            }
            this.c.d(i + iA2);
        }
        com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar2 = this.c;
        int i2 = kVar2.c;
        int i3 = kVar2.b;
        while (i3 < i2 && bArr[i3] != 71) {
            i3++;
        }
        this.c.e(i3);
        int i4 = i3 + 188;
        if (i4 > i2) {
            return 0;
        }
        int iC = this.c.c();
        if ((8388608 & iC) != 0) {
            this.c.e(i4);
            return 0;
        }
        boolean z = true;
        boolean z2 = (4194304 & iC) != 0;
        int i5 = (2096896 & iC) >> 8;
        boolean z3 = (iC & 32) != 0;
        boolean z4 = (iC & 16) != 0;
        if (this.a != 2) {
            int i6 = iC & 15;
            int i7 = this.f2446d.get(i5, i6 - 1);
            this.f2446d.put(i5, i6);
            if (i7 == i6) {
                if (z4) {
                    this.c.e(i4);
                    return 0;
                }
            } else if (i6 == ((i7 + 1) & 15)) {
            }
            z = false;
        } else {
            z = false;
        }
        if (z3) {
            this.c.f(this.c.l());
        }
        if (z4 && (vVar = this.f2448f.get(i5)) != null) {
            if (z) {
                vVar.a();
            }
            this.c.d(i4);
            vVar.a(this.c, z2);
            this.c.d(i2);
        }
        this.c.e(i4);
        return 0;
    }

    public final void a() {
        this.f2449g.clear();
        this.f2448f.clear();
        SparseArray<v> sparseArrayA = this.f2447e.a();
        int size = sparseArrayA.size();
        for (int i = 0; i < size; i++) {
            this.f2448f.put(sparseArrayA.keyAt(i), sparseArrayA.valueAt(i));
        }
        this.f2448f.put(0, new r(new a()));
        this.k = null;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void a(long j, long j2) {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            this.b.get(i).c = C.TIME_UNSET;
        }
        this.c.r();
        this.f2446d.clear();
        a();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.h hVar) {
        this.h = hVar;
        hVar.a(new m.a(C.TIME_UNSET));
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0023, code lost:
    
        r2 = r2 + 1;
     */
    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g r7) throws java.lang.InterruptedException, java.io.IOException {
        /*
            r6 = this;
            com.fyber.inneractive.sdk.player.exoplayer2.util.k r0 = r6.c
            byte[] r0 = r0.a
            com.fyber.inneractive.sdk.player.exoplayer2.extractor.b r7 = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) r7
            r1 = 0
            r2 = 940(0x3ac, float:1.317E-42)
            r7.a(r0, r1, r2, r1)
            r2 = 0
        Ld:
            r3 = 188(0xbc, float:2.63E-43)
            if (r2 >= r3) goto L29
            r3 = 0
        L12:
            r4 = 5
            if (r3 != r4) goto L1a
            r7.c(r2)
            r7 = 1
            return r7
        L1a:
            int r4 = r3 * 188
            int r4 = r4 + r2
            r4 = r0[r4]
            r5 = 71
            if (r4 == r5) goto L26
            int r2 = r2 + 1
            goto Ld
        L26:
            int r3 = r3 + 1
            goto L12
        L29:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.u.a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g):boolean");
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void b() {
    }
}

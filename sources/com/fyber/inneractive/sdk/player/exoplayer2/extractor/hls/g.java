package com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls;

import android.os.Handler;
import android.text.TextUtils;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.j;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.a;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.e;
import com.fyber.inneractive.sdk.player.exoplayer2.source.f;
import com.fyber.inneractive.sdk.player.exoplayer2.source.m;
import com.fyber.inneractive.sdk.player.exoplayer2.source.o;
import com.fyber.inneractive.sdk.player.exoplayer2.source.p;
import com.fyber.inneractive.sdk.player.exoplayer2.source.r;
import com.fyber.inneractive.sdk.player.exoplayer2.source.s;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class g implements m, j.b, e.b {
    public final com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.e a;
    public final d b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final f.a f2255d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.fyber.inneractive.sdk.player.exoplayer2.upstream.b f2256e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final IdentityHashMap<o, Integer> f2257f = new IdentityHashMap<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final k f2258g = new k();
    public final Handler h = new Handler();
    public final long i;
    public m.a j;
    public int k;
    public boolean l;
    public s m;
    public j[] n;
    public j[] o;
    public com.fyber.inneractive.sdk.player.exoplayer2.source.h p;

    public g(com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.e eVar, d dVar, int i, f.a aVar, com.fyber.inneractive.sdk.player.exoplayer2.upstream.b bVar, long j) {
        this.a = eVar;
        this.b = dVar;
        this.c = i;
        this.f2255d = aVar;
        this.f2256e = bVar;
        this.i = j;
    }

    public static boolean a(a.C0180a c0180a, String str) {
        String str2 = c0180a.b.c;
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        for (String str3 : str2.split("(\\s*,\\s*)|(\\s*$)")) {
            if (str3.startsWith(str)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.m, com.fyber.inneractive.sdk.player.exoplayer2.source.p
    public long a() {
        return this.p.a();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.m
    public long a(com.fyber.inneractive.sdk.player.exoplayer2.trackselection.e[] eVarArr, boolean[] zArr, o[] oVarArr, boolean[] zArr2, long j) {
        long j2;
        int[] iArr = new int[eVarArr.length];
        int[] iArr2 = new int[eVarArr.length];
        for (int i = 0; i < eVarArr.length; i++) {
            iArr[i] = oVarArr[i] == null ? -1 : this.f2257f.get(oVarArr[i]).intValue();
            iArr2[i] = -1;
            if (eVarArr[i] != null) {
                r rVarB = eVarArr[i].b();
                int i2 = 0;
                while (true) {
                    j[] jVarArr = this.n;
                    if (i2 >= jVarArr.length) {
                        break;
                    }
                    if (jVarArr[i2].t.a(rVarB) != -1) {
                        iArr2[i] = i2;
                        break;
                    }
                    i2++;
                }
            }
        }
        this.f2257f.clear();
        int length = eVarArr.length;
        o[] oVarArr2 = new o[length];
        o[] oVarArr3 = new o[eVarArr.length];
        com.fyber.inneractive.sdk.player.exoplayer2.trackselection.e[] eVarArr2 = new com.fyber.inneractive.sdk.player.exoplayer2.trackselection.e[eVarArr.length];
        ArrayList arrayList = new ArrayList(this.n.length);
        int i3 = 0;
        boolean zA = false;
        while (i3 < this.n.length) {
            for (int i4 = 0; i4 < eVarArr.length; i4++) {
                com.fyber.inneractive.sdk.player.exoplayer2.trackselection.e eVar = null;
                oVarArr3[i4] = iArr[i4] == i3 ? oVarArr[i4] : null;
                if (iArr2[i4] == i3) {
                    eVar = eVarArr[i4];
                }
                eVarArr2[i4] = eVar;
            }
            int i5 = i3;
            ArrayList arrayList2 = arrayList;
            com.fyber.inneractive.sdk.player.exoplayer2.trackselection.e[] eVarArr3 = eVarArr2;
            zA |= this.n[i3].a(eVarArr2, zArr, oVarArr3, zArr2, !this.l);
            boolean z = false;
            for (int i6 = 0; i6 < eVarArr.length; i6++) {
                if (iArr2[i6] == i5) {
                    com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(oVarArr3[i6] != null);
                    oVarArr2[i6] = oVarArr3[i6];
                    this.f2257f.put(oVarArr3[i6], Integer.valueOf(i5));
                    z = true;
                } else if (iArr[i6] == i5) {
                    com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(oVarArr3[i6] == null);
                }
            }
            if (z) {
                arrayList2.add(this.n[i5]);
            }
            i3 = i5 + 1;
            arrayList = arrayList2;
            eVarArr2 = eVarArr3;
        }
        ArrayList arrayList3 = arrayList;
        System.arraycopy(oVarArr2, 0, oVarArr, 0, length);
        j[] jVarArr2 = new j[arrayList3.size()];
        this.o = jVarArr2;
        arrayList3.toArray(jVarArr2);
        j[] jVarArr3 = this.o;
        if (jVarArr3.length > 0) {
            jVarArr3[0].c.h = true;
            int i7 = 1;
            while (true) {
                j[] jVarArr4 = this.o;
                if (i7 >= jVarArr4.length) {
                    break;
                }
                jVarArr4[i7].c.h = false;
                i7++;
            }
        }
        this.p = new com.fyber.inneractive.sdk.player.exoplayer2.source.h(this.o);
        if (this.l && zA) {
            j2 = j;
            b(j2);
            for (int i8 = 0; i8 < eVarArr.length; i8++) {
                if (oVarArr[i8] != null) {
                    zArr2[i8] = true;
                }
            }
        } else {
            j2 = j;
        }
        this.l = true;
        return j2;
    }

    public final j a(int i, a.C0180a[] c0180aArr, com.fyber.inneractive.sdk.player.exoplayer2.i iVar, List<com.fyber.inneractive.sdk.player.exoplayer2.i> list) {
        return new j(i, this, new c(this.a, c0180aArr, this.b, this.f2258g, list), this.f2256e, this.i, iVar, this.c, this.f2255d);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.e.b
    public void a(a.C0180a c0180a, long j) {
        int iC;
        for (j jVar : this.n) {
            c cVar = jVar.c;
            int iA = cVar.f2252f.a(c0180a.b);
            if (iA != -1 && (iC = cVar.p.c(iA)) != -1) {
                cVar.p.a(iC, j);
            }
        }
        g();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.m
    public void a(m.a aVar) {
        this.a.h.add(this);
        this.j = aVar;
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.a aVar2 = this.a.k;
        ArrayList arrayList = new ArrayList(aVar2.b);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            a.C0180a c0180a = (a.C0180a) arrayList.get(i);
            if (c0180a.b.k > 0 || a(c0180a, "avc")) {
                arrayList2.add(c0180a);
            } else if (a(c0180a, "mp4a")) {
                arrayList3.add(c0180a);
            }
        }
        if (!arrayList2.isEmpty()) {
            arrayList = arrayList2;
        } else if (arrayList3.size() < arrayList.size()) {
            arrayList.removeAll(arrayList3);
        }
        List<a.C0180a> list = aVar2.c;
        List<a.C0180a> list2 = aVar2.f2269d;
        int size = list.size() + 1 + list2.size();
        this.n = new j[size];
        this.k = size;
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(!arrayList.isEmpty());
        a.C0180a[] c0180aArr = new a.C0180a[arrayList.size()];
        arrayList.toArray(c0180aArr);
        j jVarA = a(0, c0180aArr, aVar2.f2270e, aVar2.f2271f);
        this.n[0] = jVarA;
        jVarA.c.h = true;
        jVarA.g();
        int i2 = 0;
        int i3 = 1;
        while (i2 < list.size()) {
            j jVarA2 = a(1, new a.C0180a[]{list.get(i2)}, null, Collections.emptyList());
            this.n[i3] = jVarA2;
            jVarA2.g();
            i2++;
            i3++;
        }
        int i4 = 0;
        while (i4 < list2.size()) {
            a.C0180a c0180a2 = list2.get(i4);
            j jVarA3 = a(3, new a.C0180a[]{c0180a2}, null, Collections.emptyList());
            jVarA3.a(0).a(c0180a2.b);
            jVarA3.n = true;
            jVarA3.i();
            this.n[i3] = jVarA3;
            i4++;
            i3++;
        }
    }

    public void a(p pVar) {
        if (this.m == null) {
            return;
        }
        ((com.fyber.inneractive.sdk.player.exoplayer2.h) this.j).a((p) this);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.m, com.fyber.inneractive.sdk.player.exoplayer2.source.p
    public boolean a(long j) {
        return this.p.a(j);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.m
    public long b(long j) {
        this.f2258g.a.clear();
        for (j jVar : this.o) {
            jVar.d(j);
        }
        return j;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.m
    public s b() {
        return this.m;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.e.b
    public void c() {
        g();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.m
    public void c(long j) {
    }

    /*  JADX ERROR: NullPointerException in pass: LoopRegionVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.use(jadx.core.dex.instructions.args.RegisterArg)" because "ssaVar" is null
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:506)
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:509)
        */
    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.m
    public long d() {
        /*
            r16 = this;
            r0 = r16
            com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.j[] r1 = r0.o
            int r2 = r1.length
            r6 = 0
            r7 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
        Lb:
            r9 = -9223372036854775808
            if (r6 >= r2) goto L78
            r11 = r1[r6]
            boolean r12 = r11.y
            if (r12 == 0) goto L17
            r11 = r9
            goto L6d
        L17:
            boolean r12 = r11.h()
            if (r12 == 0) goto L20
            long r11 = r11.x
            goto L6d
        L20:
            long r12 = r11.w
            java.util.LinkedList<com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.f> r14 = r11.k
            java.lang.Object r14 = r14.getLast()
            com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.f r14 = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.f) r14
            boolean r15 = r14.F
            if (r15 == 0) goto L2f
            goto L48
        L2f:
            java.util.LinkedList<com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.f> r14 = r11.k
            int r14 = r14.size()
            r15 = 1
            if (r14 <= r15) goto L47
            java.util.LinkedList<com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.f> r14 = r11.k
            int r15 = r14.size()
            int r15 = r15 + (-2)
            java.lang.Object r14 = r14.get(r15)
            com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.f r14 = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.f) r14
            goto L48
        L47:
            r14 = 0
        L48:
            if (r14 == 0) goto L50
            long r14 = r14.f2509g
            long r12 = java.lang.Math.max(r12, r14)
        L50:
            android.util.SparseArray<com.fyber.inneractive.sdk.player.exoplayer2.extractor.d> r14 = r11.j
            int r14 = r14.size()
            r15 = 0
        L57:
            if (r15 >= r14) goto L6c
            android.util.SparseArray<com.fyber.inneractive.sdk.player.exoplayer2.extractor.d> r3 = r11.j
            java.lang.Object r3 = r3.valueAt(r15)
            com.fyber.inneractive.sdk.player.exoplayer2.extractor.d r3 = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.d) r3
            long r4 = r3.d()
            long r12 = java.lang.Math.max(r12, r4)
            int r15 = r15 + 1
            goto L57
        L6c:
            r11 = r12
        L6d:
            int r3 = (r11 > r9 ? 1 : (r11 == r9 ? 0 : -1))
            if (r3 == 0) goto L75
            long r7 = java.lang.Math.min(r7, r11)
        L75:
            int r6 = r6 + 1
            goto Lb
        L78:
            r3 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r1 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r1 != 0) goto L82
            r7 = r9
        L82:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.g.d():long");
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.m
    public void e() throws IOException {
        j[] jVarArr = this.n;
        if (jVarArr != null) {
            for (j jVar : jVarArr) {
                jVar.j();
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.m
    public long f() {
        return C.TIME_UNSET;
    }

    public final void g() {
        if (this.m != null) {
            ((com.fyber.inneractive.sdk.player.exoplayer2.h) this.j).a((p) this);
            return;
        }
        for (j jVar : this.n) {
            jVar.g();
        }
    }
}

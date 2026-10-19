package com.applovin.exoplayer2.j;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.annotation.Nullable;
import androidx.core.view.PointerIconCompat;
import com.applovin.exoplayer2.at;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.common.a.ai;
import com.applovin.exoplayer2.common.a.s;
import com.applovin.exoplayer2.g;
import com.applovin.exoplayer2.h.ac;
import com.applovin.exoplayer2.h.ad;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.j.a;
import com.applovin.exoplayer2.j.c;
import com.applovin.exoplayer2.j.d;
import com.applovin.exoplayer2.j.f;
import com.applovin.exoplayer2.j.i;
import com.applovin.exoplayer2.v;
import com.applovin.exoplayer2.z1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class c extends com.applovin.exoplayer2.j.f {
    private static final int[] Ug = new int[0];
    private static final ai<Integer> Uh = ai.b(new Comparator() { // from class: com.applovin.exoplayer2.j.p
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return c.b((Integer) obj, (Integer) obj2);
        }
    });
    private static final ai<Integer> Ui = ai.b(new Comparator() { // from class: com.applovin.exoplayer2.j.o
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return c.a((Integer) obj, (Integer) obj2);
        }
    });
    private final d.b Uj;
    private final AtomicReference<C0049c> Uk;

    protected static final class a implements Comparable<a> {
        public final boolean Ul;
        private final C0049c Um;
        private final boolean Un;
        private final int Uo;
        private final int Up;
        private final int Uq;
        private final int Ur;
        private final int Us;
        private final boolean Ut;
        private final int Uu;
        private final int dL;
        private final int dM;

        @Nullable
        private final String dq;
        private final int dv;

        public a(v vVar, C0049c c0049c, int i) {
            int i2;
            int iA;
            int iA2;
            this.Um = c0049c;
            this.dq = c.aI(vVar.dq);
            int i3 = 0;
            this.Un = c.n(i, false);
            int i4 = 0;
            while (true) {
                i2 = Integer.MAX_VALUE;
                if (i4 >= c0049c.Vr.size()) {
                    i4 = Integer.MAX_VALUE;
                    iA = 0;
                    break;
                } else {
                    iA = c.a(vVar, c0049c.Vr.get(i4), false);
                    if (iA > 0) {
                        break;
                    } else {
                        i4++;
                    }
                }
            }
            this.Up = i4;
            this.Uo = iA;
            this.Uq = Integer.bitCount(vVar.ds & c0049c.Vs);
            boolean z = true;
            this.Ut = (vVar.dr & 1) != 0;
            int i5 = vVar.dL;
            this.dL = i5;
            this.dM = vVar.dM;
            int i6 = vVar.dv;
            this.dv = i6;
            if ((i6 != -1 && i6 > c0049c.Vu) || (i5 != -1 && i5 > c0049c.Vt)) {
                z = false;
            }
            this.Ul = z;
            String[] strArrQa = com.applovin.exoplayer2.l.ai.qa();
            int i7 = 0;
            while (true) {
                if (i7 >= strArrQa.length) {
                    i7 = Integer.MAX_VALUE;
                    iA2 = 0;
                    break;
                } else {
                    iA2 = c.a(vVar, strArrQa[i7], false);
                    if (iA2 > 0) {
                        break;
                    } else {
                        i7++;
                    }
                }
            }
            this.Ur = i7;
            this.Us = iA2;
            while (true) {
                if (i3 < c0049c.Vv.size()) {
                    String str = vVar.dz;
                    if (str != null && str.equals(c0049c.Vv.get(i3))) {
                        i2 = i3;
                        break;
                    }
                    i3++;
                } else {
                    break;
                }
            }
            this.Uu = i2;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(a aVar) {
            ai aiVarGO = (this.Ul && this.Un) ? c.Uh : c.Uh.gO();
            com.applovin.exoplayer2.common.a.n nVarA = com.applovin.exoplayer2.common.a.n.fP().d(this.Un, aVar.Un).a(Integer.valueOf(this.Up), Integer.valueOf(aVar.Up), ai.gP().gO()).r(this.Uo, aVar.Uo).r(this.Uq, aVar.Uq).d(this.Ul, aVar.Ul).a(Integer.valueOf(this.Uu), Integer.valueOf(aVar.Uu), ai.gP().gO()).a(Integer.valueOf(this.dv), Integer.valueOf(aVar.dv), this.Um.Vz ? c.Uh.gO() : c.Ui).d(this.Ut, aVar.Ut).a(Integer.valueOf(this.Ur), Integer.valueOf(aVar.Ur), ai.gP().gO()).r(this.Us, aVar.Us).a(Integer.valueOf(this.dL), Integer.valueOf(aVar.dL), aiVarGO).a(Integer.valueOf(this.dM), Integer.valueOf(aVar.dM), aiVarGO);
            Integer numValueOf = Integer.valueOf(this.dv);
            Integer numValueOf2 = Integer.valueOf(aVar.dv);
            if (!com.applovin.exoplayer2.l.ai.r(this.dq, aVar.dq)) {
                aiVarGO = c.Ui;
            }
            return nVarA.a(numValueOf, numValueOf2, aiVarGO).fQ();
        }
    }

    protected static final class b implements Comparable<b> {
        private final boolean Un;
        private final boolean Uv;

        public b(v vVar, int i) {
            this.Uv = (vVar.dr & 1) != 0;
            this.Un = c.n(i, false);
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(b bVar) {
            return com.applovin.exoplayer2.common.a.n.fP().d(this.Un, bVar.Un).d(this.Uv, bVar.Uv).fQ();
        }
    }

    /* JADX INFO: renamed from: com.applovin.exoplayer2.j.c$c, reason: collision with other inner class name */
    public static final class C0049c extends i implements com.applovin.exoplayer2.g {
        public static final C0049c Uw;

        @Deprecated
        public static final C0049c Ux;
        public static final g.a<C0049c> br;
        public final boolean UA;
        public final boolean UB;
        public final boolean UC;
        public final boolean UD;
        public final boolean UE;
        public final boolean UF;
        public final boolean UG;
        public final boolean UH;
        public final boolean UI;
        private final SparseArray<Map<ad, e>> UJ;
        private final SparseBooleanArray UK;
        public final int Uy;
        public final boolean Uz;

        static {
            C0049c c0049cNm = new d().nm();
            Uw = c0049cNm;
            Ux = c0049cNm;
            br = new g.a() { // from class: com.applovin.exoplayer2.j.m
                @Override // com.applovin.exoplayer2.g.a
                public final com.applovin.exoplayer2.g fromBundle(Bundle bundle) {
                    return c.C0049c.A(bundle);
                }
            };
        }

        private C0049c(d dVar) {
            super(dVar);
            this.Uz = dVar.Uz;
            this.UA = dVar.UA;
            this.UB = dVar.UB;
            this.UC = dVar.UC;
            this.UD = dVar.UD;
            this.UE = dVar.UE;
            this.UF = dVar.UF;
            this.Uy = dVar.Uy;
            this.UG = dVar.UG;
            this.UH = dVar.UH;
            this.UI = dVar.UI;
            this.UJ = dVar.UJ;
            this.UK = dVar.UK;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ C0049c A(Bundle bundle) {
            return new d(bundle).nm();
        }

        private static boolean a(SparseArray<Map<ad, e>> sparseArray, SparseArray<Map<ad, e>> sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i));
                if (iIndexOfKey < 0 || !a(sparseArray.valueAt(i), sparseArray2.valueAt(iIndexOfKey))) {
                    return false;
                }
            }
            return true;
        }

        private static boolean a(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
            int size = sparseBooleanArray.size();
            if (sparseBooleanArray2.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i)) < 0) {
                    return false;
                }
            }
            return true;
        }

        private static boolean a(Map<ad, e> map, Map<ad, e> map2) {
            if (map2.size() != map.size()) {
                return false;
            }
            for (Map.Entry<ad, e> entry : map.entrySet()) {
                ad key = entry.getKey();
                if (!map2.containsKey(key) || !com.applovin.exoplayer2.l.ai.r(entry.getValue(), map2.get(key))) {
                    return false;
                }
            }
            return true;
        }

        public static C0049c e(Context context) {
            return new d(context).nm();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String t(int i) {
            return Integer.toString(i, 36);
        }

        public final boolean a(int i, ad adVar) {
            Map<ad, e> map = this.UJ.get(i);
            return map != null && map.containsKey(adVar);
        }

        @Nullable
        public final e b(int i, ad adVar) {
            Map<ad, e> map = this.UJ.get(i);
            if (map != null) {
                return map.get(adVar);
            }
            return null;
        }

        public final boolean eQ(int i) {
            return this.UK.get(i);
        }

        @Override // com.applovin.exoplayer2.j.i
        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0049c.class != obj.getClass()) {
                return false;
            }
            C0049c c0049c = (C0049c) obj;
            return super.equals(c0049c) && this.Uz == c0049c.Uz && this.UA == c0049c.UA && this.UB == c0049c.UB && this.UC == c0049c.UC && this.UD == c0049c.UD && this.UE == c0049c.UE && this.UF == c0049c.UF && this.Uy == c0049c.Uy && this.UG == c0049c.UG && this.UH == c0049c.UH && this.UI == c0049c.UI && a(this.UK, c0049c.UK) && a(this.UJ, c0049c.UJ);
        }

        @Override // com.applovin.exoplayer2.j.i
        public int hashCode() {
            return ((((((((((((((((((((((super.hashCode() + 31) * 31) + (this.Uz ? 1 : 0)) * 31) + (this.UA ? 1 : 0)) * 31) + (this.UB ? 1 : 0)) * 31) + (this.UC ? 1 : 0)) * 31) + (this.UD ? 1 : 0)) * 31) + (this.UE ? 1 : 0)) * 31) + (this.UF ? 1 : 0)) * 31) + this.Uy) * 31) + (this.UG ? 1 : 0)) * 31) + (this.UH ? 1 : 0)) * 31) + (this.UI ? 1 : 0);
        }
    }

    public static final class d extends i.a {
        private boolean UA;
        private boolean UB;
        private boolean UC;
        private boolean UD;
        private boolean UE;
        private boolean UF;
        private boolean UG;
        private boolean UH;
        private boolean UI;
        private final SparseArray<Map<ad, e>> UJ;
        private final SparseBooleanArray UK;
        private int Uy;
        private boolean Uz;

        @Deprecated
        public d() {
            this.UJ = new SparseArray<>();
            this.UK = new SparseBooleanArray();
            nl();
        }

        public d(Context context) {
            super(context);
            this.UJ = new SparseArray<>();
            this.UK = new SparseBooleanArray();
            nl();
        }

        private d(Bundle bundle) {
            super(bundle);
            C0049c c0049c = C0049c.Uw;
            ac(bundle.getBoolean(C0049c.t(1000), c0049c.Uz));
            ad(bundle.getBoolean(C0049c.t(1001), c0049c.UA));
            ae(bundle.getBoolean(C0049c.t(1002), c0049c.UB));
            af(bundle.getBoolean(C0049c.t(1003), c0049c.UC));
            ag(bundle.getBoolean(C0049c.t(1004), c0049c.UD));
            ah(bundle.getBoolean(C0049c.t(1005), c0049c.UE));
            ai(bundle.getBoolean(C0049c.t(1006), c0049c.UF));
            eR(bundle.getInt(C0049c.t(1007), c0049c.Uy));
            aj(bundle.getBoolean(C0049c.t(1008), c0049c.UG));
            ak(bundle.getBoolean(C0049c.t(1009), c0049c.UH));
            al(bundle.getBoolean(C0049c.t(1010), c0049c.UI));
            this.UJ = new SparseArray<>();
            B(bundle);
            this.UK = f(bundle.getIntArray(C0049c.t(1014)));
        }

        private void B(Bundle bundle) {
            int[] intArray = bundle.getIntArray(C0049c.t(1011));
            List listA = com.applovin.exoplayer2.l.c.a(ad.br, bundle.getParcelableArrayList(C0049c.t(PointerIconCompat.TYPE_NO_DROP)), s.ga());
            SparseArray sparseArrayA = com.applovin.exoplayer2.l.c.a(e.br, (SparseArray<Bundle>) bundle.getSparseParcelableArray(C0049c.t(1013)), new SparseArray());
            if (intArray == null || intArray.length != listA.size()) {
                return;
            }
            for (int i = 0; i < intArray.length; i++) {
                a(intArray[i], (ad) listA.get(i), (e) sparseArrayA.get(i));
            }
        }

        private SparseBooleanArray f(@Nullable int[] iArr) {
            if (iArr == null) {
                return new SparseBooleanArray();
            }
            SparseBooleanArray sparseBooleanArray = new SparseBooleanArray(iArr.length);
            for (int i : iArr) {
                sparseBooleanArray.append(i, true);
            }
            return sparseBooleanArray;
        }

        private void nl() {
            this.Uz = true;
            this.UA = false;
            this.UB = true;
            this.UC = true;
            this.UD = false;
            this.UE = false;
            this.UF = false;
            this.Uy = 0;
            this.UG = true;
            this.UH = false;
            this.UI = true;
        }

        public final d a(int i, ad adVar, @Nullable e eVar) {
            Map<ad, e> map = this.UJ.get(i);
            if (map == null) {
                map = new HashMap<>();
                this.UJ.put(i, map);
            }
            if (map.containsKey(adVar) && com.applovin.exoplayer2.l.ai.r(map.get(adVar), eVar)) {
                return this;
            }
            map.put(adVar, eVar);
            return this;
        }

        @Override // com.applovin.exoplayer2.j.i.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public d b(Context context, boolean z) {
            super.b(context, z);
            return this;
        }

        public d ac(boolean z) {
            this.Uz = z;
            return this;
        }

        public d ad(boolean z) {
            this.UA = z;
            return this;
        }

        public d ae(boolean z) {
            this.UB = z;
            return this;
        }

        public d af(boolean z) {
            this.UC = z;
            return this;
        }

        public d ag(boolean z) {
            this.UD = z;
            return this;
        }

        public d ah(boolean z) {
            this.UE = z;
            return this;
        }

        public d ai(boolean z) {
            this.UF = z;
            return this;
        }

        public d aj(boolean z) {
            this.UG = z;
            return this;
        }

        public d ak(boolean z) {
            this.UH = z;
            return this;
        }

        public d al(boolean z) {
            this.UI = z;
            return this;
        }

        @Override // com.applovin.exoplayer2.j.i.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public d d(int i, int i2, boolean z) {
            super.d(i, i2, z);
            return this;
        }

        public d eR(int i) {
            this.Uy = i;
            return this;
        }

        @Override // com.applovin.exoplayer2.j.i.a
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public d g(Context context) {
            super.g(context);
            return this;
        }

        @Override // com.applovin.exoplayer2.j.i.a
        /* JADX INFO: renamed from: nk, reason: merged with bridge method [inline-methods] */
        public C0049c nm() {
            return new C0049c(this);
        }
    }

    public static final class e implements com.applovin.exoplayer2.g {
        public static final g.a<e> br = new g.a() { // from class: com.applovin.exoplayer2.j.n
            @Override // com.applovin.exoplayer2.g.a
            public final com.applovin.exoplayer2.g fromBundle(Bundle bundle) {
                return c.e.C(bundle);
            }
        };
        public final int UL;
        public final int[] Ue;
        public final int bs;
        public final int fR;

        public e(int i, int[] iArr, int i2) {
            this.UL = i;
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            this.Ue = iArrCopyOf;
            this.fR = iArr.length;
            this.bs = i2;
            Arrays.sort(iArrCopyOf);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ e C(Bundle bundle) {
            boolean z = false;
            int i = bundle.getInt(t(0), -1);
            int[] intArray = bundle.getIntArray(t(1));
            int i2 = bundle.getInt(t(2), -1);
            if (i >= 0 && i2 >= 0) {
                z = true;
            }
            com.applovin.exoplayer2.l.a.checkArgument(z);
            com.applovin.exoplayer2.l.a.checkNotNull(intArray);
            return new e(i, intArray, i2);
        }

        private static String t(int i) {
            return Integer.toString(i, 36);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            return this.UL == eVar.UL && Arrays.equals(this.Ue, eVar.Ue) && this.bs == eVar.bs;
        }

        public int hashCode() {
            return (((this.UL * 31) + Arrays.hashCode(this.Ue)) * 31) + this.bs;
        }
    }

    protected static final class f implements Comparable<f> {
        private final boolean UM;
        private final int UN;
        private final boolean UO;
        public final boolean Ul;
        private final boolean Un;
        private final int Uo;
        private final int Up;
        private final int Uq;
        private final boolean Uv;

        public f(v vVar, C0049c c0049c, int i, @Nullable String str) {
            int iA;
            boolean z = false;
            this.Un = c.n(i, false);
            int i2 = vVar.dr & (~c0049c.Uy);
            this.Uv = (i2 & 1) != 0;
            this.UM = (i2 & 2) != 0;
            int i3 = Integer.MAX_VALUE;
            s<String> sVarU = c0049c.Vw.isEmpty() ? s.u("") : c0049c.Vw;
            int i4 = 0;
            while (true) {
                if (i4 >= sVarU.size()) {
                    iA = 0;
                    break;
                }
                iA = c.a(vVar, sVarU.get(i4), c0049c.Vy);
                if (iA > 0) {
                    i3 = i4;
                    break;
                }
                i4++;
            }
            this.Up = i3;
            this.Uo = iA;
            int iBitCount = Integer.bitCount(vVar.ds & c0049c.Vx);
            this.Uq = iBitCount;
            this.UO = (vVar.ds & 1088) != 0;
            int iA2 = c.a(vVar, str, c.aI(str) == null);
            this.UN = iA2;
            if (iA > 0 || ((c0049c.Vw.isEmpty() && iBitCount > 0) || this.Uv || (this.UM && iA2 > 0))) {
                z = true;
            }
            this.Ul = z;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(f fVar) {
            com.applovin.exoplayer2.common.a.n nVarR = com.applovin.exoplayer2.common.a.n.fP().d(this.Un, fVar.Un).a(Integer.valueOf(this.Up), Integer.valueOf(fVar.Up), ai.gP().gO()).r(this.Uo, fVar.Uo).r(this.Uq, fVar.Uq).d(this.Uv, fVar.Uv).a(Boolean.valueOf(this.UM), Boolean.valueOf(fVar.UM), this.Uo == 0 ? ai.gP() : ai.gP().gO()).r(this.UN, fVar.UN);
            if (this.Uq == 0) {
                nVarR = nVarR.c(this.UO, fVar.UO);
            }
            return nVarR.fQ();
        }
    }

    protected static final class g implements Comparable<g> {
        public final boolean UP;
        private final boolean UQ;
        private final int UR;
        private final C0049c Um;
        private final boolean Un;
        private final int Uu;
        private final int dv;

        /* JADX WARN: Removed duplicated region for block: B:21:0x0033  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x005e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public g(com.applovin.exoplayer2.v r7, com.applovin.exoplayer2.j.c.C0049c r8, int r9, boolean r10) {
            /*
                r6 = this;
                r6.<init>()
                r6.Um = r8
                r0 = -1082130432(0xffffffffbf800000, float:-1.0)
                r1 = 1
                r2 = 0
                r3 = -1
                if (r10 == 0) goto L33
                int r4 = r7.dE
                if (r4 == r3) goto L14
                int r5 = r8.Vf
                if (r4 > r5) goto L33
            L14:
                int r4 = r7.height
                if (r4 == r3) goto L1c
                int r5 = r8.Vg
                if (r4 > r5) goto L33
            L1c:
                float r4 = r7.dF
                int r5 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
                if (r5 == 0) goto L29
                int r5 = r8.Vh
                float r5 = (float) r5
                int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
                if (r4 > 0) goto L33
            L29:
                int r4 = r7.dv
                if (r4 == r3) goto L31
                int r5 = r8.Vi
                if (r4 > r5) goto L33
            L31:
                r4 = 1
                goto L34
            L33:
                r4 = 0
            L34:
                r6.UP = r4
                if (r10 == 0) goto L5e
                int r10 = r7.dE
                if (r10 == r3) goto L40
                int r4 = r8.Vj
                if (r10 < r4) goto L5e
            L40:
                int r10 = r7.height
                if (r10 == r3) goto L48
                int r4 = r8.Vk
                if (r10 < r4) goto L5e
            L48:
                float r10 = r7.dF
                int r0 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
                if (r0 == 0) goto L55
                int r0 = r8.Vl
                float r0 = (float) r0
                int r10 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
                if (r10 < 0) goto L5e
            L55:
                int r10 = r7.dv
                if (r10 == r3) goto L5f
                int r0 = r8.Vm
                if (r10 < r0) goto L5e
                goto L5f
            L5e:
                r1 = 0
            L5f:
                r6.UQ = r1
                boolean r9 = com.applovin.exoplayer2.j.c.n(r9, r2)
                r6.Un = r9
                int r9 = r7.dv
                r6.dv = r9
                int r9 = r7.bS()
                r6.UR = r9
                r9 = 2147483647(0x7fffffff, float:NaN)
            L74:
                com.applovin.exoplayer2.common.a.s<java.lang.String> r10 = r8.Vq
                int r10 = r10.size()
                if (r2 >= r10) goto L91
                java.lang.String r10 = r7.dz
                if (r10 == 0) goto L8e
                com.applovin.exoplayer2.common.a.s<java.lang.String> r0 = r8.Vq
                java.lang.Object r0 = r0.get(r2)
                boolean r10 = r10.equals(r0)
                if (r10 == 0) goto L8e
                r9 = r2
                goto L91
            L8e:
                int r2 = r2 + 1
                goto L74
            L91:
                r6.Uu = r9
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.j.c.g.<init>(com.applovin.exoplayer2.v, com.applovin.exoplayer2.j.c$c, int, boolean):void");
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(g gVar) {
            ai aiVarGO = (this.UP && this.Un) ? c.Uh : c.Uh.gO();
            return com.applovin.exoplayer2.common.a.n.fP().d(this.Un, gVar.Un).d(this.UP, gVar.UP).d(this.UQ, gVar.UQ).a(Integer.valueOf(this.Uu), Integer.valueOf(gVar.Uu), ai.gP().gO()).a(Integer.valueOf(this.dv), Integer.valueOf(gVar.dv), this.Um.Vz ? c.Uh.gO() : c.Ui).a(Integer.valueOf(this.UR), Integer.valueOf(gVar.UR), aiVarGO).a(Integer.valueOf(this.dv), Integer.valueOf(gVar.dv), aiVarGO).fQ();
        }
    }

    @Deprecated
    public c() {
        this(C0049c.Uw, new a.b());
    }

    public c(Context context) {
        this(context, new a.b());
    }

    public c(Context context, d.b bVar) {
        this(C0049c.e(context), bVar);
    }

    public c(C0049c c0049c, d.b bVar) {
        this.Uj = bVar;
        this.Uk = new AtomicReference<>(c0049c);
    }

    private static int a(ac acVar, int[] iArr, int i, @Nullable String str, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, List<Integer> list) {
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            int iIntValue = list.get(i11).intValue();
            if (a(acVar.dZ(iIntValue), str, iArr[iIntValue], i, i2, i3, i4, i5, i6, i7, i8, i9)) {
                i10++;
            }
        }
        return i10;
    }

    protected static int a(v vVar, @Nullable String str, boolean z) {
        if (!TextUtils.isEmpty(str) && str.equals(vVar.dq)) {
            return 4;
        }
        String strAI = aI(str);
        String strAI2 = aI(vVar.dq);
        if (strAI2 == null || strAI == null) {
            return (z && strAI2 == null) ? 1 : 0;
        }
        if (strAI2.startsWith(strAI) || strAI.startsWith(strAI2)) {
            return 3;
        }
        return com.applovin.exoplayer2.l.ai.m(strAI2, "-")[0].equals(com.applovin.exoplayer2.l.ai.m(strAI, "-")[0]) ? 2 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(Integer num, Integer num2) {
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.graphics.Point a(boolean r3, int r4, int r5, int r6, int r7) {
        /*
            if (r3 == 0) goto L10
            r3 = 1
            r0 = 0
            if (r6 <= r7) goto L8
            r1 = 1
            goto L9
        L8:
            r1 = 0
        L9:
            if (r4 <= r5) goto Lc
            goto Ld
        Lc:
            r3 = 0
        Ld:
            if (r1 == r3) goto L10
            goto L13
        L10:
            r2 = r5
            r5 = r4
            r4 = r2
        L13:
            int r3 = r6 * r4
            int r0 = r7 * r5
            if (r3 < r0) goto L23
            android.graphics.Point r3 = new android.graphics.Point
            int r4 = com.applovin.exoplayer2.l.ai.N(r0, r6)
            r3.<init>(r5, r4)
            return r3
        L23:
            android.graphics.Point r5 = new android.graphics.Point
            int r3 = com.applovin.exoplayer2.l.ai.N(r3, r7)
            r5.<init>(r3, r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.j.c.a(boolean, int, int, int, int):android.graphics.Point");
    }

    @Nullable
    private static d.a a(ad adVar, int[][] iArr, int i, C0049c c0049c) {
        ad adVar2 = adVar;
        C0049c c0049c2 = c0049c;
        int i2 = c0049c2.UB ? 24 : 16;
        boolean z = c0049c2.UA && (i & i2) != 0;
        int i3 = 0;
        while (i3 < adVar2.fR) {
            ac acVarEb = adVar2.eb(i3);
            int i4 = i3;
            int[] iArrA = a(acVarEb, iArr[i3], z, i2, c0049c2.Vf, c0049c2.Vg, c0049c2.Vh, c0049c2.Vi, c0049c2.Vj, c0049c2.Vk, c0049c2.Vl, c0049c2.Vm, c0049c2.Vn, c0049c2.Vo, c0049c2.Vp);
            if (iArrA.length > 0) {
                return new d.a(acVarEb, iArrA);
            }
            i3 = i4 + 1;
            adVar2 = adVar;
            c0049c2 = c0049c;
        }
        return null;
    }

    @Nullable
    private static d.a a(ad adVar, int[][] iArr, C0049c c0049c) {
        int i = -1;
        ac acVar = null;
        g gVar = null;
        for (int i2 = 0; i2 < adVar.fR; i2++) {
            ac acVarEb = adVar.eb(i2);
            List<Integer> listA = a(acVarEb, c0049c.Vn, c0049c.Vo, c0049c.Vp);
            int[] iArr2 = iArr[i2];
            for (int i3 = 0; i3 < acVarEb.fR; i3++) {
                v vVarDZ = acVarEb.dZ(i3);
                if ((vVarDZ.ds & 16384) == 0 && n(iArr2[i3], c0049c.UG)) {
                    g gVar2 = new g(vVarDZ, c0049c, iArr2[i3], listA.contains(Integer.valueOf(i3)));
                    if ((gVar2.UP || c0049c.Uz) && (gVar == null || gVar2.compareTo(gVar) > 0)) {
                        acVar = acVarEb;
                        i = i3;
                        gVar = gVar2;
                    }
                }
            }
        }
        if (acVar == null) {
            return null;
        }
        return new d.a(acVar, i);
    }

    private static List<Integer> a(ac acVar, int i, int i2, boolean z) {
        int i3;
        ArrayList arrayList = new ArrayList(acVar.fR);
        for (int i4 = 0; i4 < acVar.fR; i4++) {
            arrayList.add(Integer.valueOf(i4));
        }
        if (i != Integer.MAX_VALUE && i2 != Integer.MAX_VALUE) {
            int i5 = Integer.MAX_VALUE;
            for (int i6 = 0; i6 < acVar.fR; i6++) {
                v vVarDZ = acVar.dZ(i6);
                int i7 = vVarDZ.dE;
                if (i7 > 0 && (i3 = vVarDZ.height) > 0) {
                    Point pointA = a(z, i, i2, i7, i3);
                    int i8 = vVarDZ.dE;
                    int i9 = vVarDZ.height;
                    int i10 = i8 * i9;
                    if (i8 >= ((int) (pointA.x * 0.98f)) && i9 >= ((int) (pointA.y * 0.98f)) && i10 < i5) {
                        i5 = i10;
                    }
                }
            }
            if (i5 != Integer.MAX_VALUE) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    int iBS = acVar.dZ(((Integer) arrayList.get(size)).intValue()).bS();
                    if (iBS == -1 || iBS > i5) {
                        arrayList.remove(size);
                    }
                }
            }
        }
        return arrayList;
    }

    private static void a(f.a aVar, int[][][] iArr, at[] atVarArr, com.applovin.exoplayer2.j.d[] dVarArr) {
        boolean z;
        boolean z2 = false;
        int i = -1;
        int i2 = -1;
        for (int i3 = 0; i3 < aVar.np(); i3++) {
            int iES = aVar.eS(i3);
            com.applovin.exoplayer2.j.d dVar = dVarArr[i3];
            if ((iES == 1 || iES == 2) && dVar != null && a(iArr[i3], aVar.eT(i3), dVar)) {
                if (iES == 1) {
                    if (i2 != -1) {
                        z = false;
                        break;
                    }
                    i2 = i3;
                } else {
                    if (i != -1) {
                        z = false;
                        break;
                    }
                    i = i3;
                }
            }
        }
        z = true;
        if (i2 != -1 && i != -1) {
            z2 = true;
        }
        if (z && z2) {
            at atVar = new at(true);
            atVarArr[i2] = atVar;
            atVarArr[i] = atVar;
        }
    }

    private static boolean a(v vVar, int i, v vVar2, int i2, boolean z, boolean z2, boolean z3) {
        int i3;
        int i4;
        String str;
        int i5;
        if (!n(i, false) || (i3 = vVar.dv) == -1 || i3 > i2) {
            return false;
        }
        if (!z3 && ((i5 = vVar.dL) == -1 || i5 != vVar2.dL)) {
            return false;
        }
        if (z || ((str = vVar.dz) != null && TextUtils.equals(str, vVar2.dz))) {
            return z2 || ((i4 = vVar.dM) != -1 && i4 == vVar2.dM);
        }
        return false;
    }

    private static boolean a(v vVar, @Nullable String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        int i11;
        if ((vVar.ds & 16384) != 0 || !n(i, false) || (i & i2) == 0) {
            return false;
        }
        if (str != null && !com.applovin.exoplayer2.l.ai.r(vVar.dz, str)) {
            return false;
        }
        int i12 = vVar.dE;
        if (i12 != -1 && (i7 > i12 || i12 > i3)) {
            return false;
        }
        int i13 = vVar.height;
        if (i13 != -1 && (i8 > i13 || i13 > i4)) {
            return false;
        }
        float f2 = vVar.dF;
        return (f2 == -1.0f || (((float) i9) <= f2 && f2 <= ((float) i5))) && (i11 = vVar.dv) != -1 && i10 <= i11 && i11 <= i6;
    }

    private static boolean a(int[][] iArr, ad adVar, com.applovin.exoplayer2.j.d dVar) {
        if (dVar == null) {
            return false;
        }
        int iA = adVar.a(dVar.nf());
        for (int i = 0; i < dVar.kD(); i++) {
            if (z1.d(iArr[iA][dVar.eP(i)]) != 32) {
                return false;
            }
        }
        return true;
    }

    private static int[] a(ac acVar, int[] iArr, int i, int i2, boolean z, boolean z2, boolean z3) {
        v vVarDZ = acVar.dZ(i);
        int[] iArr2 = new int[acVar.fR];
        int i3 = 0;
        for (int i4 = 0; i4 < acVar.fR; i4++) {
            if (i4 == i || a(acVar.dZ(i4), iArr[i4], vVarDZ, i2, z, z2, z3)) {
                iArr2[i3] = i4;
                i3++;
            }
        }
        return Arrays.copyOf(iArr2, i3);
    }

    private static int[] a(ac acVar, int[] iArr, boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, boolean z2) {
        String str;
        int i12;
        int i13;
        HashSet hashSet;
        if (acVar.fR < 2) {
            return Ug;
        }
        List<Integer> listA = a(acVar, i10, i11, z2);
        if (listA.size() < 2) {
            return Ug;
        }
        if (z) {
            str = null;
        } else {
            HashSet hashSet2 = new HashSet();
            String str2 = null;
            int i14 = 0;
            int i15 = 0;
            while (i15 < listA.size()) {
                String str3 = acVar.dZ(listA.get(i15).intValue()).dz;
                if (hashSet2.add(str3)) {
                    i12 = i14;
                    i13 = i15;
                    hashSet = hashSet2;
                    int iA = a(acVar, iArr, i, str3, i2, i3, i4, i5, i6, i7, i8, i9, listA);
                    if (iA > i12) {
                        i14 = iA;
                        str2 = str3;
                    }
                    i15 = i13 + 1;
                    hashSet2 = hashSet;
                } else {
                    i12 = i14;
                    i13 = i15;
                    hashSet = hashSet2;
                }
                i14 = i12;
                i15 = i13 + 1;
                hashSet2 = hashSet;
            }
            str = str2;
        }
        b(acVar, iArr, i, str, i2, i3, i4, i5, i6, i7, i8, i9, listA);
        return listA.size() < 2 ? Ug : com.applovin.exoplayer2.common.b.c.f(listA);
    }

    @Nullable
    protected static String aI(@Nullable String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, C.LANGUAGE_UNDETERMINED)) {
            return null;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int b(Integer num, Integer num2) {
        if (num.intValue() == -1) {
            return num2.intValue() == -1 ? 0 : -1;
        }
        if (num2.intValue() == -1) {
            return 1;
        }
        return num.intValue() - num2.intValue();
    }

    private static void b(ac acVar, int[] iArr, int i, @Nullable String str, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, List<Integer> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            int iIntValue = list.get(size).intValue();
            if (!a(acVar.dZ(iIntValue), str, iArr[iIntValue], i, i2, i3, i4, i5, i6, i7, i8, i9)) {
                list.remove(size);
            }
        }
    }

    protected static boolean n(int i, boolean z) {
        int iC = z1.c(i);
        return iC == 4 || (z && iC == 3);
    }

    @Nullable
    protected Pair<d.a, f> a(ad adVar, int[][] iArr, C0049c c0049c, @Nullable String str) throws com.applovin.exoplayer2.p {
        int i = -1;
        ac acVar = null;
        f fVar = null;
        for (int i2 = 0; i2 < adVar.fR; i2++) {
            ac acVarEb = adVar.eb(i2);
            int[] iArr2 = iArr[i2];
            for (int i3 = 0; i3 < acVarEb.fR; i3++) {
                if (n(iArr2[i3], c0049c.UG)) {
                    f fVar2 = new f(acVarEb.dZ(i3), c0049c, iArr2[i3], str);
                    if (fVar2.Ul && (fVar == null || fVar2.compareTo(fVar) > 0)) {
                        acVar = acVarEb;
                        i = i3;
                        fVar = fVar2;
                    }
                }
            }
        }
        if (acVar == null) {
            return null;
        }
        return Pair.create(new d.a(acVar, i), (f) com.applovin.exoplayer2.l.a.checkNotNull(fVar));
    }

    @Override // com.applovin.exoplayer2.j.f
    protected final Pair<at[], com.applovin.exoplayer2.j.d[]> a(f.a aVar, int[][][] iArr, int[] iArr2, p.a aVar2, ba baVar) throws com.applovin.exoplayer2.p {
        C0049c c0049c = this.Uk.get();
        int iNp = aVar.np();
        d.a[] aVarArrA = a(aVar, iArr, iArr2, c0049c);
        int i = 0;
        while (true) {
            if (i >= iNp) {
                break;
            }
            int iES = aVar.eS(i);
            if (c0049c.eQ(i) || c0049c.VB.contains(Integer.valueOf(iES))) {
                aVarArrA[i] = null;
            } else {
                ad adVarET = aVar.eT(i);
                if (c0049c.a(i, adVarET)) {
                    e eVarB = c0049c.b(i, adVarET);
                    aVarArrA[i] = eVarB != null ? new d.a(adVarET.eb(eVarB.UL), eVarB.Ue, eVarB.bs) : null;
                }
            }
            i++;
        }
        com.applovin.exoplayer2.j.d[] dVarArrA = this.Uj.a(aVarArrA, nq(), aVar2, baVar);
        at[] atVarArr = new at[iNp];
        for (int i2 = 0; i2 < iNp; i2++) {
            boolean z = true;
            if ((c0049c.eQ(i2) || c0049c.VB.contains(Integer.valueOf(aVar.eS(i2)))) || (aVar.eS(i2) != -2 && dVarArrA[i2] == null)) {
                z = false;
            }
            atVarArr[i2] = z ? at.hh : null;
        }
        if (c0049c.UH) {
            a(aVar, iArr, atVarArr, dVarArrA);
        }
        return Pair.create(atVarArr, dVarArrA);
    }

    @Nullable
    protected d.a a(int i, ad adVar, int[][] iArr, C0049c c0049c) throws com.applovin.exoplayer2.p {
        ac acVar = null;
        b bVar = null;
        int i2 = 0;
        for (int i3 = 0; i3 < adVar.fR; i3++) {
            ac acVarEb = adVar.eb(i3);
            int[] iArr2 = iArr[i3];
            for (int i4 = 0; i4 < acVarEb.fR; i4++) {
                if (n(iArr2[i4], c0049c.UG)) {
                    b bVar2 = new b(acVarEb.dZ(i4), iArr2[i4]);
                    if (bVar == null || bVar2.compareTo(bVar) > 0) {
                        acVar = acVarEb;
                        i2 = i4;
                        bVar = bVar2;
                    }
                }
            }
        }
        if (acVar == null) {
            return null;
        }
        return new d.a(acVar, i2);
    }

    @Nullable
    protected d.a a(ad adVar, int[][] iArr, int i, C0049c c0049c, boolean z) throws com.applovin.exoplayer2.p {
        d.a aVarA = (c0049c.VA || c0049c.Vz || !z) ? null : a(adVar, iArr, i, c0049c);
        return aVarA == null ? a(adVar, iArr, c0049c) : aVarA;
    }

    protected d.a[] a(f.a aVar, int[][][] iArr, int[] iArr2, C0049c c0049c) throws com.applovin.exoplayer2.p {
        int i;
        String str;
        int i2;
        a aVar2;
        String str2;
        int i3;
        int iNp = aVar.np();
        d.a[] aVarArr = new d.a[iNp];
        int i4 = 0;
        boolean z = false;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            if (i5 >= iNp) {
                break;
            }
            if (2 == aVar.eS(i5)) {
                if (!z) {
                    aVarArr[i5] = a(aVar.eT(i5), iArr[i5], iArr2[i5], c0049c, true);
                    z = aVarArr[i5] != null;
                }
                i6 |= aVar.eT(i5).fR <= 0 ? 0 : 1;
            }
            i5++;
        }
        a aVar3 = null;
        String str3 = null;
        int i7 = -1;
        int i8 = 0;
        while (i8 < iNp) {
            if (i == aVar.eS(i8)) {
                i2 = i7;
                aVar2 = aVar3;
                str2 = str3;
                i3 = i8;
                Pair<d.a, a> pairB = b(aVar.eT(i8), iArr[i8], iArr2[i8], c0049c, c0049c.UI || i6 == 0);
                if (pairB != null && (aVar2 == null || ((a) pairB.second).compareTo(aVar2) > 0)) {
                    if (i2 != -1) {
                        aVarArr[i2] = null;
                    }
                    d.a aVar4 = (d.a) pairB.first;
                    aVarArr[i3] = aVar4;
                    str3 = aVar4.Ud.dZ(aVar4.Ue[0]).dq;
                    aVar3 = (a) pairB.second;
                    i7 = i3;
                }
                i8 = i3 + 1;
                i = 1;
            } else {
                i2 = i7;
                aVar2 = aVar3;
                str2 = str3;
                i3 = i8;
            }
            i7 = i2;
            aVar3 = aVar2;
            str3 = str2;
            i8 = i3 + 1;
            i = 1;
        }
        String str4 = str3;
        f fVar = null;
        int i9 = -1;
        while (i4 < iNp) {
            int iES = aVar.eS(i4);
            if (iES == 1) {
                str = str4;
            } else if (iES == 2) {
                str = str4;
            } else if (iES != 3) {
                aVarArr[i4] = a(iES, aVar.eT(i4), iArr[i4], c0049c);
                str = str4;
            } else {
                str = str4;
                Pair<d.a, f> pairA = a(aVar.eT(i4), iArr[i4], c0049c, str);
                if (pairA != null && (fVar == null || ((f) pairA.second).compareTo(fVar) > 0)) {
                    if (i9 != -1) {
                        aVarArr[i9] = null;
                    }
                    aVarArr[i4] = (d.a) pairA.first;
                    fVar = (f) pairA.second;
                    i9 = i4;
                }
            }
            i4++;
            str4 = str;
        }
        return aVarArr;
    }

    @Nullable
    protected Pair<d.a, a> b(ad adVar, int[][] iArr, int i, C0049c c0049c, boolean z) throws com.applovin.exoplayer2.p {
        d.a aVar = null;
        a aVar2 = null;
        int i2 = -1;
        int i3 = -1;
        for (int i4 = 0; i4 < adVar.fR; i4++) {
            ac acVarEb = adVar.eb(i4);
            int[] iArr2 = iArr[i4];
            for (int i5 = 0; i5 < acVarEb.fR; i5++) {
                if (n(iArr2[i5], c0049c.UG)) {
                    a aVar3 = new a(acVarEb.dZ(i5), c0049c, iArr2[i5]);
                    if ((aVar3.Ul || c0049c.UC) && (aVar2 == null || aVar3.compareTo(aVar2) > 0)) {
                        i2 = i4;
                        i3 = i5;
                        aVar2 = aVar3;
                    }
                }
            }
        }
        if (i2 == -1) {
            return null;
        }
        ac acVarEb2 = adVar.eb(i2);
        if (!c0049c.VA && !c0049c.Vz && z) {
            int[] iArrA = a(acVarEb2, iArr[i2], i3, c0049c.Vu, c0049c.UD, c0049c.UE, c0049c.UF);
            if (iArrA.length > 1) {
                aVar = new d.a(acVarEb2, iArrA);
            }
        }
        if (aVar == null) {
            aVar = new d.a(acVarEb2, i3);
        }
        return Pair.create(aVar, (a) com.applovin.exoplayer2.l.a.checkNotNull(aVar2));
    }

    @Override // com.applovin.exoplayer2.j.j
    public boolean nh() {
        return true;
    }
}

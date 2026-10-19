package com.applovin.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ab;
import com.applovin.exoplayer2.g;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class ab implements g {
    public final ac cb;
    public final String dZ;

    @Nullable
    public final f ea;
    public final e eb;
    public final c ec;
    public static final ab dY = new b().bV();
    public static final g.a<ab> br = new g.a() { // from class: com.applovin.exoplayer2.c0
        @Override // com.applovin.exoplayer2.g.a
        public final g fromBundle(Bundle bundle) {
            return ab.d(bundle);
        }
    };

    public static final class a {
        public final Uri ed;

        @Nullable
        public final Object ee;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.ed.equals(aVar.ed) && com.applovin.exoplayer2.l.ai.r(this.ee, aVar.ee);
        }

        public int hashCode() {
            int iHashCode = this.ed.hashCode() * 31;
            Object obj = this.ee;
            return iHashCode + (obj != null ? obj.hashCode() : 0);
        }
    }

    public static final class b {

        @Nullable
        private ac cb;

        @Nullable
        private String dZ;

        @Nullable
        private Uri ef;

        @Nullable
        private String eg;
        private long eh;
        private long ei;
        private boolean ej;
        private boolean ek;
        private boolean el;
        private d.a em;
        private List<Object> en;

        @Nullable
        private String eo;
        private List<Object> ep;

        @Nullable
        private a eq;

        @Nullable
        private Object er;
        private e.a es;

        public b() {
            this.ei = Long.MIN_VALUE;
            this.em = new d.a();
            this.en = Collections.emptyList();
            this.ep = Collections.emptyList();
            this.es = new e.a();
        }

        private b(ab abVar) {
            this();
            c cVar = abVar.ec;
            this.ei = cVar.eu;
            this.ej = cVar.ev;
            this.ek = cVar.ew;
            this.eh = cVar.et;
            this.el = cVar.ex;
            this.dZ = abVar.dZ;
            this.cb = abVar.cb;
            this.es = abVar.eb.bZ();
            f fVar = abVar.ea;
            if (fVar != null) {
                this.eo = fVar.eo;
                this.eg = fVar.eg;
                this.ef = fVar.ef;
                this.en = fVar.en;
                this.ep = fVar.ep;
                this.er = fVar.er;
                d dVar = fVar.eL;
                this.em = dVar != null ? dVar.bX() : new d.a();
                this.eq = fVar.eq;
            }
        }

        public b b(@Nullable Uri uri) {
            this.ef = uri;
            return this;
        }

        public ab bV() {
            f fVar;
            com.applovin.exoplayer2.l.a.checkState(this.em.ez == null || this.em.ey != null);
            Uri uri = this.ef;
            if (uri != null) {
                fVar = new f(uri, this.eg, this.em.ey != null ? this.em.bY() : null, this.eq, this.en, this.eo, this.ep, this.er);
            } else {
                fVar = null;
            }
            String str = this.dZ;
            if (str == null) {
                str = "";
            }
            String str2 = str;
            c cVar = new c(this.eh, this.ei, this.ej, this.ek, this.el);
            e eVarCa = this.es.ca();
            ac acVar = this.cb;
            if (acVar == null) {
                acVar = ac.eM;
            }
            return new ab(str2, cVar, fVar, eVarCa, acVar);
        }

        public b e(@Nullable Object obj) {
            this.er = obj;
            return this;
        }

        public b n(String str) {
            this.dZ = (String) com.applovin.exoplayer2.l.a.checkNotNull(str);
            return this;
        }

        public b o(@Nullable String str) {
            this.eo = str;
            return this;
        }
    }

    public static final class c implements g {
        public static final g.a<c> br = new g.a() { // from class: com.applovin.exoplayer2.d0
            @Override // com.applovin.exoplayer2.g.a
            public final g fromBundle(Bundle bundle) {
                return ab.c.e(bundle);
            }
        };
        public final long et;
        public final long eu;
        public final boolean ev;
        public final boolean ew;
        public final boolean ex;

        private c(long j, long j2, boolean z, boolean z2, boolean z3) {
            this.et = j;
            this.eu = j2;
            this.ev = z;
            this.ew = z2;
            this.ex = z3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ c e(Bundle bundle) {
            return new c(bundle.getLong(t(0), 0L), bundle.getLong(t(1), Long.MIN_VALUE), bundle.getBoolean(t(2), false), bundle.getBoolean(t(3), false), bundle.getBoolean(t(4), false));
        }

        private static String t(int i) {
            return Integer.toString(i, 36);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.et == cVar.et && this.eu == cVar.eu && this.ev == cVar.ev && this.ew == cVar.ew && this.ex == cVar.ex;
        }

        public int hashCode() {
            long j = this.et;
            int i = ((int) (j ^ (j >>> 32))) * 31;
            long j2 = this.eu;
            return ((((((i + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (this.ev ? 1 : 0)) * 31) + (this.ew ? 1 : 0)) * 31) + (this.ex ? 1 : 0);
        }
    }

    public static final class d {
        public final com.applovin.exoplayer2.common.a.u<String, String> eA;
        public final boolean eB;
        public final boolean eC;
        public final boolean eD;
        public final com.applovin.exoplayer2.common.a.s<Integer> eE;

        @Nullable
        private final byte[] eF;
        public final UUID ey;

        @Nullable
        public final Uri ez;

        public static final class a {
            private boolean eB;
            private boolean eC;
            private boolean eD;
            private com.applovin.exoplayer2.common.a.s<Integer> eE;

            @Nullable
            private byte[] eF;
            private com.applovin.exoplayer2.common.a.u<String, String> eG;

            @Nullable
            private UUID ey;

            @Nullable
            private Uri ez;

            @Deprecated
            private a() {
                this.eG = com.applovin.exoplayer2.common.a.u.gi();
                this.eE = com.applovin.exoplayer2.common.a.s.ga();
            }

            private a(d dVar) {
                this.ey = dVar.ey;
                this.ez = dVar.ez;
                this.eG = dVar.eA;
                this.eB = dVar.eB;
                this.eC = dVar.eC;
                this.eD = dVar.eD;
                this.eE = dVar.eE;
                this.eF = dVar.eF;
            }

            public d bY() {
                return new d(this);
            }
        }

        private d(a aVar) {
            com.applovin.exoplayer2.l.a.checkState((aVar.eD && aVar.ez == null) ? false : true);
            this.ey = (UUID) com.applovin.exoplayer2.l.a.checkNotNull(aVar.ey);
            this.ez = aVar.ez;
            this.eA = aVar.eG;
            this.eB = aVar.eB;
            this.eD = aVar.eD;
            this.eC = aVar.eC;
            this.eE = aVar.eE;
            this.eF = aVar.eF != null ? Arrays.copyOf(aVar.eF, aVar.eF.length) : null;
        }

        @Nullable
        public byte[] bW() {
            byte[] bArr = this.eF;
            if (bArr != null) {
                return Arrays.copyOf(bArr, bArr.length);
            }
            return null;
        }

        public a bX() {
            return new a();
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.ey.equals(dVar.ey) && com.applovin.exoplayer2.l.ai.r(this.ez, dVar.ez) && com.applovin.exoplayer2.l.ai.r(this.eA, dVar.eA) && this.eB == dVar.eB && this.eD == dVar.eD && this.eC == dVar.eC && this.eE.equals(dVar.eE) && Arrays.equals(this.eF, dVar.eF);
        }

        public int hashCode() {
            int iHashCode = this.ey.hashCode() * 31;
            Uri uri = this.ez;
            return ((((((((((((iHashCode + (uri != null ? uri.hashCode() : 0)) * 31) + this.eA.hashCode()) * 31) + (this.eB ? 1 : 0)) * 31) + (this.eD ? 1 : 0)) * 31) + (this.eC ? 1 : 0)) * 31) + this.eE.hashCode()) * 31) + Arrays.hashCode(this.eF);
        }
    }

    public static final class e implements g {
        public final float aE;
        public final float aF;
        public final long eI;
        public final long eJ;
        public final long eK;
        public static final e eH = new a().ca();
        public static final g.a<e> br = new g.a() { // from class: com.applovin.exoplayer2.e0
            @Override // com.applovin.exoplayer2.g.a
            public final g fromBundle(Bundle bundle) {
                return ab.e.f(bundle);
            }
        };

        public static final class a {
            private float aE;
            private float aF;
            private long eI;
            private long eJ;
            private long eK;

            public a() {
                this.eI = C.TIME_UNSET;
                this.eJ = C.TIME_UNSET;
                this.eK = C.TIME_UNSET;
                this.aF = -3.4028235E38f;
                this.aE = -3.4028235E38f;
            }

            private a(e eVar) {
                this.eI = eVar.eI;
                this.eJ = eVar.eJ;
                this.eK = eVar.eK;
                this.aF = eVar.aF;
                this.aE = eVar.aE;
            }

            public e ca() {
                return new e(this);
            }
        }

        @Deprecated
        public e(long j, long j2, long j3, float f2, float f3) {
            this.eI = j;
            this.eJ = j2;
            this.eK = j3;
            this.aF = f2;
            this.aE = f3;
        }

        private e(a aVar) {
            this(aVar.eI, aVar.eJ, aVar.eK, aVar.aF, aVar.aE);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ e f(Bundle bundle) {
            return new e(bundle.getLong(t(0), C.TIME_UNSET), bundle.getLong(t(1), C.TIME_UNSET), bundle.getLong(t(2), C.TIME_UNSET), bundle.getFloat(t(3), -3.4028235E38f), bundle.getFloat(t(4), -3.4028235E38f));
        }

        private static String t(int i) {
            return Integer.toString(i, 36);
        }

        public a bZ() {
            return new a();
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return this.eI == eVar.eI && this.eJ == eVar.eJ && this.eK == eVar.eK && this.aF == eVar.aF && this.aE == eVar.aE;
        }

        public int hashCode() {
            long j = this.eI;
            long j2 = this.eJ;
            int i = ((((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
            long j3 = this.eK;
            int i2 = (i + ((int) (j3 ^ (j3 >>> 32)))) * 31;
            float f2 = this.aF;
            int iFloatToIntBits = (i2 + (f2 != 0.0f ? Float.floatToIntBits(f2) : 0)) * 31;
            float f3 = this.aE;
            return iFloatToIntBits + (f3 != 0.0f ? Float.floatToIntBits(f3) : 0);
        }
    }

    public static final class f {

        @Nullable
        public final d eL;
        public final Uri ef;

        @Nullable
        public final String eg;
        public final List<Object> en;

        @Nullable
        public final String eo;
        public final List<Object> ep;

        @Nullable
        public final a eq;

        @Nullable
        public final Object er;

        private f(Uri uri, @Nullable String str, @Nullable d dVar, @Nullable a aVar, List<Object> list, @Nullable String str2, List<Object> list2, @Nullable Object obj) {
            this.ef = uri;
            this.eg = str;
            this.eL = dVar;
            this.eq = aVar;
            this.en = list;
            this.eo = str2;
            this.ep = list2;
            this.er = obj;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return this.ef.equals(fVar.ef) && com.applovin.exoplayer2.l.ai.r(this.eg, fVar.eg) && com.applovin.exoplayer2.l.ai.r(this.eL, fVar.eL) && com.applovin.exoplayer2.l.ai.r(this.eq, fVar.eq) && this.en.equals(fVar.en) && com.applovin.exoplayer2.l.ai.r(this.eo, fVar.eo) && this.ep.equals(fVar.ep) && com.applovin.exoplayer2.l.ai.r(this.er, fVar.er);
        }

        public int hashCode() {
            int iHashCode = this.ef.hashCode() * 31;
            String str = this.eg;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            d dVar = this.eL;
            int iHashCode3 = (iHashCode2 + (dVar == null ? 0 : dVar.hashCode())) * 31;
            a aVar = this.eq;
            int iHashCode4 = (((iHashCode3 + (aVar == null ? 0 : aVar.hashCode())) * 31) + this.en.hashCode()) * 31;
            String str2 = this.eo;
            int iHashCode5 = (((iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.ep.hashCode()) * 31;
            Object obj = this.er;
            return iHashCode5 + (obj != null ? obj.hashCode() : 0);
        }
    }

    private ab(String str, c cVar, @Nullable f fVar, e eVar, ac acVar) {
        this.dZ = str;
        this.ea = fVar;
        this.eb = eVar;
        this.cb = acVar;
        this.ec = cVar;
    }

    public static ab a(Uri uri) {
        return new b().b(uri).bV();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ab d(Bundle bundle) {
        String str = (String) com.applovin.exoplayer2.l.a.checkNotNull(bundle.getString(t(0), ""));
        Bundle bundle2 = bundle.getBundle(t(1));
        e eVar = bundle2 == null ? e.eH : (e) e.br.fromBundle(bundle2);
        Bundle bundle3 = bundle.getBundle(t(2));
        ac acVar = bundle3 == null ? ac.eM : (ac) ac.br.fromBundle(bundle3);
        Bundle bundle4 = bundle.getBundle(t(3));
        return new ab(str, bundle4 == null ? new c(0L, Long.MIN_VALUE, false, false, false) : (c) c.br.fromBundle(bundle4), null, eVar, acVar);
    }

    private static String t(int i) {
        return Integer.toString(i, 36);
    }

    public b bU() {
        return new b();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ab)) {
            return false;
        }
        ab abVar = (ab) obj;
        return com.applovin.exoplayer2.l.ai.r(this.dZ, abVar.dZ) && this.ec.equals(abVar.ec) && com.applovin.exoplayer2.l.ai.r(this.ea, abVar.ea) && com.applovin.exoplayer2.l.ai.r(this.eb, abVar.eb) && com.applovin.exoplayer2.l.ai.r(this.cb, abVar.cb);
    }

    public int hashCode() {
        int iHashCode = this.dZ.hashCode() * 31;
        f fVar = this.ea;
        return ((((((iHashCode + (fVar != null ? fVar.hashCode() : 0)) * 31) + this.eb.hashCode()) * 31) + this.ec.hashCode()) * 31) + this.cb.hashCode();
    }
}

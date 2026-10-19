package com.applovin.exoplayer2;

import android.os.Bundle;
import android.os.Looper;
import android.support.v4.media.MediaDescriptionCompat;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.an;
import com.applovin.exoplayer2.common.base.Objects;
import com.applovin.exoplayer2.g;
import com.applovin.exoplayer2.l.m;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface an {

    public static final class a implements g {
        private final com.applovin.exoplayer2.l.m gH;
        public static final a gG = new C0017a().cC();
        public static final g.a<a> br = new g.a() { // from class: com.applovin.exoplayer2.k0
            @Override // com.applovin.exoplayer2.g.a
            public final g fromBundle(Bundle bundle) {
                return an.a.l(bundle);
            }
        };

        /* JADX INFO: renamed from: com.applovin.exoplayer2.an$a$a, reason: collision with other inner class name */
        public static final class C0017a {
            private static final int[] gI = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28};
            private final m.a gJ = new m.a();

            public C0017a Y(int i) {
                this.gJ.fo(i);
                return this;
            }

            public C0017a a(int... iArr) {
                this.gJ.h(iArr);
                return this;
            }

            public C0017a c(a aVar) {
                this.gJ.a(aVar.gH);
                return this;
            }

            public a cC() {
                return new a(this.gJ.oV());
            }

            public C0017a d(int i, boolean z) {
                this.gJ.o(i, z);
                return this;
            }
        }

        private a(com.applovin.exoplayer2.l.m mVar) {
            this.gH = mVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static a l(Bundle bundle) {
            ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(t(0));
            if (integerArrayList == null) {
                return gG;
            }
            C0017a c0017a = new C0017a();
            for (int i = 0; i < integerArrayList.size(); i++) {
                c0017a.Y(integerArrayList.get(i).intValue());
            }
            return c0017a.cC();
        }

        private static String t(int i) {
            return Integer.toString(i, 36);
        }

        public boolean X(int i) {
            return this.gH.X(i);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                return this.gH.equals(((a) obj).gH);
            }
            return false;
        }

        public int hashCode() {
            return this.gH.hashCode();
        }
    }

    @Deprecated
    public interface b {
        void Z(int i);

        void a(@Nullable ab abVar, int i);

        void a(ac acVar);

        void a(ak akVar);

        void a(e eVar, e eVar2, int i);

        void a(an anVar, c cVar);

        void a(com.applovin.exoplayer2.h.ad adVar, com.applovin.exoplayer2.j.h hVar);

        void aa(int i);

        void ab(int i);

        @Deprecated
        void ac(int i);

        void b(@Nullable ak akVar);

        void b(am amVar);

        void b(ba baVar, int i);

        @Deprecated
        void cD();

        void d(a aVar);

        @Deprecated
        void d(boolean z, int i);

        void e(boolean z, int i);

        void w(boolean z);

        @Deprecated
        void x(boolean z);

        void y(boolean z);

        void z(boolean z);
    }

    public static final class c {
        private final com.applovin.exoplayer2.l.m gH;

        public c(com.applovin.exoplayer2.l.m mVar) {
            this.gH = mVar;
        }

        public boolean X(int i) {
            return this.gH.X(i);
        }

        public boolean b(int... iArr) {
            return this.gH.b(iArr);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof c) {
                return this.gH.equals(((c) obj).gH);
            }
            return false;
        }

        public int hashCode() {
            return this.gH.hashCode();
        }
    }

    public interface d extends b {
        void A(boolean z);

        @Override // com.applovin.exoplayer2.an.b
        void Z(int i);

        @Override // com.applovin.exoplayer2.an.b
        void a(@Nullable ab abVar, int i);

        @Override // com.applovin.exoplayer2.an.b
        void a(ac acVar);

        @Override // com.applovin.exoplayer2.an.b
        void a(ak akVar);

        @Override // com.applovin.exoplayer2.an.b
        void a(e eVar, e eVar2, int i);

        @Override // com.applovin.exoplayer2.an.b
        void a(an anVar, c cVar);

        void a(com.applovin.exoplayer2.g.a aVar);

        @Override // com.applovin.exoplayer2.an.b
        void a(com.applovin.exoplayer2.h.ad adVar, com.applovin.exoplayer2.j.h hVar);

        void a(com.applovin.exoplayer2.m.o oVar);

        void a(o oVar);

        @Override // com.applovin.exoplayer2.an.b
        void aa(int i);

        @Override // com.applovin.exoplayer2.an.b
        void ab(int i);

        @Override // com.applovin.exoplayer2.an.b
        void b(@Nullable ak akVar);

        @Override // com.applovin.exoplayer2.an.b
        void b(am amVar);

        @Override // com.applovin.exoplayer2.an.b
        void b(ba baVar, int i);

        void cE();

        @Override // com.applovin.exoplayer2.an.b
        void d(a aVar);

        void e(int i, boolean z);

        void e(List<com.applovin.exoplayer2.i.a> list);

        @Override // com.applovin.exoplayer2.an.b
        void e(boolean z, int i);

        void f(int i, int i2);

        void g(float f2);

        @Override // com.applovin.exoplayer2.an.b
        void w(boolean z);

        @Override // com.applovin.exoplayer2.an.b
        void y(boolean z);

        @Override // com.applovin.exoplayer2.an.b
        void z(boolean z);
    }

    public static final class e implements g {
        public static final g.a<e> br = new g.a() { // from class: com.applovin.exoplayer2.l0
            @Override // com.applovin.exoplayer2.g.a
            public final g fromBundle(Bundle bundle) {
                return an.e.m(bundle);
            }
        };
        public final int cN;
        public final long dX;

        @Nullable
        public final Object gK;

        @Nullable
        public final ab gL;

        @Nullable
        public final Object gM;
        public final int gN;
        public final long gO;
        public final int gP;
        public final int gQ;

        public e(@Nullable Object obj, int i, @Nullable ab abVar, @Nullable Object obj2, int i2, long j, long j2, int i3, int i4) {
            this.gK = obj;
            this.cN = i;
            this.gL = abVar;
            this.gM = obj2;
            this.gN = i2;
            this.dX = j;
            this.gO = j2;
            this.gP = i3;
            this.gQ = i4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static e m(Bundle bundle) {
            return new e(null, bundle.getInt(t(0), -1), (ab) com.applovin.exoplayer2.l.c.a(ab.br, bundle.getBundle(t(1))), null, bundle.getInt(t(2), -1), bundle.getLong(t(3), C.TIME_UNSET), bundle.getLong(t(4), C.TIME_UNSET), bundle.getInt(t(5), -1), bundle.getInt(t(6), -1));
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
            return this.cN == eVar.cN && this.gN == eVar.gN && this.dX == eVar.dX && this.gO == eVar.gO && this.gP == eVar.gP && this.gQ == eVar.gQ && Objects.equal(this.gK, eVar.gK) && Objects.equal(this.gM, eVar.gM) && Objects.equal(this.gL, eVar.gL);
        }

        public int hashCode() {
            return Objects.hashCode(this.gK, Integer.valueOf(this.cN), this.gL, this.gM, Integer.valueOf(this.gN), Integer.valueOf(this.cN), Long.valueOf(this.dX), Long.valueOf(this.gO), Integer.valueOf(this.gP), Integer.valueOf(this.gQ));
        }
    }

    void B();

    void E();

    boolean J();

    void a(@IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED) int i, long j);

    void a(@Nullable SurfaceView surfaceView);

    void a(@Nullable TextureView textureView);

    void a(d dVar);

    a aA();

    int aB();

    int aC();

    void aD();

    boolean aE();

    int aF();

    boolean aG();

    long aH();

    long aI();

    long aJ();

    int aK();

    int aL();

    long aM();

    long aN();

    long aO();

    boolean aP();

    int aQ();

    int aR();

    long aS();

    long aT();

    com.applovin.exoplayer2.h.ad aU();

    com.applovin.exoplayer2.j.h aV();

    ac aW();

    ba aX();

    com.applovin.exoplayer2.m.o aY();

    am av();

    @Nullable
    ak ax();

    Looper az();

    void b(long j);

    void b(@Nullable SurfaceView surfaceView);

    void b(@Nullable TextureView textureView);

    void b(d dVar);

    List<com.applovin.exoplayer2.i.a> bd();

    void k(boolean z);

    void l(boolean z);

    boolean n(int i);

    void u(int i);

    boolean v();

    void x();

    void y();
}

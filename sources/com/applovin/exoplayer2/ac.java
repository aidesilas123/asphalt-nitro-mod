package com.applovin.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.base.Objects;
import com.applovin.exoplayer2.g;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ac implements g {

    @Nullable
    public final CharSequence eN;

    @Nullable
    public final CharSequence eO;

    @Nullable
    public final CharSequence eP;

    @Nullable
    public final CharSequence eQ;

    @Nullable
    public final CharSequence eR;

    @Nullable
    public final CharSequence eS;

    @Nullable
    public final CharSequence eT;

    @Nullable
    public final Uri eU;

    @Nullable
    public final aq eV;

    @Nullable
    public final aq eW;

    @Nullable
    public final byte[] eX;

    @Nullable
    public final Integer eY;

    @Nullable
    public final Uri eZ;

    @Nullable
    public final Integer fa;

    @Nullable
    public final Integer fb;

    @Nullable
    public final Integer fc;

    @Nullable
    public final Boolean fd;

    @Nullable
    @Deprecated
    public final Integer fe;

    @Nullable
    public final Integer ff;

    @Nullable
    public final Integer fg;

    @Nullable
    public final Integer fh;

    @Nullable
    public final Integer fi;

    @Nullable
    public final Integer fj;

    @Nullable
    public final Integer fk;

    @Nullable
    public final CharSequence fl;

    @Nullable
    public final CharSequence fm;

    @Nullable
    public final CharSequence fn;

    @Nullable
    public final Integer fo;

    @Nullable
    public final Integer fp;

    @Nullable
    public final CharSequence fq;

    @Nullable
    public final CharSequence fr;

    @Nullable
    public final Bundle fs;
    public static final ac eM = new a().cc();
    public static final g.a<ac> br = new g.a() { // from class: com.applovin.exoplayer2.f0
        @Override // com.applovin.exoplayer2.g.a
        public final g fromBundle(Bundle bundle) {
            return ac.g(bundle);
        }
    };

    public static final class a {

        @Nullable
        private CharSequence eN;

        @Nullable
        private CharSequence eO;

        @Nullable
        private CharSequence eP;

        @Nullable
        private CharSequence eQ;

        @Nullable
        private CharSequence eR;

        @Nullable
        private CharSequence eS;

        @Nullable
        private CharSequence eT;

        @Nullable
        private Uri eU;

        @Nullable
        private aq eV;

        @Nullable
        private aq eW;

        @Nullable
        private byte[] eX;

        @Nullable
        private Integer eY;

        @Nullable
        private Uri eZ;

        @Nullable
        private Integer fa;

        @Nullable
        private Integer fb;

        @Nullable
        private Integer fc;

        @Nullable
        private Boolean fd;

        @Nullable
        private Integer ff;

        @Nullable
        private Integer fg;

        @Nullable
        private Integer fh;

        @Nullable
        private Integer fi;

        @Nullable
        private Integer fj;

        @Nullable
        private Integer fk;

        @Nullable
        private CharSequence fl;

        @Nullable
        private CharSequence fm;

        @Nullable
        private CharSequence fn;

        @Nullable
        private Integer fo;

        @Nullable
        private Integer fp;

        @Nullable
        private CharSequence fq;

        @Nullable
        private CharSequence fr;

        @Nullable
        private Bundle fs;

        public a() {
        }

        private a(ac acVar) {
            this.eN = acVar.eN;
            this.eO = acVar.eO;
            this.eP = acVar.eP;
            this.eQ = acVar.eQ;
            this.eR = acVar.eR;
            this.eS = acVar.eS;
            this.eT = acVar.eT;
            this.eU = acVar.eU;
            this.eV = acVar.eV;
            this.eW = acVar.eW;
            this.eX = acVar.eX;
            this.eY = acVar.eY;
            this.eZ = acVar.eZ;
            this.fa = acVar.fa;
            this.fb = acVar.fb;
            this.fc = acVar.fc;
            this.fd = acVar.fd;
            this.ff = acVar.ff;
            this.fg = acVar.fg;
            this.fh = acVar.fh;
            this.fi = acVar.fi;
            this.fj = acVar.fj;
            this.fk = acVar.fk;
            this.fl = acVar.fl;
            this.fm = acVar.fm;
            this.fn = acVar.fn;
            this.fo = acVar.fo;
            this.fp = acVar.fp;
            this.fq = acVar.fq;
            this.fr = acVar.fr;
            this.fs = acVar.fs;
        }

        public a a(@Nullable aq aqVar) {
            this.eV = aqVar;
            return this;
        }

        public a a(@Nullable Boolean bool) {
            this.fd = bool;
            return this;
        }

        public a a(@Nullable CharSequence charSequence) {
            this.eN = charSequence;
            return this;
        }

        public a a(@Nullable Integer num) {
            this.fa = num;
            return this;
        }

        public a a(byte[] bArr, int i) {
            if (this.eX == null || com.applovin.exoplayer2.l.ai.r(Integer.valueOf(i), 3) || !com.applovin.exoplayer2.l.ai.r(this.eY, 3)) {
                this.eX = (byte[]) bArr.clone();
                this.eY = Integer.valueOf(i);
            }
            return this;
        }

        public a a(@Nullable byte[] bArr, @Nullable Integer num) {
            this.eX = bArr == null ? null : (byte[]) bArr.clone();
            this.eY = num;
            return this;
        }

        public a b(@Nullable aq aqVar) {
            this.eW = aqVar;
            return this;
        }

        public a b(@Nullable CharSequence charSequence) {
            this.eO = charSequence;
            return this;
        }

        public a b(@Nullable Integer num) {
            this.fb = num;
            return this;
        }

        public a c(@Nullable Uri uri) {
            this.eU = uri;
            return this;
        }

        public a c(com.applovin.exoplayer2.g.a aVar) {
            for (int i = 0; i < aVar.kD(); i++) {
                aVar.de(i).F(this);
            }
            return this;
        }

        public a c(@Nullable CharSequence charSequence) {
            this.eP = charSequence;
            return this;
        }

        public a c(@Nullable Integer num) {
            this.fc = num;
            return this;
        }

        public ac cc() {
            return new ac(this);
        }

        public a d(@Nullable Uri uri) {
            this.eZ = uri;
            return this;
        }

        public a d(@Nullable CharSequence charSequence) {
            this.eQ = charSequence;
            return this;
        }

        public a d(@Nullable Integer num) {
            this.ff = num;
            return this;
        }

        public a d(List<com.applovin.exoplayer2.g.a> list) {
            for (int i = 0; i < list.size(); i++) {
                com.applovin.exoplayer2.g.a aVar = list.get(i);
                for (int i2 = 0; i2 < aVar.kD(); i2++) {
                    aVar.de(i2).F(this);
                }
            }
            return this;
        }

        public a e(@Nullable CharSequence charSequence) {
            this.eR = charSequence;
            return this;
        }

        public a e(@IntRange(from = 1, to = 12) @Nullable Integer num) {
            this.fg = num;
            return this;
        }

        public a f(@Nullable CharSequence charSequence) {
            this.eS = charSequence;
            return this;
        }

        public a f(@IntRange(from = 1, to = 31) @Nullable Integer num) {
            this.fh = num;
            return this;
        }

        public a g(@Nullable CharSequence charSequence) {
            this.eT = charSequence;
            return this;
        }

        public a g(@Nullable Integer num) {
            this.fi = num;
            return this;
        }

        public a h(@Nullable Bundle bundle) {
            this.fs = bundle;
            return this;
        }

        public a h(@Nullable CharSequence charSequence) {
            this.fl = charSequence;
            return this;
        }

        public a h(@IntRange(from = 1, to = 12) @Nullable Integer num) {
            this.fj = num;
            return this;
        }

        public a i(@Nullable CharSequence charSequence) {
            this.fm = charSequence;
            return this;
        }

        public a i(@IntRange(from = 1, to = 31) @Nullable Integer num) {
            this.fk = num;
            return this;
        }

        public a j(@Nullable CharSequence charSequence) {
            this.fn = charSequence;
            return this;
        }

        public a j(@Nullable Integer num) {
            this.fo = num;
            return this;
        }

        public a k(@Nullable CharSequence charSequence) {
            this.fq = charSequence;
            return this;
        }

        public a k(@Nullable Integer num) {
            this.fp = num;
            return this;
        }

        public a l(@Nullable CharSequence charSequence) {
            this.fr = charSequence;
            return this;
        }
    }

    private ac(a aVar) {
        this.eN = aVar.eN;
        this.eO = aVar.eO;
        this.eP = aVar.eP;
        this.eQ = aVar.eQ;
        this.eR = aVar.eR;
        this.eS = aVar.eS;
        this.eT = aVar.eT;
        this.eU = aVar.eU;
        this.eV = aVar.eV;
        this.eW = aVar.eW;
        this.eX = aVar.eX;
        this.eY = aVar.eY;
        this.eZ = aVar.eZ;
        this.fa = aVar.fa;
        this.fb = aVar.fb;
        this.fc = aVar.fc;
        this.fd = aVar.fd;
        this.fe = aVar.ff;
        this.ff = aVar.ff;
        this.fg = aVar.fg;
        this.fh = aVar.fh;
        this.fi = aVar.fi;
        this.fj = aVar.fj;
        this.fk = aVar.fk;
        this.fl = aVar.fl;
        this.fm = aVar.fm;
        this.fn = aVar.fn;
        this.fo = aVar.fo;
        this.fp = aVar.fp;
        this.fq = aVar.fq;
        this.fr = aVar.fr;
        this.fs = aVar.fs;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ac g(Bundle bundle) {
        Bundle bundle2;
        Bundle bundle3;
        a aVar = new a();
        aVar.a(bundle.getCharSequence(t(0))).b(bundle.getCharSequence(t(1))).c(bundle.getCharSequence(t(2))).d(bundle.getCharSequence(t(3))).e(bundle.getCharSequence(t(4))).f(bundle.getCharSequence(t(5))).g(bundle.getCharSequence(t(6))).c((Uri) bundle.getParcelable(t(7))).a(bundle.getByteArray(t(10)), bundle.containsKey(t(29)) ? Integer.valueOf(bundle.getInt(t(29))) : null).d((Uri) bundle.getParcelable(t(11))).h(bundle.getCharSequence(t(22))).i(bundle.getCharSequence(t(23))).j(bundle.getCharSequence(t(24))).k(bundle.getCharSequence(t(27))).l(bundle.getCharSequence(t(28))).h(bundle.getBundle(t(1000)));
        if (bundle.containsKey(t(8)) && (bundle3 = bundle.getBundle(t(8))) != null) {
            aVar.a((aq) aq.br.fromBundle(bundle3));
        }
        if (bundle.containsKey(t(9)) && (bundle2 = bundle.getBundle(t(9))) != null) {
            aVar.b((aq) aq.br.fromBundle(bundle2));
        }
        if (bundle.containsKey(t(12))) {
            aVar.a(Integer.valueOf(bundle.getInt(t(12))));
        }
        if (bundle.containsKey(t(13))) {
            aVar.b(Integer.valueOf(bundle.getInt(t(13))));
        }
        if (bundle.containsKey(t(14))) {
            aVar.c(Integer.valueOf(bundle.getInt(t(14))));
        }
        if (bundle.containsKey(t(15))) {
            aVar.a(Boolean.valueOf(bundle.getBoolean(t(15))));
        }
        if (bundle.containsKey(t(16))) {
            aVar.d(Integer.valueOf(bundle.getInt(t(16))));
        }
        if (bundle.containsKey(t(17))) {
            aVar.e(Integer.valueOf(bundle.getInt(t(17))));
        }
        if (bundle.containsKey(t(18))) {
            aVar.f(Integer.valueOf(bundle.getInt(t(18))));
        }
        if (bundle.containsKey(t(19))) {
            aVar.g(Integer.valueOf(bundle.getInt(t(19))));
        }
        if (bundle.containsKey(t(20))) {
            aVar.h(Integer.valueOf(bundle.getInt(t(20))));
        }
        if (bundle.containsKey(t(21))) {
            aVar.i(Integer.valueOf(bundle.getInt(t(21))));
        }
        if (bundle.containsKey(t(25))) {
            aVar.j(Integer.valueOf(bundle.getInt(t(25))));
        }
        if (bundle.containsKey(t(26))) {
            aVar.k(Integer.valueOf(bundle.getInt(t(26))));
        }
        return aVar.cc();
    }

    private static String t(int i) {
        return Integer.toString(i, 36);
    }

    public a cb() {
        return new a();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ac.class != obj.getClass()) {
            return false;
        }
        ac acVar = (ac) obj;
        return com.applovin.exoplayer2.l.ai.r(this.eN, acVar.eN) && com.applovin.exoplayer2.l.ai.r(this.eO, acVar.eO) && com.applovin.exoplayer2.l.ai.r(this.eP, acVar.eP) && com.applovin.exoplayer2.l.ai.r(this.eQ, acVar.eQ) && com.applovin.exoplayer2.l.ai.r(this.eR, acVar.eR) && com.applovin.exoplayer2.l.ai.r(this.eS, acVar.eS) && com.applovin.exoplayer2.l.ai.r(this.eT, acVar.eT) && com.applovin.exoplayer2.l.ai.r(this.eU, acVar.eU) && com.applovin.exoplayer2.l.ai.r(this.eV, acVar.eV) && com.applovin.exoplayer2.l.ai.r(this.eW, acVar.eW) && Arrays.equals(this.eX, acVar.eX) && com.applovin.exoplayer2.l.ai.r(this.eY, acVar.eY) && com.applovin.exoplayer2.l.ai.r(this.eZ, acVar.eZ) && com.applovin.exoplayer2.l.ai.r(this.fa, acVar.fa) && com.applovin.exoplayer2.l.ai.r(this.fb, acVar.fb) && com.applovin.exoplayer2.l.ai.r(this.fc, acVar.fc) && com.applovin.exoplayer2.l.ai.r(this.fd, acVar.fd) && com.applovin.exoplayer2.l.ai.r(this.ff, acVar.ff) && com.applovin.exoplayer2.l.ai.r(this.fg, acVar.fg) && com.applovin.exoplayer2.l.ai.r(this.fh, acVar.fh) && com.applovin.exoplayer2.l.ai.r(this.fi, acVar.fi) && com.applovin.exoplayer2.l.ai.r(this.fj, acVar.fj) && com.applovin.exoplayer2.l.ai.r(this.fk, acVar.fk) && com.applovin.exoplayer2.l.ai.r(this.fl, acVar.fl) && com.applovin.exoplayer2.l.ai.r(this.fm, acVar.fm) && com.applovin.exoplayer2.l.ai.r(this.fn, acVar.fn) && com.applovin.exoplayer2.l.ai.r(this.fo, acVar.fo) && com.applovin.exoplayer2.l.ai.r(this.fp, acVar.fp) && com.applovin.exoplayer2.l.ai.r(this.fq, acVar.fq) && com.applovin.exoplayer2.l.ai.r(this.fr, acVar.fr);
    }

    public int hashCode() {
        return Objects.hashCode(this.eN, this.eO, this.eP, this.eQ, this.eR, this.eS, this.eT, this.eU, this.eV, this.eW, Integer.valueOf(Arrays.hashCode(this.eX)), this.eY, this.eZ, this.fa, this.fb, this.fc, this.fd, this.ff, this.fg, this.fh, this.fi, this.fj, this.fk, this.fl, this.fm, this.fn, this.fo, this.fp, this.fq, this.fr);
    }
}

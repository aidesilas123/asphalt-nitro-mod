package com.google.zxing.qrcode.encoder;

import com.google.zxing.g;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import com.google.zxing.qrcode.decoder.Version;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class MinimalEncoder {
    private final String a;
    private final boolean b;
    private final com.google.zxing.common.d c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ErrorCorrectionLevel f4427d;

    private enum VersionSize {
        SMALL("version 1-9"),
        MEDIUM("version 10-26"),
        LARGE("version 27-40");


        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f4429e;

        VersionSize(String str) {
            this.f4429e = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f4429e;
        }
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;
        static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[Mode.values().length];
            b = iArr;
            try {
                iArr[Mode.KANJI.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[Mode.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[Mode.NUMERIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[Mode.BYTE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                b[Mode.ECI.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[VersionSize.values().length];
            a = iArr2;
            try {
                iArr2[VersionSize.SMALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[VersionSize.MEDIUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[VersionSize.LARGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private final class b {
        private final Mode a;
        private final int b;
        private final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f4430d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final b f4431e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f4432f;

        private b(Mode mode, int i, int i2, int i3, b bVar, Version version) {
            this.a = mode;
            this.b = i;
            Mode mode2 = Mode.BYTE;
            int i4 = (mode == mode2 || bVar == null) ? i2 : bVar.c;
            this.c = i4;
            this.f4430d = i3;
            this.f4431e = bVar;
            boolean z = false;
            int iF = bVar != null ? bVar.f4432f : 0;
            if ((mode == mode2 && bVar == null && i4 != 0) || (bVar != null && i4 != bVar.c)) {
                z = true;
            }
            iF = (bVar == null || mode != bVar.a || z) ? iF + mode.f(version) + 4 : iF;
            int i5 = a.b[mode.ordinal()];
            if (i5 == 1) {
                iF += 13;
            } else if (i5 == 2) {
                iF += i3 == 1 ? 6 : 11;
            } else if (i5 == 3) {
                iF += i3 != 1 ? i3 == 2 ? 7 : 10 : 4;
            } else if (i5 == 4) {
                iF += MinimalEncoder.this.c.c(MinimalEncoder.this.a.substring(i, i3 + i), i2).length * 8;
                if (z) {
                    iF += 12;
                }
            }
            this.f4432f = iF;
        }

        /* synthetic */ b(MinimalEncoder minimalEncoder, Mode mode, int i, int i2, int i3, b bVar, Version version, a aVar) {
            this(mode, i, i2, i3, bVar, version);
        }
    }

    final class c {
        private final List<a> a = new ArrayList();
        private final Version b;

        final class a {
            private final Mode a;
            private final int b;
            private final int c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final int f4434d;

            a(Mode mode, int i, int i2, int i3) {
                this.a = mode;
                this.b = i;
                this.c = i2;
                this.f4434d = i3;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void d(com.google.zxing.common.a aVar) throws g {
                aVar.e(this.a.e(), 4);
                if (this.f4434d > 0) {
                    aVar.e(e(), this.a.f(c.this.b));
                }
                if (this.a == Mode.ECI) {
                    aVar.e(MinimalEncoder.this.c.e(this.c), 8);
                } else if (this.f4434d > 0) {
                    String str = MinimalEncoder.this.a;
                    int i = this.b;
                    Encoder.c(str.substring(i, this.f4434d + i), this.a, aVar, MinimalEncoder.this.c.d(this.c));
                }
            }

            private int e() {
                if (this.a != Mode.BYTE) {
                    return this.f4434d;
                }
                com.google.zxing.common.d dVar = MinimalEncoder.this.c;
                String str = MinimalEncoder.this.a;
                int i = this.b;
                return dVar.c(str.substring(i, this.f4434d + i), this.c).length;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public int f(Version version) {
                int iE = 4;
                int iF = this.a.f(version) + 4;
                int i = a.b[this.a.ordinal()];
                if (i != 1) {
                    if (i == 2) {
                        int i2 = this.f4434d;
                        return iF + ((i2 / 2) * 11) + (i2 % 2 == 1 ? 6 : 0);
                    }
                    if (i == 3) {
                        int i3 = this.f4434d;
                        iF += (i3 / 3) * 10;
                        int i4 = i3 % 3;
                        if (i4 != 1) {
                            iE = i4 == 2 ? 7 : 0;
                        }
                    } else {
                        if (i != 4) {
                            return i != 5 ? iF : iF + 8;
                        }
                        iE = e() * 8;
                    }
                } else {
                    iE = this.f4434d * 13;
                }
                return iF + iE;
            }

            private String g(String str) {
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < str.length(); i++) {
                    if (str.charAt(i) < ' ' || str.charAt(i) > '~') {
                        sb.append('.');
                    } else {
                        sb.append(str.charAt(i));
                    }
                }
                return sb.toString();
            }

            public String toString() {
                StringBuilder sb = new StringBuilder();
                sb.append(this.a);
                sb.append('(');
                if (this.a == Mode.ECI) {
                    sb.append(MinimalEncoder.this.c.d(this.c).displayName());
                } else {
                    String str = MinimalEncoder.this.a;
                    int i = this.b;
                    sb.append(g(str.substring(i, this.f4434d + i)));
                }
                sb.append(')');
                return sb.toString();
            }
        }

        c(Version version, b bVar) {
            int i;
            int i2;
            int i3 = 0;
            boolean z = false;
            while (true) {
                i = 1;
                if (bVar == null) {
                    break;
                }
                int i4 = i3 + bVar.f4430d;
                b bVar2 = bVar.f4431e;
                boolean z2 = (bVar.a == Mode.BYTE && bVar2 == null && bVar.c != 0) || !(bVar2 == null || bVar.c == bVar2.c);
                z = z2 ? true : z;
                if (bVar2 == null || bVar2.a != bVar.a || z2) {
                    this.a.add(0, new a(bVar.a, bVar.b, bVar.c, i4));
                    i4 = 0;
                }
                if (z2) {
                    this.a.add(0, new a(Mode.ECI, bVar.b, bVar.c, 0));
                }
                bVar = bVar2;
                i3 = i4;
            }
            if (MinimalEncoder.this.b) {
                a aVar = this.a.get(0);
                if (aVar != null) {
                    Mode mode = aVar.a;
                    Mode mode2 = Mode.ECI;
                    if (mode != mode2 && z) {
                        this.a.add(0, new a(mode2, 0, 0, 0));
                    }
                }
                this.a.add(this.a.get(0).a == Mode.ECI ? 1 : 0, new a(Mode.FNC1_FIRST_POSITION, 0, 0, 0));
            }
            int iE = version.e();
            int i5 = a.a[MinimalEncoder.m(version).ordinal()];
            if (i5 == 1) {
                i2 = 9;
            } else if (i5 != 2) {
                i = 27;
                i2 = 40;
            } else {
                i = 10;
                i2 = 26;
            }
            int iD = d(version);
            while (iE < i2 && !Encoder.u(iD, Version.getVersionForNumber(iE), MinimalEncoder.this.f4427d)) {
                iE++;
            }
            while (iE > i && Encoder.u(iD, Version.getVersionForNumber(iE - 1), MinimalEncoder.this.f4427d)) {
                iE--;
            }
            this.b = Version.getVersionForNumber(iE);
        }

        private int d(Version version) {
            Iterator<a> it = this.a.iterator();
            int iF = 0;
            while (it.hasNext()) {
                iF += it.next().f(version);
            }
            return iF;
        }

        void b(com.google.zxing.common.a aVar) throws g {
            Iterator<a> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().d(aVar);
            }
        }

        int c() {
            return d(this.b);
        }

        Version e() {
            return this.b;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            a aVar = null;
            for (a aVar2 : this.a) {
                if (aVar != null) {
                    sb.append(",");
                }
                sb.append(aVar2.toString());
                aVar = aVar2;
            }
            return sb.toString();
        }
    }

    MinimalEncoder(String str, Charset charset, boolean z, ErrorCorrectionLevel errorCorrectionLevel) {
        this.a = str;
        this.b = z;
        this.c = new com.google.zxing.common.d(str, charset, -1);
        this.f4427d = errorCorrectionLevel;
    }

    static c i(String str, Version version, Charset charset, boolean z, ErrorCorrectionLevel errorCorrectionLevel) throws g {
        return new MinimalEncoder(str, charset, z, errorCorrectionLevel).h(version);
    }

    static int k(Mode mode) {
        int i;
        if (mode == null || (i = a.b[mode.ordinal()]) == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 3) {
            return 2;
        }
        if (i == 4) {
            return 3;
        }
        throw new IllegalStateException("Illegal mode " + mode);
    }

    static Version l(VersionSize versionSize) {
        int i = a.a[versionSize.ordinal()];
        return i != 1 ? i != 2 ? Version.getVersionForNumber(40) : Version.getVersionForNumber(26) : Version.getVersionForNumber(9);
    }

    static VersionSize m(Version version) {
        return version.e() <= 9 ? VersionSize.SMALL : version.e() <= 26 ? VersionSize.MEDIUM : VersionSize.LARGE;
    }

    static boolean n(char c2) {
        return Encoder.o(c2) != -1;
    }

    static boolean o(char c2) {
        return Encoder.r(String.valueOf(c2));
    }

    static boolean p(char c2) {
        return c2 >= '0' && c2 <= '9';
    }

    void e(b[][][] bVarArr, int i, b bVar) {
        b[] bVarArr2 = bVarArr[i + bVar.f4430d][bVar.c];
        int iK = k(bVar.a);
        if (bVarArr2[iK] == null || bVarArr2[iK].f4432f > bVar.f4432f) {
            bVarArr2[iK] = bVar;
        }
    }

    void f(Version version, b[][][] bVarArr, int i, b bVar) {
        int i2;
        int iG = this.c.g();
        int iF = this.c.f();
        if (iF < 0 || !this.c.a(this.a.charAt(i), iF)) {
            iF = 0;
        } else {
            iG = iF + 1;
        }
        int i3 = iG;
        for (int i4 = iF; i4 < i3; i4++) {
            if (this.c.a(this.a.charAt(i), i4)) {
                e(bVarArr, i, new b(this, Mode.BYTE, i, i4, 1, bVar, version, null));
            }
        }
        Mode mode = Mode.KANJI;
        if (g(mode, this.a.charAt(i))) {
            e(bVarArr, i, new b(this, mode, i, 0, 1, bVar, version, null));
        }
        int length = this.a.length();
        Mode mode2 = Mode.ALPHANUMERIC;
        if (g(mode2, this.a.charAt(i))) {
            int i5 = i + 1;
            e(bVarArr, i, new b(this, mode2, i, 0, (i5 >= length || !g(mode2, this.a.charAt(i5))) ? 1 : 2, bVar, version, null));
        }
        Mode mode3 = Mode.NUMERIC;
        if (g(mode3, this.a.charAt(i))) {
            int i6 = 0;
            int i7 = i + 1;
            if (i7 >= length || !g(mode3, this.a.charAt(i7))) {
                i2 = 1;
            } else {
                int i8 = i + 2;
                i2 = (i8 >= length || !g(mode3, this.a.charAt(i8))) ? 2 : 3;
            }
            e(bVarArr, i, new b(this, mode3, i, i6, i2, bVar, version, null));
        }
    }

    boolean g(Mode mode, char c2) {
        int i = a.b[mode.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i == 4 : p(c2) : n(c2) : o(c2);
    }

    c h(Version version) throws g {
        if (version != null) {
            c cVarJ = j(version);
            if (Encoder.u(cVarJ.c(), l(m(cVarJ.e())), this.f4427d)) {
                return cVarJ;
            }
            throw new g("Data too big for version" + version);
        }
        Version[] versionArr = {l(VersionSize.SMALL), l(VersionSize.MEDIUM), l(VersionSize.LARGE)};
        c[] cVarArr = {j(versionArr[0]), j(versionArr[1]), j(versionArr[2])};
        int i = Integer.MAX_VALUE;
        int i2 = -1;
        for (int i3 = 0; i3 < 3; i3++) {
            int iC = cVarArr[i3].c();
            if (Encoder.u(iC, versionArr[i3], this.f4427d) && iC < i) {
                i2 = i3;
                i = iC;
            }
        }
        if (i2 >= 0) {
            return cVarArr[i2];
        }
        throw new g("Data too big for any version");
    }

    c j(Version version) throws g {
        int length = this.a.length();
        b[][][] bVarArr = (b[][][]) Array.newInstance((Class<?>) b.class, length + 1, this.c.g(), 4);
        f(version, bVarArr, 0, null);
        for (int i = 1; i <= length; i++) {
            for (int i2 = 0; i2 < this.c.g(); i2++) {
                for (int i3 = 0; i3 < 4; i3++) {
                    if (bVarArr[i][i2][i3] != null && i < length) {
                        f(version, bVarArr, i, bVarArr[i][i2][i3]);
                    }
                }
            }
        }
        int i4 = Integer.MAX_VALUE;
        int i5 = -1;
        int i6 = -1;
        for (int i7 = 0; i7 < this.c.g(); i7++) {
            for (int i8 = 0; i8 < 4; i8++) {
                if (bVarArr[length][i7][i8] != null) {
                    b bVar = bVarArr[length][i7][i8];
                    if (bVar.f4432f < i4) {
                        i4 = bVar.f4432f;
                        i5 = i7;
                        i6 = i8;
                    }
                }
            }
        }
        if (i5 >= 0) {
            return new c(version, bVarArr[length][i5][i6]);
        }
        throw new g("Internal error: failed to encode \"" + this.a + "\"");
    }
}

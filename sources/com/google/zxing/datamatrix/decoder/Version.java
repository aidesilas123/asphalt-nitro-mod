package com.google.zxing.datamatrix.decoder;

import com.google.zxing.FormatException;
import com.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
public final class Version {
    private static final Version[] a = a();
    private final int b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f4340d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f4341e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f4342f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final c f4343g;
    private final int h;

    static final class b {
        private final int a;
        private final int b;

        private b(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        int a() {
            return this.a;
        }

        int b() {
            return this.b;
        }
    }

    static final class c {
        private final int a;
        private final b[] b;

        private c(int i, b bVar) {
            this.a = i;
            this.b = new b[]{bVar};
        }

        private c(int i, b bVar, b bVar2) {
            this.a = i;
            this.b = new b[]{bVar, bVar2};
        }

        b[] a() {
            return this.b;
        }

        int b() {
            return this.a;
        }
    }

    private Version(int i, int i2, int i3, int i4, int i5, c cVar) {
        this.b = i;
        this.c = i2;
        this.f4340d = i3;
        this.f4341e = i4;
        this.f4342f = i5;
        this.f4343g = cVar;
        int iB = cVar.b();
        int iA = 0;
        for (b bVar : cVar.a()) {
            iA += bVar.a() * (bVar.b() + iB);
        }
        this.h = iA;
    }

    private static Version[] a() {
        int i = 48;
        int i2 = 1;
        int i3 = 5;
        int i4 = 8;
        Version version = new Version(3, 14, 14, 12, 12, new c(10, new b(i2, i4)));
        int i5 = 2;
        int i6 = 12;
        int i7 = 18;
        Version version2 = new Version(5, 18, 18, 16, 16, new c(14, new b(i2, 18)));
        int i8 = 4;
        int i9 = 36;
        b bVar = new b(i2, 44);
        int i10 = 62;
        b bVar2 = new b(i2, 86);
        int i11 = 42;
        b bVar3 = new b(i2, 144);
        int i12 = 56;
        b bVar4 = new b(i2, 174);
        Version version3 = new Version(15, 52, 52, 24, 24, new c(i11, new b(i5, 102)));
        b bVar5 = new b(6, 175);
        Version version4 = new Version(23, 132, 132, 20, 20, new c(i10, new b(i4, 163)));
        int i13 = 22;
        b bVar6 = new b(i2, 5);
        b bVar7 = new b(i2, 10);
        int i14 = 32;
        int i15 = 38;
        return new Version[]{new Version(1, 10, 10, 8, 8, new c(i3, new b(i2, 3))), new Version(2, 12, 12, 10, 10, new c(7, new b(i2, i3))), version, new Version(4, 16, 16, 14, 14, new c(i6, new b(i2, i6))), version2, new Version(6, 20, 20, 18, 18, new c(i7, new b(i2, 22))), new Version(7, 22, 22, 20, 20, new c(20, new b(i2, 30))), new Version(8, 24, 24, 22, 22, new c(24, new b(i2, i9))), new Version(9, 26, 26, 24, 24, new c(28, bVar)), new Version(10, 32, 32, 14, 14, new c(i9, new b(i2, i10))), new Version(11, 36, 36, 16, 16, new c(i11, bVar2)), new Version(12, 40, 40, 18, 18, new c(i, new b(i2, 114))), new Version(13, 44, 44, 20, 20, new c(i12, bVar3)), new Version(14, 48, 48, 22, 22, new c(68, bVar4)), version3, new Version(16, 64, 64, 14, 14, new c(i12, new b(i5, IronSourceConstants.USING_CACHE_FOR_INIT_EVENT))), new Version(17, 72, 72, 16, 16, new c(i9, new b(i8, 92))), new Version(18, 80, 80, 18, 18, new c(i, new b(i8, 114))), new Version(19, 88, 88, 20, 20, new c(i12, new b(i8, 144))), new Version(20, 96, 96, 22, 22, new c(68, new b(i8, 174))), new Version(21, 104, 104, 24, 24, new c(i12, new b(6, 136))), new Version(22, 120, 120, 18, 18, new c(68, bVar5)), version4, new Version(24, 144, 144, 22, 22, new c(i10, new b(i4, 156), new b(i5, 155))), new Version(25, 8, 18, 6, 16, new c(7, bVar6)), new Version(26, 8, 32, 6, 14, new c(11, bVar7)), new Version(27, 12, 26, 10, 24, new c(14, new b(i2, 16))), new Version(28, 12, 36, 10, 16, new c(i7, new b(i2, i13))), new Version(29, 16, 36, 14, 16, new c(24, new b(i2, i14))), new Version(30, 16, 48, 14, 22, new c(28, new b(i2, 49))), new Version(31, 8, 48, 6, 22, new c(15, new b(i2, i7))), new Version(32, 8, 64, 6, 14, new c(i7, new b(i2, 24))), new Version(33, 8, 80, 6, 18, new c(i13, new b(i2, i14))), new Version(34, 8, 96, 6, 22, new c(28, new b(i2, i15))), new Version(35, 8, 120, 6, 18, new c(i14, new b(i2, 49))), new Version(36, 8, 144, 6, 22, new c(i9, new b(i2, 63))), new Version(37, 12, 64, 10, 14, new c(27, new b(i2, 43))), new Version(38, 12, 88, 10, 20, new c(i9, new b(i2, 64))), new Version(39, 16, 64, 14, 14, new c(i9, new b(i2, i10))), new Version(40, 20, 36, 18, 16, new c(28, new b(i2, 44))), new Version(41, 20, 44, 18, 20, new c(34, new b(i2, i12))), new Version(42, 20, 64, 18, 14, new c(42, new b(i2, 84))), new Version(43, 22, 48, 20, 22, new c(i15, new b(i2, 72))), new Version(44, 24, 48, 22, 22, new c(41, new b(i2, 80))), new Version(45, 24, 64, 22, 14, new c(46, new b(i2, 108))), new Version(46, 26, 40, 24, 18, new c(i15, new b(i2, 70))), new Version(47, 26, 48, 24, 22, new c(42, new b(i2, 90))), new Version(48, 26, 64, 24, 14, new c(50, new b(i2, 118)))};
    }

    public static Version getVersionForDimensions(int i, int i2) throws FormatException {
        if ((i & 1) != 0 || (i2 & 1) != 0) {
            throw FormatException.getFormatInstance();
        }
        for (Version version : a) {
            if (version.c == i && version.f4340d == i2) {
                return version;
            }
        }
        throw FormatException.getFormatInstance();
    }

    public String toString() {
        return String.valueOf(this.b);
    }
}

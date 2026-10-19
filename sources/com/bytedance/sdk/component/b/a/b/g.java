package com.bytedance.sdk.component.b.a.b;

import java.util.Arrays;

/* JADX INFO: compiled from: SegmentedByteString.java */
/* JADX INFO: loaded from: classes2.dex */
final class g extends d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final transient byte[][] f902g;
    final transient int[] h;

    g(a aVar, int i) {
        super(null);
        i.a(aVar.b, 0L, i);
        e eVar = aVar.a;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            int i5 = eVar.c;
            int i6 = eVar.b;
            if (i5 == i6) {
                throw new AssertionError("s.limit == s.pos");
            }
            i3 += i5 - i6;
            i4++;
            eVar = eVar.f900f;
        }
        this.f902g = new byte[i4][];
        this.h = new int[i4 * 2];
        e eVar2 = aVar.a;
        int i7 = 0;
        while (i2 < i) {
            byte[][] bArr = this.f902g;
            bArr[i7] = eVar2.a;
            int i8 = eVar2.c;
            int i9 = eVar2.b;
            i2 += i8 - i9;
            if (i2 > i) {
                i2 = i;
            }
            int[] iArr = this.h;
            iArr[i7] = i2;
            iArr[bArr.length + i7] = i9;
            eVar2.f898d = true;
            i7++;
            eVar2 = eVar2.f900f;
        }
    }

    private int b(int i) {
        int iBinarySearch = Arrays.binarySearch(this.h, 0, this.f902g.length, i + 1);
        return iBinarySearch >= 0 ? iBinarySearch : ~iBinarySearch;
    }

    private d e() {
        return new d(d());
    }

    @Override // com.bytedance.sdk.component.b.a.b.d
    public byte a(int i) {
        i.a(this.h[this.f902g.length - 1], i, 1L);
        int iB = b(i);
        int i2 = iB == 0 ? 0 : this.h[iB - 1];
        int[] iArr = this.h;
        byte[][] bArr = this.f902g;
        return bArr[iB][(i - i2) + iArr[bArr.length + iB]];
    }

    @Override // com.bytedance.sdk.component.b.a.b.d
    public d a(int i, int i2) {
        return e().a(i, i2);
    }

    @Override // com.bytedance.sdk.component.b.a.b.d
    public String a() {
        return e().a();
    }

    @Override // com.bytedance.sdk.component.b.a.b.d
    public boolean a(int i, d dVar, int i2, int i3) {
        if (i < 0 || i > c() - i3) {
            return false;
        }
        int iB = b(i);
        while (i3 > 0) {
            int i4 = iB == 0 ? 0 : this.h[iB - 1];
            int iMin = Math.min(i3, ((this.h[iB] - i4) + i4) - i);
            int[] iArr = this.h;
            byte[][] bArr = this.f902g;
            if (!dVar.a(i2, bArr[iB], (i - i4) + iArr[bArr.length + iB], iMin)) {
                return false;
            }
            i += iMin;
            i2 += iMin;
            i3 -= iMin;
            iB++;
        }
        return true;
    }

    @Override // com.bytedance.sdk.component.b.a.b.d
    public boolean a(int i, byte[] bArr, int i2, int i3) {
        if (i < 0 || i > c() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int iB = b(i);
        while (i3 > 0) {
            int i4 = iB == 0 ? 0 : this.h[iB - 1];
            int iMin = Math.min(i3, ((this.h[iB] - i4) + i4) - i);
            int[] iArr = this.h;
            byte[][] bArr2 = this.f902g;
            if (!i.a(bArr2[iB], (i - i4) + iArr[bArr2.length + iB], bArr, i2, iMin)) {
                return false;
            }
            i += iMin;
            i2 += iMin;
            i3 -= iMin;
            iB++;
        }
        return true;
    }

    @Override // com.bytedance.sdk.component.b.a.b.d
    public String b() {
        return e().b();
    }

    @Override // com.bytedance.sdk.component.b.a.b.d
    public int c() {
        return this.h[this.f902g.length - 1];
    }

    @Override // com.bytedance.sdk.component.b.a.b.d
    public byte[] d() {
        int[] iArr = this.h;
        byte[][] bArr = this.f902g;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr2 = this.h;
            int i3 = iArr2[length + i];
            int i4 = iArr2[i];
            System.arraycopy(this.f902g[i], i3, bArr2, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return bArr2;
    }

    @Override // com.bytedance.sdk.component.b.a.b.d
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            if (dVar.c() == c() && a(0, dVar, 0, c())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bytedance.sdk.component.b.a.b.d
    public int hashCode() {
        int i = this.f896e;
        if (i != 0) {
            return i;
        }
        int length = this.f902g.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 1;
        while (i2 < length) {
            byte[] bArr = this.f902g[i2];
            int[] iArr = this.h;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            int i7 = (i6 - i3) + i5;
            while (i5 < i7) {
                i4 = (i4 * 31) + bArr[i5];
                i5++;
            }
            i2++;
            i3 = i6;
        }
        this.f896e = i4;
        return i4;
    }

    @Override // com.bytedance.sdk.component.b.a.b.d
    public String toString() {
        return e().toString();
    }
}

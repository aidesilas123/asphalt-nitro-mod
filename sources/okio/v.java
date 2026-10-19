package okio;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import okio.internal._SegmentedByteStringKt;

/* JADX INFO: compiled from: SegmentedByteString.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class v extends ByteString {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final transient byte[][] f10902f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final transient int[] f10903g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(byte[][] segments, int[] directory) {
        super(ByteString.b.k());
        Intrinsics.checkNotNullParameter(segments, "segments");
        Intrinsics.checkNotNullParameter(directory, "directory");
        this.f10902f = segments;
        this.f10903g = directory;
    }

    private final ByteString O() {
        return new ByteString(J());
    }

    private final Object writeReplace() {
        return O();
    }

    @Override // okio.ByteString
    public boolean A(int i, byte[] other, int i2, int i3) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (i < 0 || i > F() - i3 || i2 < 0 || i2 > other.length - i3) {
            return false;
        }
        int i4 = i3 + i;
        int iSegment = _SegmentedByteStringKt.segment(this, i);
        while (i < i4) {
            int i5 = iSegment == 0 ? 0 : M()[iSegment - 1];
            int i6 = M()[iSegment] - i5;
            int i7 = M()[N().length + iSegment];
            int iMin = Math.min(i4, i6 + i5) - i;
            if (!_UtilKt.arrayRangeEquals(N()[iSegment], i7 + (i - i5), other, i2, iMin)) {
                return false;
            }
            i2 += iMin;
            i += iMin;
            iSegment++;
        }
        return true;
    }

    @Override // okio.ByteString
    public ByteString H(int i, int i2) {
        int iResolveDefaultParameter = _UtilKt.resolveDefaultParameter(this, i2);
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("beginIndex=" + i + " < 0").toString());
        }
        if (!(iResolveDefaultParameter <= F())) {
            throw new IllegalArgumentException(("endIndex=" + iResolveDefaultParameter + " > length(" + F() + ')').toString());
        }
        int i3 = iResolveDefaultParameter - i;
        if (!(i3 >= 0)) {
            throw new IllegalArgumentException(("endIndex=" + iResolveDefaultParameter + " < beginIndex=" + i).toString());
        }
        if (i == 0 && iResolveDefaultParameter == F()) {
            return this;
        }
        if (i == iResolveDefaultParameter) {
            return ByteString.b;
        }
        int iSegment = _SegmentedByteStringKt.segment(this, i);
        int iSegment2 = _SegmentedByteStringKt.segment(this, iResolveDefaultParameter - 1);
        byte[][] bArr = (byte[][]) kotlin.collections.k.copyOfRange(N(), iSegment, iSegment2 + 1);
        int[] iArr = new int[bArr.length * 2];
        if (iSegment <= iSegment2) {
            int i4 = iSegment;
            int i5 = 0;
            while (true) {
                int i6 = i4 + 1;
                iArr[i5] = Math.min(M()[i4] - i, i3);
                int i7 = i5 + 1;
                iArr[i5 + bArr.length] = M()[N().length + i4];
                if (i4 == iSegment2) {
                    break;
                }
                i4 = i6;
                i5 = i7;
            }
        }
        int i8 = iSegment != 0 ? M()[iSegment - 1] : 0;
        int length = bArr.length;
        iArr[length] = iArr[length] + (i - i8);
        return new v(bArr, iArr);
    }

    @Override // okio.ByteString
    public ByteString I() {
        return O().I();
    }

    @Override // okio.ByteString
    public byte[] J() {
        byte[] bArr = new byte[F()];
        int length = N().length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int i4 = M()[length + i];
            int i5 = M()[i];
            int i6 = i5 - i2;
            ArraysKt___ArraysJvmKt.copyInto(N()[i], bArr, i3, i4, i4 + i6);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }

    @Override // okio.ByteString
    public void L(Buffer buffer, int i, int i2) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        int i3 = i + i2;
        int iSegment = _SegmentedByteStringKt.segment(this, i);
        while (i < i3) {
            int i4 = iSegment == 0 ? 0 : M()[iSegment - 1];
            int i5 = M()[iSegment] - i4;
            int i6 = M()[N().length + iSegment];
            int iMin = Math.min(i3, i5 + i4) - i;
            int i7 = i6 + (i - i4);
            u uVar = new u(N()[iSegment], i7, i7 + iMin, true, false);
            u uVar2 = buffer.a;
            if (uVar2 == null) {
                uVar.h = uVar;
                uVar.f10901g = uVar;
                buffer.a = uVar;
            } else {
                Intrinsics.checkNotNull(uVar2);
                u uVar3 = uVar2.h;
                Intrinsics.checkNotNull(uVar3);
                uVar3.c(uVar);
            }
            i += iMin;
            iSegment++;
        }
        buffer.x(buffer.I() + ((long) i2));
    }

    public final int[] M() {
        return this.f10903g;
    }

    public final byte[][] N() {
        return this.f10902f;
    }

    @Override // okio.ByteString
    public String e() {
        return O().e();
    }

    @Override // okio.ByteString
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.F() == F() && z(0, byteString, 0, F())) {
                return true;
            }
        }
        return false;
    }

    @Override // okio.ByteString
    public void g(int i, byte[] target, int i2, int i3) {
        Intrinsics.checkNotNullParameter(target, "target");
        long j = i3;
        _UtilKt.checkOffsetAndCount(F(), i, j);
        _UtilKt.checkOffsetAndCount(target.length, i2, j);
        int i4 = i3 + i;
        int iSegment = _SegmentedByteStringKt.segment(this, i);
        while (i < i4) {
            int i5 = iSegment == 0 ? 0 : M()[iSegment - 1];
            int i6 = M()[iSegment] - i5;
            int i7 = M()[N().length + iSegment];
            int iMin = Math.min(i4, i6 + i5) - i;
            int i8 = i7 + (i - i5);
            ArraysKt___ArraysJvmKt.copyInto(N()[iSegment], target, i2, i8, i8 + iMin);
            i2 += iMin;
            i += iMin;
            iSegment++;
        }
    }

    @Override // okio.ByteString
    public ByteString h(String algorithm) throws NoSuchAlgorithmException {
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        int length = N().length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = M()[length + i];
            int i4 = M()[i];
            messageDigest.update(N()[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
        byte[] digestBytes = messageDigest.digest();
        Intrinsics.checkNotNullExpressionValue(digestBytes, "digestBytes");
        return new ByteString(digestBytes);
    }

    @Override // okio.ByteString
    public int hashCode() {
        int iM = m();
        if (iM != 0) {
            return iM;
        }
        int length = N().length;
        int i = 0;
        int i2 = 1;
        int i3 = 0;
        while (i < length) {
            int i4 = M()[length + i];
            int i5 = M()[i];
            byte[] bArr = N()[i];
            int i6 = (i5 - i3) + i4;
            while (i4 < i6) {
                i2 = (i2 * 31) + bArr[i4];
                i4++;
            }
            i++;
            i3 = i5;
        }
        B(i2);
        return i2;
    }

    @Override // okio.ByteString
    public int n() {
        return M()[N().length - 1];
    }

    @Override // okio.ByteString
    public String q() {
        return O().q();
    }

    @Override // okio.ByteString
    public int t(byte[] other, int i) {
        Intrinsics.checkNotNullParameter(other, "other");
        return O().t(other, i);
    }

    @Override // okio.ByteString
    public String toString() {
        return O().toString();
    }

    @Override // okio.ByteString
    public byte[] u() {
        return J();
    }

    @Override // okio.ByteString
    public byte v(int i) {
        _UtilKt.checkOffsetAndCount(M()[N().length - 1], i, 1L);
        int iSegment = _SegmentedByteStringKt.segment(this, i);
        return N()[iSegment][(i - (iSegment == 0 ? 0 : M()[iSegment - 1])) + M()[N().length + iSegment]];
    }

    @Override // okio.ByteString
    public int x(byte[] other, int i) {
        Intrinsics.checkNotNullParameter(other, "other");
        return O().x(other, i);
    }

    @Override // okio.ByteString
    public boolean z(int i, ByteString other, int i2, int i3) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (i < 0 || i > F() - i3) {
            return false;
        }
        int i4 = i3 + i;
        int iSegment = _SegmentedByteStringKt.segment(this, i);
        while (i < i4) {
            int i5 = iSegment == 0 ? 0 : M()[iSegment - 1];
            int i6 = M()[iSegment] - i5;
            int i7 = M()[N().length + iSegment];
            int iMin = Math.min(i4, i6 + i5) - i;
            if (!other.A(i2, N()[iSegment], i7 + (i - i5), iMin)) {
                return false;
            }
            i2 += iMin;
            i += iMin;
            iSegment++;
        }
        return true;
    }
}

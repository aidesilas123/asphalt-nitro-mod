package kotlin.reflect.jvm.internal.impl.protobuf;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes5.dex */
public final class CodedOutputStream {
    private final byte[] a;
    private final int b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final OutputStream f9689e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f9688d = 0;
    private int c = 0;

    public static class a extends IOException {
        a() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }
    }

    private CodedOutputStream(OutputStream outputStream, byte[] bArr) {
        this.f9689e = outputStream;
        this.a = bArr;
        this.b = bArr.length;
    }

    static int a(int i) {
        if (i > 4096) {
            return 4096;
        }
        return i;
    }

    private void c() throws IOException {
        OutputStream outputStream = this.f9689e;
        if (outputStream == null) {
            throw new a();
        }
        outputStream.write(this.a, 0, this.c);
        this.c = 0;
    }

    public static int computeBoolSize(int i, boolean z) {
        return computeTagSize(i) + computeBoolSizeNoTag(z);
    }

    public static int computeBoolSizeNoTag(boolean z) {
        return 1;
    }

    public static int computeByteArraySizeNoTag(byte[] bArr) {
        return computeRawVarint32Size(bArr.length) + bArr.length;
    }

    public static int computeBytesSize(int i, ByteString byteString) {
        return computeTagSize(i) + computeBytesSizeNoTag(byteString);
    }

    public static int computeBytesSizeNoTag(ByteString byteString) {
        return computeRawVarint32Size(byteString.size()) + byteString.size();
    }

    public static int computeDoubleSize(int i, double d2) {
        return computeTagSize(i) + computeDoubleSizeNoTag(d2);
    }

    public static int computeDoubleSizeNoTag(double d2) {
        return 8;
    }

    public static int computeEnumSize(int i, int i2) {
        return computeTagSize(i) + computeEnumSizeNoTag(i2);
    }

    public static int computeEnumSizeNoTag(int i) {
        return computeInt32SizeNoTag(i);
    }

    public static int computeFixed32SizeNoTag(int i) {
        return 4;
    }

    public static int computeFixed64SizeNoTag(long j) {
        return 8;
    }

    public static int computeFloatSize(int i, float f2) {
        return computeTagSize(i) + computeFloatSizeNoTag(f2);
    }

    public static int computeFloatSizeNoTag(float f2) {
        return 4;
    }

    public static int computeGroupSizeNoTag(j jVar) {
        return jVar.getSerializedSize();
    }

    public static int computeInt32Size(int i, int i2) {
        return computeTagSize(i) + computeInt32SizeNoTag(i2);
    }

    public static int computeInt32SizeNoTag(int i) {
        if (i >= 0) {
            return computeRawVarint32Size(i);
        }
        return 10;
    }

    public static int computeInt64SizeNoTag(long j) {
        return computeRawVarint64Size(j);
    }

    public static int computeLazyFieldSizeNoTag(f fVar) {
        int iB = fVar.b();
        return computeRawVarint32Size(iB) + iB;
    }

    public static int computeMessageSize(int i, j jVar) {
        return computeTagSize(i) + computeMessageSizeNoTag(jVar);
    }

    public static int computeMessageSizeNoTag(j jVar) {
        int serializedSize = jVar.getSerializedSize();
        return computeRawVarint32Size(serializedSize) + serializedSize;
    }

    public static int computeRawVarint32Size(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    public static int computeRawVarint64Size(long j) {
        if (((-128) & j) == 0) {
            return 1;
        }
        if (((-16384) & j) == 0) {
            return 2;
        }
        if (((-2097152) & j) == 0) {
            return 3;
        }
        if (((-268435456) & j) == 0) {
            return 4;
        }
        if (((-34359738368L) & j) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j) == 0) {
            return 8;
        }
        return (j & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public static int computeSFixed32SizeNoTag(int i) {
        return 4;
    }

    public static int computeSFixed64SizeNoTag(long j) {
        return 8;
    }

    public static int computeSInt32SizeNoTag(int i) {
        return computeRawVarint32Size(encodeZigZag32(i));
    }

    public static int computeSInt64Size(int i, long j) {
        return computeTagSize(i) + computeSInt64SizeNoTag(j);
    }

    public static int computeSInt64SizeNoTag(long j) {
        return computeRawVarint64Size(encodeZigZag64(j));
    }

    public static int computeStringSizeNoTag(String str) {
        try {
            byte[] bytes = str.getBytes(C.UTF8_NAME);
            return computeRawVarint32Size(bytes.length) + bytes.length;
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("UTF-8 not supported.", e2);
        }
    }

    public static int computeTagSize(int i) {
        return computeRawVarint32Size(WireFormat.b(i, 0));
    }

    public static int computeUInt32SizeNoTag(int i) {
        return computeRawVarint32Size(i);
    }

    public static int computeUInt64SizeNoTag(long j) {
        return computeRawVarint64Size(j);
    }

    public static int encodeZigZag32(int i) {
        return (i >> 31) ^ (i << 1);
    }

    public static long encodeZigZag64(long j) {
        return (j >> 63) ^ (j << 1);
    }

    public static CodedOutputStream newInstance(OutputStream outputStream, int i) {
        return new CodedOutputStream(outputStream, new byte[i]);
    }

    public void A(ByteString byteString) throws IOException {
        B(byteString, 0, byteString.size());
    }

    public void B(ByteString byteString, int i, int i2) throws IOException {
        int i3 = this.b;
        int i4 = this.c;
        if (i3 - i4 >= i2) {
            byteString.d(this.a, i, i4, i2);
            this.c += i2;
            this.f9688d += i2;
            return;
        }
        int i5 = i3 - i4;
        byteString.d(this.a, i, i4, i5);
        int i6 = i + i5;
        int i7 = i2 - i5;
        this.c = this.b;
        this.f9688d += i5;
        c();
        if (i7 <= this.b) {
            byteString.d(this.a, i6, 0, i7);
            this.c = i7;
        } else {
            byteString.x(this.f9689e, i6, i7);
        }
        this.f9688d += i7;
    }

    public void C(byte[] bArr) throws IOException {
        D(bArr, 0, bArr.length);
    }

    public void D(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.b;
        int i4 = this.c;
        if (i3 - i4 >= i2) {
            System.arraycopy(bArr, i, this.a, i4, i2);
            this.c += i2;
            this.f9688d += i2;
            return;
        }
        int i5 = i3 - i4;
        System.arraycopy(bArr, i, this.a, i4, i5);
        int i6 = i + i5;
        int i7 = i2 - i5;
        this.c = this.b;
        this.f9688d += i5;
        c();
        if (i7 <= this.b) {
            System.arraycopy(bArr, i6, this.a, 0, i7);
            this.c = i7;
        } else {
            this.f9689e.write(bArr, i6, i7);
        }
        this.f9688d += i7;
    }

    public void E(int i) throws IOException {
        z(i & 255);
        z((i >> 8) & 255);
        z((i >> 16) & 255);
        z((i >> 24) & 255);
    }

    public void F(long j) throws IOException {
        z(((int) j) & 255);
        z(((int) (j >> 8)) & 255);
        z(((int) (j >> 16)) & 255);
        z(((int) (j >> 24)) & 255);
        z(((int) (j >> 32)) & 255);
        z(((int) (j >> 40)) & 255);
        z(((int) (j >> 48)) & 255);
        z(((int) (j >> 56)) & 255);
    }

    public void G(int i) throws IOException {
        while ((i & (-128)) != 0) {
            z((i & 127) | 128);
            i >>>= 7;
        }
        z(i);
    }

    public void H(long j) throws IOException {
        while (((-128) & j) != 0) {
            z((((int) j) & 127) | 128);
            j >>>= 7;
        }
        z((int) j);
    }

    public void I(int i) throws IOException {
        E(i);
    }

    public void J(long j) throws IOException {
        F(j);
    }

    public void K(int i) throws IOException {
        G(encodeZigZag32(i));
    }

    public void L(int i, long j) throws IOException {
        O(i, 0);
        M(j);
    }

    public void M(long j) throws IOException {
        H(encodeZigZag64(j));
    }

    public void N(String str) throws IOException {
        byte[] bytes = str.getBytes(C.UTF8_NAME);
        G(bytes.length);
        C(bytes);
    }

    public void O(int i, int i2) throws IOException {
        G(WireFormat.b(i, i2));
    }

    public void P(int i, int i2) throws IOException {
        O(i, 0);
        Q(i2);
    }

    public void Q(int i) throws IOException {
        G(i);
    }

    public void R(long j) throws IOException {
        H(j);
    }

    public void b() throws IOException {
        if (this.f9689e != null) {
            c();
        }
    }

    public void d(int i, boolean z) throws IOException {
        O(i, 0);
        e(z);
    }

    public void e(boolean z) throws IOException {
        z(z ? 1 : 0);
    }

    public void f(byte[] bArr) throws IOException {
        G(bArr.length);
        C(bArr);
    }

    public void g(int i, ByteString byteString) throws IOException {
        O(i, 2);
        h(byteString);
    }

    public void h(ByteString byteString) throws IOException {
        G(byteString.size());
        A(byteString);
    }

    public void i(int i, double d2) throws IOException {
        O(i, 1);
        j(d2);
    }

    public void j(double d2) throws IOException {
        F(Double.doubleToRawLongBits(d2));
    }

    public void k(int i, int i2) throws IOException {
        O(i, 0);
        l(i2);
    }

    public void l(int i) throws IOException {
        t(i);
    }

    public void m(int i) throws IOException {
        E(i);
    }

    public void n(long j) throws IOException {
        F(j);
    }

    public void o(int i, float f2) throws IOException {
        O(i, 5);
        p(f2);
    }

    public void p(float f2) throws IOException {
        E(Float.floatToRawIntBits(f2));
    }

    public void q(int i, j jVar) throws IOException {
        O(i, 3);
        r(jVar);
        O(i, 4);
    }

    public void r(j jVar) throws IOException {
        jVar.b(this);
    }

    public void s(int i, int i2) throws IOException {
        O(i, 0);
        t(i2);
    }

    public void t(int i) throws IOException {
        if (i >= 0) {
            G(i);
        } else {
            H(i);
        }
    }

    public void u(long j) throws IOException {
        H(j);
    }

    public void v(int i, j jVar) throws IOException {
        O(i, 2);
        w(jVar);
    }

    public void w(j jVar) throws IOException {
        G(jVar.getSerializedSize());
        jVar.b(this);
    }

    public void x(int i, j jVar) throws IOException {
        O(1, 3);
        P(2, i);
        v(3, jVar);
        O(1, 4);
    }

    public void y(byte b) throws IOException {
        if (this.c == this.b) {
            c();
        }
        byte[] bArr = this.a;
        int i = this.c;
        this.c = i + 1;
        bArr[i] = b;
        this.f9688d++;
    }

    public void z(int i) throws IOException {
        y((byte) i);
    }
}

package kotlin.reflect.jvm.internal.impl.protobuf;

import com.applovin.exoplayer2.common.base.Ascii;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import kotlin.reflect.jvm.internal.impl.protobuf.j;

/* JADX INFO: loaded from: classes5.dex */
public final class CodedInputStream {
    private final byte[] a;
    private final boolean b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f9684d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9685e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final InputStream f9686f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9687g;
    private boolean h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private a n;

    private interface a {
        void onRefill();
    }

    private CodedInputStream(InputStream inputStream) {
        this.h = false;
        this.j = Integer.MAX_VALUE;
        this.l = 64;
        this.m = 67108864;
        this.n = null;
        this.a = new byte[4096];
        this.c = 0;
        this.f9685e = 0;
        this.i = 0;
        this.f9686f = inputStream;
        this.b = false;
    }

    private CodedInputStream(i iVar) {
        this.h = false;
        this.j = Integer.MAX_VALUE;
        this.l = 64;
        this.m = 67108864;
        this.n = null;
        this.a = iVar.b;
        int iB = iVar.B();
        this.f9685e = iB;
        this.c = iB + iVar.size();
        this.i = -this.f9685e;
        this.f9686f = null;
        this.b = true;
    }

    private void J() {
        int i = this.c + this.f9684d;
        this.c = i;
        int i2 = this.i + i;
        int i3 = this.j;
        if (i2 <= i3) {
            this.f9684d = 0;
            return;
        }
        int i4 = i2 - i3;
        this.f9684d = i4;
        this.c = i - i4;
    }

    private void K(int i) throws IOException {
        if (!P(i)) {
            throw d.n();
        }
    }

    private void O(int i) throws IOException {
        if (i < 0) {
            throw d.i();
        }
        int i2 = this.i;
        int i3 = this.f9685e;
        int i4 = i2 + i3 + i;
        int i5 = this.j;
        if (i4 > i5) {
            N((i5 - i2) - i3);
            throw d.n();
        }
        int i6 = this.c;
        int i7 = i6 - i3;
        this.f9685e = i6;
        K(1);
        while (true) {
            int i8 = i - i7;
            int i9 = this.c;
            if (i8 <= i9) {
                this.f9685e = i8;
                return;
            } else {
                i7 += i9;
                this.f9685e = i9;
                K(1);
            }
        }
    }

    private boolean P(int i) throws IOException {
        int i2 = this.f9685e;
        if (i2 + i <= this.c) {
            StringBuilder sb = new StringBuilder(77);
            sb.append("refillBuffer() called when ");
            sb.append(i);
            sb.append(" bytes were already available in buffer");
            throw new IllegalStateException(sb.toString());
        }
        if (this.i + i2 + i > this.j) {
            return false;
        }
        a aVar = this.n;
        if (aVar != null) {
            aVar.onRefill();
        }
        if (this.f9686f != null) {
            int i3 = this.f9685e;
            if (i3 > 0) {
                int i4 = this.c;
                if (i4 > i3) {
                    byte[] bArr = this.a;
                    System.arraycopy(bArr, i3, bArr, 0, i4 - i3);
                }
                this.i += i3;
                this.c -= i3;
                this.f9685e = 0;
            }
            InputStream inputStream = this.f9686f;
            byte[] bArr2 = this.a;
            int i5 = this.c;
            int i6 = inputStream.read(bArr2, i5, bArr2.length - i5);
            if (i6 == 0 || i6 < -1 || i6 > this.a.length) {
                StringBuilder sb2 = new StringBuilder(102);
                sb2.append("InputStream#read(byte[]) returned invalid result: ");
                sb2.append(i6);
                sb2.append("\nThe InputStream implementation is buggy.");
                throw new IllegalStateException(sb2.toString());
            }
            if (i6 > 0) {
                this.c += i6;
                if ((this.i + i) - this.m > 0) {
                    throw d.m();
                }
                J();
                if (this.c >= i) {
                    return true;
                }
                return P(i);
            }
        }
        return false;
    }

    private void b(int i) throws IOException {
        if (this.c - this.f9685e < i) {
            K(i);
        }
    }

    public static int decodeZigZag32(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public static long decodeZigZag64(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    static CodedInputStream e(i iVar) {
        CodedInputStream codedInputStream = new CodedInputStream(iVar);
        try {
            codedInputStream.g(iVar.size());
            return codedInputStream;
        } catch (d e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public static CodedInputStream newInstance(InputStream inputStream) {
        return new CodedInputStream(inputStream);
    }

    public static int readRawVarint32(int i, InputStream inputStream) throws IOException {
        if ((i & 128) == 0) {
            return i;
        }
        int i2 = i & 127;
        int i3 = 7;
        while (i3 < 32) {
            int i4 = inputStream.read();
            if (i4 == -1) {
                throw d.n();
            }
            i2 |= (i4 & 127) << i3;
            if ((i4 & 128) == 0) {
                return i2;
            }
            i3 += 7;
        }
        while (i3 < 64) {
            int i5 = inputStream.read();
            if (i5 == -1) {
                throw d.n();
            }
            if ((i5 & 128) == 0) {
                return i2;
            }
            i3 += 7;
        }
        throw d.h();
    }

    private byte[] u(int i) throws IOException {
        if (i <= 0) {
            if (i == 0) {
                return Internal.a;
            }
            throw d.i();
        }
        int i2 = this.i;
        int i3 = this.f9685e;
        int i4 = i2 + i3 + i;
        int i5 = this.j;
        if (i4 > i5) {
            N((i5 - i2) - i3);
            throw d.n();
        }
        if (i < 4096) {
            byte[] bArr = new byte[i];
            int i6 = this.c - i3;
            System.arraycopy(this.a, i3, bArr, 0, i6);
            this.f9685e = this.c;
            int i7 = i - i6;
            b(i7);
            System.arraycopy(this.a, 0, bArr, i6, i7);
            this.f9685e = i7;
            return bArr;
        }
        int i8 = this.c;
        this.i = i2 + i8;
        this.f9685e = 0;
        this.c = 0;
        int length = i8 - i3;
        int i9 = i - length;
        ArrayList<byte[]> arrayList = new ArrayList();
        while (i9 > 0) {
            int iMin = Math.min(i9, 4096);
            byte[] bArr2 = new byte[iMin];
            int i10 = 0;
            while (i10 < iMin) {
                InputStream inputStream = this.f9686f;
                int i11 = inputStream == null ? -1 : inputStream.read(bArr2, i10, iMin - i10);
                if (i11 == -1) {
                    throw d.n();
                }
                this.i += i11;
                i10 += i11;
            }
            i9 -= iMin;
            arrayList.add(bArr2);
        }
        byte[] bArr3 = new byte[i];
        System.arraycopy(this.a, i3, bArr3, 0, length);
        for (byte[] bArr4 : arrayList) {
            System.arraycopy(bArr4, 0, bArr3, length, bArr4.length);
            length += bArr4.length;
        }
        return bArr3;
    }

    public int A() throws IOException {
        return v();
    }

    public long B() throws IOException {
        return w();
    }

    public int C() throws IOException {
        return decodeZigZag32(x());
    }

    public long D() throws IOException {
        return decodeZigZag64(y());
    }

    public String E() throws IOException {
        int iX = x();
        if (iX > this.c - this.f9685e || iX <= 0) {
            return iX == 0 ? "" : new String(u(iX), C.UTF8_NAME);
        }
        String str = new String(this.a, this.f9685e, iX, C.UTF8_NAME);
        this.f9685e += iX;
        return str;
    }

    public String F() throws IOException {
        byte[] bArrU;
        int iX = x();
        int i = this.f9685e;
        if (iX <= this.c - i && iX > 0) {
            bArrU = this.a;
            this.f9685e = i + iX;
        } else {
            if (iX == 0) {
                return "";
            }
            bArrU = u(iX);
            i = 0;
        }
        if (Utf8.isValidUtf8(bArrU, i, i + iX)) {
            return new String(bArrU, i, iX, C.UTF8_NAME);
        }
        throw d.f();
    }

    public int G() throws IOException {
        if (d()) {
            this.f9687g = 0;
            return 0;
        }
        int iX = x();
        this.f9687g = iX;
        if (WireFormat.getTagFieldNumber(iX) != 0) {
            return this.f9687g;
        }
        throw d.e();
    }

    public int H() throws IOException {
        return x();
    }

    public long I() throws IOException {
        return y();
    }

    public boolean L(int i, CodedOutputStream codedOutputStream) throws IOException {
        int iA = WireFormat.a(i);
        if (iA == 0) {
            long jQ = q();
            codedOutputStream.G(i);
            codedOutputStream.R(jQ);
            return true;
        }
        if (iA == 1) {
            long jW = w();
            codedOutputStream.G(i);
            codedOutputStream.n(jW);
            return true;
        }
        if (iA == 2) {
            ByteString byteStringI = i();
            codedOutputStream.G(i);
            codedOutputStream.h(byteStringI);
            return true;
        }
        if (iA == 3) {
            codedOutputStream.G(i);
            M(codedOutputStream);
            int iB = WireFormat.b(WireFormat.getTagFieldNumber(i), 4);
            a(iB);
            codedOutputStream.G(iB);
            return true;
        }
        if (iA == 4) {
            return false;
        }
        if (iA != 5) {
            throw d.g();
        }
        int iV = v();
        codedOutputStream.G(i);
        codedOutputStream.m(iV);
        return true;
    }

    public void M(CodedOutputStream codedOutputStream) throws IOException {
        int iG;
        do {
            iG = G();
            if (iG == 0) {
                return;
            }
        } while (L(iG, codedOutputStream));
    }

    public void N(int i) throws IOException {
        int i2 = this.c;
        int i3 = this.f9685e;
        if (i > i2 - i3 || i < 0) {
            O(i);
        } else {
            this.f9685e = i3 + i;
        }
    }

    public void a(int i) throws d {
        if (this.f9687g != i) {
            throw d.d();
        }
    }

    public int c() {
        int i = this.j;
        if (i == Integer.MAX_VALUE) {
            return -1;
        }
        return i - (this.i + this.f9685e);
    }

    public boolean d() throws IOException {
        return this.f9685e == this.c && !P(1);
    }

    public void f(int i) {
        this.j = i;
        J();
    }

    public int g(int i) throws d {
        if (i < 0) {
            throw d.i();
        }
        int i2 = i + this.i + this.f9685e;
        int i3 = this.j;
        if (i2 > i3) {
            throw d.n();
        }
        this.j = i2;
        J();
        return i3;
    }

    public boolean h() throws IOException {
        return y() != 0;
    }

    public ByteString i() throws IOException {
        int iX = x();
        int i = this.c;
        int i2 = this.f9685e;
        if (iX > i - i2 || iX <= 0) {
            return iX == 0 ? ByteString.a : new i(u(iX));
        }
        ByteString cVar = (this.b && this.h) ? new c(this.a, this.f9685e, iX) : ByteString.copyFrom(this.a, i2, iX);
        this.f9685e += iX;
        return cVar;
    }

    public double j() throws IOException {
        return Double.longBitsToDouble(w());
    }

    public int k() throws IOException {
        return x();
    }

    public int l() throws IOException {
        return v();
    }

    public long m() throws IOException {
        return w();
    }

    public float n() throws IOException {
        return Float.intBitsToFloat(v());
    }

    public void o(int i, j.a aVar, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        int i2 = this.k;
        if (i2 >= this.l) {
            throw d.j();
        }
        this.k = i2 + 1;
        aVar.d(this, extensionRegistryLite);
        a(WireFormat.b(i, 4));
        this.k--;
    }

    public int p() throws IOException {
        return x();
    }

    public long q() throws IOException {
        return y();
    }

    public <T extends j> T r(l<T> lVar, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        int iX = x();
        if (this.k >= this.l) {
            throw d.j();
        }
        int iG = g(iX);
        this.k++;
        T tC = lVar.c(this, extensionRegistryLite);
        a(0);
        this.k--;
        f(iG);
        return tC;
    }

    public void s(j.a aVar, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        int iX = x();
        if (this.k >= this.l) {
            throw d.j();
        }
        int iG = g(iX);
        this.k++;
        aVar.d(this, extensionRegistryLite);
        a(0);
        this.k--;
        f(iG);
    }

    public byte t() throws IOException {
        if (this.f9685e == this.c) {
            K(1);
        }
        byte[] bArr = this.a;
        int i = this.f9685e;
        this.f9685e = i + 1;
        return bArr[i];
    }

    public int v() throws IOException {
        int i = this.f9685e;
        if (this.c - i < 4) {
            K(4);
            i = this.f9685e;
        }
        byte[] bArr = this.a;
        this.f9685e = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public long w() throws IOException {
        int i = this.f9685e;
        if (this.c - i < 8) {
            K(8);
            i = this.f9685e;
        }
        byte[] bArr = this.a;
        this.f9685e = i + 8;
        return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x007a, code lost:
    
        if (r2[r3] < 0) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int x() throws java.io.IOException {
        /*
            r9 = this;
            int r0 = r9.f9685e
            int r1 = r9.c
            if (r1 != r0) goto L8
            goto L7c
        L8:
            byte[] r2 = r9.a
            int r3 = r0 + 1
            r0 = r2[r0]
            if (r0 < 0) goto L13
            r9.f9685e = r3
            return r0
        L13:
            int r1 = r1 - r3
            r4 = 9
            if (r1 >= r4) goto L19
            goto L7c
        L19:
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 7
            r0 = r0 ^ r3
            long r3 = (long) r0
            r5 = 0
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 >= 0) goto L2d
            r5 = -128(0xffffffffffffff80, double:NaN)
        L29:
            long r2 = r3 ^ r5
            int r0 = (int) r2
            goto L82
        L2d:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r1 = r1 << 14
            r0 = r0 ^ r1
            long r7 = (long) r0
            int r1 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r1 < 0) goto L3f
            r0 = 16256(0x3f80, double:8.0315E-320)
            long r0 = r0 ^ r7
            int r0 = (int) r0
        L3d:
            r1 = r3
            goto L82
        L3f:
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 21
            r0 = r0 ^ r3
            long r3 = (long) r0
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 >= 0) goto L4f
            r5 = -2080896(0xffffffffffe03f80, double:NaN)
            goto L29
        L4f:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r4 = r1 << 28
            r0 = r0 ^ r4
            long r4 = (long) r0
            r6 = 266354560(0xfe03f80, double:1.315966377E-315)
            long r4 = r4 ^ r6
            int r0 = (int) r4
            if (r1 >= 0) goto L3d
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L82
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L3d
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L82
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L3d
            int r1 = r3 + 1
            r2 = r2[r3]
            if (r2 >= 0) goto L82
        L7c:
            long r0 = r9.z()
            int r1 = (int) r0
            return r1
        L82:
            r9.f9685e = r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream.x():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b6, code lost:
    
        if (r2[r0] < 0) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long y() throws java.io.IOException {
        /*
            r9 = this;
            int r0 = r9.f9685e
            int r1 = r9.c
            if (r1 != r0) goto L8
            goto Lb8
        L8:
            byte[] r2 = r9.a
            int r3 = r0 + 1
            r0 = r2[r0]
            if (r0 < 0) goto L14
            r9.f9685e = r3
            long r0 = (long) r0
            return r0
        L14:
            int r1 = r1 - r3
            r4 = 9
            if (r1 >= r4) goto L1b
            goto Lb8
        L1b:
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 7
            r0 = r0 ^ r3
            long r3 = (long) r0
            r5 = 0
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 >= 0) goto L2f
            r5 = -128(0xffffffffffffff80, double:NaN)
        L2b:
            long r2 = r3 ^ r5
            goto Lbf
        L2f:
            int r0 = r1 + 1
            r1 = r2[r1]
            int r1 = r1 << 14
            long r7 = (long) r1
            long r3 = r3 ^ r7
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 < 0) goto L42
            r1 = 16256(0x3f80, double:8.0315E-320)
        L3d:
            long r2 = r3 ^ r1
            r1 = r0
            goto Lbf
        L42:
            int r1 = r0 + 1
            r0 = r2[r0]
            int r0 = r0 << 21
            long r7 = (long) r0
            long r3 = r3 ^ r7
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 >= 0) goto L52
            r5 = -2080896(0xffffffffffe03f80, double:NaN)
            goto L2b
        L52:
            int r0 = r1 + 1
            r1 = r2[r1]
            long r7 = (long) r1
            r1 = 28
            long r7 = r7 << r1
            long r3 = r3 ^ r7
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 < 0) goto L63
            r1 = 266354560(0xfe03f80, double:1.315966377E-315)
            goto L3d
        L63:
            int r1 = r0 + 1
            r0 = r2[r0]
            long r7 = (long) r0
            r0 = 35
            long r7 = r7 << r0
            long r3 = r3 ^ r7
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 >= 0) goto L76
            r5 = -34093383808(0xfffffff80fe03f80, double:NaN)
            goto L2b
        L76:
            int r0 = r1 + 1
            r1 = r2[r1]
            long r7 = (long) r1
            r1 = 42
            long r7 = r7 << r1
            long r3 = r3 ^ r7
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 < 0) goto L89
            r1 = 4363953127296(0x3f80fe03f80, double:2.1560793202584E-311)
            goto L3d
        L89:
            int r1 = r0 + 1
            r0 = r2[r0]
            long r7 = (long) r0
            r0 = 49
            long r7 = r7 << r0
            long r3 = r3 ^ r7
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 >= 0) goto L9c
            r5 = -558586000294016(0xfffe03f80fe03f80, double:NaN)
            goto L2b
        L9c:
            int r0 = r1 + 1
            r1 = r2[r1]
            long r7 = (long) r1
            r1 = 56
            long r7 = r7 << r1
            long r3 = r3 ^ r7
            r7 = 71499008037633920(0xfe03f80fe03f80, double:6.838959413692434E-304)
            long r3 = r3 ^ r7
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 >= 0) goto Lbd
            int r1 = r0 + 1
            r0 = r2[r0]
            long r7 = (long) r0
            int r0 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r0 >= 0) goto Lbe
        Lb8:
            long r0 = r9.z()
            return r0
        Lbd:
            r1 = r0
        Lbe:
            r2 = r3
        Lbf:
            r9.f9685e = r1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream.y():long");
    }

    long z() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte bT = t();
            j |= ((long) (bT & Ascii.DEL)) << i;
            if ((bT & 128) == 0) {
                return j;
            }
        }
        throw d.h();
    }
}

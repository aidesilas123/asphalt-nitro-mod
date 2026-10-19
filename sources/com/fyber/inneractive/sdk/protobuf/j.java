package com.fyber.inneractive.sdk.protobuf;

import com.applovin.exoplayer2.common.base.Ascii;
import com.fyber.inneractive.sdk.protobuf.GeneratedMessageLite;
import com.fyber.inneractive.sdk.protobuf.i;
import com.fyber.inneractive.sdk.protobuf.o0;
import com.fyber.inneractive.sdk.protobuf.p1;
import com.fyber.inneractive.sdk.protobuf.q1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class j {
    public int a;
    public int b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public k f2674d;

    public static final class b extends j {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final byte[] f2675e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f2676f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f2677g;
        public int h;
        public int i;
        public int j;
        public int k;
        public int l;

        public b(byte[] bArr, int i, int i2, boolean z) {
            super();
            this.l = Integer.MAX_VALUE;
            this.f2675e = bArr;
            this.f2677g = i2 + i;
            this.i = i;
            this.j = i;
            this.f2676f = z;
        }

        public long A() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                byte bW = w();
                j |= ((long) (bW & Ascii.DEL)) << i;
                if ((bW & 128) == 0) {
                    return j;
                }
            }
            throw z.e();
        }

        public final void B() {
            int i = this.f2677g + this.h;
            this.f2677g = i;
            int i2 = i - this.j;
            int i3 = this.l;
            if (i2 <= i3) {
                this.h = 0;
                return;
            }
            int i4 = i2 - i3;
            this.h = i4;
            this.f2677g = i - i4;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int a() {
            int i = this.l;
            if (i == Integer.MAX_VALUE) {
                return -1;
            }
            return i - b();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public void a(int i) throws z {
            if (this.k != i) {
                throw z.a();
            }
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public void a(int i, o0.a aVar, q qVar) throws IOException {
            int i2 = this.a;
            if (i2 >= this.b) {
                throw z.h();
            }
            this.a = i2 + 1;
            ((GeneratedMessageLite.b) aVar).a(this, qVar);
            a(r1.a(i, 4));
            this.a--;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public void a(o0.a aVar, q qVar) throws IOException {
            int iM = m();
            if (this.a >= this.b) {
                throw z.h();
            }
            int iD = d(iM);
            this.a++;
            ((GeneratedMessageLite.b) aVar).a(this, qVar);
            a(0);
            this.a--;
            this.l = iD;
            B();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int b() {
            return this.i - this.j;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public void c(int i) {
            this.l = i;
            B();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public boolean c() throws IOException {
            return this.i == this.f2677g;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int d(int i) throws z {
            if (i < 0) {
                throw z.f();
            }
            int iB = i + b();
            int i2 = this.l;
            if (iB > i2) {
                throw z.i();
            }
            this.l = iB;
            B();
            return i2;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public boolean d() throws IOException {
            return z() != 0;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
        @Override // com.fyber.inneractive.sdk.protobuf.j
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public com.fyber.inneractive.sdk.protobuf.i e() throws java.io.IOException {
            /*
                r3 = this;
                int r0 = r3.m()
                if (r0 <= 0) goto L19
                int r1 = r3.f2677g
                int r2 = r3.i
                int r1 = r1 - r2
                if (r0 > r1) goto L19
                byte[] r1 = r3.f2675e
                com.fyber.inneractive.sdk.protobuf.i r1 = com.fyber.inneractive.sdk.protobuf.i.a(r1, r2, r0)
                int r2 = r3.i
                int r2 = r2 + r0
                r3.i = r2
                return r1
            L19:
                if (r0 != 0) goto L1e
                com.fyber.inneractive.sdk.protobuf.i r0 = com.fyber.inneractive.sdk.protobuf.i.b
                return r0
            L1e:
                if (r0 <= 0) goto L31
                int r1 = r3.f2677g
                int r2 = r3.i
                int r1 = r1 - r2
                if (r0 > r1) goto L31
                int r0 = r0 + r2
                r3.i = r0
                byte[] r1 = r3.f2675e
                byte[] r0 = java.util.Arrays.copyOfRange(r1, r2, r0)
                goto L37
            L31:
                if (r0 > 0) goto L44
                if (r0 != 0) goto L3f
                byte[] r0 = com.fyber.inneractive.sdk.protobuf.y.b
            L37:
                com.fyber.inneractive.sdk.protobuf.i r1 = com.fyber.inneractive.sdk.protobuf.i.b
                com.fyber.inneractive.sdk.protobuf.i$h r1 = new com.fyber.inneractive.sdk.protobuf.i$h
                r1.<init>(r0)
                return r1
            L3f:
                com.fyber.inneractive.sdk.protobuf.z r0 = com.fyber.inneractive.sdk.protobuf.z.f()
                throw r0
            L44:
                com.fyber.inneractive.sdk.protobuf.z r0 = com.fyber.inneractive.sdk.protobuf.z.i()
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.protobuf.j.b.e():com.fyber.inneractive.sdk.protobuf.i");
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public boolean e(int i) throws IOException {
            int iT;
            int i2 = r1.a;
            int i3 = i & 7;
            int i4 = 0;
            if (i3 == 0) {
                if (this.f2677g - this.i < 10) {
                    while (i4 < 10) {
                        if (w() < 0) {
                            i4++;
                        }
                    }
                    throw z.e();
                }
                while (i4 < 10) {
                    byte[] bArr = this.f2675e;
                    int i5 = this.i;
                    this.i = i5 + 1;
                    if (bArr[i5] < 0) {
                        i4++;
                    }
                }
                throw z.e();
                return true;
            }
            if (i3 == 1) {
                f(8);
                return true;
            }
            if (i3 == 2) {
                f(m());
                return true;
            }
            if (i3 != 3) {
                if (i3 == 4) {
                    return false;
                }
                if (i3 != 5) {
                    throw z.d();
                }
                f(4);
                return true;
            }
            do {
                iT = t();
                if (iT == 0) {
                    break;
                }
            } while (e(iT));
            a(r1.a(i >>> 3, 4));
            return true;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public double f() throws IOException {
            return Double.longBitsToDouble(y());
        }

        public void f(int i) throws IOException {
            if (i >= 0) {
                int i2 = this.f2677g;
                int i3 = this.i;
                if (i <= i2 - i3) {
                    this.i = i3 + i;
                    return;
                }
            }
            if (i >= 0) {
                throw z.i();
            }
            throw z.f();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int g() throws IOException {
            return m();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int h() throws IOException {
            return x();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public long i() throws IOException {
            return y();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public float j() throws IOException {
            return Float.intBitsToFloat(x());
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int k() throws IOException {
            return m();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public long l() throws IOException {
            return z();
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
        
            if (r2[r3] < 0) goto L34;
         */
        @Override // com.fyber.inneractive.sdk.protobuf.j
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public int m() throws java.io.IOException {
            /*
                r5 = this;
                int r0 = r5.i
                int r1 = r5.f2677g
                if (r1 != r0) goto L7
                goto L6a
            L7:
                byte[] r2 = r5.f2675e
                int r3 = r0 + 1
                r0 = r2[r0]
                if (r0 < 0) goto L12
                r5.i = r3
                return r0
            L12:
                int r1 = r1 - r3
                r4 = 9
                if (r1 >= r4) goto L18
                goto L6a
            L18:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 7
                r0 = r0 ^ r3
                if (r0 >= 0) goto L24
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
                goto L70
            L24:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L31
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            L2f:
                r1 = r3
                goto L70
            L31:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 21
                r0 = r0 ^ r3
                if (r0 >= 0) goto L3f
                r2 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r2
                goto L70
            L3f:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r4 = r1 << 28
                r0 = r0 ^ r4
                r4 = 266354560(0xfe03f80, float:2.2112565E-29)
                r0 = r0 ^ r4
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r2 = r2[r3]
                if (r2 >= 0) goto L70
            L6a:
                long r0 = r5.A()
                int r1 = (int) r0
                return r1
            L70:
                r5.i = r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.protobuf.j.b.m():int");
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int n() throws IOException {
            return x();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public long o() throws IOException {
            return y();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int p() throws IOException {
            return j.b(m());
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public long q() throws IOException {
            return j.a(z());
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public String r() throws IOException {
            int iM = m();
            if (iM > 0) {
                int i = this.f2677g;
                int i2 = this.i;
                if (iM <= i - i2) {
                    String str = new String(this.f2675e, i2, iM, y.a);
                    this.i += iM;
                    return str;
                }
            }
            if (iM == 0) {
                return "";
            }
            if (iM < 0) {
                throw z.f();
            }
            throw z.i();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public String s() throws IOException {
            int iM = m();
            if (iM > 0) {
                int i = this.f2677g;
                int i2 = this.i;
                if (iM <= i - i2) {
                    String strA = q1.a.a(this.f2675e, i2, iM);
                    this.i += iM;
                    return strA;
                }
            }
            if (iM == 0) {
                return "";
            }
            if (iM <= 0) {
                throw z.f();
            }
            throw z.i();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int t() throws IOException {
            if (c()) {
                this.k = 0;
                return 0;
            }
            int iM = m();
            this.k = iM;
            int i = r1.a;
            if ((iM >>> 3) != 0) {
                return iM;
            }
            throw z.b();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int u() throws IOException {
            return m();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public long v() throws IOException {
            return z();
        }

        public byte w() throws IOException {
            int i = this.i;
            if (i == this.f2677g) {
                throw z.i();
            }
            byte[] bArr = this.f2675e;
            this.i = i + 1;
            return bArr[i];
        }

        public int x() throws IOException {
            int i = this.i;
            if (this.f2677g - i < 4) {
                throw z.i();
            }
            byte[] bArr = this.f2675e;
            this.i = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }

        public long y() throws IOException {
            int i = this.i;
            if (this.f2677g - i < 8) {
                throw z.i();
            }
            byte[] bArr = this.f2675e;
            this.i = i + 8;
            return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b4, code lost:
        
            if (r2[r0] < 0) goto L40;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public long z() throws java.io.IOException {
            /*
                r11 = this;
                int r0 = r11.i
                int r1 = r11.f2677g
                if (r1 != r0) goto L8
                goto Lb6
            L8:
                byte[] r2 = r11.f2675e
                int r3 = r0 + 1
                r0 = r2[r0]
                if (r0 < 0) goto L14
                r11.i = r3
                long r0 = (long) r0
                return r0
            L14:
                int r1 = r1 - r3
                r4 = 9
                if (r1 >= r4) goto L1b
                goto Lb6
            L1b:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 7
                r0 = r0 ^ r3
                if (r0 >= 0) goto L29
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            L26:
                long r2 = (long) r0
                goto Lbd
            L29:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L3a
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
                long r0 = (long) r0
                r9 = r0
                r1 = r3
                r2 = r9
                goto Lbd
            L3a:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 21
                r0 = r0 ^ r3
                if (r0 >= 0) goto L48
                r2 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r2
                goto L26
            L48:
                long r3 = (long) r0
                int r0 = r1 + 1
                r1 = r2[r1]
                long r5 = (long) r1
                r1 = 28
                long r5 = r5 << r1
                long r3 = r3 ^ r5
                r5 = 0
                int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r1 < 0) goto L5f
                r1 = 266354560(0xfe03f80, double:1.315966377E-315)
            L5b:
                long r2 = r3 ^ r1
                r1 = r0
                goto Lbd
            L5f:
                int r1 = r0 + 1
                r0 = r2[r0]
                long r7 = (long) r0
                r0 = 35
                long r7 = r7 << r0
                long r3 = r3 ^ r7
                int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r0 >= 0) goto L74
                r5 = -34093383808(0xfffffff80fe03f80, double:NaN)
            L71:
                long r2 = r3 ^ r5
                goto Lbd
            L74:
                int r0 = r1 + 1
                r1 = r2[r1]
                long r7 = (long) r1
                r1 = 42
                long r7 = r7 << r1
                long r3 = r3 ^ r7
                int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r1 < 0) goto L87
                r1 = 4363953127296(0x3f80fe03f80, double:2.1560793202584E-311)
                goto L5b
            L87:
                int r1 = r0 + 1
                r0 = r2[r0]
                long r7 = (long) r0
                r0 = 49
                long r7 = r7 << r0
                long r3 = r3 ^ r7
                int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r0 >= 0) goto L9a
                r5 = -558586000294016(0xfffe03f80fe03f80, double:NaN)
                goto L71
            L9a:
                int r0 = r1 + 1
                r1 = r2[r1]
                long r7 = (long) r1
                r1 = 56
                long r7 = r7 << r1
                long r3 = r3 ^ r7
                r7 = 71499008037633920(0xfe03f80fe03f80, double:6.838959413692434E-304)
                long r3 = r3 ^ r7
                int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r1 >= 0) goto Lbb
                int r1 = r0 + 1
                r0 = r2[r0]
                long r7 = (long) r0
                int r0 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
                if (r0 >= 0) goto Lbc
            Lb6:
                long r0 = r11.A()
                return r0
            Lbb:
                r1 = r0
            Lbc:
                r2 = r3
            Lbd:
                r11.i = r1
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.protobuf.j.b.z():long");
        }
    }

    public static final class c extends j {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final InputStream f2678e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final byte[] f2679f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f2680g;
        public int h;
        public int i;
        public int j;
        public int k;
        public int l;

        public c(InputStream inputStream, int i) {
            super();
            this.l = Integer.MAX_VALUE;
            y.a(inputStream, "input");
            this.f2678e = inputStream;
            this.f2679f = new byte[i];
            this.f2680g = 0;
            this.i = 0;
            this.k = 0;
        }

        public long A() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                byte bW = w();
                j |= ((long) (bW & Ascii.DEL)) << i;
                if ((bW & 128) == 0) {
                    return j;
                }
            }
            throw z.e();
        }

        public final void B() {
            int i = this.f2680g + this.h;
            this.f2680g = i;
            int i2 = this.k + i;
            int i3 = this.l;
            if (i2 <= i3) {
                this.h = 0;
                return;
            }
            int i4 = i2 - i3;
            this.h = i4;
            this.f2680g = i - i4;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int a() {
            int i = this.l;
            if (i == Integer.MAX_VALUE) {
                return -1;
            }
            return i - (this.k + this.i);
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public void a(int i) throws z {
            if (this.j != i) {
                throw z.a();
            }
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public void a(int i, o0.a aVar, q qVar) throws IOException {
            int i2 = this.a;
            if (i2 >= this.b) {
                throw z.h();
            }
            this.a = i2 + 1;
            ((GeneratedMessageLite.b) aVar).a(this, qVar);
            a(r1.a(i, 4));
            this.a--;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public void a(o0.a aVar, q qVar) throws IOException {
            int iM = m();
            if (this.a >= this.b) {
                throw z.h();
            }
            int iD = d(iM);
            this.a++;
            ((GeneratedMessageLite.b) aVar).a(this, qVar);
            a(0);
            this.a--;
            this.l = iD;
            B();
        }

        public final byte[] a(int i, boolean z) throws IOException {
            byte[] bArrF = f(i);
            if (bArrF != null) {
                return z ? (byte[]) bArrF.clone() : bArrF;
            }
            int i2 = this.i;
            int i3 = this.f2680g;
            int length = i3 - i2;
            this.k += i3;
            this.i = 0;
            this.f2680g = 0;
            List<byte[]> listG = g(i - length);
            byte[] bArr = new byte[i];
            System.arraycopy(this.f2679f, i2, bArr, 0, length);
            for (byte[] bArr2 : (ArrayList) listG) {
                System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                length += bArr2.length;
            }
            return bArr;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int b() {
            return this.k + this.i;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public void c(int i) {
            this.l = i;
            B();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public boolean c() throws IOException {
            return this.i == this.f2680g && !j(1);
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int d(int i) throws z {
            if (i < 0) {
                throw z.f();
            }
            int i2 = i + this.k + this.i;
            int i3 = this.l;
            if (i2 > i3) {
                throw z.i();
            }
            this.l = i2;
            B();
            return i3;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public boolean d() throws IOException {
            return z() != 0;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public i e() throws IOException {
            int iM = m();
            int i = this.f2680g;
            int i2 = this.i;
            if (iM <= i - i2 && iM > 0) {
                i iVarA = i.a(this.f2679f, i2, iM);
                this.i += iM;
                return iVarA;
            }
            if (iM == 0) {
                return i.b;
            }
            byte[] bArrF = f(iM);
            if (bArrF != null) {
                i iVar = i.b;
                return i.a(bArrF, 0, bArrF.length);
            }
            int i3 = this.i;
            int i4 = this.f2680g;
            int length = i4 - i3;
            this.k += i4;
            this.i = 0;
            this.f2680g = 0;
            List<byte[]> listG = g(iM - length);
            byte[] bArr = new byte[iM];
            System.arraycopy(this.f2679f, i3, bArr, 0, length);
            for (byte[] bArr2 : (ArrayList) listG) {
                System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                length += bArr2.length;
            }
            i iVar2 = i.b;
            return new i.h(bArr);
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public boolean e(int i) throws IOException {
            int iT;
            int i2 = r1.a;
            int i3 = i & 7;
            int i4 = 0;
            if (i3 == 0) {
                if (this.f2680g - this.i < 10) {
                    while (i4 < 10) {
                        if (w() < 0) {
                            i4++;
                        }
                    }
                    throw z.e();
                }
                while (i4 < 10) {
                    byte[] bArr = this.f2679f;
                    int i5 = this.i;
                    this.i = i5 + 1;
                    if (bArr[i5] < 0) {
                        i4++;
                    }
                }
                throw z.e();
                return true;
            }
            if (i3 == 1) {
                i(8);
                return true;
            }
            if (i3 == 2) {
                i(m());
                return true;
            }
            if (i3 != 3) {
                if (i3 == 4) {
                    return false;
                }
                if (i3 != 5) {
                    throw z.d();
                }
                i(4);
                return true;
            }
            do {
                iT = t();
                if (iT == 0) {
                    break;
                }
            } while (e(iT));
            a(r1.a(i >>> 3, 4));
            return true;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public double f() throws IOException {
            return Double.longBitsToDouble(y());
        }

        public final byte[] f(int i) throws IOException {
            if (i == 0) {
                return y.b;
            }
            if (i < 0) {
                throw z.f();
            }
            int i2 = this.k;
            int i3 = this.i;
            int i4 = i2 + i3 + i;
            if (i4 - this.c > 0) {
                throw new z("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
            }
            int i5 = this.l;
            if (i4 > i5) {
                i((i5 - i2) - i3);
                throw z.i();
            }
            int i6 = this.f2680g - i3;
            int i7 = i - i6;
            if (i7 >= 4096 && i7 > this.f2678e.available()) {
                return null;
            }
            byte[] bArr = new byte[i];
            System.arraycopy(this.f2679f, this.i, bArr, 0, i6);
            this.k += this.f2680g;
            this.i = 0;
            this.f2680g = 0;
            while (i6 < i) {
                int i8 = this.f2678e.read(bArr, i6, i - i6);
                if (i8 == -1) {
                    throw z.i();
                }
                this.k += i8;
                i6 += i8;
            }
            return bArr;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int g() throws IOException {
            return m();
        }

        public final List<byte[]> g(int i) throws IOException {
            ArrayList arrayList = new ArrayList();
            while (i > 0) {
                int iMin = Math.min(i, 4096);
                byte[] bArr = new byte[iMin];
                int i2 = 0;
                while (i2 < iMin) {
                    int i3 = this.f2678e.read(bArr, i2, iMin - i2);
                    if (i3 == -1) {
                        throw z.i();
                    }
                    this.k += i3;
                    i2 += i3;
                }
                i -= iMin;
                arrayList.add(bArr);
            }
            return arrayList;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int h() throws IOException {
            return x();
        }

        public final void h(int i) throws IOException {
            if (j(i)) {
                return;
            }
            if (i <= (this.c - this.k) - this.i) {
                throw z.i();
            }
            throw new z("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public long i() throws IOException {
            return y();
        }

        public void i(int i) throws IOException {
            int i2 = this.f2680g;
            int i3 = this.i;
            int i4 = i2 - i3;
            if (i <= i4 && i >= 0) {
                this.i = i3 + i;
                return;
            }
            if (i < 0) {
                throw z.f();
            }
            int i5 = this.k;
            int i6 = i5 + i3;
            int i7 = i6 + i;
            int i8 = this.l;
            if (i7 > i8) {
                i((i8 - i5) - i3);
                throw z.i();
            }
            this.k = i6;
            this.f2680g = 0;
            this.i = 0;
            while (i4 < i) {
                try {
                    long j = i - i4;
                    long jSkip = this.f2678e.skip(j);
                    if (jSkip < 0 || jSkip > j) {
                        throw new IllegalStateException(this.f2678e.getClass() + "#skip returned invalid result: " + jSkip + "\nThe InputStream implementation is buggy.");
                    }
                    if (jSkip == 0) {
                        break;
                    } else {
                        i4 += (int) jSkip;
                    }
                } finally {
                    this.k += i4;
                    B();
                }
            }
            if (i4 >= i) {
                return;
            }
            int i9 = this.f2680g;
            int i10 = i9 - this.i;
            this.i = i9;
            h(1);
            while (true) {
                int i11 = i - i10;
                int i12 = this.f2680g;
                if (i11 <= i12) {
                    this.i = i11;
                    return;
                } else {
                    i10 += i12;
                    this.i = i12;
                    h(1);
                }
            }
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public float j() throws IOException {
            return Float.intBitsToFloat(x());
        }

        public final boolean j(int i) throws IOException {
            int i2 = this.i;
            int i3 = i2 + i;
            int i4 = this.f2680g;
            if (i3 <= i4) {
                throw new IllegalStateException("refillBuffer() called when " + i + " bytes were already available in buffer");
            }
            int i5 = this.c;
            int i6 = this.k;
            if (i > (i5 - i6) - i2 || i6 + i2 + i > this.l) {
                return false;
            }
            if (i2 > 0) {
                if (i4 > i2) {
                    byte[] bArr = this.f2679f;
                    System.arraycopy(bArr, i2, bArr, 0, i4 - i2);
                }
                this.k += i2;
                this.f2680g -= i2;
                this.i = 0;
            }
            InputStream inputStream = this.f2678e;
            byte[] bArr2 = this.f2679f;
            int i7 = this.f2680g;
            int i8 = inputStream.read(bArr2, i7, Math.min(bArr2.length - i7, (this.c - this.k) - i7));
            if (i8 == 0 || i8 < -1 || i8 > this.f2679f.length) {
                throw new IllegalStateException(this.f2678e.getClass() + "#read(byte[]) returned invalid result: " + i8 + "\nThe InputStream implementation is buggy.");
            }
            if (i8 <= 0) {
                return false;
            }
            this.f2680g += i8;
            B();
            if (this.f2680g >= i) {
                return true;
            }
            return j(i);
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int k() throws IOException {
            return m();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public long l() throws IOException {
            return z();
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
        
            if (r2[r3] < 0) goto L34;
         */
        @Override // com.fyber.inneractive.sdk.protobuf.j
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public int m() throws java.io.IOException {
            /*
                r5 = this;
                int r0 = r5.i
                int r1 = r5.f2680g
                if (r1 != r0) goto L7
                goto L6a
            L7:
                byte[] r2 = r5.f2679f
                int r3 = r0 + 1
                r0 = r2[r0]
                if (r0 < 0) goto L12
                r5.i = r3
                return r0
            L12:
                int r1 = r1 - r3
                r4 = 9
                if (r1 >= r4) goto L18
                goto L6a
            L18:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 7
                r0 = r0 ^ r3
                if (r0 >= 0) goto L24
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
                goto L70
            L24:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L31
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            L2f:
                r1 = r3
                goto L70
            L31:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 21
                r0 = r0 ^ r3
                if (r0 >= 0) goto L3f
                r2 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r2
                goto L70
            L3f:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r4 = r1 << 28
                r0 = r0 ^ r4
                r4 = 266354560(0xfe03f80, float:2.2112565E-29)
                r0 = r0 ^ r4
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r2 = r2[r3]
                if (r2 >= 0) goto L70
            L6a:
                long r0 = r5.A()
                int r1 = (int) r0
                return r1
            L70:
                r5.i = r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.protobuf.j.c.m():int");
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int n() throws IOException {
            return x();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public long o() throws IOException {
            return y();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int p() throws IOException {
            return j.b(m());
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public long q() throws IOException {
            return j.a(z());
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public String r() throws IOException {
            int iM = m();
            if (iM > 0) {
                int i = this.f2680g;
                int i2 = this.i;
                if (iM <= i - i2) {
                    String str = new String(this.f2679f, i2, iM, y.a);
                    this.i += iM;
                    return str;
                }
            }
            if (iM == 0) {
                return "";
            }
            if (iM > this.f2680g) {
                return new String(a(iM, false), y.a);
            }
            h(iM);
            String str2 = new String(this.f2679f, this.i, iM, y.a);
            this.i += iM;
            return str2;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public String s() throws IOException {
            byte[] bArrA;
            int iM = m();
            int i = this.i;
            int i2 = this.f2680g;
            if (iM <= i2 - i && iM > 0) {
                bArrA = this.f2679f;
                this.i = i + iM;
            } else {
                if (iM == 0) {
                    return "";
                }
                if (iM <= i2) {
                    h(iM);
                    bArrA = this.f2679f;
                    this.i = iM + 0;
                } else {
                    bArrA = a(iM, false);
                }
                i = 0;
            }
            return q1.a.a(bArrA, i, iM);
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int t() throws IOException {
            if (c()) {
                this.j = 0;
                return 0;
            }
            int iM = m();
            this.j = iM;
            int i = r1.a;
            if ((iM >>> 3) != 0) {
                return iM;
            }
            throw z.b();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int u() throws IOException {
            return m();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public long v() throws IOException {
            return z();
        }

        public byte w() throws IOException {
            if (this.i == this.f2680g) {
                h(1);
            }
            byte[] bArr = this.f2679f;
            int i = this.i;
            this.i = i + 1;
            return bArr[i];
        }

        public int x() throws IOException {
            int i = this.i;
            if (this.f2680g - i < 4) {
                h(4);
                i = this.i;
            }
            byte[] bArr = this.f2679f;
            this.i = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }

        public long y() throws IOException {
            int i = this.i;
            if (this.f2680g - i < 8) {
                h(8);
                i = this.i;
            }
            byte[] bArr = this.f2679f;
            this.i = i + 8;
            return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b4, code lost:
        
            if (r2[r0] < 0) goto L40;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public long z() throws java.io.IOException {
            /*
                r11 = this;
                int r0 = r11.i
                int r1 = r11.f2680g
                if (r1 != r0) goto L8
                goto Lb6
            L8:
                byte[] r2 = r11.f2679f
                int r3 = r0 + 1
                r0 = r2[r0]
                if (r0 < 0) goto L14
                r11.i = r3
                long r0 = (long) r0
                return r0
            L14:
                int r1 = r1 - r3
                r4 = 9
                if (r1 >= r4) goto L1b
                goto Lb6
            L1b:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 7
                r0 = r0 ^ r3
                if (r0 >= 0) goto L29
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            L26:
                long r2 = (long) r0
                goto Lbd
            L29:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L3a
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
                long r0 = (long) r0
                r9 = r0
                r1 = r3
                r2 = r9
                goto Lbd
            L3a:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 21
                r0 = r0 ^ r3
                if (r0 >= 0) goto L48
                r2 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r2
                goto L26
            L48:
                long r3 = (long) r0
                int r0 = r1 + 1
                r1 = r2[r1]
                long r5 = (long) r1
                r1 = 28
                long r5 = r5 << r1
                long r3 = r3 ^ r5
                r5 = 0
                int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r1 < 0) goto L5f
                r1 = 266354560(0xfe03f80, double:1.315966377E-315)
            L5b:
                long r2 = r3 ^ r1
                r1 = r0
                goto Lbd
            L5f:
                int r1 = r0 + 1
                r0 = r2[r0]
                long r7 = (long) r0
                r0 = 35
                long r7 = r7 << r0
                long r3 = r3 ^ r7
                int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r0 >= 0) goto L74
                r5 = -34093383808(0xfffffff80fe03f80, double:NaN)
            L71:
                long r2 = r3 ^ r5
                goto Lbd
            L74:
                int r0 = r1 + 1
                r1 = r2[r1]
                long r7 = (long) r1
                r1 = 42
                long r7 = r7 << r1
                long r3 = r3 ^ r7
                int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r1 < 0) goto L87
                r1 = 4363953127296(0x3f80fe03f80, double:2.1560793202584E-311)
                goto L5b
            L87:
                int r1 = r0 + 1
                r0 = r2[r0]
                long r7 = (long) r0
                r0 = 49
                long r7 = r7 << r0
                long r3 = r3 ^ r7
                int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r0 >= 0) goto L9a
                r5 = -558586000294016(0xfffe03f80fe03f80, double:NaN)
                goto L71
            L9a:
                int r0 = r1 + 1
                r1 = r2[r1]
                long r7 = (long) r1
                r1 = 56
                long r7 = r7 << r1
                long r3 = r3 ^ r7
                r7 = 71499008037633920(0xfe03f80fe03f80, double:6.838959413692434E-304)
                long r3 = r3 ^ r7
                int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r1 >= 0) goto Lbb
                int r1 = r0 + 1
                r0 = r2[r0]
                long r7 = (long) r0
                int r0 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
                if (r0 >= 0) goto Lbc
            Lb6:
                long r0 = r11.A()
                return r0
            Lbb:
                r1 = r0
            Lbc:
                r2 = r3
            Lbd:
                r11.i = r1
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.protobuf.j.c.z():long");
        }
    }

    public static final class d extends j {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ByteBuffer f2681e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f2682f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final long f2683g;
        public long h;
        public long i;
        public long j;
        public int k;
        public int l;
        public int m;

        public d(ByteBuffer byteBuffer, boolean z) {
            super();
            this.m = Integer.MAX_VALUE;
            this.f2681e = byteBuffer;
            long jA = p1.a(byteBuffer);
            this.f2683g = jA;
            this.h = ((long) byteBuffer.limit()) + jA;
            long jPosition = jA + ((long) byteBuffer.position());
            this.i = jPosition;
            this.j = jPosition;
            this.f2682f = z;
        }

        public long A() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                byte bW = w();
                j |= ((long) (bW & Ascii.DEL)) << i;
                if ((bW & 128) == 0) {
                    return j;
                }
            }
            throw z.e();
        }

        public final void B() {
            long j = this.h + ((long) this.k);
            this.h = j;
            int i = (int) (j - this.j);
            int i2 = this.m;
            if (i <= i2) {
                this.k = 0;
                return;
            }
            int i3 = i - i2;
            this.k = i3;
            this.h = j - ((long) i3);
        }

        public final int C() {
            return (int) (this.h - this.i);
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int a() {
            int i = this.m;
            if (i == Integer.MAX_VALUE) {
                return -1;
            }
            return i - b();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public void a(int i) throws z {
            if (this.l != i) {
                throw z.a();
            }
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public void a(int i, o0.a aVar, q qVar) throws IOException {
            int i2 = this.a;
            if (i2 >= this.b) {
                throw z.h();
            }
            this.a = i2 + 1;
            ((GeneratedMessageLite.b) aVar).a(this, qVar);
            a(r1.a(i, 4));
            this.a--;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public void a(o0.a aVar, q qVar) throws IOException {
            int iM = m();
            if (this.a >= this.b) {
                throw z.h();
            }
            int iD = d(iM);
            this.a++;
            ((GeneratedMessageLite.b) aVar).a(this, qVar);
            a(0);
            this.a--;
            this.m = iD;
            B();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int b() {
            return (int) (this.i - this.j);
        }

        public final int b(long j) {
            return (int) (j - this.f2683g);
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public void c(int i) {
            this.m = i;
            B();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public boolean c() throws IOException {
            return this.i == this.h;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int d(int i) throws z {
            if (i < 0) {
                throw z.f();
            }
            int iB = i + b();
            int i2 = this.m;
            if (iB > i2) {
                throw z.i();
            }
            this.m = iB;
            B();
            return i2;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public boolean d() throws IOException {
            return z() != 0;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public i e() throws IOException {
            int iM = m();
            if (iM <= 0 || iM > C()) {
                if (iM == 0) {
                    return i.b;
                }
                if (iM < 0) {
                    throw z.f();
                }
                throw z.i();
            }
            byte[] bArr = new byte[iM];
            long j = iM;
            p1.f2697e.a(this.i, bArr, 0L, j);
            this.i += j;
            i iVar = i.b;
            return new i.h(bArr);
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public boolean e(int i) throws IOException {
            int iT;
            int i2 = r1.a;
            int i3 = i & 7;
            int i4 = 0;
            if (i3 == 0) {
                if (C() < 10) {
                    while (i4 < 10) {
                        if (w() < 0) {
                            i4++;
                        }
                    }
                    throw z.e();
                }
                while (i4 < 10) {
                    long j = this.i;
                    this.i = 1 + j;
                    if (p1.f2697e.a(j) < 0) {
                        i4++;
                    }
                }
                throw z.e();
                return true;
            }
            if (i3 == 1) {
                f(8);
                return true;
            }
            if (i3 == 2) {
                f(m());
                return true;
            }
            if (i3 != 3) {
                if (i3 == 4) {
                    return false;
                }
                if (i3 != 5) {
                    throw z.d();
                }
                f(4);
                return true;
            }
            do {
                iT = t();
                if (iT == 0) {
                    break;
                }
            } while (e(iT));
            a(r1.a(i >>> 3, 4));
            return true;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public double f() throws IOException {
            return Double.longBitsToDouble(y());
        }

        public void f(int i) throws IOException {
            if (i >= 0 && i <= C()) {
                this.i += (long) i;
            } else {
                if (i >= 0) {
                    throw z.i();
                }
                throw z.f();
            }
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int g() throws IOException {
            return m();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int h() throws IOException {
            return x();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public long i() throws IOException {
            return y();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public float j() throws IOException {
            return Float.intBitsToFloat(x());
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int k() throws IOException {
            return m();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public long l() throws IOException {
            return z();
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0085, code lost:
        
            if (r6.a(r4) < 0) goto L34;
         */
        @Override // com.fyber.inneractive.sdk.protobuf.j
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public int m() throws java.io.IOException {
            /*
                r11 = this;
                long r0 = r11.i
                long r2 = r11.h
                int r4 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
                if (r4 != 0) goto La
                goto L87
            La:
                r2 = 1
                long r4 = r0 + r2
                com.fyber.inneractive.sdk.protobuf.p1$d r6 = com.fyber.inneractive.sdk.protobuf.p1.f2697e
                byte r0 = r6.a(r0)
                if (r0 < 0) goto L19
                r11.i = r4
                return r0
            L19:
                long r7 = r11.h
                long r7 = r7 - r4
                r9 = 9
                int r1 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
                if (r1 >= 0) goto L23
                goto L87
            L23:
                long r7 = r4 + r2
                byte r1 = r6.a(r4)
                int r1 = r1 << 7
                r0 = r0 ^ r1
                if (r0 >= 0) goto L31
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
                goto L8d
            L31:
                long r4 = r7 + r2
                byte r1 = r6.a(r7)
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L40
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            L3e:
                r7 = r4
                goto L8d
            L40:
                long r7 = r4 + r2
                byte r1 = r6.a(r4)
                int r1 = r1 << 21
                r0 = r0 ^ r1
                if (r0 >= 0) goto L50
                r1 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r1
                goto L8d
            L50:
                long r4 = r7 + r2
                byte r1 = r6.a(r7)
                int r7 = r1 << 28
                r0 = r0 ^ r7
                r7 = 266354560(0xfe03f80, float:2.2112565E-29)
                r0 = r0 ^ r7
                if (r1 >= 0) goto L3e
                long r7 = r4 + r2
                byte r1 = r6.a(r4)
                if (r1 >= 0) goto L8d
                long r4 = r7 + r2
                byte r1 = r6.a(r7)
                if (r1 >= 0) goto L3e
                long r7 = r4 + r2
                byte r1 = r6.a(r4)
                if (r1 >= 0) goto L8d
                long r4 = r7 + r2
                byte r1 = r6.a(r7)
                if (r1 >= 0) goto L3e
                long r7 = r4 + r2
                byte r1 = r6.a(r4)
                if (r1 >= 0) goto L8d
            L87:
                long r0 = r11.A()
                int r1 = (int) r0
                return r1
            L8d:
                r11.i = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.protobuf.j.d.m():int");
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int n() throws IOException {
            return x();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public long o() throws IOException {
            return y();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int p() throws IOException {
            return j.b(m());
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public long q() throws IOException {
            return j.a(z());
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public String r() throws IOException {
            int iM = m();
            if (iM <= 0 || iM > C()) {
                if (iM == 0) {
                    return "";
                }
                if (iM < 0) {
                    throw z.f();
                }
                throw z.i();
            }
            byte[] bArr = new byte[iM];
            long j = iM;
            p1.f2697e.a(this.i, bArr, 0L, j);
            String str = new String(bArr, y.a);
            this.i += j;
            return str;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public String s() throws IOException {
            int iM = m();
            if (iM <= 0 || iM > C()) {
                if (iM == 0) {
                    return "";
                }
                if (iM <= 0) {
                    throw z.f();
                }
                throw z.i();
            }
            int iB = b(this.i);
            ByteBuffer byteBuffer = this.f2681e;
            q1.b bVar = q1.a;
            bVar.getClass();
            String strA = byteBuffer.hasArray() ? bVar.a(byteBuffer.array(), byteBuffer.arrayOffset() + iB, iM) : byteBuffer.isDirect() ? bVar.b(byteBuffer, iB, iM) : bVar.a(byteBuffer, iB, iM);
            this.i += (long) iM;
            return strA;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int t() throws IOException {
            if (c()) {
                this.l = 0;
                return 0;
            }
            int iM = m();
            this.l = iM;
            int i = r1.a;
            if ((iM >>> 3) != 0) {
                return iM;
            }
            throw z.b();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public int u() throws IOException {
            return m();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.j
        public long v() throws IOException {
            return z();
        }

        public byte w() throws IOException {
            long j = this.i;
            if (j == this.h) {
                throw z.i();
            }
            this.i = 1 + j;
            return p1.f2697e.a(j);
        }

        public int x() throws IOException {
            long j = this.i;
            if (this.h - j < 4) {
                throw z.i();
            }
            this.i = 4 + j;
            p1.d dVar = p1.f2697e;
            return ((dVar.a(j + 3) & 255) << 24) | (dVar.a(j) & 255) | ((dVar.a(1 + j) & 255) << 8) | ((dVar.a(2 + j) & 255) << 16);
        }

        public long y() throws IOException {
            long j = this.i;
            if (this.h - j < 8) {
                throw z.i();
            }
            this.i = 8 + j;
            p1.d dVar = p1.f2697e;
            return ((((long) dVar.a(j + 7)) & 255) << 56) | (((long) dVar.a(j)) & 255) | ((((long) dVar.a(1 + j)) & 255) << 8) | ((((long) dVar.a(2 + j)) & 255) << 16) | ((((long) dVar.a(3 + j)) & 255) << 24) | ((((long) dVar.a(4 + j)) & 255) << 32) | ((((long) dVar.a(5 + j)) & 255) << 40) | ((((long) dVar.a(6 + j)) & 255) << 48);
        }

        public long z() throws IOException {
            long jA;
            long j;
            long j2;
            int i;
            long j3 = this.i;
            if (this.h != j3) {
                long j4 = j3 + 1;
                p1.d dVar = p1.f2697e;
                byte bA = dVar.a(j3);
                if (bA >= 0) {
                    this.i = j4;
                    return bA;
                }
                if (this.h - j4 >= 9) {
                    long j5 = j4 + 1;
                    int iA = bA ^ (dVar.a(j4) << 7);
                    if (iA >= 0) {
                        long j6 = j5 + 1;
                        int iA2 = iA ^ (dVar.a(j5) << Ascii.SO);
                        if (iA2 >= 0) {
                            jA = iA2 ^ 16256;
                        } else {
                            j5 = j6 + 1;
                            int iA3 = iA2 ^ (dVar.a(j6) << Ascii.NAK);
                            if (iA3 < 0) {
                                i = iA3 ^ (-2080896);
                            } else {
                                j6 = j5 + 1;
                                long jA2 = ((long) iA3) ^ (((long) dVar.a(j5)) << 28);
                                if (jA2 < 0) {
                                    long j7 = j6 + 1;
                                    long jA3 = jA2 ^ (((long) dVar.a(j6)) << 35);
                                    if (jA3 < 0) {
                                        j = -34093383808L;
                                    } else {
                                        j6 = j7 + 1;
                                        jA2 = jA3 ^ (((long) dVar.a(j7)) << 42);
                                        if (jA2 >= 0) {
                                            j2 = 4363953127296L;
                                        } else {
                                            j7 = j6 + 1;
                                            jA3 = jA2 ^ (((long) dVar.a(j6)) << 49);
                                            if (jA3 >= 0) {
                                                j6 = j7 + 1;
                                                jA = (jA3 ^ (((long) dVar.a(j7)) << 56)) ^ 71499008037633920L;
                                                if (jA < 0) {
                                                    long j8 = 1 + j6;
                                                    if (dVar.a(j6) >= 0) {
                                                        j5 = j8;
                                                    }
                                                }
                                                this.i = j5;
                                                return jA;
                                            }
                                            j = -558586000294016L;
                                        }
                                    }
                                    jA = jA3 ^ j;
                                    j5 = j7;
                                    this.i = j5;
                                    return jA;
                                }
                                j2 = 266354560;
                                jA = jA2 ^ j2;
                            }
                        }
                        j5 = j6;
                        this.i = j5;
                        return jA;
                    }
                    i = iA ^ (-128);
                    jA = i;
                    this.i = j5;
                    return jA;
                }
            }
            return A();
        }
    }

    public j() {
        this.b = 100;
        this.c = Integer.MAX_VALUE;
    }

    public static long a(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public static j a(InputStream inputStream) {
        if (inputStream != null) {
            return new c(inputStream, 4096);
        }
        byte[] bArr = y.b;
        return a(bArr, 0, bArr.length, false);
    }

    public static j a(ByteBuffer byteBuffer, boolean z) {
        if (byteBuffer.hasArray()) {
            return a(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining(), z);
        }
        if (byteBuffer.isDirect() && p1.f2698f) {
            return new d(byteBuffer, z);
        }
        int iRemaining = byteBuffer.remaining();
        byte[] bArr = new byte[iRemaining];
        byteBuffer.duplicate().get(bArr);
        return a(bArr, 0, iRemaining, true);
    }

    public static j a(byte[] bArr, int i, int i2, boolean z) {
        b bVar = new b(bArr, i, i2, z);
        try {
            bVar.d(i2);
            return bVar;
        } catch (z e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public static int b(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public abstract int a();

    public abstract void a(int i) throws z;

    public abstract void a(int i, o0.a aVar, q qVar) throws IOException;

    public abstract void a(o0.a aVar, q qVar) throws IOException;

    public abstract int b();

    public abstract void c(int i);

    public abstract boolean c() throws IOException;

    public abstract int d(int i) throws z;

    public abstract boolean d() throws IOException;

    public abstract i e() throws IOException;

    public abstract boolean e(int i) throws IOException;

    public abstract double f() throws IOException;

    public abstract int g() throws IOException;

    public abstract int h() throws IOException;

    public abstract long i() throws IOException;

    public abstract float j() throws IOException;

    public abstract int k() throws IOException;

    public abstract long l() throws IOException;

    public abstract int m() throws IOException;

    public abstract int n() throws IOException;

    public abstract long o() throws IOException;

    public abstract int p() throws IOException;

    public abstract long q() throws IOException;

    public abstract String r() throws IOException;

    public abstract String s() throws IOException;

    public abstract int t() throws IOException;

    public abstract int u() throws IOException;

    public abstract long v() throws IOException;
}

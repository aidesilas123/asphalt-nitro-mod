package com.fyber.inneractive.sdk.protobuf;

import com.applovin.exoplayer2.common.base.Ascii;
import com.fyber.inneractive.sdk.protobuf.h0;
import com.fyber.inneractive.sdk.protobuf.i;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f implements c1 {

    public static final class b extends f {
        public final boolean a;
        public final byte[] b;
        public int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2660d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2661e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f2662f;

        public b(ByteBuffer byteBuffer, boolean z) {
            super();
            this.a = z;
            this.b = byteBuffer.array();
            this.c = byteBuffer.arrayOffset() + byteBuffer.position();
            this.f2660d = byteBuffer.arrayOffset() + byteBuffer.limit();
        }

        public final int A() throws IOException {
            int i;
            int i2 = this.c;
            int i3 = this.f2660d;
            if (i3 == i2) {
                throw z.i();
            }
            byte[] bArr = this.b;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.c = i4;
                return b;
            }
            if (i3 - i4 < 9) {
                return (int) C();
            }
            int i5 = i4 + 1;
            int i6 = b ^ (bArr[i4] << 7);
            if (i6 < 0) {
                i = i6 ^ (-128);
            } else {
                int i7 = i5 + 1;
                int i8 = i6 ^ (bArr[i5] << Ascii.SO);
                if (i8 >= 0) {
                    i = i8 ^ 16256;
                } else {
                    i5 = i7 + 1;
                    int i9 = i8 ^ (bArr[i7] << Ascii.NAK);
                    if (i9 < 0) {
                        i = i9 ^ (-2080896);
                    } else {
                        i7 = i5 + 1;
                        byte b2 = bArr[i5];
                        i = (i9 ^ (b2 << Ascii.FS)) ^ 266354560;
                        if (b2 < 0) {
                            i5 = i7 + 1;
                            if (bArr[i7] < 0) {
                                i7 = i5 + 1;
                                if (bArr[i5] < 0) {
                                    i5 = i7 + 1;
                                    if (bArr[i7] < 0) {
                                        i7 = i5 + 1;
                                        if (bArr[i5] < 0) {
                                            i5 = i7 + 1;
                                            if (bArr[i7] < 0) {
                                                throw z.e();
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                i5 = i7;
            }
            this.c = i5;
            return i;
        }

        public long B() throws IOException {
            long j;
            long j2;
            long j3;
            int i;
            int i2 = this.c;
            int i3 = this.f2660d;
            if (i3 == i2) {
                throw z.i();
            }
            byte[] bArr = this.b;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.c = i4;
                return b;
            }
            if (i3 - i4 < 9) {
                return C();
            }
            int i5 = i4 + 1;
            int i6 = b ^ (bArr[i4] << 7);
            if (i6 >= 0) {
                int i7 = i5 + 1;
                int i8 = i6 ^ (bArr[i5] << Ascii.SO);
                if (i8 >= 0) {
                    i5 = i7;
                    j = i8 ^ 16256;
                } else {
                    i5 = i7 + 1;
                    int i9 = i8 ^ (bArr[i7] << Ascii.NAK);
                    if (i9 < 0) {
                        i = i9 ^ (-2080896);
                    } else {
                        long j4 = i9;
                        int i10 = i5 + 1;
                        long j5 = j4 ^ (((long) bArr[i5]) << 28);
                        if (j5 >= 0) {
                            j3 = 266354560;
                        } else {
                            i5 = i10 + 1;
                            long j6 = j5 ^ (((long) bArr[i10]) << 35);
                            if (j6 < 0) {
                                j2 = -34093383808L;
                            } else {
                                i10 = i5 + 1;
                                j5 = j6 ^ (((long) bArr[i5]) << 42);
                                if (j5 >= 0) {
                                    j3 = 4363953127296L;
                                } else {
                                    i5 = i10 + 1;
                                    j6 = j5 ^ (((long) bArr[i10]) << 49);
                                    if (j6 < 0) {
                                        j2 = -558586000294016L;
                                    } else {
                                        int i11 = i5 + 1;
                                        long j7 = (j6 ^ (((long) bArr[i5]) << 56)) ^ 71499008037633920L;
                                        if (j7 < 0) {
                                            i5 = i11 + 1;
                                            if (bArr[i11] < 0) {
                                                throw z.e();
                                            }
                                        } else {
                                            i5 = i11;
                                        }
                                        j = j7;
                                    }
                                }
                            }
                            j = j6 ^ j2;
                        }
                        j = j5 ^ j3;
                        i5 = i10;
                    }
                }
                this.c = i5;
                return j;
            }
            i = i6 ^ (-128);
            j = i;
            this.c = i5;
            return j;
        }

        public final long C() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                byte bV = v();
                j |= ((long) (bV & Ascii.DEL)) << i;
                if ((bV & 128) == 0) {
                    return j;
                }
            }
            throw z.e();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public i a() throws IOException {
            i iVarA;
            c(2);
            int iA = A();
            if (iA == 0) {
                return i.b;
            }
            a(iA);
            if (this.a) {
                byte[] bArr = this.b;
                int i = this.c;
                i iVar = i.b;
                iVarA = new i.d(bArr, i, iA);
            } else {
                iVarA = i.a(this.b, this.c, iA);
            }
            this.c += iA;
            return iVarA;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public <T> T a(d1<T> d1Var, q qVar) throws IOException {
            c(3);
            return (T) c(d1Var, qVar);
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public <T> T a(Class<T> cls, q qVar) throws IOException {
            c(3);
            return (T) c(z0.c.a(cls), qVar);
        }

        public String a(boolean z) throws IOException {
            c(2);
            int iA = A();
            if (iA == 0) {
                return "";
            }
            a(iA);
            if (z) {
                byte[] bArr = this.b;
                int i = this.c;
                if (!q1.b(bArr, i, i + iA)) {
                    throw z.c();
                }
            }
            String str = new String(this.b, this.c, iA, y.a);
            this.c += iA;
            return str;
        }

        public final void a(int i) throws IOException {
            if (i < 0 || i > this.f2660d - this.c) {
                throw z.i();
            }
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public void a(List<Long> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof f0)) {
                int i3 = this.f2661e;
                int i4 = r1.a;
                int i5 = i3 & 7;
                if (i5 == 0) {
                    do {
                        list.add(Long.valueOf(f()));
                        if (u()) {
                            return;
                        } else {
                            i = this.c;
                        }
                    } while (A() == this.f2661e);
                    this.c = i;
                    return;
                }
                if (i5 != 2) {
                    throw z.d();
                }
                int iA = this.c + A();
                while (this.c < iA) {
                    list.add(Long.valueOf(B()));
                }
                b(iA);
                return;
            }
            f0 f0Var = (f0) list;
            int i6 = this.f2661e;
            int i7 = r1.a;
            int i8 = i6 & 7;
            if (i8 == 0) {
                do {
                    f0Var.a(f());
                    if (u()) {
                        return;
                    } else {
                        i2 = this.c;
                    }
                } while (A() == this.f2661e);
                this.c = i2;
                return;
            }
            if (i8 != 2) {
                throw z.d();
            }
            int iA2 = this.c + A();
            while (this.c < iA2) {
                f0Var.a(B());
            }
            b(iA2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public <T> void a(List<T> list, d1<T> d1Var, q qVar) throws IOException {
            int i;
            int i2 = this.f2661e;
            int i3 = r1.a;
            if ((i2 & 7) != 3) {
                throw z.d();
            }
            do {
                list.add(c(d1Var, qVar));
                if (u()) {
                    return;
                } else {
                    i = this.c;
                }
            } while (A() == i2);
            this.c = i;
        }

        public void a(List<String> list, boolean z) throws IOException {
            int i;
            int i2;
            int i3 = this.f2661e;
            int i4 = r1.a;
            if ((i3 & 7) != 2) {
                throw z.d();
            }
            if (!(list instanceof d0) || z) {
                do {
                    list.add(a(z));
                    if (u()) {
                        return;
                    } else {
                        i = this.c;
                    }
                } while (A() == this.f2661e);
                this.c = i;
                return;
            }
            d0 d0Var = (d0) list;
            do {
                d0Var.a(a());
                if (u()) {
                    return;
                } else {
                    i2 = this.c;
                }
            } while (A() == this.f2661e);
            this.c = i2;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public <K, V> void a(Map<K, V> map, h0.a<K, V> aVar, q qVar) throws IOException {
            c(2);
            int iA = A();
            a(iA);
            int i = this.f2660d;
            this.f2660d = this.c + iA;
            try {
                throw null;
            } catch (Throwable th) {
                this.f2660d = i;
                throw th;
            }
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public int b() throws IOException {
            c(0);
            return A();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public <T> T b(d1<T> d1Var, q qVar) throws IOException {
            c(2);
            return (T) d(d1Var, qVar);
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public <T> T b(Class<T> cls, q qVar) throws IOException {
            c(2);
            return (T) d(z0.c.a(cls), qVar);
        }

        public final void b(int i) throws IOException {
            if (this.c != i) {
                throw z.i();
            }
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public void b(List<String> list) throws IOException {
            a(list, true);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public <T> void b(List<T> list, d1<T> d1Var, q qVar) throws IOException {
            int i;
            int i2 = this.f2661e;
            int i3 = r1.a;
            if ((i2 & 7) != 2) {
                throw z.d();
            }
            do {
                list.add(d(d1Var, qVar));
                if (u()) {
                    return;
                } else {
                    i = this.c;
                }
            } while (A() == i2);
            this.c = i;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public int c() throws IOException {
            c(0);
            return A();
        }

        public final <T> T c(d1<T> d1Var, q qVar) throws IOException {
            int i = this.f2662f;
            int i2 = this.f2661e;
            int i3 = r1.a;
            this.f2662f = r1.a(i2 >>> 3, 4);
            try {
                T tA = d1Var.a();
                d1Var.a(tA, this, qVar);
                d1Var.c(tA);
                if (this.f2661e == this.f2662f) {
                    return tA;
                }
                throw z.g();
            } finally {
                this.f2662f = i;
            }
        }

        public final void c(int i) throws IOException {
            int i2 = this.f2661e;
            int i3 = r1.a;
            if ((i2 & 7) != i) {
                throw z.d();
            }
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public void c(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof x)) {
                int i3 = this.f2661e;
                int i4 = r1.a;
                int i5 = i3 & 7;
                if (i5 != 0) {
                    if (i5 != 2) {
                        throw z.d();
                    }
                    int iA = this.c + A();
                    while (this.c < iA) {
                        list.add(Integer.valueOf(j.b(A())));
                    }
                    return;
                }
                do {
                    list.add(Integer.valueOf(j()));
                    if (u()) {
                        return;
                    } else {
                        i = this.c;
                    }
                } while (A() == this.f2661e);
                this.c = i;
                return;
            }
            x xVar = (x) list;
            int i6 = this.f2661e;
            int i7 = r1.a;
            int i8 = i6 & 7;
            if (i8 != 0) {
                if (i8 != 2) {
                    throw z.d();
                }
                int iA2 = this.c + A();
                while (this.c < iA2) {
                    xVar.c(j.b(A()));
                }
                return;
            }
            do {
                xVar.c(j());
                if (u()) {
                    return;
                } else {
                    i2 = this.c;
                }
            } while (A() == this.f2661e);
            this.c = i2;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public int d() throws IOException {
            c(0);
            return A();
        }

        public final <T> T d(d1<T> d1Var, q qVar) throws IOException {
            int iA = A();
            a(iA);
            int i = this.f2660d;
            int i2 = this.c + iA;
            this.f2660d = i2;
            try {
                T tA = d1Var.a();
                d1Var.a(tA, this, qVar);
                d1Var.c(tA);
                if (this.c == i2) {
                    return tA;
                }
                throw z.g();
            } finally {
                this.f2660d = i;
            }
        }

        public final void d(int i) throws IOException {
            a(i);
            this.c += i;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public void d(List<Float> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof v)) {
                int i3 = this.f2661e;
                int i4 = r1.a;
                int i5 = i3 & 7;
                if (i5 == 2) {
                    int iA = A();
                    e(iA);
                    int i6 = this.c + iA;
                    while (this.c < i6) {
                        list.add(Float.valueOf(Float.intBitsToFloat(x())));
                    }
                    return;
                }
                if (i5 != 5) {
                    throw z.d();
                }
                do {
                    list.add(Float.valueOf(k()));
                    if (u()) {
                        return;
                    } else {
                        i = this.c;
                    }
                } while (A() == this.f2661e);
                this.c = i;
                return;
            }
            v vVar = (v) list;
            int i7 = this.f2661e;
            int i8 = r1.a;
            int i9 = i7 & 7;
            if (i9 == 2) {
                int iA2 = A();
                e(iA2);
                int i10 = this.c + iA2;
                while (this.c < i10) {
                    vVar.a(Float.intBitsToFloat(x()));
                }
                return;
            }
            if (i9 != 5) {
                throw z.d();
            }
            do {
                vVar.a(k());
                if (u()) {
                    return;
                } else {
                    i2 = this.c;
                }
            } while (A() == this.f2661e);
            this.c = i2;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public int e() {
            return this.f2661e;
        }

        public final void e(int i) throws IOException {
            a(i);
            if ((i & 3) != 0) {
                throw z.g();
            }
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public void e(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof x)) {
                int i3 = this.f2661e;
                int i4 = r1.a;
                int i5 = i3 & 7;
                if (i5 == 2) {
                    int iA = A();
                    e(iA);
                    int i6 = this.c + iA;
                    while (this.c < i6) {
                        list.add(Integer.valueOf(x()));
                    }
                    return;
                }
                if (i5 != 5) {
                    throw z.d();
                }
                do {
                    list.add(Integer.valueOf(q()));
                    if (u()) {
                        return;
                    } else {
                        i = this.c;
                    }
                } while (A() == this.f2661e);
                this.c = i;
                return;
            }
            x xVar = (x) list;
            int i7 = this.f2661e;
            int i8 = r1.a;
            int i9 = i7 & 7;
            if (i9 == 2) {
                int iA2 = A();
                e(iA2);
                int i10 = this.c + iA2;
                while (this.c < i10) {
                    xVar.c(x());
                }
                return;
            }
            if (i9 != 5) {
                throw z.d();
            }
            do {
                xVar.c(q());
                if (u()) {
                    return;
                } else {
                    i2 = this.c;
                }
            } while (A() == this.f2661e);
            this.c = i2;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public long f() throws IOException {
            c(0);
            return B();
        }

        public final void f(int i) throws IOException {
            a(i);
            if ((i & 7) != 0) {
                throw z.g();
            }
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public void f(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof x)) {
                int i3 = this.f2661e;
                int i4 = r1.a;
                int i5 = i3 & 7;
                if (i5 == 2) {
                    int iA = A();
                    e(iA);
                    int i6 = this.c + iA;
                    while (this.c < i6) {
                        list.add(Integer.valueOf(x()));
                    }
                    return;
                }
                if (i5 != 5) {
                    throw z.d();
                }
                do {
                    list.add(Integer.valueOf(m()));
                    if (u()) {
                        return;
                    } else {
                        i = this.c;
                    }
                } while (A() == this.f2661e);
                this.c = i;
                return;
            }
            x xVar = (x) list;
            int i7 = this.f2661e;
            int i8 = r1.a;
            int i9 = i7 & 7;
            if (i9 == 2) {
                int iA2 = A();
                e(iA2);
                int i10 = this.c + iA2;
                while (this.c < i10) {
                    xVar.c(x());
                }
                return;
            }
            if (i9 != 5) {
                throw z.d();
            }
            do {
                xVar.c(m());
                if (u()) {
                    return;
                } else {
                    i2 = this.c;
                }
            } while (A() == this.f2661e);
            this.c = i2;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public long g() throws IOException {
            c(1);
            return y();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public void g(List<Long> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof f0)) {
                int i3 = this.f2661e;
                int i4 = r1.a;
                int i5 = i3 & 7;
                if (i5 != 0) {
                    if (i5 != 2) {
                        throw z.d();
                    }
                    int iA = this.c + A();
                    while (this.c < iA) {
                        list.add(Long.valueOf(j.a(B())));
                    }
                    return;
                }
                do {
                    list.add(Long.valueOf(l()));
                    if (u()) {
                        return;
                    } else {
                        i = this.c;
                    }
                } while (A() == this.f2661e);
                this.c = i;
                return;
            }
            f0 f0Var = (f0) list;
            int i6 = this.f2661e;
            int i7 = r1.a;
            int i8 = i6 & 7;
            if (i8 != 0) {
                if (i8 != 2) {
                    throw z.d();
                }
                int iA2 = this.c + A();
                while (this.c < iA2) {
                    f0Var.a(j.a(B()));
                }
                return;
            }
            do {
                f0Var.a(l());
                if (u()) {
                    return;
                } else {
                    i2 = this.c;
                }
            } while (A() == this.f2661e);
            this.c = i2;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public double h() throws IOException {
            c(1);
            return Double.longBitsToDouble(y());
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public void h(List<i> list) throws IOException {
            int i;
            int i2 = this.f2661e;
            int i3 = r1.a;
            if ((i2 & 7) != 2) {
                throw z.d();
            }
            do {
                list.add(a());
                if (u()) {
                    return;
                } else {
                    i = this.c;
                }
            } while (A() == this.f2661e);
            this.c = i;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public void i(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof x)) {
                int i3 = this.f2661e;
                int i4 = r1.a;
                int i5 = i3 & 7;
                if (i5 != 0) {
                    if (i5 != 2) {
                        throw z.d();
                    }
                    int iA = this.c + A();
                    while (this.c < iA) {
                        list.add(Integer.valueOf(A()));
                    }
                    return;
                }
                do {
                    list.add(Integer.valueOf(c()));
                    if (u()) {
                        return;
                    } else {
                        i = this.c;
                    }
                } while (A() == this.f2661e);
                this.c = i;
                return;
            }
            x xVar = (x) list;
            int i6 = this.f2661e;
            int i7 = r1.a;
            int i8 = i6 & 7;
            if (i8 != 0) {
                if (i8 != 2) {
                    throw z.d();
                }
                int iA2 = this.c + A();
                while (this.c < iA2) {
                    xVar.c(A());
                }
                return;
            }
            do {
                xVar.c(c());
                if (u()) {
                    return;
                } else {
                    i2 = this.c;
                }
            } while (A() == this.f2661e);
            this.c = i2;
        }

        /* JADX WARN: Removed duplicated region for block: B:44:0x007a  */
        @Override // com.fyber.inneractive.sdk.protobuf.c1
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean i() throws java.io.IOException {
            /*
                r7 = this;
                boolean r0 = r7.u()
                r1 = 0
                if (r0 != 0) goto L89
                int r0 = r7.f2661e
                int r2 = r7.f2662f
                if (r0 != r2) goto Lf
                goto L89
            Lf:
                int r3 = com.fyber.inneractive.sdk.protobuf.r1.a
                r3 = r0 & 7
                r4 = 1
                if (r3 == 0) goto L5d
                if (r3 == r4) goto L57
                r1 = 2
                if (r3 == r1) goto L4f
                r1 = 4
                r5 = 3
                if (r3 == r5) goto L2b
                r0 = 5
                if (r3 != r0) goto L26
                r7.d(r1)
                return r4
            L26:
                com.fyber.inneractive.sdk.protobuf.z$a r0 = com.fyber.inneractive.sdk.protobuf.z.d()
                throw r0
            L2b:
                int r0 = r0 >>> r5
                int r0 = com.fyber.inneractive.sdk.protobuf.r1.a(r0, r1)
                r7.f2662f = r0
            L32:
                int r0 = r7.s()
                r1 = 2147483647(0x7fffffff, float:NaN)
                if (r0 == r1) goto L41
                boolean r0 = r7.i()
                if (r0 != 0) goto L32
            L41:
                int r0 = r7.f2661e
                int r1 = r7.f2662f
                if (r0 != r1) goto L4a
                r7.f2662f = r2
                return r4
            L4a:
                com.fyber.inneractive.sdk.protobuf.z r0 = com.fyber.inneractive.sdk.protobuf.z.g()
                throw r0
            L4f:
                int r0 = r7.A()
                r7.d(r0)
                return r4
            L57:
                r0 = 8
                r7.d(r0)
                return r4
            L5d:
                int r0 = r7.f2660d
                int r2 = r7.c
                int r0 = r0 - r2
                r3 = 10
                if (r0 < r3) goto L78
                byte[] r0 = r7.b
                r5 = 0
            L69:
                if (r5 >= r3) goto L78
                int r6 = r2 + 1
                r2 = r0[r2]
                if (r2 < 0) goto L74
                r7.c = r6
                goto L80
            L74:
                int r5 = r5 + 1
                r2 = r6
                goto L69
            L78:
                if (r1 >= r3) goto L84
                byte r0 = r7.v()
                if (r0 < 0) goto L81
            L80:
                return r4
            L81:
                int r1 = r1 + 1
                goto L78
            L84:
                com.fyber.inneractive.sdk.protobuf.z r0 = com.fyber.inneractive.sdk.protobuf.z.e()
                throw r0
            L89:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.protobuf.f.b.i():boolean");
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public int j() throws IOException {
            c(0);
            return j.b(A());
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public void j(List<Double> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof n)) {
                int i3 = this.f2661e;
                int i4 = r1.a;
                int i5 = i3 & 7;
                if (i5 == 1) {
                    do {
                        list.add(Double.valueOf(h()));
                        if (u()) {
                            return;
                        } else {
                            i = this.c;
                        }
                    } while (A() == this.f2661e);
                    this.c = i;
                    return;
                }
                if (i5 != 2) {
                    throw z.d();
                }
                int iA = A();
                f(iA);
                int i6 = this.c + iA;
                while (this.c < i6) {
                    list.add(Double.valueOf(Double.longBitsToDouble(z())));
                }
                return;
            }
            n nVar = (n) list;
            int i7 = this.f2661e;
            int i8 = r1.a;
            int i9 = i7 & 7;
            if (i9 == 1) {
                do {
                    nVar.a(h());
                    if (u()) {
                        return;
                    } else {
                        i2 = this.c;
                    }
                } while (A() == this.f2661e);
                this.c = i2;
                return;
            }
            if (i9 != 2) {
                throw z.d();
            }
            int iA2 = A();
            f(iA2);
            int i10 = this.c + iA2;
            while (this.c < i10) {
                nVar.a(Double.longBitsToDouble(z()));
            }
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public float k() throws IOException {
            c(5);
            return Float.intBitsToFloat(w());
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public void k(List<Long> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof f0)) {
                int i3 = this.f2661e;
                int i4 = r1.a;
                int i5 = i3 & 7;
                if (i5 == 0) {
                    do {
                        list.add(Long.valueOf(o()));
                        if (u()) {
                            return;
                        } else {
                            i = this.c;
                        }
                    } while (A() == this.f2661e);
                    this.c = i;
                    return;
                }
                if (i5 != 2) {
                    throw z.d();
                }
                int iA = this.c + A();
                while (this.c < iA) {
                    list.add(Long.valueOf(B()));
                }
                b(iA);
                return;
            }
            f0 f0Var = (f0) list;
            int i6 = this.f2661e;
            int i7 = r1.a;
            int i8 = i6 & 7;
            if (i8 == 0) {
                do {
                    f0Var.a(o());
                    if (u()) {
                        return;
                    } else {
                        i2 = this.c;
                    }
                } while (A() == this.f2661e);
                this.c = i2;
                return;
            }
            if (i8 != 2) {
                throw z.d();
            }
            int iA2 = this.c + A();
            while (this.c < iA2) {
                f0Var.a(B());
            }
            b(iA2);
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public long l() throws IOException {
            c(0);
            return j.a(B());
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public void l(List<Boolean> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof g)) {
                int i3 = this.f2661e;
                int i4 = r1.a;
                int i5 = i3 & 7;
                if (i5 != 0) {
                    if (i5 != 2) {
                        throw z.d();
                    }
                    int iA = this.c + A();
                    while (this.c < iA) {
                        list.add(Boolean.valueOf(A() != 0));
                    }
                    b(iA);
                    return;
                }
                do {
                    list.add(Boolean.valueOf(r()));
                    if (u()) {
                        return;
                    } else {
                        i = this.c;
                    }
                } while (A() == this.f2661e);
                this.c = i;
                return;
            }
            g gVar = (g) list;
            int i6 = this.f2661e;
            int i7 = r1.a;
            int i8 = i6 & 7;
            if (i8 != 0) {
                if (i8 != 2) {
                    throw z.d();
                }
                int iA2 = this.c + A();
                while (this.c < iA2) {
                    gVar.a(A() != 0);
                }
                b(iA2);
                return;
            }
            do {
                gVar.a(r());
                if (u()) {
                    return;
                } else {
                    i2 = this.c;
                }
            } while (A() == this.f2661e);
            this.c = i2;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public int m() throws IOException {
            c(5);
            return w();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public void m(List<Long> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof f0)) {
                int i3 = this.f2661e;
                int i4 = r1.a;
                int i5 = i3 & 7;
                if (i5 == 1) {
                    do {
                        list.add(Long.valueOf(t()));
                        if (u()) {
                            return;
                        } else {
                            i = this.c;
                        }
                    } while (A() == this.f2661e);
                    this.c = i;
                    return;
                }
                if (i5 != 2) {
                    throw z.d();
                }
                int iA = A();
                f(iA);
                int i6 = this.c + iA;
                while (this.c < i6) {
                    list.add(Long.valueOf(z()));
                }
                return;
            }
            f0 f0Var = (f0) list;
            int i7 = this.f2661e;
            int i8 = r1.a;
            int i9 = i7 & 7;
            if (i9 == 1) {
                do {
                    f0Var.a(t());
                    if (u()) {
                        return;
                    } else {
                        i2 = this.c;
                    }
                } while (A() == this.f2661e);
                this.c = i2;
                return;
            }
            if (i9 != 2) {
                throw z.d();
            }
            int iA2 = A();
            f(iA2);
            int i10 = this.c + iA2;
            while (this.c < i10) {
                f0Var.a(z());
            }
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public String n() throws IOException {
            return a(false);
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public void n(List<Long> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof f0)) {
                int i3 = this.f2661e;
                int i4 = r1.a;
                int i5 = i3 & 7;
                if (i5 == 1) {
                    do {
                        list.add(Long.valueOf(g()));
                        if (u()) {
                            return;
                        } else {
                            i = this.c;
                        }
                    } while (A() == this.f2661e);
                    this.c = i;
                    return;
                }
                if (i5 != 2) {
                    throw z.d();
                }
                int iA = A();
                f(iA);
                int i6 = this.c + iA;
                while (this.c < i6) {
                    list.add(Long.valueOf(z()));
                }
                return;
            }
            f0 f0Var = (f0) list;
            int i7 = this.f2661e;
            int i8 = r1.a;
            int i9 = i7 & 7;
            if (i9 == 1) {
                do {
                    f0Var.a(g());
                    if (u()) {
                        return;
                    } else {
                        i2 = this.c;
                    }
                } while (A() == this.f2661e);
                this.c = i2;
                return;
            }
            if (i9 != 2) {
                throw z.d();
            }
            int iA2 = A();
            f(iA2);
            int i10 = this.c + iA2;
            while (this.c < i10) {
                f0Var.a(z());
            }
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public long o() throws IOException {
            c(0);
            return B();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public void o(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof x)) {
                int i3 = this.f2661e;
                int i4 = r1.a;
                int i5 = i3 & 7;
                if (i5 == 0) {
                    do {
                        list.add(Integer.valueOf(d()));
                        if (u()) {
                            return;
                        } else {
                            i = this.c;
                        }
                    } while (A() == this.f2661e);
                    this.c = i;
                    return;
                }
                if (i5 != 2) {
                    throw z.d();
                }
                int iA = this.c + A();
                while (this.c < iA) {
                    list.add(Integer.valueOf(A()));
                }
                b(iA);
                return;
            }
            x xVar = (x) list;
            int i6 = this.f2661e;
            int i7 = r1.a;
            int i8 = i6 & 7;
            if (i8 == 0) {
                do {
                    xVar.c(d());
                    if (u()) {
                        return;
                    } else {
                        i2 = this.c;
                    }
                } while (A() == this.f2661e);
                this.c = i2;
                return;
            }
            if (i8 != 2) {
                throw z.d();
            }
            int iA2 = this.c + A();
            while (this.c < iA2) {
                xVar.c(A());
            }
            b(iA2);
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public String p() throws IOException {
            return a(true);
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public void p(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof x)) {
                int i3 = this.f2661e;
                int i4 = r1.a;
                int i5 = i3 & 7;
                if (i5 != 0) {
                    if (i5 != 2) {
                        throw z.d();
                    }
                    int iA = this.c + A();
                    while (this.c < iA) {
                        list.add(Integer.valueOf(A()));
                    }
                    return;
                }
                do {
                    list.add(Integer.valueOf(b()));
                    if (u()) {
                        return;
                    } else {
                        i = this.c;
                    }
                } while (A() == this.f2661e);
                this.c = i;
                return;
            }
            x xVar = (x) list;
            int i6 = this.f2661e;
            int i7 = r1.a;
            int i8 = i6 & 7;
            if (i8 != 0) {
                if (i8 != 2) {
                    throw z.d();
                }
                int iA2 = this.c + A();
                while (this.c < iA2) {
                    xVar.c(A());
                }
                return;
            }
            do {
                xVar.c(b());
                if (u()) {
                    return;
                } else {
                    i2 = this.c;
                }
            } while (A() == this.f2661e);
            this.c = i2;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public int q() throws IOException {
            c(5);
            return w();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public void q(List<String> list) throws IOException {
            a(list, false);
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public boolean r() throws IOException {
            c(0);
            return A() != 0;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public int s() throws IOException {
            if (u()) {
                return Integer.MAX_VALUE;
            }
            int iA = A();
            this.f2661e = iA;
            if (iA == this.f2662f) {
                return Integer.MAX_VALUE;
            }
            int i = r1.a;
            return iA >>> 3;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.c1
        public long t() throws IOException {
            c(1);
            return y();
        }

        public final boolean u() {
            return this.c == this.f2660d;
        }

        public final byte v() throws IOException {
            int i = this.c;
            if (i == this.f2660d) {
                throw z.i();
            }
            byte[] bArr = this.b;
            this.c = i + 1;
            return bArr[i];
        }

        public final int w() throws IOException {
            a(4);
            return x();
        }

        public final int x() {
            int i = this.c;
            byte[] bArr = this.b;
            this.c = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }

        public final long y() throws IOException {
            a(8);
            return z();
        }

        public final long z() {
            int i = this.c;
            byte[] bArr = this.b;
            this.c = i + 8;
            return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
        }
    }

    public f() {
    }
}

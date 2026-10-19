package com.tapjoy.internal;

import com.applovin.exoplayer2.common.base.Ascii;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes4.dex */
public final class z7 {
    public final d0 a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f8028d;
    public int h;
    public long b = 0;
    public long c = Long.MAX_VALUE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8029e = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8030f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f8031g = -1;

    public z7(n nVar) {
        this.a = nVar;
    }

    public final long a() throws ProtocolException, EOFException {
        if (this.f8029e != 2) {
            throw new ProtocolException("Expected LENGTH_DELIMITED but was " + this.f8029e);
        }
        long j = this.c;
        long j2 = j - this.b;
        if (((n) this.a).b < j2) {
            throw new EOFException();
        }
        this.f8029e = 6;
        this.b = j;
        this.c = this.f8031g;
        this.f8031g = -1L;
        return j2;
    }

    public final void b(int i) throws IOException {
        if (this.f8029e == i) {
            this.f8029e = 6;
            return;
        }
        long j = this.b;
        long j2 = this.c;
        if (j > j2) {
            throw new IOException("Expected to end at " + this.c + " but was " + this.b);
        }
        if (j != j2) {
            this.f8029e = 7;
            return;
        }
        this.c = this.f8031g;
        this.f8031g = -1L;
        this.f8029e = 6;
    }

    public final void c(long j) throws IOException {
        if (this.f8029e != 6) {
            throw new IllegalStateException("Unexpected call to endMessage()");
        }
        int i = this.f8028d - 1;
        this.f8028d = i;
        if (i < 0 || this.f8031g != -1) {
            throw new IllegalStateException("No corresponding call to beginMessage()");
        }
        if (this.b == this.c || i == 0) {
            this.c = j;
            return;
        }
        throw new IOException("Expected to end at " + this.c + " but was " + this.b);
    }

    public final long d() throws IOException {
        if (this.f8029e != 2) {
            throw new IllegalStateException("Unexpected call to beginMessage()");
        }
        int i = this.f8028d + 1;
        this.f8028d = i;
        if (i > 65) {
            throw new IOException("Wire recursion limit exceeded");
        }
        long j = this.f8031g;
        this.f8031g = -1L;
        this.f8029e = 6;
        return j;
    }

    public final void e(int i) throws IOException {
        while (this.b < this.c) {
            if (((n) this.a).b == 0) {
                break;
            }
            int iF = f();
            if (iF == 0) {
                throw new ProtocolException("Unexpected tag 0");
            }
            int i2 = iF >> 3;
            int i3 = iF & 7;
            if (i3 == 0) {
                this.f8029e = 0;
                k();
            } else if (i3 == 1) {
                this.f8029e = 1;
                i();
            } else if (i3 == 2) {
                long jF = f();
                this.b += jF;
                n nVar = (n) this.a;
                while (jF > 0) {
                    if (nVar.a == null) {
                        throw new EOFException();
                    }
                    int iMin = (int) Math.min(jF, r1.c - r1.b);
                    long j = iMin;
                    nVar.b -= j;
                    jF -= j;
                    r7 r7Var = nVar.a;
                    int i4 = r7Var.b + iMin;
                    r7Var.b = i4;
                    if (i4 == r7Var.c) {
                        nVar.a = r7Var.a();
                        v6.a(r7Var);
                    }
                }
                nVar.getClass();
            } else if (i3 == 3) {
                e(i2);
            } else if (i3 == 4) {
                if (i2 != i) {
                    throw new ProtocolException("Unexpected end group");
                }
                return;
            } else {
                if (i3 != 5) {
                    throw new ProtocolException("Unexpected field encoding: " + i3);
                }
                this.f8029e = 5;
                h();
            }
        }
        throw new EOFException();
    }

    public final int f() throws ProtocolException {
        int i;
        this.b++;
        byte bH = ((n) this.a).h();
        if (bH >= 0) {
            return bH;
        }
        int i2 = bH & Ascii.DEL;
        this.b++;
        byte bH2 = ((n) this.a).h();
        if (bH2 >= 0) {
            i = bH2 << 7;
        } else {
            i2 |= (bH2 & Ascii.DEL) << 7;
            this.b++;
            byte bH3 = ((n) this.a).h();
            if (bH3 >= 0) {
                i = bH3 << Ascii.SO;
            } else {
                i2 |= (bH3 & Ascii.DEL) << 14;
                this.b++;
                byte bH4 = ((n) this.a).h();
                if (bH4 < 0) {
                    int i3 = i2 | ((bH4 & Ascii.DEL) << 21);
                    this.b++;
                    byte bH5 = ((n) this.a).h();
                    int i4 = i3 | (bH5 << Ascii.FS);
                    if (bH5 >= 0) {
                        return i4;
                    }
                    for (int i5 = 0; i5 < 5; i5++) {
                        this.b++;
                        if (((n) this.a).h() >= 0) {
                            return i4;
                        }
                    }
                    throw new ProtocolException("Malformed VARINT");
                }
                i = bH4 << Ascii.NAK;
            }
        }
        return i2 | i;
    }

    public final int g() throws IOException {
        int i = this.f8029e;
        if (i == 7) {
            this.f8029e = 2;
            return this.f8030f;
        }
        if (i != 6) {
            throw new IllegalStateException("Unexpected call to nextTag()");
        }
        while (this.b < this.c) {
            if (((n) this.a).b == 0) {
                return -1;
            }
            int iF = f();
            if (iF == 0) {
                throw new ProtocolException("Unexpected tag 0");
            }
            int i2 = iF >> 3;
            this.f8030f = i2;
            int i3 = iF & 7;
            if (i3 == 0) {
                this.h = 1;
                this.f8029e = 0;
                return i2;
            }
            if (i3 == 1) {
                this.h = 2;
                this.f8029e = 1;
                return i2;
            }
            if (i3 == 2) {
                this.h = 3;
                this.f8029e = 2;
                int iF2 = f();
                if (iF2 < 0) {
                    throw new ProtocolException("Negative length: " + iF2);
                }
                if (this.f8031g != -1) {
                    throw new IllegalStateException();
                }
                long j = this.c;
                this.f8031g = j;
                long j2 = this.b + ((long) iF2);
                this.c = j2;
                if (j2 <= j) {
                    return this.f8030f;
                }
                throw new EOFException();
            }
            if (i3 != 3) {
                if (i3 == 4) {
                    throw new ProtocolException("Unexpected end group");
                }
                if (i3 == 5) {
                    this.h = 4;
                    this.f8029e = 5;
                    return i2;
                }
                throw new ProtocolException("Unexpected field encoding: " + i3);
            }
            e(i2);
        }
        return -1;
    }

    public final int h() throws IOException {
        int i = this.f8029e;
        if (i != 5 && i != 2) {
            throw new ProtocolException("Expected FIXED32 or LENGTH_DELIMITED but was " + this.f8029e);
        }
        n nVar = (n) this.a;
        if (nVar.b < 4) {
            throw new EOFException();
        }
        this.b += 4;
        int iL = nVar.l();
        Charset charset = sa.a;
        int i2 = ((iL & 255) << 24) | (((-16777216) & iL) >>> 24) | ((16711680 & iL) >>> 8) | ((65280 & iL) << 8);
        b(5);
        return i2;
    }

    public final long i() throws IOException {
        long jL;
        int i = this.f8029e;
        if (i != 1 && i != 2) {
            throw new ProtocolException("Expected FIXED64 or LENGTH_DELIMITED but was " + this.f8029e);
        }
        n nVar = (n) this.a;
        long j = nVar.b;
        if (j < 8) {
            throw new EOFException();
        }
        this.b += 8;
        if (j < 8) {
            throw new IllegalStateException("size < 8: " + nVar.b);
        }
        r7 r7Var = nVar.a;
        int i2 = r7Var.b;
        int i3 = r7Var.c;
        if (i3 - i2 < 8) {
            jL = ((((long) nVar.l()) & 4294967295L) << 32) | (4294967295L & ((long) nVar.l()));
        } else {
            byte[] bArr = r7Var.a;
            int i4 = i2 + 1;
            long j2 = (((long) bArr[i2]) & 255) << 56;
            int i5 = i4 + 1;
            int i6 = i5 + 1;
            long j3 = ((((long) bArr[i4]) & 255) << 48) | j2 | ((((long) bArr[i5]) & 255) << 40);
            int i7 = i6 + 1;
            long j4 = j3 | ((((long) bArr[i6]) & 255) << 32);
            int i8 = i7 + 1;
            long j5 = j4 | ((((long) bArr[i7]) & 255) << 24);
            int i9 = i8 + 1;
            long j6 = j5 | ((((long) bArr[i8]) & 255) << 16);
            int i10 = i9 + 1;
            long j7 = j6 | ((((long) bArr[i9]) & 255) << 8);
            int i11 = i10 + 1;
            jL = j7 | (((long) bArr[i10]) & 255);
            nVar.b = j - 8;
            if (i11 == i3) {
                nVar.a = r7Var.a();
                v6.a(r7Var);
            } else {
                r7Var.b = i11;
            }
        }
        long jA = sa.a(jL);
        b(1);
        return jA;
    }

    public final int j() {
        int i = this.f8029e;
        if (i == 0 || i == 2) {
            int iF = f();
            b(0);
            return iF;
        }
        throw new ProtocolException("Expected VARINT or LENGTH_DELIMITED but was " + this.f8029e);
    }

    public final long k() throws IOException {
        int i = this.f8029e;
        if (i != 0 && i != 2) {
            throw new ProtocolException("Expected VARINT or LENGTH_DELIMITED but was " + this.f8029e);
        }
        long j = 0;
        for (int i2 = 0; i2 < 64; i2 += 7) {
            this.b++;
            byte bH = ((n) this.a).h();
            j |= ((long) (bH & Ascii.DEL)) << i2;
            if ((bH & 128) == 0) {
                b(0);
                return j;
            }
        }
        throw new ProtocolException("WireInput encountered a malformed varint");
    }
}

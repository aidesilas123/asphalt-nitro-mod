package com.tapjoy.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes4.dex */
public final class n implements d0, c0, Cloneable {
    public r7 a;
    public long b;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final n clone() {
        n nVar = new n();
        if (this.b == 0) {
            return nVar;
        }
        r7 r7Var = new r7(this.a);
        nVar.a = r7Var;
        r7Var.f7987g = r7Var;
        r7Var.f7986f = r7Var;
        for (r7 r7Var2 = this.a.f7986f; r7Var2 != this.a; r7Var2 = r7Var2.f7986f) {
            r7 r7Var3 = nVar.a.f7987g;
            r7 r7Var4 = new r7(r7Var2);
            r7Var3.getClass();
            r7Var4.f7987g = r7Var3;
            r7Var4.f7986f = r7Var3.f7986f;
            r7Var3.f7986f.f7987g = r7Var4;
            r7Var3.f7986f = r7Var4;
        }
        nVar.b = this.b;
        return nVar;
    }

    public final n e(byte[] bArr, int i) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        int i2 = 0;
        long j = i;
        sa.a(bArr.length, 0, j);
        int i3 = i + 0;
        while (i2 < i3) {
            r7 r7VarF = f(1);
            int iMin = Math.min(i3 - i2, 8192 - r7VarF.c);
            System.arraycopy(bArr, i2, r7VarF.a, r7VarF.c, iMin);
            i2 += iMin;
            r7VarF.c += iMin;
        }
        this.b += j;
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        long j = this.b;
        if (j != nVar.b) {
            return false;
        }
        long j2 = 0;
        if (j == 0) {
            return true;
        }
        r7 r7Var = this.a;
        r7 r7Var2 = nVar.a;
        int i = r7Var.b;
        int i2 = r7Var2.b;
        while (j2 < this.b) {
            long jMin = Math.min(r7Var.c - i, r7Var2.c - i2);
            int i3 = 0;
            while (i3 < jMin) {
                int i4 = i + 1;
                int i5 = i2 + 1;
                if (r7Var.a[i] != r7Var2.a[i2]) {
                    return false;
                }
                i3++;
                i = i4;
                i2 = i5;
            }
            if (i == r7Var.c) {
                r7Var = r7Var.f7986f;
                i = r7Var.b;
            }
            if (i2 == r7Var2.c) {
                r7Var2 = r7Var2.f7986f;
                i2 = r7Var2.b;
            }
            j2 += jMin;
        }
        return true;
    }

    public final r7 f(int i) {
        r7 r7Var;
        if (i < 1 || i > 8192) {
            throw new IllegalArgumentException();
        }
        r7 r7Var2 = this.a;
        if (r7Var2 != null) {
            r7 r7Var3 = r7Var2.f7987g;
            if (r7Var3.c + i <= 8192 && r7Var3.f7985e) {
                return r7Var3;
            }
            r7 r7VarA = v6.a();
            r7VarA.f7987g = r7Var3;
            r7VarA.f7986f = r7Var3.f7986f;
            r7Var3.f7986f.f7987g = r7VarA;
            r7Var3.f7986f = r7VarA;
            return r7VarA;
        }
        synchronized (v6.class) {
            r7Var = v6.a;
            if (r7Var != null) {
                v6.a = r7Var.f7986f;
                r7Var.f7986f = null;
                v6.b -= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            } else {
                r7Var = new r7();
            }
        }
        this.a = r7Var;
        r7Var.f7987g = r7Var;
        r7Var.f7986f = r7Var;
        return r7Var;
    }

    @Override // java.io.Flushable
    public final void flush() {
    }

    public final byte[] g(long j) throws EOFException {
        int iMin;
        sa.a(this.b, 0L, j);
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        }
        int i = (int) j;
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int i3 = i - i2;
            sa.a(i, i2, i3);
            r7 r7Var = this.a;
            if (r7Var == null) {
                iMin = -1;
            } else {
                iMin = Math.min(i3, r7Var.c - r7Var.b);
                System.arraycopy(r7Var.a, r7Var.b, bArr, i2, iMin);
                int i4 = r7Var.b + iMin;
                r7Var.b = i4;
                this.b -= (long) iMin;
                if (i4 == r7Var.c) {
                    this.a = r7Var.a();
                    v6.a(r7Var);
                }
            }
            if (iMin == -1) {
                throw new EOFException();
            }
            i2 += iMin;
        }
        return bArr;
    }

    public final byte h() {
        long j = this.b;
        if (j == 0) {
            throw new IllegalStateException("size == 0");
        }
        r7 r7Var = this.a;
        int i = r7Var.b;
        int i2 = r7Var.c;
        int i3 = i + 1;
        byte b = r7Var.a[i];
        this.b = j - 1;
        if (i3 == i2) {
            this.a = r7Var.a();
            v6.a(r7Var);
        } else {
            r7Var.b = i3;
        }
        return b;
    }

    public final int hashCode() {
        r7 r7Var = this.a;
        if (r7Var == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = r7Var.c;
            for (int i3 = r7Var.b; i3 < i2; i3++) {
                i = (i * 31) + r7Var.a[i3];
            }
            r7Var = r7Var.f7986f;
        } while (r7Var != this.a);
        return i;
    }

    public final n i(int i) {
        r7 r7VarF = f(1);
        byte[] bArr = r7VarF.a;
        int i2 = r7VarF.c;
        r7VarF.c = i2 + 1;
        bArr[i2] = (byte) i;
        this.b++;
        return this;
    }

    public final String j(long j) {
        Charset charset = sa.a;
        sa.a(this.b, 0L, j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        }
        if (j == 0) {
            return "";
        }
        r7 r7Var = this.a;
        int i = r7Var.b;
        if (((long) i) + j > r7Var.c) {
            return new String(g(j), charset);
        }
        String str = new String(r7Var.a, i, (int) j, charset);
        int i2 = (int) (((long) r7Var.b) + j);
        r7Var.b = i2;
        this.b -= j;
        if (i2 == r7Var.c) {
            this.a = r7Var.a();
            v6.a(r7Var);
        }
        return str;
    }

    public final byte[] k() {
        try {
            return g(this.b);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    public final int l() {
        long j = this.b;
        if (j < 4) {
            throw new IllegalStateException("size < 4: " + this.b);
        }
        r7 r7Var = this.a;
        int i = r7Var.b;
        int i2 = r7Var.c;
        if (i2 - i < 4) {
            return ((h() & 255) << 24) | ((h() & 255) << 16) | ((h() & 255) << 8) | (h() & 255);
        }
        byte[] bArr = r7Var.a;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & 255) << 24) | ((bArr[i3] & 255) << 16);
        int i6 = i4 + 1;
        int i7 = i5 | ((bArr[i4] & 255) << 8);
        int i8 = i6 + 1;
        int i9 = i7 | (bArr[i6] & 255);
        this.b = j - 4;
        if (i8 == i2) {
            this.a = r7Var.a();
            v6.a(r7Var);
        } else {
            r7Var.b = i8;
        }
        return i9;
    }

    public final String toString() {
        long j = this.b;
        if (j <= 2147483647L) {
            int i = (int) j;
            return (i == 0 ? c1.b : new h8(this, i)).toString();
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.b);
    }
}

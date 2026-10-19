package com.tapjoy.internal;

import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class k0 extends b4 {
    public static final z b = new z();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Reader f7928d;
    public int k;
    public String l;
    public String m;
    public int n;
    public int o;
    public boolean p;
    public final f3 c = new f3();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final char[] f7929e = new char[1024];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7930f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f7931g = 0;
    public int h = 1;
    public int i = 1;
    public final ArrayList j = new ArrayList();

    public k0(Reader reader) {
        V();
        this.p = false;
        this.f7928d = reader;
    }

    public final void I(int i) throws IOException {
        t();
        if (this.k == i) {
            M();
            return;
        }
        throw new IllegalStateException("Expected " + f4.a(i) + " but was " + f4.a(t()));
    }

    public final int J(boolean z) throws i4, EOFException {
        if (!z) {
            int iS = S();
            if (iS != 44 && iS != 59) {
                if (iS != 125) {
                    K("Unterminated object");
                    throw null;
                }
                this.k = 4;
                return 4;
            }
        } else {
            if (S() == 125) {
                this.k = 4;
                return 4;
            }
            this.f7930f--;
        }
        int iS2 = S();
        if (iS2 != 34) {
            if (iS2 != 39) {
                N();
                throw null;
            }
            N();
            throw null;
        }
        this.l = x((char) iS2);
        e4 e4Var = e4.f7890d;
        this.j.set(r0.size() - 1, e4Var);
        this.k = 5;
        return 5;
    }

    public final void K(String str) throws i4 {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" at line ");
        int i = this.h;
        for (int i2 = 0; i2 < this.f7930f; i2++) {
            if (this.f7929e[i2] == '\n') {
                i++;
            }
        }
        sb.append(i);
        sb.append(" column ");
        int i3 = this.i;
        for (int i4 = 0; i4 < this.f7930f; i4++) {
            i3 = this.f7929e[i4] == '\n' ? 1 : i3 + 1;
        }
        sb.append(i3);
        throw new i4(sb.toString());
    }

    public final boolean L(int i) throws IOException {
        int i2;
        int i3;
        int i4;
        int i5 = 0;
        while (true) {
            i2 = this.f7930f;
            if (i5 >= i2) {
                break;
            }
            if (this.f7929e[i5] == '\n') {
                this.h++;
                this.i = 1;
            } else {
                this.i++;
            }
            i5++;
        }
        int i6 = this.f7931g;
        if (i6 != i2) {
            int i7 = i6 - i2;
            this.f7931g = i7;
            char[] cArr = this.f7929e;
            System.arraycopy(cArr, i2, cArr, 0, i7);
        } else {
            this.f7931g = 0;
        }
        this.f7930f = 0;
        do {
            Reader reader = this.f7928d;
            char[] cArr2 = this.f7929e;
            int i8 = this.f7931g;
            int i9 = reader.read(cArr2, i8, cArr2.length - i8);
            if (i9 == -1) {
                return false;
            }
            i3 = this.f7931g + i9;
            this.f7931g = i3;
            if (this.h == 1 && (i4 = this.i) == 1 && i3 > 0 && this.f7929e[0] == 65279) {
                this.f7930f++;
                this.i = i4 - 1;
            }
        } while (i3 < i);
        return true;
    }

    public final int M() throws IOException {
        t();
        int i = this.k;
        this.k = 0;
        this.m = null;
        this.l = null;
        return i;
    }

    public final void N() throws i4 {
        K("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    public final long Q() throws IOException {
        long j;
        t();
        int i = this.k;
        if (i != 6 && i != 7) {
            throw new IllegalStateException("Expected a long but was ".concat(f4.a(this.k)));
        }
        try {
            j = Long.parseLong(this.m);
        } catch (NumberFormatException unused) {
            double d2 = Double.parseDouble(this.m);
            long j2 = (long) d2;
            if (j2 != d2) {
                throw new NumberFormatException(this.m);
            }
            j = j2;
        }
        M();
        return j;
    }

    public final int S() throws i4, EOFException {
        while (true) {
            if (this.f7930f >= this.f7931g && !L(1)) {
                throw new EOFException("End of input");
            }
            char[] cArr = this.f7929e;
            int i = this.f7930f;
            int i2 = i + 1;
            this.f7930f = i2;
            char c = cArr[i];
            if (c != '\t' && c != '\n' && c != '\r' && c != ' ') {
                if (c == '#') {
                    N();
                    throw null;
                }
                if (c != '/') {
                    return c;
                }
                if (i2 == this.f7931g && !L(1)) {
                    return c;
                }
                N();
                throw null;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0069, code lost:
    
        N();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x006c, code lost:
    
        throw null;
     */
    /* JADX WARN: Removed duplicated region for block: B:154:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int U() throws com.tapjoy.internal.i4, java.io.EOFException {
        /*
            Method dump skipped, instruction units count: 554
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.internal.k0.U():int");
    }

    public final void V() {
        this.j.add(e4.f7892f);
    }

    @Override // com.tapjoy.internal.b4
    public final void a() throws IOException {
        I(3);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.m = null;
        this.k = 0;
        this.j.clear();
        this.j.add(e4.h);
        this.f7928d.close();
    }

    @Override // com.tapjoy.internal.b4
    public final void d() throws IOException {
        I(4);
    }

    @Override // com.tapjoy.internal.b4
    public final boolean e() throws IOException {
        t();
        int i = this.k;
        return (i == 4 || i == 2) ? false : true;
    }

    @Override // com.tapjoy.internal.b4
    public final boolean i() throws IOException {
        t();
        if (this.k != 8) {
            throw new IllegalStateException("Expected a boolean but was ".concat(f4.a(this.k)));
        }
        boolean z = this.m == "true";
        M();
        return z;
    }

    @Override // com.tapjoy.internal.b4
    public final double j() throws IOException {
        t();
        int i = this.k;
        if (i != 6 && i != 7) {
            throw new IllegalStateException("Expected a double but was ".concat(f4.a(this.k)));
        }
        double d2 = Double.parseDouble(this.m);
        M();
        return d2;
    }

    @Override // com.tapjoy.internal.b4
    public final int k() throws IOException {
        int i;
        t();
        int i2 = this.k;
        if (i2 != 6 && i2 != 7) {
            throw new IllegalStateException("Expected an int but was ".concat(f4.a(this.k)));
        }
        try {
            i = Integer.parseInt(this.m);
        } catch (NumberFormatException unused) {
            double d2 = Double.parseDouble(this.m);
            int i3 = (int) d2;
            if (i3 != d2) {
                throw new NumberFormatException(this.m);
            }
            i = i3;
        }
        M();
        return i;
    }

    @Override // com.tapjoy.internal.b4
    public final String o() throws IOException {
        t();
        if (this.k != 5) {
            throw new IllegalStateException("Expected a name but was ".concat(f4.a(t())));
        }
        String str = this.l;
        M();
        return str;
    }

    @Override // com.tapjoy.internal.b4
    public final String p() throws IOException {
        t();
        int i = this.k;
        if (i != 6 && i != 7) {
            throw new IllegalStateException("Expected a string but was ".concat(f4.a(t())));
        }
        String str = this.m;
        M();
        return str;
    }

    @Override // com.tapjoy.internal.b4
    public final int t() throws IOException {
        int i = this.k;
        if (i != 0) {
            return i;
        }
        ArrayList arrayList = this.j;
        switch (((e4) arrayList.get(arrayList.size() - 1)).ordinal()) {
            case 0:
                return w(true);
            case 1:
                return w(false);
            case 2:
                return J(true);
            case 3:
                int iS = S();
                if (iS == 58) {
                    e4 e4Var = e4.f7891e;
                    ArrayList arrayList2 = this.j;
                    arrayList2.set(arrayList2.size() - 1, e4Var);
                    return U();
                }
                if (iS != 61) {
                    K("Expected ':'");
                    throw null;
                }
                N();
                throw null;
            case 4:
                return J(false);
            case 5:
                e4 e4Var2 = e4.f7893g;
                ArrayList arrayList3 = this.j;
                arrayList3.set(arrayList3.size() - 1, e4Var2);
                int iU = U();
                int i2 = this.k;
                if (i2 == 1 || i2 == 3) {
                    return iU;
                }
                throw new IOException("Expected JSON document to start with '[' or '{' but was ".concat(f4.a(this.k)));
            case 6:
                try {
                    U();
                    K("Expected EOF");
                    throw null;
                } catch (EOFException unused) {
                    this.k = 10;
                    return 10;
                }
            case 7:
                throw new IllegalStateException("JsonReader is closed");
            default:
                throw new AssertionError();
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(k0.class.getSimpleName());
        sb.append(" near ");
        StringBuilder sb2 = new StringBuilder();
        int iMin = Math.min(this.f7930f, 20);
        sb2.append(this.f7929e, this.f7930f - iMin, iMin);
        sb2.append(this.f7929e, this.f7930f, Math.min(this.f7931g - this.f7930f, 20));
        sb.append((Object) sb2);
        return sb.toString();
    }

    @Override // com.tapjoy.internal.b4
    public final void u() throws IOException {
        t();
        int i = this.k;
        if (i == 2 || i == 4) {
            throw new IllegalStateException("Expected a value but was ".concat(f4.a(this.k)));
        }
        this.p = true;
        int i2 = 0;
        do {
            try {
                int iM = M();
                if (iM == 1 || iM == 3) {
                    i2++;
                } else if (iM == 2 || iM == 4) {
                    i2--;
                }
            } finally {
                this.p = false;
            }
        } while (i2 != 0);
    }

    public final int w(boolean z) throws i4, EOFException {
        if (z) {
            e4 e4Var = e4.b;
            this.j.set(r6.size() - 1, e4Var);
        } else {
            int iS = S();
            if (iS != 44) {
                if (iS == 59) {
                    N();
                    throw null;
                }
                if (iS != 93) {
                    K("Unterminated array");
                    throw null;
                }
                this.k = 2;
                return 2;
            }
        }
        int iS2 = S();
        if (iS2 != 44 && iS2 != 59) {
            if (iS2 != 93) {
                this.f7930f--;
                return U();
            }
            if (z) {
                this.k = 2;
                return 2;
            }
        }
        N();
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x00b9, code lost:
    
        if (r1 != null) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00bb, code lost:
    
        r1 = new java.lang.StringBuilder();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00c0, code lost:
    
        r1.append(r7.f7929e, r2, r7.f7930f - r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String x(char r8) throws com.tapjoy.internal.i4 {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.internal.k0.x(char):java.lang.String");
    }
}

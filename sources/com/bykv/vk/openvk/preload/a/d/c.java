package com.bykv.vk.openvk.preload.a.d;

import com.facebook.internal.security.CertificateUtil;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: JsonWriter.java */
/* JADX INFO: loaded from: classes.dex */
public class c implements Closeable, Flushable {
    private static final String[] a = new String[128];
    private static final String[] b;
    public boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f533d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f534e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Writer f535f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int[] f536g = new int[32];
    private int h = 0;
    private String i;
    private String j;
    private String k;

    static {
        for (int i = 0; i <= 31; i++) {
            a[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = a;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        b = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public c(Writer writer) {
        a(6);
        this.j = CertificateUtil.DELIMITER;
        this.f534e = true;
        Objects.requireNonNull(writer, "out == null");
        this.f535f = writer;
    }

    private c a(int i, char c) throws IOException {
        j();
        a(i);
        this.f535f.write(c);
        return this;
    }

    private c a(int i, int i2, char c) throws IOException {
        int iF = f();
        if (iF != i2 && iF != i) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.k != null) {
            throw new IllegalStateException("Dangling name: " + this.k);
        }
        this.h--;
        if (iF == i2) {
            h();
        }
        this.f535f.write(c);
        return this;
    }

    private void a(int i) {
        int i2 = this.h;
        int[] iArr = this.f536g;
        if (i2 == iArr.length) {
            this.f536g = Arrays.copyOf(iArr, i2 * 2);
        }
        int[] iArr2 = this.f536g;
        int i3 = this.h;
        this.h = i3 + 1;
        iArr2[i3] = i;
    }

    private void b(int i) {
        this.f536g[this.h - 1] = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void d(java.lang.String r9) throws java.io.IOException {
        /*
            r8 = this;
            boolean r0 = r8.f533d
            if (r0 == 0) goto L7
            java.lang.String[] r0 = com.bykv.vk.openvk.preload.a.d.c.b
            goto L9
        L7:
            java.lang.String[] r0 = com.bykv.vk.openvk.preload.a.d.c.a
        L9:
            java.io.Writer r1 = r8.f535f
            r2 = 34
            r1.write(r2)
            int r1 = r9.length()
            r3 = 0
            r4 = 0
        L16:
            if (r3 >= r1) goto L45
            char r5 = r9.charAt(r3)
            r6 = 128(0x80, float:1.8E-43)
            if (r5 >= r6) goto L25
            r5 = r0[r5]
            if (r5 != 0) goto L32
            goto L42
        L25:
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r5 != r6) goto L2c
            java.lang.String r5 = "\\u2028"
            goto L32
        L2c:
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r5 != r6) goto L42
            java.lang.String r5 = "\\u2029"
        L32:
            if (r4 >= r3) goto L3b
            java.io.Writer r6 = r8.f535f
            int r7 = r3 - r4
            r6.write(r9, r4, r7)
        L3b:
            java.io.Writer r4 = r8.f535f
            r4.write(r5)
            int r4 = r3 + 1
        L42:
            int r3 = r3 + 1
            goto L16
        L45:
            if (r4 >= r1) goto L4d
            java.io.Writer r0 = r8.f535f
            int r1 = r1 - r4
            r0.write(r9, r4, r1)
        L4d:
            java.io.Writer r9 = r8.f535f
            r9.write(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.openvk.preload.a.d.c.d(java.lang.String):void");
    }

    private int f() {
        int i = this.h;
        if (i != 0) {
            return this.f536g[i - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    private void g() throws IOException {
        if (this.k != null) {
            i();
            d(this.k);
            this.k = null;
        }
    }

    private void h() throws IOException {
        if (this.i == null) {
            return;
        }
        this.f535f.write(10);
        int i = this.h;
        for (int i2 = 1; i2 < i; i2++) {
            this.f535f.write(this.i);
        }
    }

    private void i() throws IOException {
        int iF = f();
        if (iF == 5) {
            this.f535f.write(44);
        } else if (iF != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        h();
        b(4);
    }

    private void j() throws IOException {
        int iF = f();
        if (iF == 1) {
            b(2);
            h();
            return;
        }
        if (iF == 2) {
            this.f535f.append(',');
            h();
        } else {
            if (iF == 4) {
                this.f535f.append((CharSequence) this.j);
                b(5);
                return;
            }
            if (iF != 6) {
                if (iF != 7) {
                    throw new IllegalStateException("Nesting problem.");
                }
                if (!this.c) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            b(7);
        }
    }

    public c a() throws IOException {
        g();
        return a(1, '[');
    }

    public c a(long j) throws IOException {
        g();
        j();
        this.f535f.write(Long.toString(j));
        return this;
    }

    public c a(Boolean bool) throws IOException {
        if (bool == null) {
            return e();
        }
        g();
        j();
        this.f535f.write(bool.booleanValue() ? "true" : "false");
        return this;
    }

    public c a(Number number) throws IOException {
        if (number == null) {
            return e();
        }
        g();
        String string = number.toString();
        if (!this.c && (string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN"))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was ".concat(String.valueOf(number)));
        }
        j();
        this.f535f.append((CharSequence) string);
        return this;
    }

    public c a(String str) throws IOException {
        Objects.requireNonNull(str, "name == null");
        if (this.k != null) {
            throw new IllegalStateException();
        }
        if (this.h == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.k = str;
        return this;
    }

    public c a(boolean z) throws IOException {
        g();
        j();
        this.f535f.write(z ? "true" : "false");
        return this;
    }

    public c b() throws IOException {
        return a(1, 2, ']');
    }

    public c b(String str) throws IOException {
        if (str == null) {
            return e();
        }
        g();
        j();
        d(str);
        return this;
    }

    public c c() throws IOException {
        g();
        return a(3, '{');
    }

    public final void c(String str) {
        if (str.length() == 0) {
            this.i = null;
            this.j = CertificateUtil.DELIMITER;
        } else {
            this.i = str;
            this.j = ": ";
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f535f.close();
        int i = this.h;
        if (i > 1 || (i == 1 && this.f536g[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.h = 0;
    }

    public c d() throws IOException {
        return a(3, 5, '}');
    }

    public c e() throws IOException {
        if (this.k != null) {
            if (!this.f534e) {
                this.k = null;
                return this;
            }
            g();
        }
        j();
        this.f535f.write("null");
        return this;
    }

    public void flush() throws IOException {
        if (this.h == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f535f.flush();
    }
}

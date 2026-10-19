package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.p;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: JsonTreeReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends com.bykv.vk.openvk.preload.a.d.a {
    private static final Reader c = new Reader() { // from class: com.bykv.vk.openvk.preload.a.b.a.e.1
        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public final int read(char[] cArr, int i, int i2) throws IOException {
            throw new AssertionError();
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Object f481d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Object[] f482e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f483f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String[] f484g;
    private int[] h;

    private Object s() {
        Object[] objArr = this.f482e;
        int i = this.f483f - 1;
        this.f483f = i;
        Object obj = objArr[i];
        objArr[i] = null;
        return obj;
    }

    private String t() {
        return " at path " + p();
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final void a() throws IOException {
        a(com.bykv.vk.openvk.preload.a.d.b.BEGIN_ARRAY);
        a(((com.bykv.vk.openvk.preload.a.i) g()).iterator());
        this.h[this.f483f - 1] = 0;
    }

    public final void a(com.bykv.vk.openvk.preload.a.d.b bVar) throws IOException {
        if (f() == bVar) {
            return;
        }
        throw new IllegalStateException("Expected " + bVar + " but was " + f() + t());
    }

    public final void a(Object obj) {
        int i = this.f483f;
        Object[] objArr = this.f482e;
        if (i == objArr.length) {
            int i2 = i * 2;
            this.f482e = Arrays.copyOf(objArr, i2);
            this.h = Arrays.copyOf(this.h, i2);
            this.f484g = (String[]) Arrays.copyOf(this.f484g, i2);
        }
        Object[] objArr2 = this.f482e;
        int i3 = this.f483f;
        this.f483f = i3 + 1;
        objArr2[i3] = obj;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final void b() throws IOException {
        a(com.bykv.vk.openvk.preload.a.d.b.END_ARRAY);
        s();
        s();
        int i = this.f483f;
        if (i > 0) {
            int[] iArr = this.h;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final void c() throws IOException {
        a(com.bykv.vk.openvk.preload.a.d.b.BEGIN_OBJECT);
        a(((com.bykv.vk.openvk.preload.a.n) g()).a.entrySet().iterator());
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f482e = new Object[]{f481d};
        this.f483f = 1;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final void d() throws IOException {
        a(com.bykv.vk.openvk.preload.a.d.b.END_OBJECT);
        s();
        s();
        int i = this.f483f;
        if (i > 0) {
            int[] iArr = this.h;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final boolean e() throws IOException {
        com.bykv.vk.openvk.preload.a.d.b bVarF = f();
        return (bVarF == com.bykv.vk.openvk.preload.a.d.b.END_OBJECT || bVarF == com.bykv.vk.openvk.preload.a.d.b.END_ARRAY) ? false : true;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final com.bykv.vk.openvk.preload.a.d.b f() throws IOException {
        while (this.f483f != 0) {
            Object objG = g();
            if (!(objG instanceof Iterator)) {
                if (objG instanceof com.bykv.vk.openvk.preload.a.n) {
                    return com.bykv.vk.openvk.preload.a.d.b.BEGIN_OBJECT;
                }
                if (objG instanceof com.bykv.vk.openvk.preload.a.i) {
                    return com.bykv.vk.openvk.preload.a.d.b.BEGIN_ARRAY;
                }
                if (!(objG instanceof p)) {
                    if (objG instanceof com.bykv.vk.openvk.preload.a.m) {
                        return com.bykv.vk.openvk.preload.a.d.b.NULL;
                    }
                    if (objG == f481d) {
                        throw new IllegalStateException("JsonReader is closed");
                    }
                    throw new AssertionError();
                }
                Object obj = ((p) objG).a;
                if (obj instanceof String) {
                    return com.bykv.vk.openvk.preload.a.d.b.STRING;
                }
                if (obj instanceof Boolean) {
                    return com.bykv.vk.openvk.preload.a.d.b.BOOLEAN;
                }
                if (obj instanceof Number) {
                    return com.bykv.vk.openvk.preload.a.d.b.NUMBER;
                }
                throw new AssertionError();
            }
            boolean z = this.f482e[this.f483f - 2] instanceof com.bykv.vk.openvk.preload.a.n;
            Iterator it = (Iterator) objG;
            if (!it.hasNext()) {
                return z ? com.bykv.vk.openvk.preload.a.d.b.END_OBJECT : com.bykv.vk.openvk.preload.a.d.b.END_ARRAY;
            }
            if (z) {
                return com.bykv.vk.openvk.preload.a.d.b.NAME;
            }
            a(it.next());
        }
        return com.bykv.vk.openvk.preload.a.d.b.END_DOCUMENT;
    }

    public final Object g() {
        return this.f482e[this.f483f - 1];
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final String h() throws IOException {
        a(com.bykv.vk.openvk.preload.a.d.b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) g()).next();
        String str = (String) entry.getKey();
        this.f484g[this.f483f - 1] = str;
        a(entry.getValue());
        return str;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final String i() throws IOException {
        com.bykv.vk.openvk.preload.a.d.b bVarF = f();
        com.bykv.vk.openvk.preload.a.d.b bVar = com.bykv.vk.openvk.preload.a.d.b.STRING;
        if (bVarF != bVar && bVarF != com.bykv.vk.openvk.preload.a.d.b.NUMBER) {
            throw new IllegalStateException("Expected " + bVar + " but was " + bVarF + t());
        }
        String strB = ((p) s()).b();
        int i = this.f483f;
        if (i > 0) {
            int[] iArr = this.h;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return strB;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final boolean j() throws IOException {
        a(com.bykv.vk.openvk.preload.a.d.b.BOOLEAN);
        boolean zF = ((p) s()).f();
        int i = this.f483f;
        if (i > 0) {
            int[] iArr = this.h;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return zF;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final void k() throws IOException {
        a(com.bykv.vk.openvk.preload.a.d.b.NULL);
        s();
        int i = this.f483f;
        if (i > 0) {
            int[] iArr = this.h;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final double l() throws IOException {
        com.bykv.vk.openvk.preload.a.d.b bVarF = f();
        com.bykv.vk.openvk.preload.a.d.b bVar = com.bykv.vk.openvk.preload.a.d.b.NUMBER;
        if (bVarF != bVar && bVarF != com.bykv.vk.openvk.preload.a.d.b.STRING) {
            throw new IllegalStateException("Expected " + bVar + " but was " + bVarF + t());
        }
        double dC = ((p) g()).c();
        if (!this.a && (Double.isNaN(dC) || Double.isInfinite(dC))) {
            throw new NumberFormatException("JSON forbids NaN and infinities: ".concat(String.valueOf(dC)));
        }
        s();
        int i = this.f483f;
        if (i > 0) {
            int[] iArr = this.h;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return dC;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final long m() throws IOException {
        com.bykv.vk.openvk.preload.a.d.b bVarF = f();
        com.bykv.vk.openvk.preload.a.d.b bVar = com.bykv.vk.openvk.preload.a.d.b.NUMBER;
        if (bVarF != bVar && bVarF != com.bykv.vk.openvk.preload.a.d.b.STRING) {
            throw new IllegalStateException("Expected " + bVar + " but was " + bVarF + t());
        }
        long jD = ((p) g()).d();
        s();
        int i = this.f483f;
        if (i > 0) {
            int[] iArr = this.h;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return jD;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final int n() throws IOException {
        com.bykv.vk.openvk.preload.a.d.b bVarF = f();
        com.bykv.vk.openvk.preload.a.d.b bVar = com.bykv.vk.openvk.preload.a.d.b.NUMBER;
        if (bVarF != bVar && bVarF != com.bykv.vk.openvk.preload.a.d.b.STRING) {
            throw new IllegalStateException("Expected " + bVar + " but was " + bVarF + t());
        }
        int iE = ((p) g()).e();
        s();
        int i = this.f483f;
        if (i > 0) {
            int[] iArr = this.h;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return iE;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final void o() throws IOException {
        if (f() == com.bykv.vk.openvk.preload.a.d.b.NAME) {
            h();
            this.f484g[this.f483f - 2] = "null";
        } else {
            s();
            int i = this.f483f;
            if (i > 0) {
                this.f484g[i - 1] = "null";
            }
        }
        int i2 = this.f483f;
        if (i2 > 0) {
            int[] iArr = this.h;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final String p() {
        StringBuilder sb = new StringBuilder("$");
        int i = 0;
        while (i < this.f483f) {
            Object[] objArr = this.f482e;
            if (objArr[i] instanceof com.bykv.vk.openvk.preload.a.i) {
                i++;
                if (objArr[i] instanceof Iterator) {
                    sb.append('[');
                    sb.append(this.h[i]);
                    sb.append(']');
                }
            } else if (objArr[i] instanceof com.bykv.vk.openvk.preload.a.n) {
                i++;
                if (objArr[i] instanceof Iterator) {
                    sb.append('.');
                    String[] strArr = this.f484g;
                    if (strArr[i] != null) {
                        sb.append(strArr[i]);
                    }
                }
            }
            i++;
        }
        return sb.toString();
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final String toString() {
        return e.class.getSimpleName();
    }
}

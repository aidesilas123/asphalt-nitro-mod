package com.tapjoy.internal;

import java.io.Closeable;
import java.io.IOException;
import java.io.StringReader;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b4 implements Closeable {
    public HashMap a;

    public static k0 a(String str) {
        if (z.a == null) {
            z.a = k0.b;
        }
        return new k0(new StringReader(str));
    }

    public abstract void a();

    public final Object b(x3 x3Var) {
        return x3Var.a(this);
    }

    public final void c(ArrayList arrayList, x3 x3Var) throws IOException {
        k0 k0Var = (k0) this;
        k0Var.I(1);
        while (e()) {
            arrayList.add(x3Var.a(this));
        }
        k0Var.I(2);
    }

    public abstract void d();

    public abstract boolean e();

    public final boolean f() {
        return t() == 1;
    }

    public final boolean g() {
        return t() == 3;
    }

    public final boolean h() {
        return t() == 6;
    }

    public abstract boolean i();

    public abstract double j();

    public abstract int k();

    public final LinkedList l() throws IOException {
        LinkedList linkedList = new LinkedList();
        k0 k0Var = (k0) this;
        k0Var.I(1);
        while (e()) {
            linkedList.add(s());
        }
        k0Var.I(2);
        return linkedList;
    }

    public final LinkedHashMap m() throws IOException {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        k0 k0Var = (k0) this;
        k0Var.I(3);
        while (e()) {
            linkedHashMap.put(o(), s());
        }
        k0Var.I(4);
        return linkedHashMap;
    }

    public abstract String o();

    public abstract String p();

    public final String q() {
        if (v()) {
            return null;
        }
        return p();
    }

    public final URL r() throws u4 {
        HashMap map = this.a;
        URI uri = (URI) (map != null ? map.get("BASE_URI") : null);
        if (uri == null) {
            return new URL(p());
        }
        try {
            return uri.resolve(new URI(p())).toURL();
        } catch (URISyntaxException e2) {
            throw new u4(e2);
        }
    }

    public final Object s() throws IOException {
        int iT = t();
        int iB = k.b(iT);
        if (iB == 0) {
            return l();
        }
        if (iB == 2) {
            return m();
        }
        if (iB == 5) {
            return p();
        }
        if (iB == 6) {
            return new r2(p());
        }
        if (iB == 7) {
            return Boolean.valueOf(i());
        }
        if (iB != 8) {
            throw new IllegalStateException("Expected a value but was ".concat(f4.a(iT)));
        }
        k0 k0Var = (k0) this;
        k0Var.t();
        if (k0Var.k != 9) {
            throw new IllegalStateException("Expected null but was ".concat(f4.a(k0Var.k)));
        }
        k0Var.M();
        return null;
    }

    public abstract int t();

    public abstract void u();

    public final boolean v() throws IOException {
        if (t() != 9) {
            return false;
        }
        k0 k0Var = (k0) this;
        k0Var.t();
        if (k0Var.k != 9) {
            throw new IllegalStateException("Expected null but was ".concat(f4.a(k0Var.k)));
        }
        k0Var.M();
        return true;
    }
}

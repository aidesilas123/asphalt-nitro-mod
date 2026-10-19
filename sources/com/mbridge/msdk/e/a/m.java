package com.mbridge.msdk.e.a;

import android.net.Uri;
import android.text.TextUtils;
import com.json.b4;
import com.mbridge.msdk.e.a.a;
import com.mbridge.msdk.e.a.o;
import com.mbridge.msdk.e.a.v;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: Request.java */
/* JADX INFO: loaded from: classes4.dex */
public abstract class m<T> implements Comparable<m<T>> {
    private c a;
    private String b;
    private p c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final v.a f6953d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f6954e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f6955f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f6956g;
    private final int h;
    private final Object i;
    private o.a j;
    private Integer k;
    private n l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private r r;
    private a.C0396a s;
    private a t;

    /* JADX INFO: compiled from: Request.java */
    interface a {
        void a(m<?> mVar);

        void a(m<?> mVar, o<?> oVar);
    }

    /* JADX INFO: compiled from: Request.java */
    public enum b {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    public m(int i, String str) {
        this(i, str, 0);
    }

    public m(int i, String str, int i2) {
        Uri uri;
        String host;
        this.f6953d = null;
        this.i = new Object();
        int iHashCode = 0;
        this.m = false;
        this.n = false;
        this.o = false;
        this.p = false;
        this.q = false;
        this.s = null;
        this.f6954e = i;
        this.f6955f = str;
        this.f6956g = i2;
        this.r = new e();
        if (!TextUtils.isEmpty(str) && (uri = Uri.parse(str)) != null && (host = uri.getHost()) != null) {
            iHashCode = host.hashCode();
        }
        this.h = iHashCode;
    }

    private byte[] a(Map<String, String> map, String str) {
        StringBuilder sb = new StringBuilder();
        try {
            int i = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                i++;
                if (entry.getKey() == null || entry.getValue() == null) {
                    throw new IllegalArgumentException(String.format("Request#getParams() or Request#getPostParams() returned a map containing a null key or value: (%s, %s). All keys and values must be non-null.", entry.getKey(), entry.getValue()));
                }
                sb.append(URLEncoder.encode(entry.getKey(), str));
                sb.append(b4.R);
                sb.append(URLEncoder.encode(entry.getValue(), str));
                if (i <= map.size() - 1) {
                    sb.append('&');
                }
            }
            return sb.toString().getBytes(str);
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("Encoding not supported: " + str, e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final m<?> a(a.C0396a c0396a) {
        this.s = c0396a;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final m<?> a(n nVar) {
        this.l = nVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final m<?> a(boolean z) {
        this.m = z;
        return this;
    }

    protected abstract o<T> a(k kVar);

    public r a() {
        return this.r;
    }

    final void a(int i) {
        n nVar = this.l;
        if (nVar != null) {
            nVar.a(this, i);
        }
    }

    final void a(a aVar) {
        synchronized (this.i) {
            this.t = aVar;
        }
    }

    public final void a(o.a aVar) {
        this.j = aVar;
    }

    final void a(o<?> oVar) {
        a aVar;
        synchronized (this.i) {
            aVar = this.t;
        }
        if (aVar != null) {
            aVar.a(this, oVar);
        }
    }

    public final void a(u uVar) {
        o.a aVar;
        synchronized (this.i) {
            aVar = this.j;
        }
        if (aVar != null) {
            aVar.a(uVar);
        }
    }

    protected abstract void a(T t);

    final void a(String str) {
        n nVar = this.l;
        if (nVar != null) {
            nVar.b(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final m<?> b(int i) {
        this.k = Integer.valueOf(i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final m<?> b(boolean z) {
        this.p = z;
        return this;
    }

    protected Map<String, String> b() {
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final m<?> c(boolean z) {
        this.q = z;
        return this;
    }

    public Map<String, String> c() {
        return Collections.emptyMap();
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(Object obj) {
        m mVar = (m) obj;
        b bVarD = d();
        b bVarD2 = mVar.d();
        return bVarD == bVarD2 ? this.k.intValue() - mVar.k.intValue() : bVarD2.ordinal() - bVarD.ordinal();
    }

    public b d() {
        return b.NORMAL;
    }

    public final int e() {
        return this.f6956g;
    }

    public final int f() {
        return this.f6954e;
    }

    public final int g() {
        return this.h;
    }

    public final String h() {
        return this.f6955f;
    }

    public final String i() {
        if (!TextUtils.isEmpty(this.b)) {
            return this.b;
        }
        if (this.a == null) {
            this.a = new com.mbridge.msdk.e.a.a.d();
        }
        String strA = this.a.a(this);
        this.b = strA;
        return strA;
    }

    public final p j() {
        return this.c;
    }

    public final a.C0396a k() {
        return this.s;
    }

    public final boolean l() {
        boolean z;
        synchronized (this.i) {
            z = this.n;
        }
        return z;
    }

    public final String m() {
        return "application/x-www-form-urlencoded; charset=" + C.UTF8_NAME;
    }

    public final byte[] n() {
        Map<String, String> mapB = b();
        if (mapB == null || mapB.size() <= 0) {
            return null;
        }
        return a(mapB, C.UTF8_NAME);
    }

    public final boolean o() {
        return this.m;
    }

    public final boolean p() {
        return this.p;
    }

    public final boolean q() {
        return this.q;
    }

    public final int r() {
        return a().a();
    }

    public final void s() {
        synchronized (this.i) {
            this.o = true;
        }
    }

    public final boolean t() {
        boolean z;
        synchronized (this.i) {
            z = this.o;
        }
        return z;
    }

    public String toString() {
        String str = "0x" + Integer.toHexString(this.h);
        StringBuilder sb = new StringBuilder();
        sb.append(l() ? "[X] " : "[ ] ");
        sb.append(this.f6955f);
        sb.append(" ");
        sb.append(str);
        sb.append(" ");
        sb.append(d());
        sb.append(" ");
        sb.append(this.k);
        return sb.toString();
    }

    final void u() {
        a aVar;
        synchronized (this.i) {
            aVar = this.t;
        }
        if (aVar != null) {
            aVar.a(this);
        }
    }
}

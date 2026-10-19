package com.mbridge.msdk.foundation.same.net;

import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.zip.GZIPInputStream;

/* JADX INFO: compiled from: Request.java */
/* JADX INFO: loaded from: classes4.dex */
public abstract class j<T> implements Comparable<j<T>> {
    private static final String c = j.class.getSimpleName();
    protected ConcurrentHashMap<String, String> a;
    protected e<T> b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f7156d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f7157e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f7158f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Integer f7159g;
    private k h;
    private boolean i;
    private m j;
    private int k;

    public j(int i, String str) {
        this.a = new ConcurrentHashMap<>();
        this.b = null;
        this.i = false;
        this.k = 2;
        this.f7157e = str;
        this.f7156d = i;
        this.f7158f = false;
        this.j = new b();
    }

    public j(int i, String str, e<T> eVar) {
        this.a = new ConcurrentHashMap<>();
        this.b = null;
        this.i = false;
        this.k = 2;
        this.f7157e = str;
        this.f7156d = i;
        this.b = eVar;
        this.f7158f = false;
        this.j = new b();
    }

    public j(int i, String str, e<T> eVar, boolean z) {
        this.a = new ConcurrentHashMap<>();
        this.b = null;
        this.i = false;
        this.k = 2;
        this.f7157e = str;
        this.f7156d = i;
        this.b = eVar;
        this.f7158f = z;
        this.j = new b();
    }

    private byte[] a(com.mbridge.msdk.foundation.same.net.f.b bVar) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        InputStream inputStream;
        InputStream inputStream2 = null;
        try {
            InputStream inputStreamC = bVar.c();
            try {
                if (!(inputStreamC instanceof ByteArrayInputStream) && com.mbridge.msdk.foundation.same.net.g.b.b(bVar.b()) && !(inputStreamC instanceof GZIPInputStream)) {
                    inputStreamC = new GZIPInputStream(inputStreamC);
                }
                if (inputStreamC == null) {
                    throw new com.mbridge.msdk.foundation.same.net.b.a(7, null);
                }
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i = inputStreamC.read(bArr);
                        if (i == -1) {
                            break;
                        }
                        byteArrayOutputStream2.write(bArr, 0, i);
                    }
                    byteArrayOutputStream2.flush();
                    byte[] byteArray = byteArrayOutputStream2.toByteArray();
                    try {
                        inputStreamC.close();
                        byteArrayOutputStream2.close();
                    } catch (IOException e2) {
                        aa.d(c, e2.getMessage());
                    }
                    return byteArray;
                } catch (Throwable th) {
                    inputStream = inputStreamC;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    th = th;
                    inputStream2 = inputStream;
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (IOException e3) {
                            aa.d(c, e3.getMessage());
                            throw th;
                        }
                    }
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                inputStream = inputStreamC;
                byteArrayOutputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
        }
    }

    public final int a() {
        return this.f7156d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final j<?> a(int i) {
        this.f7159g = Integer.valueOf(i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final j<?> a(k kVar) {
        this.h = kVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final j<?> a(m mVar) {
        this.j = mVar;
        return this;
    }

    protected abstract l<T> a(com.mbridge.msdk.foundation.same.net.f.c cVar);

    public final void a(long j, long j2) {
        e<T> eVar = this.b;
        if (eVar != null) {
            eVar.onProgressChange(j, j2);
        }
    }

    public final void a(com.mbridge.msdk.foundation.same.net.b.a aVar) {
        e<T> eVar = this.b;
        if (eVar != null) {
            eVar.onError(aVar);
        }
    }

    public final void a(e<T> eVar) {
        this.b = eVar;
    }

    public final void a(l<T> lVar) {
        e<T> eVar = this.b;
        if (eVar != null) {
            eVar.onSuccess(lVar);
        }
    }

    public final void a(String str) {
        k kVar = this.h;
        if (kVar != null) {
            kVar.b(this);
        }
    }

    public final void a(String str, String str2) {
        this.a.remove(str);
        this.a.put(str, str2);
    }

    public byte[] a(com.mbridge.msdk.foundation.same.net.f.b bVar, c cVar) throws com.mbridge.msdk.foundation.same.net.b.a, IOException {
        return bVar.c() != null ? a(bVar) : new byte[0];
    }

    public final String b() {
        return this.f7157e;
    }

    public final void b(int i) {
        if (i < 1 || i > 4) {
            return;
        }
        this.k = i;
    }

    public final void c() {
        this.i = true;
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(Object obj) {
        j jVar = (j) obj;
        int iH = h();
        int iH2 = jVar.h();
        return iH == iH2 ? this.f7159g.intValue() - jVar.f7159g.intValue() : iH2 - iH;
    }

    public final boolean d() {
        return this.i;
    }

    public final Map<String, String> e() {
        return this.a;
    }

    public byte[] f() {
        return null;
    }

    public final void g() {
        a("Charset", C.UTF8_NAME);
        if (this.f7158f) {
            a("Connection", "keep-alive");
        } else {
            a("Connection", "close");
        }
    }

    public int h() {
        return this.k;
    }

    public final int i() {
        try {
            return this.j.b();
        } catch (Exception unused) {
            return 10;
        }
    }

    public final int j() {
        try {
            return this.j.c();
        } catch (Exception unused) {
            return 10;
        }
    }

    public final int k() {
        try {
            return this.j.d();
        } catch (Exception unused) {
            return 10;
        }
    }

    public final int l() {
        try {
            return this.j.e();
        } catch (Exception unused) {
            return 10;
        }
    }

    public final int m() {
        try {
            return this.j.f();
        } catch (Exception unused) {
            return 0;
        }
    }

    public final m n() {
        return this.j;
    }

    public final void o() {
        e<T> eVar = this.b;
        if (eVar != null) {
            eVar.onCancel();
        }
    }

    public final void p() {
        e<T> eVar = this.b;
        if (eVar != null) {
            eVar.onPreExecute();
        }
    }

    public final void q() {
        e<T> eVar = this.b;
        if (eVar != null) {
            eVar.onFinish();
        }
    }

    public final void r() {
        e<T> eVar = this.b;
        if (eVar != null) {
            eVar.onRetry();
        }
    }

    public final void s() {
        e<T> eVar = this.b;
        if (eVar != null) {
            eVar.onNetworking();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.i ? "[X] " : "[ ] ");
        sb.append(this.f7157e);
        sb.append(" ");
        sb.append(h());
        sb.append(" ");
        sb.append(this.f7159g);
        return sb.toString();
    }
}

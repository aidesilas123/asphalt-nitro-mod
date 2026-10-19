package com.bytedance.sdk.component.b.a.a.a;

import android.text.TextUtils;
import com.bytedance.sdk.component.b.a.h;
import com.bytedance.sdk.component.b.a.k;
import com.bytedance.sdk.component.b.a.m;
import com.bytedance.sdk.component.b.a.n;
import com.bytedance.sdk.component.b.a.o;
import com.json.b4;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: NetCall.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements com.bytedance.sdk.component.b.a.b {
    m a;
    com.bytedance.sdk.component.b.a.d b;
    private AtomicBoolean c = new AtomicBoolean(false);

    a(m mVar, com.bytedance.sdk.component.b.a.d dVar) {
        this.a = mVar;
        this.b = dVar;
    }

    private boolean a(n nVar) {
        m mVar;
        byte[] bArr;
        return nVar != null && (mVar = this.a) != null && "POST".equalsIgnoreCase(mVar.c()) && nVar.f930f == n.a.BYTE_ARRAY_TYPE && (bArr = nVar.f929e) != null && bArr.length > 0;
    }

    private boolean b(n nVar) {
        m mVar;
        return (nVar == null || (mVar = this.a) == null || !"POST".equalsIgnoreCase(mVar.c()) || nVar.f930f != n.a.STRING_TYPE || TextUtils.isEmpty(nVar.f928d)) ? false : true;
    }

    private boolean c() {
        if (this.a.d() == null) {
            return false;
        }
        return this.a.d().containsKey(b4.I);
    }

    @Override // com.bytedance.sdk.component.b.a.b
    public o a() throws IOException {
        List<h> list;
        this.b.c().remove(this);
        this.b.d().add(this);
        if (this.b.c().size() + this.b.d().size() > this.b.a() || this.c.get()) {
            this.b.d().remove(this);
            return null;
        }
        try {
            k kVar = this.a.a;
            if (kVar == null || (list = kVar.a) == null || list.size() <= 0) {
                return a(this.a);
            }
            ArrayList arrayList = new ArrayList(this.a.a.a);
            arrayList.add(new h() { // from class: com.bytedance.sdk.component.b.a.a.a.a.1
                @Override // com.bytedance.sdk.component.b.a.h
                public o a(h.a aVar) throws IOException {
                    return a.this.a(aVar.a());
                }
            });
            return ((h) arrayList.get(0)).a(new b(arrayList, this.a));
        } catch (Throwable th) {
            throw new IOException(th.getMessage());
        }
    }

    public o a(m mVar) throws IOException {
        try {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(mVar.b().a().toString()).openConnection();
                if (mVar.d() != null && mVar.d().size() > 0) {
                    for (Map.Entry<String, List<String>> entry : mVar.d().entrySet()) {
                        Iterator<String> it = entry.getValue().iterator();
                        while (it.hasNext()) {
                            httpURLConnection.addRequestProperty(entry.getKey(), it.next());
                        }
                    }
                }
                k kVar = mVar.a;
                if (kVar != null) {
                    TimeUnit timeUnit = kVar.c;
                    if (timeUnit != null) {
                        httpURLConnection.setConnectTimeout((int) timeUnit.toMillis(kVar.b));
                    }
                    k kVar2 = mVar.a;
                    if (kVar2.c != null) {
                        httpURLConnection.setReadTimeout((int) kVar2.f915e.toMillis(kVar2.f914d));
                    }
                }
                if (mVar.f() == null) {
                    httpURLConnection.setRequestMethod("GET");
                } else {
                    if (!c() && mVar.f().c != null) {
                        httpURLConnection.addRequestProperty(b4.I, mVar.f().c.a());
                    }
                    httpURLConnection.setRequestMethod(mVar.c());
                    if ("POST".equalsIgnoreCase(mVar.c())) {
                        OutputStream outputStream = httpURLConnection.getOutputStream();
                        if (a(mVar.f())) {
                            outputStream.write(mVar.f().f929e);
                        } else if (b(mVar.f())) {
                            outputStream.write(mVar.f().f928d.getBytes());
                        }
                        outputStream.flush();
                        outputStream.close();
                    }
                }
                httpURLConnection.connect();
                httpURLConnection.getResponseCode();
                if (!this.c.get()) {
                    return new f(httpURLConnection, mVar);
                }
                httpURLConnection.disconnect();
                this.b.d().remove(this);
                return null;
            } catch (Exception e2) {
                throw new IOException(e2.getMessage());
            }
        } finally {
            this.b.d().remove(this);
        }
    }

    @Override // com.bytedance.sdk.component.b.a.b
    public void a(final com.bytedance.sdk.component.b.a.c cVar) {
        this.b.b().submit(new Runnable() { // from class: com.bytedance.sdk.component.b.a.a.a.a.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    o oVarA = a.this.a();
                    if (oVarA == null) {
                        cVar.a(a.this, new IOException("response is null"));
                    } else {
                        cVar.a(a.this, oVarA);
                    }
                } catch (IOException e2) {
                    e2.printStackTrace();
                    cVar.a(a.this, e2);
                }
            }
        });
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public com.bytedance.sdk.component.b.a.b clone() {
        return new a(this.a, this.b);
    }
}

package com.bytedance.sdk.component.b.a.a.a;

import android.text.TextUtils;
import com.bytedance.sdk.component.b.a.j;
import com.bytedance.sdk.component.b.a.l;
import com.bytedance.sdk.component.b.a.m;
import com.bytedance.sdk.component.b.a.o;
import com.bytedance.sdk.component.b.a.p;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: NetResponse.java */
/* JADX INFO: loaded from: classes2.dex */
public class f extends o {
    HttpURLConnection a;
    m b;

    public f(HttpURLConnection httpURLConnection, m mVar) {
        this.a = httpURLConnection;
        this.b = mVar;
    }

    @Override // com.bytedance.sdk.component.b.a.o
    public long a() {
        return 0L;
    }

    public String a(String str) {
        return this.a.getHeaderField(str);
    }

    @Override // com.bytedance.sdk.component.b.a.o
    public String a(String str, String str2) {
        return !TextUtils.isEmpty(a(str)) ? a(str) : str2;
    }

    @Override // com.bytedance.sdk.component.b.a.o
    public long b() {
        return 0L;
    }

    @Override // com.bytedance.sdk.component.b.a.o
    public int c() {
        try {
            return this.a.getResponseCode();
        } catch (Exception unused) {
            return -1;
        }
    }

    @Override // com.bytedance.sdk.component.b.a.o, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            f().close();
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.b.a.o
    public boolean d() {
        return c() >= 200 && c() < 300;
    }

    @Override // com.bytedance.sdk.component.b.a.o
    public String e() throws IOException {
        return this.a.getResponseMessage();
    }

    @Override // com.bytedance.sdk.component.b.a.o
    public p f() {
        try {
            return new g(this.a);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.component.b.a.o
    public com.bytedance.sdk.component.b.a.f g() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<String>> entry : this.a.getHeaderFields().entrySet()) {
            for (String str : entry.getValue()) {
                if (!"Content-Range".equalsIgnoreCase(entry.getKey()) || c() != 206) {
                    arrayList.add(entry.getKey());
                    arrayList.add(str);
                }
            }
        }
        return new com.bytedance.sdk.component.b.a.f((String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    @Override // com.bytedance.sdk.component.b.a.o
    public l h() {
        return l.HTTP_1_1;
    }

    @Override // com.bytedance.sdk.component.b.a.o
    public j i() {
        return new j();
    }

    public String toString() {
        return "";
    }
}

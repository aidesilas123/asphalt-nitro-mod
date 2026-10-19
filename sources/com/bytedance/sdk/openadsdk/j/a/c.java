package com.bytedance.sdk.openadsdk.j.a;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.b.a.n;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.ac;
import org.json.JSONObject;

/* JADX INFO: compiled from: RequestMonitor.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {
    public static String a = "response is null";
    public static int b = -10;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f1796d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f1797e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f1798f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f1799g;
    private int h;
    private boolean i = false;
    private String j;
    private int k;

    public c a(int i) {
        this.k = i;
        return this;
    }

    public c a(n nVar) {
        byte[] bArr;
        if (nVar != null) {
            if (nVar.f930f == n.a.STRING_TYPE && !TextUtils.isEmpty(nVar.a())) {
                this.f1799g = nVar.a().getBytes().length;
            }
            if (nVar.f930f == n.a.BYTE_ARRAY_TYPE && (bArr = nVar.f929e) != null) {
                this.f1799g = bArr.length;
            }
        }
        return this;
    }

    public c a(String str) {
        this.c = str;
        return this;
    }

    public c a(boolean z) {
        this.i = z;
        return this;
    }

    public void a() {
        this.f1796d = SystemClock.elapsedRealtime();
    }

    public c b(String str) {
        byte[] bytes;
        if (!TextUtils.isEmpty(str) && (bytes = str.getBytes()) != null) {
            this.f1799g = bytes.length;
        }
        return this;
    }

    public void b() {
        this.f1798f = SystemClock.elapsedRealtime() - this.f1796d;
    }

    public c c(String str) {
        byte[] bytes;
        if (!TextUtils.isEmpty(str) && (bytes = str.getBytes()) != null) {
            this.h = bytes.length;
        }
        return this;
    }

    public void c() {
        this.f1797e = SystemClock.elapsedRealtime() - this.f1796d;
        com.bytedance.sdk.openadsdk.j.b.a(this);
    }

    public c d(String str) {
        this.j = str;
        return this;
    }

    @NonNull
    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("url", this.c);
            jSONObject.put("duration", this.f1797e);
            jSONObject.put("request_size", this.f1799g);
            jSONObject.put("response_size", this.h);
            jSONObject.put("result", this.i ? 1 : 0);
            if (!this.i && !TextUtils.isEmpty(this.j)) {
                jSONObject.put("msg", this.j);
            }
            jSONObject.put("conn_type", ac.l(o.a()));
            jSONObject.put("timezone", ac.r());
            long j = this.f1798f;
            if (j > 0) {
                jSONObject.put("net_duration", j);
            }
            jSONObject.put("code", this.k);
        } catch (Exception unused) {
        }
        return jSONObject.toString();
    }
}

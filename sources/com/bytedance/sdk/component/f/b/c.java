package com.bytedance.sdk.component.f.b;

import android.text.TextUtils;
import com.bytedance.sdk.component.b.a.k;
import com.bytedance.sdk.component.b.a.m;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: compiled from: NetExecutor.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class c {
    protected k c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected String f1047d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final Map<String, String> f1048e = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected String f1049f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected boolean f1050g = false;

    public c(k kVar) {
        this.c = kVar;
        b(UUID.randomUUID().toString());
    }

    protected void a(m.a aVar) {
        if (aVar != null && this.f1048e.size() > 0) {
            for (Map.Entry<String, String> entry : this.f1048e.entrySet()) {
                String key = entry.getKey();
                if (!TextUtils.isEmpty(key)) {
                    String value = entry.getValue();
                    if (value == null) {
                        value = "";
                    }
                    aVar.b(key, value);
                }
            }
        }
    }

    public void a(String str) {
        this.f1049f = str;
    }

    public String b() {
        return this.f1047d;
    }

    public void b(String str) {
        this.f1047d = str;
    }

    public void b(String str, String str2) {
        this.f1048e.put(str, str2);
    }

    public void d(Map<String, String> map) {
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                this.f1048e.put(entry.getKey(), entry.getValue());
            }
        }
    }
}

package com.bytedance.sdk.openadsdk.b.d.b;

import com.bytedance.sdk.openadsdk.b.d.b.c;
import com.bytedance.sdk.openadsdk.core.model.q;
import org.json.JSONObject;

/* JADX INFO: compiled from: BaseEventModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class a<T extends c> {
    private q a;
    private String b;
    private JSONObject c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private T f1213d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f1214e = false;

    public a(q qVar, String str, JSONObject jSONObject, T t) {
        this.f1213d = null;
        this.a = qVar;
        this.b = str;
        this.c = jSONObject;
        this.f1213d = t;
    }

    public q a() {
        return this.a;
    }

    public void a(boolean z) {
        this.f1214e = z;
    }

    public String b() {
        return this.b;
    }

    public JSONObject c() {
        if (this.c == null) {
            this.c = new JSONObject();
        }
        return this.c;
    }

    public T d() {
        return this.f1213d;
    }

    public boolean e() {
        return this.f1214e;
    }
}

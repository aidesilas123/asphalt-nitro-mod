package com.bytedance.sdk.component.e.a.d.a;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: AdLogEvent.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements com.bytedance.sdk.component.e.a.d.a {
    protected JSONObject a;
    private b b;
    private byte c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte f1029d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f1030e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f1031f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f1032g;
    private String h;
    private String i;
    private byte j;
    private String k;
    private int l;

    private a() {
    }

    public a(String str, b bVar) {
        this.i = str;
        this.b = bVar;
    }

    public a(String str, JSONObject jSONObject) {
        this.i = str;
        this.a = jSONObject;
    }

    public static com.bytedance.sdk.component.e.a.d.a c(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt("type");
            int iOptInt2 = jSONObject.optInt("priority");
            a aVar = new a();
            aVar.a((byte) iOptInt);
            aVar.b((byte) iOptInt2);
            aVar.a(jSONObject.optJSONObject(NotificationCompat.CATEGORY_EVENT));
            aVar.a(jSONObject.optString("localId"));
            aVar.b(jSONObject.optString("genTime"));
            aVar.a(jSONObject.optInt("channel"));
            return aVar;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.bytedance.sdk.component.e.a.d.a
    public b a() {
        return this.b;
    }

    @Override // com.bytedance.sdk.component.e.a.d.a
    public void a(byte b) {
        this.c = b;
    }

    @Override // com.bytedance.sdk.component.e.a.d.a
    public void a(int i) {
        this.l = i;
    }

    @Override // com.bytedance.sdk.component.e.a.d.a
    public void a(long j) {
        this.f1030e = j;
    }

    @Override // com.bytedance.sdk.component.e.a.d.a
    public void a(String str) {
        this.i = str;
    }

    @Override // com.bytedance.sdk.component.e.a.d.a
    public void a(JSONObject jSONObject) {
        this.a = jSONObject;
    }

    @Override // com.bytedance.sdk.component.e.a.d.a
    public byte b() {
        return this.j;
    }

    @Override // com.bytedance.sdk.component.e.a.d.a
    public void b(byte b) {
        this.f1029d = b;
    }

    @Override // com.bytedance.sdk.component.e.a.d.a
    public void b(long j) {
        this.f1031f = j;
    }

    @Override // com.bytedance.sdk.component.e.a.d.a
    public void b(String str) {
        this.h = str;
    }

    @Override // com.bytedance.sdk.component.e.a.d.a
    public String c() {
        return this.i;
    }

    public void c(byte b) {
        this.j = b;
    }

    @Override // com.bytedance.sdk.component.e.a.d.a
    public void c(long j) {
        this.f1032g = j;
    }

    @Override // com.bytedance.sdk.component.e.a.d.a
    public byte d() {
        return this.c;
    }

    @Override // com.bytedance.sdk.component.e.a.d.a
    public byte e() {
        return this.f1029d;
    }

    @Override // com.bytedance.sdk.component.e.a.d.a
    public String f() {
        if (TextUtils.isEmpty(this.i)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("localId", this.i);
            jSONObject.put(NotificationCompat.CATEGORY_EVENT, g());
            jSONObject.put("genTime", l());
            jSONObject.put("priority", (int) this.f1029d);
            jSONObject.put("type", (int) this.c);
            jSONObject.put("channel", this.l);
        } catch (Throwable unused) {
        }
        return jSONObject.toString();
    }

    @Override // com.bytedance.sdk.component.e.a.d.a
    public synchronized JSONObject g() {
        b bVar;
        if (this.a == null && (bVar = this.b) != null) {
            this.a = bVar.a(k());
        }
        return this.a;
    }

    @Override // com.bytedance.sdk.component.e.a.d.a
    public long h() {
        return this.f1030e;
    }

    @Override // com.bytedance.sdk.component.e.a.d.a
    public long i() {
        return this.f1031f;
    }

    @Override // com.bytedance.sdk.component.e.a.d.a
    public int j() {
        return this.l;
    }

    public String k() {
        return this.k;
    }

    public String l() {
        return this.h;
    }
}

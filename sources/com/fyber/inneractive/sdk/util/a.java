package com.fyber.inneractive.sdk.util;

import android.text.TextUtils;
import com.fyber.inneractive.sdk.external.InneractiveAdSpot;
import com.fyber.inneractive.sdk.network.s;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public InneractiveAdSpot a;
    public boolean c;
    public boolean b = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f2732d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f2733e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f2734f = 0;

    public void a() {
        this.f2732d = 0L;
        this.f2733e = 0L;
        this.f2734f = 0L;
        this.b = false;
    }

    public void a(String str) {
        com.fyber.inneractive.sdk.config.global.s sVar;
        if (this.b) {
            String strA = w.a(this.f2732d, this.f2734f);
            InneractiveAdSpot inneractiveAdSpot = this.a;
            com.fyber.inneractive.sdk.flow.q adContent = inneractiveAdSpot != null ? inneractiveAdSpot.getAdContent() : null;
            s.a aVar = new s.a(this.c ? com.fyber.inneractive.sdk.network.r.USER_SKIP_ACTION_LATENCY : com.fyber.inneractive.sdk.network.r.USER_CLOSE_ACTION_LATENCY, adContent != null ? adContent.a : null, adContent != null ? adContent.d() : null, (adContent == null || (sVar = adContent.c) == null) ? null : sVar.c());
            JSONObject jSONObject = new JSONObject();
            String str2 = this.c ? "skip_action_latency" : "close_action_latency";
            try {
                jSONObject.put(str2, strA);
            } catch (Exception unused) {
                IAlog.e("Got exception adding param to json object: %s, %s", str2, strA);
            }
            if (!TextUtils.isEmpty(str)) {
                try {
                    jSONObject.put("origin", str);
                } catch (Exception unused2) {
                    IAlog.e("Got exception adding param to json object: %s, %s", "origin", str);
                }
            }
            aVar.f2120f.put(jSONObject);
            aVar.a((String) null);
            a();
        }
    }

    public void a(boolean z) {
        this.c = z;
        if (this.b) {
            Object[] objArr = new Object[2];
            objArr[0] = "AdExperienceLatency: ";
            objArr[1] = z ? "skip" : "close";
            IAlog.a("%s%s timer could not start. Timer is in action!", objArr);
            return;
        }
        Object[] objArr2 = new Object[2];
        objArr2[0] = "AdExperienceLatency: ";
        objArr2[1] = z ? "skip" : "close";
        IAlog.a("%s%s timer started", objArr2);
        this.f2732d = System.currentTimeMillis();
        this.b = true;
    }

    public void b() {
        if (!this.b || this.f2733e <= 0) {
            return;
        }
        this.f2734f += System.currentTimeMillis() - this.f2733e;
        this.f2733e = 0L;
    }
}

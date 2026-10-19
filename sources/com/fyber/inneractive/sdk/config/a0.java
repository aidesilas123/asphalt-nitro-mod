package com.fyber.inneractive.sdk.config;

import com.facebook.internal.AnalyticsEvents;
import com.fyber.inneractive.sdk.util.h0;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a0 implements b0 {
    public String a;
    public String b;
    public t c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public x f1940d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public y f1941e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public c0 f1942f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public e0 f1943g;

    public d0 a() {
        return this.f1942f;
    }

    public e0 b() {
        return this.f1943g;
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        h0.a(jSONObject, "id", this.a);
        h0.a(jSONObject, "spotId", this.b);
        h0.a(jSONObject, "display", this.c);
        h0.a(jSONObject, "monitor", this.f1940d);
        h0.a(jSONObject, AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE, this.f1941e);
        h0.a(jSONObject, "video", this.f1942f);
        h0.a(jSONObject, "viewability", this.f1943g);
        return jSONObject.toString();
    }
}

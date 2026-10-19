package com.tapjoy.internal;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class q5 {
    public final double a;
    public final double b;
    public final double c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final double f7965d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f7966e;

    public q5(JSONObject jSONObject) {
        this.a = jSONObject.optDouble("width", 0.0d);
        this.b = jSONObject.optDouble("height", 0.0d);
        this.c = jSONObject.optDouble("left", 0.0d);
        this.f7965d = jSONObject.optDouble(ViewHierarchyConstants.DIMENSION_TOP_KEY, 0.0d);
        this.f7966e = (float) jSONObject.optDouble("cornerRadius", 0.0d);
    }
}

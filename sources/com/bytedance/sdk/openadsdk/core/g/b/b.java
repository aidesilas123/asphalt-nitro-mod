package com.bytedance.sdk.openadsdk.core.g.b;

import com.applovin.sdk.AppLovinEventTypes;
import com.bytedance.sdk.openadsdk.core.g.b.c;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: VastFractionalProgressTracker.java */
/* JADX INFO: loaded from: classes2.dex */
public class b extends c implements Comparable<b> {
    private final float a;

    /* JADX INFO: compiled from: VastFractionalProgressTracker.java */
    public static class a {
        private final String a;
        private final float b;
        private c.EnumC0135c c = c.EnumC0135c.TRACKING_URL;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f1513d = false;

        public a(String str, float f2) {
            this.a = str;
            this.b = f2;
        }

        public b a() {
            return new b(this.b, this.a, this.c, Boolean.valueOf(this.f1513d));
        }
    }

    private b(float f2, String str, c.EnumC0135c enumC0135c, Boolean bool) {
        super(str, enumC0135c, bool);
        this.a = f2;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(b bVar) {
        if (bVar == null) {
            return 1;
        }
        float f2 = this.a;
        float f3 = bVar.a;
        if (f2 > f3) {
            return 1;
        }
        return f2 < f3 ? -1 : 0;
    }

    public boolean a(float f2) {
        return this.a <= f2 && !e();
    }

    public JSONObject b() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(AppLovinEventTypes.USER_VIEWED_CONTENT, c());
        jSONObject.put("trackingFraction", this.a);
        return jSONObject;
    }

    @Override // com.bytedance.sdk.openadsdk.core.g.b.c
    public void h_() {
        super.h_();
        float f2 = this.a;
        if (f2 == 0.25f) {
            return;
        }
        int i = (f2 > 0.5f ? 1 : (f2 == 0.5f ? 0 : -1));
    }
}

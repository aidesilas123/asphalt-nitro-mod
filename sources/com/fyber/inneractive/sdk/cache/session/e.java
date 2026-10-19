package com.fyber.inneractive.sdk.cache.session;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class e {
    public int a;
    public int b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f1922d;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[com.fyber.inneractive.sdk.cache.session.enums.a.values().length];
            a = iArr;
            try {
                iArr[com.fyber.inneractive.sdk.cache.session.enums.a.CLICK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[com.fyber.inneractive.sdk.cache.session.enums.a.COMPLETION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[com.fyber.inneractive.sdk.cache.session.enums.a.IMPRESSION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public e() {
        this(0, 0, 0, System.currentTimeMillis());
    }

    public e(int i, int i2, int i3, long j) {
        this.f1922d = j;
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public static e a(JSONObject jSONObject) {
        if (jSONObject != null) {
            long jOptLong = jSONObject.optLong("time");
            int iOptInt = jSONObject.optInt("cli", -1);
            int iOptInt2 = jSONObject.optInt("imp", -1);
            int iOptInt3 = jSONObject.optInt("com", -1);
            if (jOptLong != 0 && iOptInt >= 0 && iOptInt2 >= 0 && iOptInt3 >= 0) {
                return new e(iOptInt2, iOptInt, iOptInt3, jOptLong);
            }
        }
        return null;
    }

    public JSONObject a(boolean z, boolean z2) {
        JSONObject jSONObject = new JSONObject();
        if (z) {
            try {
                jSONObject.put("time", this.f1922d);
            } catch (JSONException unused) {
            }
        }
        jSONObject.put("imp", this.a);
        if (z2) {
            jSONObject.put("com", this.c);
        }
        jSONObject.put("cli", this.b);
        return jSONObject;
    }
}

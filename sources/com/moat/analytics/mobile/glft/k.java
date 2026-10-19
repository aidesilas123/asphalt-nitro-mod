package com.moat.analytics.mobile.glft;

import android.os.Build;
import com.moat.analytics.mobile.glft.u;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
class k {
    private boolean a = false;
    private boolean b = false;
    private boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7660d = 200;

    public k(String str) {
        a(str);
    }

    private void a(String str) {
        int i;
        if (str == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("sa");
            boolean zEquals = string.equals("0bbafd1ca55aa33048dfa8f9ed6e5644a7625d79");
            boolean zEquals2 = string.equals("8f1d08a2d6496191a5ebae8f0590f513e2619489");
            if ((string.equals("on") || zEquals || zEquals2) && !a(jSONObject)) {
                this.a = true;
                this.b = zEquals;
                this.c = zEquals2;
                if (zEquals2) {
                    this.b = true;
                }
            }
            if (!jSONObject.has(ScarConstants.IN_SIGNAL_KEY) || (i = jSONObject.getInt(ScarConstants.IN_SIGNAL_KEY)) < 100 || i > 1000) {
                return;
            }
            this.f7660d = i;
        } catch (Exception unused) {
            this.a = false;
            this.b = false;
            this.f7660d = 200;
        }
    }

    private boolean a(JSONObject jSONObject) {
        try {
            if (16 > Build.VERSION.SDK_INT) {
                return true;
            }
            if (jSONObject.has("ob")) {
                JSONArray jSONArray = jSONObject.getJSONArray("ob");
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    if (jSONArray.getInt(i) == Build.VERSION.SDK_INT) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Exception unused) {
            return true;
        }
    }

    private boolean e() {
        return this.a;
    }

    boolean a() {
        return this.b;
    }

    boolean b() {
        return this.c;
    }

    int c() {
        return this.f7660d;
    }

    u.d d() {
        return e() ? u.d.ON : u.d.OFF;
    }
}

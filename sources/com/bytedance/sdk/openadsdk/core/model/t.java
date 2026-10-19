package com.bytedance.sdk.openadsdk.core.model;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: PlayableModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class t {
    private int a;
    private int b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1597d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f1598e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f1599f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f1600g;

    public t(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("playable");
        if (jSONObjectOptJSONObject != null) {
            this.f1599f = jSONObjectOptJSONObject.optString("playable_url", "");
            this.f1600g = jSONObjectOptJSONObject.optInt("playable_orientation", 0);
            this.b = jSONObjectOptJSONObject.optInt("new_style", 0);
            this.a = jSONObjectOptJSONObject.optInt("close_2_app", 0);
        }
        this.c = jSONObject.optBoolean("is_playable");
        this.f1597d = jSONObject.optInt("playable_type", 0);
        this.f1598e = jSONObject.optString("playable_style");
    }

    public static int a(q qVar) {
        int i;
        t tVarN = qVar.n();
        if (tVarN != null && (i = tVarN.a) >= 0 && i <= 100) {
            return i;
        }
        return 0;
    }

    public static boolean b(q qVar) {
        t tVarM = m(qVar);
        return (tVarM == null || !tVarM.c || TextUtils.isEmpty(f(qVar))) ? false : true;
    }

    public static boolean c(q qVar) {
        t tVarN = qVar.n();
        return tVarN != null && tVarN.c && tVarN.b == 1;
    }

    public static String d(q qVar) {
        t tVarM = m(qVar);
        if (tVarM == null) {
            return null;
        }
        return tVarM.f1598e;
    }

    public static String e(q qVar) {
        t tVarM = m(qVar);
        if (tVarM == null) {
            return null;
        }
        return tVarM.f1599f;
    }

    public static String f(q qVar) {
        if (qVar == null) {
            return null;
        }
        t tVarN = qVar.n();
        if (tVarN != null && tVarN.c) {
            String str = tVarN.f1599f;
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
        }
        if (qVar.o() == 20) {
            return qVar.P();
        }
        if (qVar.K() != null) {
            return qVar.K().l();
        }
        return null;
    }

    public static boolean g(q qVar) {
        return false;
    }

    public static boolean h(q qVar) {
        return ((qVar == null || qVar.K() == null) ? 0 : qVar.K().t()) != 1;
    }

    public static boolean i(q qVar) {
        com.bykv.vk.openvk.component.video.api.c.b bVarK = qVar.K();
        return bVarK != null && bVarK.t() == 1;
    }

    public static int j(q qVar) {
        t tVarM = m(qVar);
        if (tVarM == null) {
            return 0;
        }
        return tVarM.f1600g;
    }

    public static boolean k(q qVar) {
        return b(qVar) && n(qVar) == 1;
    }

    public static boolean l(q qVar) {
        return b(qVar) && n(qVar) == 0;
    }

    private static t m(q qVar) {
        if (qVar == null) {
            return null;
        }
        return qVar.n();
    }

    private static int n(q qVar) {
        t tVarM = m(qVar);
        if (tVarM == null) {
            return 0;
        }
        return tVarM.f1597d;
    }

    public void a(JSONObject jSONObject) {
        try {
            jSONObject.put("is_playable", this.c);
        } catch (JSONException e2) {
            com.bytedance.sdk.component.utils.l.e("PlayableModel", e2.getMessage());
        }
        if (!TextUtils.isEmpty(this.f1599f)) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("playable_url", this.f1599f);
                jSONObject2.put("playable_orientation", this.f1600g);
                jSONObject2.put("new_style", this.b);
                jSONObject2.put("close_2_app", this.a);
                jSONObject.put("playable", jSONObject2);
            } catch (Exception e3) {
                com.bytedance.sdk.component.utils.l.e("PlayableModel", e3.getMessage());
            }
        }
        try {
            jSONObject.put("playable_type", this.f1597d);
        } catch (JSONException e4) {
            com.bytedance.sdk.component.utils.l.e("PlayableModel", e4.getMessage());
        }
        try {
            jSONObject.put("playable_style", this.f1598e);
        } catch (JSONException e5) {
            com.bytedance.sdk.component.utils.l.e("PlayableModel", e5.getMessage());
        }
    }
}

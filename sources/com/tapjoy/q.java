package com.tapjoy;

import android.content.Context;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class q {
    public final Context a;
    public String b = null;
    public int c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f8043d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8044e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f8045f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final HashMap f8046g = new HashMap();
    public final HashMap h = new HashMap();
    public ArrayList i = new ArrayList();

    public q(Context context) {
        if (context != null && this.a == null) {
            this.a = context;
        }
        a();
    }

    public final void a() {
        Context context = this.a;
        if (context == null) {
            return;
        }
        v vVar = new v(context, "tjcPrefrences");
        if (vVar.a("server_currency_ids")) {
            String strD = vVar.d("server_currency_ids", "[]");
            ArrayList arrayList = new ArrayList();
            try {
                JSONArray jSONArray = new JSONArray(strD);
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    String strOptString = jSONObject.optString(RewardPlus.CURRENCY_ID);
                    this.f8045f = jSONObject.optString("currency_type").equals("self_managed");
                    arrayList.add(strOptString);
                }
            } catch (JSONException unused) {
                TapjoyLog.e("CurrencyParams", "Failed to parse currency id list");
            }
            if (arrayList.isEmpty()) {
                return;
            }
            this.i = arrayList;
        }
    }
}

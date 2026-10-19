package com.json;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.json.h6;
import com.json.o2;
import com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementId;
import com.mbridge.msdk.MBridgeConstans;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class g8 {
    private static g8 a;
    private SharedPreferences b;

    private g8(Context context) {
        this.b = context.getSharedPreferences("supersonic_shared_preferen", 0);
    }

    public static synchronized g8 a(Context context) {
        if (a == null) {
            a = new g8(context);
        }
        return a;
    }

    public static synchronized g8 e() {
        return a;
    }

    private boolean f(String str) {
        return str.matches("^\\d+_\\d+$");
    }

    public String a(String str) {
        String string = this.b.getString(str, null);
        return string != null ? string : JsonUtils.EMPTY_JSON;
    }

    public ArrayList<String> a() {
        ArrayList<String> arrayList = new ArrayList<>();
        String[] strArr = (String[]) this.b.getAll().keySet().toArray(new String[0]);
        SharedPreferences.Editor editorEdit = this.b.edit();
        for (String str : strArr) {
            if (f(str)) {
                arrayList.add(str);
                editorEdit.remove(str);
            }
        }
        editorEdit.apply();
        return arrayList;
    }

    public void a(String str, String str2) {
        SharedPreferences.Editor editorEdit = this.b.edit();
        editorEdit.putString(str, str2);
        editorEdit.apply();
    }

    public boolean a(String str, String str2, String str3) {
        String string = this.b.getString("ssaUserData", null);
        if (TextUtils.isEmpty(string)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(string);
            if (jSONObject.isNull(str2)) {
                return false;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject(str2);
            if (jSONObject2.isNull(str3)) {
                return false;
            }
            jSONObject2.getJSONObject(str3).put("timestamp", str);
            SharedPreferences.Editor editorEdit = this.b.edit();
            editorEdit.putString("ssaUserData", jSONObject.toString());
            editorEdit.apply();
            return true;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public h6.a b() {
        int i = Integer.parseInt(this.b.getString("back_button_state", MBridgeConstans.API_REUQEST_CATEGORY_APP));
        return i == 0 ? h6.a.None : i == 1 ? h6.a.Device : i == 2 ? h6.a.Controller : h6.a.Controller;
    }

    public String c() {
        return this.b.getString("version", UniquePlacementId.NO_ID);
    }

    public void c(String str) {
        SharedPreferences.Editor editorEdit = this.b.edit();
        editorEdit.putString("back_button_state", str);
        editorEdit.apply();
    }

    public List<String> d() {
        String string = this.b.getString("search_keys", null);
        ArrayList arrayList = new ArrayList();
        if (string != null) {
            hb hbVar = new hb(string);
            if (hbVar.a(o2.h.R)) {
                try {
                    arrayList.addAll(hbVar.a((JSONArray) hbVar.b(o2.h.R)));
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }
        return arrayList;
    }

    public void d(String str) {
        if (c().equalsIgnoreCase(str)) {
            return;
        }
        SharedPreferences.Editor editorEdit = this.b.edit();
        editorEdit.putString("version", str);
        editorEdit.apply();
    }

    public void e(String str) {
        SharedPreferences.Editor editorEdit = this.b.edit();
        editorEdit.putString("search_keys", str);
        editorEdit.apply();
    }
}

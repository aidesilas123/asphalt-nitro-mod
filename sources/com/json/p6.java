package com.json;

import android.content.Context;
import android.util.Pair;
import com.json.d4;
import com.json.h6;
import com.json.m6;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class p6 {
    public static d4 a(JSONObject jSONObject) {
        return new d4.a(jSONObject.optString(b4.q)).b().b(jSONObject.optBoolean(b4.r)).a(new n6()).a(b()).a(false).a();
    }

    public static h6.e a(j3 j3Var, h6.e eVar) {
        return (j3Var == null || j3Var.g() == null || j3Var.g().get("rewarded") == null) ? eVar : Boolean.parseBoolean(j3Var.g().get("rewarded")) ? h6.e.RewardedVideo : h6.e.Interstitial;
    }

    public static m6 a(Context context, String str, String str2, Map<String, String> map) throws Exception {
        m6.b bVar = new m6.b();
        if (map != null && map.containsKey(b4.f6059g)) {
            bVar.c(map.get(b4.f6059g));
        }
        bVar.a(context);
        return bVar.d(str).b(str2).a();
    }

    public static boolean a(j3 j3Var) {
        if (j3Var == null || j3Var.g().get("inAppBidding") == null) {
            return false;
        }
        return Boolean.parseBoolean(j3Var.g().get("inAppBidding"));
    }

    private static ArrayList<Pair<String, String>> b() {
        ArrayList<Pair<String, String>> arrayList = new ArrayList<>();
        arrayList.add(new Pair<>(b4.I, b4.J));
        arrayList.add(new Pair<>(b4.K, b4.L));
        return arrayList;
    }
}

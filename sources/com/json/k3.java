package com.json;

import android.text.TextUtils;
import com.json.h6;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class k3 {
    private final Map<String, j3> a = new LinkedHashMap();
    private final Map<String, j3> b = new LinkedHashMap();
    private final Map<String, j3> c = new LinkedHashMap();

    private void b(h6.e eVar, String str, j3 j3Var) {
        Map<String, j3> mapC;
        if (TextUtils.isEmpty(str) || j3Var == null || (mapC = c(eVar)) == null) {
            return;
        }
        mapC.put(str, j3Var);
    }

    private Map<String, j3> c(h6.e eVar) {
        if (eVar.name().equalsIgnoreCase(h6.e.RewardedVideo.name())) {
            return this.a;
        }
        if (eVar.name().equalsIgnoreCase(h6.e.Interstitial.name())) {
            return this.b;
        }
        if (eVar.name().equalsIgnoreCase(h6.e.Banner.name())) {
            return this.c;
        }
        return null;
    }

    public j3 a(h6.e eVar, s7 s7Var) {
        j3 j3Var = new j3(s7Var);
        b(eVar, s7Var.d(), j3Var);
        return j3Var;
    }

    public j3 a(h6.e eVar, String str) {
        Map<String, j3> mapC;
        if (TextUtils.isEmpty(str) || (mapC = c(eVar)) == null) {
            return null;
        }
        return mapC.get(str);
    }

    public j3 a(h6.e eVar, String str, Map<String, String> map, y9 y9Var) {
        j3 j3Var = new j3(str, str, map, y9Var);
        b(eVar, str, j3Var);
        return j3Var;
    }

    public Collection<j3> a(h6.e eVar) {
        Map<String, j3> mapC = c(eVar);
        return mapC != null ? mapC.values() : new ArrayList();
    }

    public void b(h6.e eVar, String str) {
        Map<String, j3> mapC;
        j3 j3VarRemove;
        if (TextUtils.isEmpty(str) || (mapC = c(eVar)) == null || (j3VarRemove = mapC.remove(str)) == null) {
            return;
        }
        j3VarRemove.a();
    }
}

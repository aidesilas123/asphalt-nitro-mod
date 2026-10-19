package com.fyber.inneractive.sdk.config;

import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.kidoz.sdk.api.general.utils.ConstantDef;
import com.mbridge.msdk.MBridgeConstans;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class f0 implements g0 {
    public com.fyber.inneractive.sdk.cache.session.d a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public a f1955d;
    public final Map<UnitDisplayType, Map<String, String>> b = new HashMap();
    public final Map<String, String> c = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1956e = false;

    public interface a {
    }

    public enum b {
        NO_CLICK("0"),
        CTA_BUTTON("1"),
        COMPANION(MBridgeConstans.API_REUQEST_CATEGORY_APP),
        VIDEO("3"),
        APP_INFO(ConstantDef.SDK_CONTENT_VERSION);

        public String value;

        b(String str) {
            this.value = str;
        }
    }

    public String a(UnitDisplayType unitDisplayType, String str) {
        Map<String, String> map = this.b.get(unitDisplayType);
        return (map == null || map.get(str) == null) ? "" : map.get(str);
    }

    public JSONArray a(UnitDisplayType unitDisplayType) {
        com.fyber.inneractive.sdk.cache.session.d dVar = this.a;
        if (dVar == null) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        try {
            for (com.fyber.inneractive.sdk.cache.session.enums.b bVar : com.fyber.inneractive.sdk.cache.session.enums.b.values()) {
                if (bVar != com.fyber.inneractive.sdk.cache.session.enums.b.NONE && (unitDisplayType == null || bVar.e() == unitDisplayType)) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("type", bVar.e().value());
                    jSONObject.put("subType", bVar.name().toLowerCase().contains("video") ? "video" : "display");
                    com.fyber.inneractive.sdk.cache.session.h hVar = dVar.b.get(bVar);
                    int iA = dVar.a();
                    if (iA > 0 && hVar != null && hVar.size() >= iA) {
                        boolean zF = bVar.f();
                        JSONArray jSONArray2 = new JSONArray();
                        ArrayList arrayList = new ArrayList(hVar);
                        Collections.sort(arrayList, new com.fyber.inneractive.sdk.cache.session.g(hVar));
                        Iterator it = arrayList.iterator();
                        int i = 0;
                        while (it.hasNext()) {
                            jSONArray2.put(((com.fyber.inneractive.sdk.cache.session.e) it.next()).a(false, zF));
                            i++;
                            if (i >= iA) {
                                break;
                            }
                        }
                        jSONObject.put("sessionData", jSONArray2);
                        jSONArray.put(jSONObject);
                    }
                }
            }
            return jSONArray;
        } catch (Exception unused) {
            return jSONArray;
        }
    }

    public void a(com.fyber.inneractive.sdk.cache.session.enums.b bVar, com.fyber.inneractive.sdk.cache.session.enums.a aVar) {
        com.fyber.inneractive.sdk.cache.session.d dVar = this.a;
        if (dVar != null) {
            com.fyber.inneractive.sdk.util.m.a(new com.fyber.inneractive.sdk.cache.session.c(dVar, aVar, bVar));
        }
    }

    public void a(UnitDisplayType unitDisplayType, String str, String str2) {
        Map<String, String> map = this.b.get(unitDisplayType);
        if (map == null) {
            map = new HashMap<>();
            this.b.put(unitDisplayType, map);
        }
        map.put(str, str2);
        a aVar = this.f1955d;
        if (aVar == null || !this.f1956e) {
            return;
        }
        ((com.fyber.inneractive.sdk.bidder.a) aVar).b();
    }

    public void a(UnitDisplayType unitDisplayType, String... strArr) {
        for (String str : strArr) {
            a(unitDisplayType, str, "0");
        }
    }

    public void a(a aVar) {
        this.f1955d = aVar;
    }
}

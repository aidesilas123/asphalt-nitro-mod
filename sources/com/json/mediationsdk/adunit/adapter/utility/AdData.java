package com.json.mediationsdk.adunit.adapter.utility;

import com.json.k8;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.IronSourceBannerLayout;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class AdData {
    private final String a;
    private final Map<String, Object> b;
    private final Map<String, Object> c;

    public AdData(String str, Map<String, Object> map, Map<String, Object> map2) {
        this.a = str;
        this.b = map;
        this.c = map2;
    }

    public static AdData createAdDataForNetworkAdapter(JSONObject jSONObject, IronSource.AD_UNIT ad_unit, String str) {
        return createAdDataForNetworkAdapter(jSONObject, ad_unit, str, null);
    }

    public static AdData createAdDataForNetworkAdapter(JSONObject jSONObject, IronSource.AD_UNIT ad_unit, String str, IronSourceBannerLayout ironSourceBannerLayout) {
        HashMap map = new HashMap();
        map.put("adUnit", ad_unit);
        if (str != null) {
            map.put("userId", str);
        }
        if (ironSourceBannerLayout != null) {
            map.put("bannerLayout", ironSourceBannerLayout);
        }
        return new AdData(null, k8.a(jSONObject), map);
    }

    public Map<String, Object> getAdUnitData() {
        return this.c;
    }

    public Boolean getBoolean(String str) {
        return (Boolean) this.b.get(str);
    }

    public Map<String, Object> getConfiguration() {
        return this.b;
    }

    public Integer getInt(String str) {
        return (Integer) this.b.get(str);
    }

    public String getServerData() {
        return this.a;
    }

    public String getString(String str) {
        return (String) this.b.get(str);
    }
}

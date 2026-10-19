package com.json.sdk.controller;

import com.json.o2;
import com.json.sdk.utils.SDKUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class FeaturesManager {
    private static volatile FeaturesManager a;
    private Map<String, ?> b;
    private final ArrayList<String> c = new a();

    class a extends ArrayList<String> {
        a() {
            add(o2.d.f6474f);
            add(o2.d.f6473e);
            add(o2.d.f6475g);
            add(o2.d.h);
            add(o2.d.i);
            add(o2.d.j);
            add(o2.d.k);
            add(o2.d.l);
            add(o2.d.m);
        }
    }

    private FeaturesManager() {
        if (a != null) {
            throw new RuntimeException("Use getInstance() method to get the single instance of this class.");
        }
        this.b = new HashMap();
    }

    public static FeaturesManager getInstance() {
        if (a == null) {
            synchronized (FeaturesManager.class) {
                if (a == null) {
                    a = new FeaturesManager();
                }
            }
        }
        return a;
    }

    ArrayList<String> a() {
        return new ArrayList<>(this.c);
    }

    public JSONObject getDataManagerConfig() {
        JSONObject networkConfiguration = SDKUtils.getNetworkConfiguration();
        return networkConfiguration.has(o2.a.c) ? networkConfiguration.optJSONObject(o2.a.c) : new JSONObject();
    }

    public int getDebugMode() {
        Integer num = 0;
        try {
            if (this.b.containsKey(o2.d.c)) {
                num = (Integer) this.b.get(o2.d.c);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public int getInitRecoverTrials() {
        JSONObject jSONObjectOptJSONObject = SDKUtils.getNetworkConfiguration().optJSONObject(o2.a.f6463e);
        if (jSONObjectOptJSONObject != null) {
            return jSONObjectOptJSONObject.optInt(o2.a.f6462d, 0);
        }
        return 0;
    }

    public void updateDebugConfigurations(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        this.b = map;
    }
}

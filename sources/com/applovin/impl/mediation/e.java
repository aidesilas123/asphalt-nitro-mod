package com.applovin.impl.mediation;

import android.app.Activity;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.adapter.MaxAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class e {
    private final AtomicBoolean akD = new AtomicBoolean();
    private final JSONArray alW = new JSONArray();
    private final LinkedHashMap<String, Integer> alX = new LinkedHashMap<>();
    private final Object alY = new Object();
    private List<com.applovin.impl.mediation.b.f> alZ;
    private final com.applovin.impl.sdk.x logger;
    private final com.applovin.impl.sdk.n sdk;

    public e(com.applovin.impl.sdk.n nVar) {
        this.sdk = nVar;
        this.logger = nVar.BN();
    }

    private List<com.applovin.impl.mediation.b.f> a(JSONArray jSONArray, JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(new com.applovin.impl.mediation.b.f(Collections.EMPTY_MAP, JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null), jSONObject, this.sdk));
        }
        return arrayList;
    }

    void a(com.applovin.impl.mediation.b.f fVar, long j, MaxAdapter.InitializationStatus initializationStatus, String str) {
        boolean z;
        if (initializationStatus == null || initializationStatus == MaxAdapter.InitializationStatus.INITIALIZING) {
            return;
        }
        synchronized (this.alY) {
            z = !b(fVar);
            if (z) {
                this.alX.put(fVar.vt(), Integer.valueOf(initializationStatus.getCode()));
                JSONObject jSONObject = new JSONObject();
                JsonUtils.putString(jSONObject, "class", fVar.vt());
                JsonUtils.putString(jSONObject, "init_status", String.valueOf(initializationStatus.getCode()));
                JsonUtils.putString(jSONObject, "error_message", JSONObject.quote(str));
                this.alW.put(jSONObject);
            }
        }
        if (z) {
            this.sdk.e(fVar);
            this.sdk.Cy().processAdapterInitializationPostback(fVar, j, initializationStatus, str);
            this.sdk.Ch().b(initializationStatus, fVar.vt());
        }
    }

    public void a(com.applovin.impl.mediation.b.f fVar, Activity activity) {
        a(fVar, activity, null);
    }

    public void a(com.applovin.impl.mediation.b.f fVar, Activity activity, @Nullable Runnable runnable) {
        List<com.applovin.impl.mediation.b.f> list;
        if (this.sdk.CE().isEnabled() && (list = this.alZ) != null) {
            Iterator<com.applovin.impl.mediation.b.f> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    fVar = null;
                    break;
                }
                com.applovin.impl.mediation.b.f next = it.next();
                if (next.vt().equals(fVar.vt())) {
                    fVar = next;
                    break;
                }
            }
        }
        if (fVar == null) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        g gVarC = this.sdk.Cw().c(fVar);
        if (gVarC == null) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.g("MediationAdapterInitializationManager", "Initializing adapter " + fVar);
        }
        gVarC.a(MaxAdapterParametersImpl.a(fVar), activity, runnable);
    }

    public void a(MaxAdapter.InitializationStatus initializationStatus) {
        synchronized (this.alY) {
            this.alX.put("com.applovin.mediation.adapters.AppLovinMediationAdapter", Integer.valueOf(initializationStatus.getCode()));
        }
        this.sdk.Ch().b(initializationStatus, "com.applovin.mediation.adapters.AppLovinMediationAdapter");
    }

    public void b(Activity activity) {
        if (this.akD.compareAndSet(false, true)) {
            String str = (String) this.sdk.a(com.applovin.impl.sdk.c.d.aRL);
            if (StringUtils.isValidString(str)) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    List<com.applovin.impl.mediation.b.f> listA = a(JsonUtils.getJSONArray(jSONObject, this.sdk.CE().isEnabled() ? "test_mode_auto_init_adapters" : "auto_init_adapters", new JSONArray()), jSONObject);
                    this.alZ = listA;
                    long j = StringUtils.parseLong(this.sdk.getSettings().getExtraParameters().get(AppLovinSdkExtraParameterKey.ADAPTER_INITIALIZATION_DELAY_MILLIS), -1L);
                    com.applovin.impl.mediation.d.a aVar = new com.applovin.impl.mediation.d.a(listA, activity, this.sdk);
                    if (j > 0) {
                        this.sdk.BO().a(aVar, q.b.BACKGROUND, j);
                    } else {
                        this.sdk.BO().b(aVar);
                    }
                } catch (JSONException e2) {
                    if (com.applovin.impl.sdk.x.Fn()) {
                        this.logger.c("MediationAdapterInitializationManager", "Failed to parse auto-init adapters JSON", e2);
                    }
                }
            }
        }
    }

    boolean b(com.applovin.impl.mediation.b.f fVar) {
        boolean zContainsKey;
        synchronized (this.alY) {
            zContainsKey = this.alX.containsKey(fVar.vt());
        }
        return zContainsKey;
    }

    public boolean isInitialized() {
        return this.akD.get();
    }

    public LinkedHashMap<String, Integer> tV() {
        LinkedHashMap<String, Integer> linkedHashMap;
        synchronized (this.alY) {
            linkedHashMap = this.alX;
        }
        return linkedHashMap;
    }

    public JSONArray tW() {
        JSONArray jSONArray;
        synchronized (this.alY) {
            jSONArray = this.alW;
        }
        return jSONArray;
    }
}

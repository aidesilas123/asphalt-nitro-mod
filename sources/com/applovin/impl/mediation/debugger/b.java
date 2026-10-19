package com.applovin.impl.mediation.debugger;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.applovin.impl.mediation.debugger.b.c.b;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.network.b;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.x;
import com.applovin.mediation.MaxDebuggerActivity;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.gms.drive.DriveFile;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b implements b.d<JSONObject> {
    private static final AtomicBoolean akq = new AtomicBoolean();
    private static WeakReference<MaxDebuggerActivity> anZ;
    private final Context E;
    private boolean akp;
    private final com.applovin.impl.mediation.debugger.ui.b.b aoa;
    private boolean aoc;

    @Nullable
    private Map<String, List<?>> aoe;
    private final a aof;
    private final x logger;
    private final n sdk;
    private final Map<String, com.applovin.impl.mediation.debugger.b.c.b> aob = new HashMap();
    private final AtomicBoolean akD = new AtomicBoolean();
    private int aod = 2;

    public b(n nVar) {
        this.sdk = nVar;
        this.logger = nVar.BN();
        Context applicationContext = n.getApplicationContext();
        this.E = applicationContext;
        com.applovin.impl.mediation.debugger.ui.b.b bVar = new com.applovin.impl.mediation.debugger.ui.b.b(applicationContext);
        this.aoa = bVar;
        this.aof = new a(nVar, bVar);
    }

    private List<com.applovin.impl.mediation.debugger.b.a.a> a(List<com.applovin.impl.mediation.debugger.b.a.a> list, n nVar) {
        List<String> initializationAdUnitIds = nVar.getSettings().getInitializationAdUnitIds();
        if (initializationAdUnitIds == null || initializationAdUnitIds.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(initializationAdUnitIds.size());
        for (com.applovin.impl.mediation.debugger.b.a.a aVar : list) {
            if (initializationAdUnitIds.contains(aVar.mQ())) {
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    private List<com.applovin.impl.mediation.debugger.b.c.b> a(JSONObject jSONObject, n nVar) {
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "networks", new JSONArray());
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject2 != null) {
                com.applovin.impl.mediation.debugger.b.c.b bVar = new com.applovin.impl.mediation.debugger.b.c.b(jSONObject2, nVar);
                arrayList.add(bVar);
                this.aob.put(bVar.vt(), bVar);
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private List<com.applovin.impl.mediation.debugger.b.a.a> a(JSONObject jSONObject, List<com.applovin.impl.mediation.debugger.b.c.b> list, n nVar) {
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "ad_units", new JSONArray());
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject2 != null) {
                arrayList.add(new com.applovin.impl.mediation.debugger.b.a.a(jSONObject2, this.aob, nVar));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(DialogInterface dialogInterface, int i) {
        showMediationDebugger();
    }

    private List<com.applovin.impl.mediation.debugger.b.b.b> c(JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList();
        for (String str : JsonUtils.getList(jSONObject, "required_app_ads_txt_entries", new ArrayList())) {
            com.applovin.impl.mediation.debugger.b.b.b bVar = new com.applovin.impl.mediation.debugger.b.b.b(str);
            if (bVar.vi()) {
                arrayList.add(bVar);
            } else if (x.Fn()) {
                this.logger.i("MediationDebuggerService", "app-ads.txt entry passed down for validation is misformatted: " + str);
            }
        }
        return arrayList;
    }

    private void o(List<com.applovin.impl.mediation.debugger.b.c.b> list) {
        boolean z;
        Iterator<com.applovin.impl.mediation.debugger.b.c.b> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            com.applovin.impl.mediation.debugger.b.c.b next = it.next();
            if (next.vp() && next.vl() == b.a.INVALID_INTEGRATION) {
                z = true;
                break;
            }
        }
        if (z) {
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.debugger.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.uE();
                }
            }, TimeUnit.SECONDS.toMillis(2L));
        }
    }

    private void ty() {
        this.sdk.BM().a(new com.applovin.impl.sdk.utils.a() { // from class: com.applovin.impl.mediation.debugger.b.1
            @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                if (activity instanceof MaxDebuggerActivity) {
                    x.D("AppLovinSdk", "Started mediation debugger");
                    if (!b.this.uD() || b.anZ.get() != activity) {
                        MaxDebuggerActivity maxDebuggerActivity = (MaxDebuggerActivity) activity;
                        WeakReference unused = b.anZ = new WeakReference(maxDebuggerActivity);
                        maxDebuggerActivity.setListAdapter(b.this.aoa, b.this.sdk.BM());
                    }
                    b.akq.set(false);
                }
            }

            @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
                if (activity instanceof MaxDebuggerActivity) {
                    x.D("AppLovinSdk", "Mediation debugger destroyed");
                    WeakReference unused = b.anZ = null;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean uD() {
        WeakReference<MaxDebuggerActivity> weakReference = anZ;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void uE() {
        Activity activityCF = this.sdk.CF();
        if (activityCF == null || activityCF.isFinishing()) {
            x.H("AppLovinSdk", "MAX Mediation Debugger has flagged several errors in your build. Make sure to resolve these before you go live.\n\nNote that this log will only be shown in your development builds. Live apps will not be affected.");
        } else {
            new AlertDialog.Builder(activityCF).setTitle("Review Integration Errors").setMessage("Looks like MAX Mediation Debugger flagged several errors in your build. Make sure to resolve these before you go live.\n\nNote that this prompt will only be shown in your development builds. Live apps will not be affected.").setPositiveButton("Show Mediation Debugger", new DialogInterface.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.c
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.a.a(dialogInterface, i);
                }
            }).setNegativeButton("DISMISS", (DialogInterface.OnClickListener) null).create().show();
        }
    }

    @Override // com.applovin.impl.sdk.network.b.d
    public void a(int i, String str, JSONObject jSONObject) {
        if (x.Fn()) {
            this.logger.i("MediationDebuggerService", "Unable to fetch mediation debugger info: server returned " + i);
        }
        x.H("AppLovinSdk", "Unable to show mediation debugger.");
        this.aoa.a(null, null, null, null, null, null, null, null, false, this.sdk);
        this.akD.set(false);
    }

    @Override // com.applovin.impl.sdk.network.b.d
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void d(JSONObject jSONObject, int i) {
        List<com.applovin.impl.mediation.debugger.b.c.b> listA = a(jSONObject, this.sdk);
        List<com.applovin.impl.mediation.debugger.b.a.a> listA2 = a(jSONObject, listA, this.sdk);
        List<com.applovin.impl.mediation.debugger.b.a.a> listA3 = a(listA2, this.sdk);
        List<com.applovin.impl.mediation.debugger.b.b.b> listC = c(jSONObject);
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "alert", (JSONObject) null);
        this.aoa.a(listA, listA2, listA3, listC, JsonUtils.getString(jSONObject2, "title", null), JsonUtils.getString(jSONObject2, "message", null), JsonUtils.getString(jSONObject, "account_id", null), JsonUtils.getBoolean(jSONObject, "complies_with_google_families_policy", null), JsonUtils.getBoolean(jSONObject, "should_display_cmp_details", Boolean.TRUE).booleanValue(), this.sdk);
        if (!listC.isEmpty()) {
            this.aof.uA();
        }
        if (uC()) {
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.debugger.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.showMediationDebugger();
                }
            }, TimeUnit.SECONDS.toMillis(this.aod));
        } else {
            o(listA);
        }
    }

    @Nullable
    public List<?> bH(String str) {
        Map<String, List<?>> map = this.aoe;
        if (map == null || map.isEmpty()) {
            return null;
        }
        return this.aoe.get(str);
    }

    public void h(boolean z, int i) {
        this.aoc = z;
        this.aod = i;
    }

    public void showMediationDebugger() {
        showMediationDebugger(null);
    }

    public void showMediationDebugger(@Nullable Map<String, List<?>> map) {
        this.aoe = map;
        uB();
        if (uD() || !akq.compareAndSet(false, true)) {
            x.H("AppLovinSdk", "Mediation debugger is already showing");
            return;
        }
        if (!this.akp) {
            ty();
            this.akp = true;
        }
        Intent intent = new Intent(this.E, (Class<?>) MaxDebuggerActivity.class);
        intent.setFlags(DriveFile.MODE_READ_ONLY);
        x.D("AppLovinSdk", "Starting mediation debugger...");
        this.E.startActivity(intent);
    }

    public String toString() {
        return "MediationDebuggerService{, listAdapter=" + this.aoa + "}";
    }

    public void uB() {
        if (this.akD.compareAndSet(false, true)) {
            this.sdk.BO().a(new com.applovin.impl.mediation.debugger.c.c(this, this.sdk), q.b.MEDIATION_MAIN);
        }
    }

    public boolean uC() {
        return this.aoc;
    }
}

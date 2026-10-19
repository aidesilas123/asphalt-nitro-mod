package com.applovin.impl.mediation.debugger.b.c;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.MaxAdViewAdapter;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAppOpenAdapter;
import com.applovin.mediation.adapter.MaxInterstitialAdapter;
import com.applovin.mediation.adapter.MaxNativeAdAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdapter;
import com.applovin.mediation.adapter.MaxRewardedInterstitialAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b implements AppLovinCommunicatorSubscriber, Comparable<b> {
    private final a aoU;
    private int aoV;
    private final boolean aoW;
    private final boolean aoX;
    private final boolean aoY;
    private final boolean aoZ;
    private final boolean aov;
    private final String aow;
    private final boolean apa;
    private final boolean apb;
    private final boolean apc;
    private final boolean apd;
    private final boolean ape;
    private final boolean apf;
    private final boolean apg;
    private final String aph;
    private String api;
    private final String apj;
    private final String apk;
    private final String apl;
    private final String apm;
    private final int apn;
    private final List<MaxAdFormat> apo;

    /* JADX INFO: renamed from: app, reason: collision with root package name */
    private final List<c> f360app;
    private final List<com.applovin.impl.mediation.debugger.b.c.a> apq;
    private final List<String> apr;
    private final List<String> aps;
    private final Map<MaxAdFormat, String> apt;
    private final boolean apu;
    private final com.applovin.impl.privacy.b.c apv;
    private final String apw;
    private final Map<MaxAdFormat, com.applovin.impl.mediation.debugger.a.b> apx;
    private final String name;
    private final n sdk;

    public enum a {
        MISSING("MISSING"),
        INCOMPLETE_INTEGRATION("INCOMPLETE INTEGRATION"),
        INVALID_INTEGRATION("INVALID INTEGRATION"),
        COMPLETE("COMPLETE");

        private final String apC;

        a(String str) {
            this.apC = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String vN() {
            return this.apC;
        }
    }

    /* JADX INFO: renamed from: com.applovin.impl.mediation.debugger.b.c.b$b, reason: collision with other inner class name */
    public enum EnumC0066b {
        NOT_SUPPORTED("Not Supported", SupportMenu.CATEGORY_MASK, "This network does not support test mode."),
        INVALID_INTEGRATION("Invalid Integration", SupportMenu.CATEGORY_MASK, "Please address all the integration issue(s) marked in red above."),
        NOT_INITIALIZED("Not Initialized", SupportMenu.CATEGORY_MASK, "Please configure this network in your MAX dashboard."),
        DISABLED("Enable", -16776961, "Please re-launch the app to enable test ads."),
        READY("", -16776961, "");

        private final String apJ;
        private final int apK;
        private final String apL;

        EnumC0066b(String str, int i, String str2) {
            this.apJ = str;
            this.apK = i;
            this.apL = str2;
        }

        public String vO() {
            return this.apJ;
        }

        public int vP() {
            return this.apK;
        }

        public String vQ() {
            return this.apL;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0223 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x02a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public b(org.json.JSONObject r21, com.applovin.impl.sdk.n r22) {
        /*
            Method dump skipped, instruction units count: 771
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.mediation.debugger.b.c.b.<init>(org.json.JSONObject, com.applovin.impl.sdk.n):void");
    }

    private List<MaxAdFormat> a(MaxAdapter maxAdapter, boolean z) {
        ArrayList arrayList = new ArrayList(5);
        if (maxAdapter instanceof MaxInterstitialAdapter) {
            arrayList.add(MaxAdFormat.INTERSTITIAL);
        }
        if (maxAdapter instanceof MaxAppOpenAdapter) {
            arrayList.add(MaxAdFormat.APP_OPEN);
        }
        if (maxAdapter instanceof MaxRewardedAdapter) {
            arrayList.add(MaxAdFormat.REWARDED);
        }
        if (maxAdapter instanceof MaxRewardedInterstitialAdapter) {
            arrayList.add(MaxAdFormat.REWARDED_INTERSTITIAL);
        }
        if (maxAdapter instanceof MaxAdViewAdapter) {
            arrayList.add(MaxAdFormat.BANNER);
            arrayList.add(MaxAdFormat.LEADER);
            if (z) {
                arrayList.add(MaxAdFormat.MREC);
            }
        }
        if (maxAdapter instanceof MaxNativeAdAdapter) {
            arrayList.add(MaxAdFormat.NATIVE);
        }
        return arrayList;
    }

    private List<com.applovin.impl.mediation.debugger.b.c.a> a(JSONObject jSONObject, String str, n nVar) {
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "dependencies", new JSONArray());
        JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "dependencies_v2", new JSONArray());
        ArrayList arrayList = new ArrayList(jSONArray.length() + jSONArray2.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject2 != null) {
                arrayList.add(new com.applovin.impl.mediation.debugger.b.c.a(jSONObject2, nVar));
            }
        }
        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
            JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONArray2, i2, (JSONObject) null);
            if (jSONObject3 != null && com.applovin.impl.mediation.debugger.b.c.a.a(str, JsonUtils.getString(jSONObject3, "min_adapter_version", null), JsonUtils.getString(jSONObject3, "max_adapter_version", null))) {
                arrayList.add(new com.applovin.impl.mediation.debugger.b.c.a(jSONObject3, nVar));
            }
        }
        return arrayList;
    }

    private List<c> b(JSONObject jSONObject, n nVar) {
        ArrayList arrayList = new ArrayList();
        if (this.aph.equals("com.applovin.mediation.adapters.AppLovinMediationAdapter")) {
            c cVar = new c("com.google.android.gms.permission.AD_ID", "Please add\n<uses-permission android:name=\"com.google.android.gms.permission.AD_ID\" />\nto your AndroidManifest.xml", n.getApplicationContext());
            if (cVar.vk()) {
                arrayList.add(cVar);
            }
        }
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "permissions", new JSONObject());
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            try {
                String next = itKeys.next();
                arrayList.add(new c(next, jSONObject2.getString(next), n.getApplicationContext()));
            } catch (JSONException unused) {
            }
        }
        return arrayList;
    }

    @Nullable
    private List<String> e(JSONObject jSONObject) {
        return JsonUtils.optList(JsonUtils.getJSONArray(jSONObject, "supported_regions", null), null);
    }

    private a vM() {
        a aVar = this.aoW ? this.aoX ? a.COMPLETE : this.aoZ ? a.MISSING : a.INCOMPLETE_INTEGRATION : this.aoX ? a.INCOMPLETE_INTEGRATION : a.MISSING;
        if (aVar == a.MISSING) {
            return aVar;
        }
        Iterator<c> it = this.f360app.iterator();
        while (it.hasNext()) {
            if (!it.next().vk()) {
                return a.INVALID_INTEGRATION;
            }
        }
        Iterator<com.applovin.impl.mediation.debugger.b.c.a> it2 = this.apq.iterator();
        while (it2.hasNext()) {
            if (!it2.next().vk()) {
                return a.INVALID_INTEGRATION;
            }
        }
        return (!this.apg || n.CI()) ? aVar : a.INVALID_INTEGRATION;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(b bVar) {
        return this.aow.compareToIgnoreCase(bVar.aow);
    }

    public String getAdapterVersion() {
        return this.apj;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "MediatedNetwork";
    }

    public String getDisplayName() {
        return this.aow;
    }

    public String getName() {
        return this.name;
    }

    public final n getSdk() {
        return this.sdk;
    }

    public String getSdkVersion() {
        return this.api;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        String string = appLovinCommunicatorMessage.getMessageData().getString("adapter_class", "");
        if (this.aph.equals(string)) {
            this.aoV = appLovinCommunicatorMessage.getMessageData().getInt("init_status", 0);
            MaxAdapter maxAdapterB = com.applovin.impl.mediation.e.c.b(string, this.sdk);
            if (maxAdapterB == null || this.api.equals(maxAdapterB.getSdkVersion())) {
                return;
            }
            this.api = maxAdapterB.getSdkVersion();
            this.sdk.Ch().A(this.api, string);
        }
    }

    public String toString() {
        return "MediatedNetwork{name=" + this.name + ", displayName=" + this.aow + ", sdkAvailable=" + this.aoW + ", sdkVersion=" + this.api + ", adapterAvailable=" + this.aoX + ", adapterVersion=" + this.apj + "}";
    }

    public boolean uN() {
        return this.aov;
    }

    public boolean vA() {
        return this.ape;
    }

    public List<c> vB() {
        return this.f360app;
    }

    public List<com.applovin.impl.mediation.debugger.b.c.a> vC() {
        return this.apq;
    }

    public boolean vD() {
        return this.apg;
    }

    public boolean vE() {
        return this.apu;
    }

    @Nullable
    public Map<MaxAdFormat, String> vF() {
        return this.apt;
    }

    public String vG() {
        return this.apl;
    }

    public boolean vH() {
        return this.apf;
    }

    public com.applovin.impl.privacy.b.c vI() {
        return this.apv;
    }

    public final String vJ() {
        StringBuilder sb = new StringBuilder();
        sb.append("\n---------- ");
        sb.append(this.name);
        sb.append(" ----------");
        sb.append("\nStatus  - ");
        sb.append(this.aoU.vN());
        sb.append("\nSDK     - ");
        String str = "UNAVAILABLE";
        sb.append((!this.aoW || TextUtils.isEmpty(this.api)) ? "UNAVAILABLE" : this.api);
        sb.append("\nAdapter - ");
        if (this.aoX && !TextUtils.isEmpty(this.apj)) {
            str = this.apj;
        }
        sb.append(str);
        for (c cVar : vB()) {
            if (!cVar.vk()) {
                sb.append("\n* MISSING ");
                sb.append(cVar.getName());
                sb.append(": ");
                sb.append(cVar.vj());
            }
        }
        for (com.applovin.impl.mediation.debugger.b.c.a aVar : vC()) {
            if (!aVar.vk()) {
                sb.append("\n* MISSING ");
                sb.append(aVar.getName());
                sb.append(": ");
                sb.append(aVar.vj());
            }
        }
        return sb.toString();
    }

    public String vK() {
        return this.apw;
    }

    public Map<MaxAdFormat, com.applovin.impl.mediation.debugger.a.b> vL() {
        return this.apx;
    }

    public a vl() {
        return this.aoU;
    }

    public int vm() {
        return this.aoV;
    }

    public EnumC0066b vn() {
        if (!this.apa) {
            return EnumC0066b.NOT_SUPPORTED;
        }
        a aVar = this.aoU;
        return (aVar == a.COMPLETE || (aVar == a.INCOMPLETE_INTEGRATION && vo() && vp())) ? !this.sdk.CE().isEnabled() ? EnumC0066b.DISABLED : (this.apb && (this.aoV == MaxAdapter.InitializationStatus.INITIALIZED_FAILURE.getCode() || this.aoV == MaxAdapter.InitializationStatus.INITIALIZING.getCode())) ? EnumC0066b.NOT_INITIALIZED : EnumC0066b.READY : EnumC0066b.INVALID_INTEGRATION;
    }

    public boolean vo() {
        return this.aoW;
    }

    public boolean vp() {
        return this.aoX;
    }

    public boolean vq() {
        return this.aoY;
    }

    public boolean vr() {
        return this.aoU == a.MISSING && this.apc;
    }

    public String vs() {
        return this.apk;
    }

    public String vt() {
        return this.aph;
    }

    @Nullable
    public String vu() {
        return this.apm;
    }

    @Nullable
    public List<String> vv() {
        return this.aps;
    }

    @Nullable
    public List<String> vw() {
        return this.apr;
    }

    public int vx() {
        return this.apn;
    }

    public List<MaxAdFormat> vy() {
        return this.apo;
    }

    public boolean vz() {
        return this.apd;
    }
}

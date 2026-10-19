package com.applovin.impl.mediation.debugger.ui.b;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.mediation.d.q;
import com.applovin.impl.mediation.debugger.a;
import com.applovin.impl.mediation.debugger.b.c.b;
import com.applovin.impl.mediation.debugger.ui.d.c;
import com.applovin.impl.privacy.a.d;
import com.applovin.impl.sdk.f;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.g;
import com.applovin.impl.sdk.utils.u;
import com.applovin.impl.sdk.x;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import com.json.b4;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class b extends com.applovin.impl.mediation.debugger.ui.d.d implements AppLovinCommunicatorSubscriber, a.InterfaceC0064a {
    private final AtomicBoolean akD;
    private String apL;
    private List<com.applovin.impl.mediation.debugger.b.a.a> aqQ;
    private List<com.applovin.impl.mediation.debugger.b.a.a> aqR;
    private List<com.applovin.impl.mediation.debugger.b.b.b> aqS;
    private String aqT;
    private String aqU;
    private Boolean aqV;
    private boolean aqW;
    private final StringBuilder aqX;
    private boolean aqY;
    private List<com.applovin.impl.mediation.debugger.b.c.b> aqZ;
    private List<com.applovin.impl.mediation.debugger.b.c.b> ara;
    private List<com.applovin.impl.mediation.debugger.b.c.b> arb;
    private List<com.applovin.impl.mediation.debugger.b.a.c> arc;
    private List<com.applovin.impl.mediation.debugger.b.a.c> ard;
    private List<com.applovin.impl.mediation.debugger.b.c.b> are;
    private List<com.applovin.impl.mediation.debugger.ui.d.c> arf;
    private List<com.applovin.impl.mediation.debugger.ui.d.c> arg;
    private List<com.applovin.impl.mediation.debugger.ui.d.c> arh;
    private List<com.applovin.impl.mediation.debugger.ui.d.c> ari;
    private List<com.applovin.impl.mediation.debugger.ui.d.c> arj;
    private List<com.applovin.impl.mediation.debugger.ui.d.c> ark;
    private List<com.applovin.impl.mediation.debugger.ui.d.c> arl;
    private n sdk;

    /* JADX INFO: renamed from: com.applovin.impl.mediation.debugger.ui.b.b$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] arm;

        static {
            int[] iArr = new int[a.b.values().length];
            arm = iArr;
            try {
                iArr[a.b.DEVELOPER_URI_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                arm[a.b.APPADSTXT_NOT_FOUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                arm[a.b.MISSING_APPLOVIN_ENTRIES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                arm[a.b.MISSING_NON_APPLOVIN_ENTRIES.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum a {
        AD_UNITS,
        SELECT_LIVE_NETWORKS,
        SELECT_TEST_MODE_NETWORKS,
        INITIALIZATION_AD_UNITS,
        COUNT
    }

    /* JADX INFO: renamed from: com.applovin.impl.mediation.debugger.ui.b.b$b, reason: collision with other inner class name */
    private enum EnumC0070b {
        SUCCESS,
        WARNING,
        ERROR
    }

    public enum c {
        SDK_VERSION,
        PLUGIN_VERSION,
        AD_REVIEW_VERSION,
        CONSENT_FLOW_TYPE,
        GOOGLE_UMP_SDK,
        PRIVACY_POLICY_URL,
        TERMS_OF_SERVICE_URL,
        APP_ADS_TXT
    }

    public enum d {
        CMP,
        NETWORK_CONSENT_STATUSES,
        IS_AGE_RESTRICTED_USER,
        DO_NOT_SELL,
        COUNT
    }

    public enum e {
        APP_INFO,
        MAX,
        PRIVACY,
        ADS,
        INCOMPLETE_NETWORKS,
        COMPLETED_NETWORKS,
        MISSING_NETWORKS,
        COUNT
    }

    public b(Context context) {
        super(context);
        this.aqX = new StringBuilder("");
        this.akD = new AtomicBoolean();
        this.aqY = false;
        this.aqZ = new ArrayList();
        this.ara = new ArrayList();
        this.arb = new ArrayList();
        this.arc = new ArrayList();
        this.ard = new ArrayList();
        this.are = new ArrayList();
        this.arf = new ArrayList();
        this.arg = new ArrayList();
        this.arh = new ArrayList();
        this.ari = new ArrayList();
        this.arj = new ArrayList();
        this.ark = new ArrayList();
        this.arl = new ArrayList();
    }

    private com.applovin.impl.mediation.debugger.ui.d.c a(String str, EnumC0070b enumC0070b) {
        int i;
        int iA;
        if (enumC0070b == EnumC0070b.SUCCESS) {
            i = R.drawable.applovin_ic_check_mark_bordered;
            iA = g.a(R.color.applovin_sdk_checkmarkColor, this.E);
        } else if (enumC0070b == EnumC0070b.WARNING) {
            i = R.drawable.applovin_ic_warning;
            iA = g.a(R.color.applovin_sdk_warningColor, this.E);
        } else {
            i = R.drawable.applovin_ic_x_mark;
            iA = g.a(R.color.applovin_sdk_xmarkColor, this.E);
        }
        return com.applovin.impl.mediation.debugger.ui.d.c.wW().bO("app-ads.txt").gk(i).gn(iA).bQ("app-ads.txt").bR(str).aF(true).wX();
    }

    private String a(a.b bVar, @Nullable String str, @Nullable String str2) {
        if (TextUtils.isEmpty(str)) {
            str = "app-ads.txt URL";
        }
        int i = AnonymousClass1.arm[bVar.ordinal()];
        if (i == 1) {
            return "Could not retrieve developer website from the Play Store for this package name. Check back once this app has been published on the Play Store.";
        }
        if (i == 2) {
            return "Unable to find app-ads.txt file or parse entries of the file at " + str + ".\n\nFor more information, please visit Account -> App-Ads.txt Info at:\nhttps://dash.applovin.com/o/account?r=2#app_ads_txt";
        }
        if (i != 3) {
            if (i != 4) {
                return "";
            }
            return "Text file at " + str + " is missing some of the suggested lines.\n\nFor more information, please visit Account -> App-Ads.txt Info at:\nhttps://dash.applovin.com/o/account?r=2#app_ads_txt";
        }
        return "Text file at " + str + " is missing the required AppLovin line:\n\n" + str2 + "\n\nFor more information, please visit Account -> App-Ads.txt Info at:\nhttps://dash.applovin.com/o/account?r=2#app_ads_txt";
    }

    private void a(c.a aVar, String str) {
        aVar.bQ("MAX Ad Review").bR(str).gk(R.drawable.applovin_ic_x_mark).gn(g.a(R.color.applovin_sdk_xmarkColor, this.E)).aF(true);
    }

    private void a(StringBuilder sb, String str) {
        String string = sb.toString();
        if (string.length() + str.length() >= ((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aKy)).intValue()) {
            x.D("MediationDebuggerListAdapter", string);
            this.aqX.append(string);
            sb.setLength(1);
        }
        sb.append(str);
    }

    private com.applovin.impl.mediation.debugger.ui.d.c aA(boolean z) {
        return com.applovin.impl.mediation.debugger.ui.d.c.wW().bO("Java 8").gk(z ? R.drawable.applovin_ic_check_mark_bordered : R.drawable.applovin_ic_x_mark).gn(g.a(z ? R.color.applovin_sdk_checkmarkColor : R.color.applovin_sdk_xmarkColor, this.E)).bQ("Upgrade to Java 8").bR("For optimal performance, please enable Java 8 support. This will be required in a future SDK release. See: https://dash.applovin.com/documentation/mediation/android/getting-started/integration").aF(!z).wX();
    }

    private EnumC0070b b(a.b bVar) {
        int i = AnonymousClass1.arm[bVar.ordinal()];
        return (i == 1 || i == 2 || i == 3) ? EnumC0070b.ERROR : i != 4 ? EnumC0070b.ERROR : EnumC0070b.WARNING;
    }

    @Nullable
    private String b(@Nullable List<String> list, boolean z) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        if (z) {
            for (com.applovin.impl.mediation.debugger.b.a.c cVar : this.arc) {
                if (list.equals(cVar.uO())) {
                    return cVar.getDisplayName();
                }
            }
            for (com.applovin.impl.mediation.debugger.b.a.c cVar2 : this.ard) {
                if (list.equals(cVar2.uO())) {
                    return cVar2.getDisplayName();
                }
            }
        } else {
            for (com.applovin.impl.mediation.debugger.b.c.b bVar : this.are) {
                if (list.equals(Collections.singletonList(bVar.getName()))) {
                    return bVar.getDisplayName();
                }
            }
        }
        return q.a(",", list);
    }

    private com.applovin.impl.mediation.debugger.ui.d.c bM(String str) {
        c.a aVarWW = com.applovin.impl.mediation.debugger.ui.d.c.wW();
        if (!this.sdk.CE().isEnabled()) {
            aVarWW.y(this.E);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(StringUtils.isValidString(str) ? "" : "Select ");
        sb.append("Live Network");
        c.a aVarBO = aVarWW.bO(sb.toString());
        if (this.sdk.CE().isEnabled()) {
            str = "Enable";
        }
        return aVarBO.bP(str).gm(-16776961).bR("Ad loads are not supported while Test Mode is enabled. Please restart the app and make sure your GAID has not been enabled for test mode and that you are not on an emulator.").aF(true).wX();
    }

    private com.applovin.impl.mediation.debugger.ui.d.c bN(String str) {
        c.a aVarWW = com.applovin.impl.mediation.debugger.ui.d.c.wW();
        if (this.sdk.CE().isEnabled()) {
            aVarWW.y(this.E);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(StringUtils.isValidString(str) ? "" : "Select ");
        sb.append("Test Mode Network");
        c.a aVarBO = aVarWW.bO(sb.toString());
        if (!this.sdk.CE().isEnabled()) {
            str = "Enable";
        }
        return aVarBO.bP(str).gm(-16776961).bR("Please re-launch the app to enable test mode. This will allow the selection of test mode networks.").aF(true).wX();
    }

    private void t(List<com.applovin.impl.mediation.debugger.b.c.b> list) {
        for (com.applovin.impl.mediation.debugger.b.c.b bVar : list) {
            if (!bVar.vr()) {
                if (bVar.vl() == b.a.INCOMPLETE_INTEGRATION || bVar.vl() == b.a.INVALID_INTEGRATION) {
                    this.aqZ.add(bVar);
                } else if (bVar.vl() == b.a.COMPLETE) {
                    this.ara.add(bVar);
                } else if (bVar.vl() == b.a.MISSING) {
                    this.arb.add(bVar);
                }
            }
        }
    }

    private void u(List<com.applovin.impl.mediation.debugger.b.a.a> list) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        Iterator<com.applovin.impl.mediation.debugger.b.a.a> it = list.iterator();
        while (it.hasNext()) {
            com.applovin.impl.mediation.debugger.b.a.b bVarUG = it.next().uG();
            Iterator<com.applovin.impl.mediation.debugger.b.a.e> it2 = bVarUG.uL().iterator();
            while (it2.hasNext()) {
                hashSet.add(it2.next().uR());
            }
            Iterator<com.applovin.impl.mediation.debugger.b.a.e> it3 = bVarUG.uM().iterator();
            while (it3.hasNext()) {
                hashSet2.add(it3.next().uR());
            }
        }
        this.arc = new ArrayList(hashSet);
        this.ard = new ArrayList(hashSet2);
        Collections.sort(this.arc);
        Collections.sort(this.ard);
    }

    private List<com.applovin.impl.mediation.debugger.ui.d.c> v(@Nullable String str, @Nullable String str2) {
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(com.applovin.impl.mediation.debugger.ui.d.c.wW().bO("View Ad Units (" + this.aqQ.size() + ")").y(this.E).aF(true).wX());
        arrayList.add(bM(str));
        arrayList.add(bN(str2));
        if (!this.aqR.isEmpty()) {
            arrayList.add(com.applovin.impl.mediation.debugger.ui.d.c.wW().bO("Selective Init Ad Units (" + this.aqR.size() + ")").y(this.E).aF(true).wX());
        }
        return arrayList;
    }

    private void v(List<com.applovin.impl.mediation.debugger.b.c.b> list) {
        for (com.applovin.impl.mediation.debugger.b.c.b bVar : list) {
            if (bVar.vn() == b.EnumC0066b.READY) {
                this.are.add(bVar);
            }
        }
    }

    private com.applovin.impl.mediation.debugger.ui.d.c w(String str, String str2) {
        c.a aVarBO = com.applovin.impl.mediation.debugger.ui.d.c.wW().bO(str);
        if (StringUtils.isValidString(str2)) {
            aVarBO.bP(str2);
        } else {
            aVarBO.gk(R.drawable.applovin_ic_x_mark);
            aVarBO.gn(g.a(R.color.applovin_sdk_xmarkColor, this.E));
        }
        return aVarBO.wX();
    }

    private List<com.applovin.impl.mediation.debugger.ui.d.c> w(List<com.applovin.impl.mediation.debugger.b.c.b> list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<com.applovin.impl.mediation.debugger.b.c.b> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new com.applovin.impl.mediation.debugger.ui.b.a.a(it.next(), this.E));
        }
        return arrayList;
    }

    private void wp() {
        Map<String, String> mapA;
        StringBuilder sb = new StringBuilder("\n========== MEDIATION DEBUGGER ==========");
        sb.append("\n========== APP INFO ==========");
        sb.append("\nDev Build - " + u.b(this.E, this.sdk));
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\nTest Mode - ");
        sb2.append(this.sdk.CE().isEnabled() ? b4.r : "disabled");
        sb.append(sb2.toString());
        if (this.sdk.BV() != null) {
            sb.append("\nTarget SDK - " + this.sdk.BU().Ej().Es());
        } else {
            sb.append("\nTarget SDK - " + this.sdk.BS().Db().get("target_sdk"));
        }
        sb.append("\n========== MAX ==========");
        String str = AppLovinSdk.VERSION;
        String str2 = (String) this.sdk.a(com.applovin.impl.sdk.c.b.aOD);
        String version = f.getVersion();
        sb.append("\nSDK Version - " + str);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("\nPlugin Version - ");
        if (!StringUtils.isValidString(str2)) {
            str2 = "None";
        }
        sb3.append(str2);
        sb.append(sb3.toString());
        StringBuilder sb4 = new StringBuilder();
        sb4.append("\nAd Review Version - ");
        if (!StringUtils.isValidString(version)) {
            version = "Disabled";
        }
        sb4.append(version);
        sb.append(sb4.toString());
        if (this.sdk.Bs() && (mapA = u.a(this.sdk.getSettings())) != null) {
            String str3 = mapA.get("UnityVersion");
            StringBuilder sb5 = new StringBuilder();
            sb5.append("\nUnity Version - ");
            sb5.append(StringUtils.isValidString(str3) ? str3 : "None");
            sb.append(sb5.toString());
        }
        sb.append("\n========== PRIVACY ==========");
        sb.append(com.applovin.impl.privacy.a.A(this.E));
        sb.append(this.sdk.Cl().uI());
        sb.append("\n========== CMP (CONSENT MANAGEMENT PLATFORM) ==========");
        sb.append(this.sdk.Cm().uI());
        sb.append("\n========== NETWORK CONSENT STATUSES ==========");
        Iterator<com.applovin.impl.privacy.b.c> it = this.sdk.Cm().Au().iterator();
        while (it.hasNext()) {
            sb.append(it.next().uI());
        }
        sb.append("\n========== NETWORKS ==========");
        Iterator<com.applovin.impl.mediation.debugger.b.c.b> it2 = this.ara.iterator();
        while (it2.hasNext()) {
            a(sb, it2.next().vJ());
        }
        Iterator<com.applovin.impl.mediation.debugger.b.c.b> it3 = this.aqZ.iterator();
        while (it3.hasNext()) {
            a(sb, it3.next().vJ());
        }
        sb.append("\n========== AD UNITS ==========");
        Iterator<com.applovin.impl.mediation.debugger.b.a.a> it4 = this.aqQ.iterator();
        while (it4.hasNext()) {
            a(sb, it4.next().uI());
        }
        sb.append("\n========== END ==========");
        x.D("MediationDebuggerListAdapter", sb.toString());
        this.aqX.append(sb.toString());
    }

    private List<com.applovin.impl.mediation.debugger.ui.d.c> wq() {
        String str;
        ArrayList arrayList = new ArrayList(7);
        try {
            str = this.E.getPackageManager().getPackageInfo(this.E.getPackageName(), 0).versionName;
        } catch (Throwable unused) {
            str = null;
        }
        arrayList.add(com.applovin.impl.mediation.debugger.ui.d.c.wW().bO("Package Name").bP(this.E.getPackageName()).wX());
        c.a aVarBO = com.applovin.impl.mediation.debugger.ui.d.c.wW().bO("App Version");
        if (!StringUtils.isValidString(str)) {
            str = "None";
        }
        arrayList.add(aVarBO.bP(str).wX());
        arrayList.add(com.applovin.impl.mediation.debugger.ui.d.c.wW().bO("OS").bP(u.LB()).wX());
        arrayList.add(com.applovin.impl.mediation.debugger.ui.d.c.wW().bO("Account").bP(StringUtils.isValidString(this.aqU) ? this.aqU : "None").wX());
        arrayList.add(com.applovin.impl.mediation.debugger.ui.d.c.wW().bO("Mediation Provider").bP(StringUtils.isValidString(this.sdk.getMediationProvider()) ? this.sdk.getMediationProvider() : "None").wX());
        arrayList.add(com.applovin.impl.mediation.debugger.ui.d.c.wW().bO("OM SDK Version").bP(this.sdk.Cp().getSdkVersion()).wX());
        arrayList.add(aA(n.CI()));
        if (this.aqV != null) {
            arrayList.add(com.applovin.impl.mediation.debugger.ui.d.c.wW().bO("Google Families Policy").bP(String.valueOf(this.aqV)).wX());
        }
        return arrayList;
    }

    private List<com.applovin.impl.mediation.debugger.ui.d.c> wr() {
        Map<String, String> mapA;
        ArrayList arrayList = new ArrayList(7);
        arrayList.add(com.applovin.impl.mediation.debugger.ui.d.c.wW().bO("SDK Version").bP(AppLovinSdk.VERSION).wX());
        String str = (String) this.sdk.a(com.applovin.impl.sdk.c.b.aOD);
        c.a aVarBO = com.applovin.impl.mediation.debugger.ui.d.c.wW().bO("Plugin Version");
        if (!StringUtils.isValidString(str)) {
            str = "None";
        }
        arrayList.add(aVarBO.bP(str).wX());
        c.a aVarBO2 = com.applovin.impl.mediation.debugger.ui.d.c.wW().bO("Ad Review Version");
        String version = f.getVersion();
        if (StringUtils.isValidString(version)) {
            String sdkKey = f.getSdkKey();
            if (!StringUtils.isValidString(sdkKey) || sdkKey.equals(this.sdk.getSdkKey())) {
                aVarBO2.bP(version);
            } else {
                StringBuilder sb = new StringBuilder("MAX Ad Review integrated with wrong SDK key. Please check that your ");
                sb.append(this.sdk.Bs() ? "SDK key is downloaded" : "Gradle plugin snippet is integrated");
                sb.append(" from the correct account.");
                a(aVarBO2, sb.toString());
            }
        } else {
            a(aVarBO2, "Integrating MAX Ad review is OPTIONAL. This feature gives developers unprecedented transparency into the creatives the users see in their apps.");
        }
        arrayList.add(aVarBO2.wX());
        if (this.sdk.Bs() && (mapA = u.a(this.sdk.getSettings())) != null) {
            String str2 = mapA.get("UnityVersion");
            arrayList.add(w("Unity Version", StringUtils.isValidString(str2) ? str2 : "None"));
        }
        if (this.sdk.Cl().isEnabled()) {
            arrayList.add(wu());
            if (this.sdk.Cl().zX() == d.a.UNIFIED) {
                arrayList.add(wv());
            }
            arrayList.add(ww());
            arrayList.add(wx());
        }
        return arrayList;
    }

    private List<com.applovin.impl.mediation.debugger.ui.d.c> ws() {
        ArrayList arrayList = new ArrayList(d.COUNT.ordinal());
        arrayList.add(wy());
        if (StringUtils.isValidString(this.sdk.Cm().As())) {
            arrayList.add(wz());
        } else {
            arrayList.add(new com.applovin.impl.mediation.debugger.ui.b.a.b(com.applovin.impl.privacy.a.zP(), false, this.E));
        }
        arrayList.add(new com.applovin.impl.mediation.debugger.ui.b.a.b(com.applovin.impl.privacy.a.zO(), true, this.E));
        arrayList.add(new com.applovin.impl.mediation.debugger.ui.b.a.b(com.applovin.impl.privacy.a.zQ(), true, this.E));
        return arrayList;
    }

    private List<com.applovin.impl.mediation.debugger.ui.d.c> wt() {
        boolean zIsEnabled = this.sdk.CE().isEnabled();
        List<String> listXk = this.sdk.CE().xk();
        return zIsEnabled ? v(null, b(listXk, false)) : v(b(listXk, true), null);
    }

    private com.applovin.impl.mediation.debugger.ui.d.c wu() {
        boolean z = this.sdk.Cl().zX() == d.a.TERMS;
        return com.applovin.impl.mediation.debugger.ui.d.c.a(c.b.DETAIL).bO("Flow Type").bP(z ? "MAX Terms Flow" : "MAX Terms and Privacy Policy Flow").gk(z ? R.drawable.applovin_ic_x_mark : R.drawable.applovin_ic_check_mark_bordered).gn(g.a(z ? R.color.applovin_sdk_xmarkColor : R.color.applovin_sdk_checkmarkColor, this.E)).bQ("MAX Terms Flow").bR("MAX Terms Flow is deprecated and will be removed in a future SDK version. For more details, see:\nhttps://dash.applovin.com/documentation/mediation/android/getting-started/terms-and-privacy-policy-flow").aF(z).wX();
    }

    private com.applovin.impl.mediation.debugger.ui.d.c wv() {
        boolean zHasSupportedCmp = this.sdk.Cn().hasSupportedCmp();
        return com.applovin.impl.mediation.debugger.ui.d.c.wW().bO("Google UMP SDK").gk(zHasSupportedCmp ? R.drawable.applovin_ic_check_mark_bordered : R.drawable.applovin_ic_x_mark).gn(g.a(zHasSupportedCmp ? R.color.applovin_sdk_checkmarkColor : R.color.applovin_sdk_xmarkColor, this.E)).bQ("Google UMP SDK").bR("In order to use MAX Terms and Privacy Policy Flow, you must add the Google User Messaging Platform SDK as a dependency. For more details, see:\nhttps://dash.applovin.com/documentation/mediation/android/getting-started/terms-and-privacy-policy-flow\"").aF(!zHasSupportedCmp).wX();
    }

    private com.applovin.impl.mediation.debugger.ui.d.c ww() {
        boolean z = this.sdk.Cl().getPrivacyPolicyUri() != null;
        return com.applovin.impl.mediation.debugger.ui.d.c.wW().bO("Privacy Policy URL").gk(z ? R.drawable.applovin_ic_check_mark_bordered : R.drawable.applovin_ic_x_mark).gn(g.a(z ? R.color.applovin_sdk_checkmarkColor : R.color.applovin_sdk_xmarkColor, this.E)).aF(true).wX();
    }

    private com.applovin.impl.mediation.debugger.ui.d.c wx() {
        c.a aVarBO = com.applovin.impl.mediation.debugger.ui.d.c.wW().bO("Terms of Service URL");
        if (this.sdk.Cl().getTermsOfServiceUri() != null) {
            aVarBO.gk(R.drawable.applovin_ic_check_mark_bordered);
            aVarBO.gn(g.a(R.color.applovin_sdk_checkmarkColor, this.E));
            aVarBO.aF(true);
        } else {
            aVarBO.bP("None");
            aVarBO.aF(false);
        }
        return aVarBO.wX();
    }

    private com.applovin.impl.mediation.debugger.ui.d.c wy() {
        String strAm = this.sdk.Cm().Am();
        boolean zIsValidString = StringUtils.isValidString(strAm);
        c.a aVarA = com.applovin.impl.mediation.debugger.ui.d.c.a(c.b.DETAIL);
        aVarA.bO("CMP (Consent Management Platform)");
        if (!zIsValidString) {
            strAm = "None";
        }
        aVarA.bP(strAm);
        if (this.aqW) {
            aVarA.aF(true);
            if (zIsValidString) {
                aVarA.y(this.E);
            } else {
                Integer numAp = this.sdk.Cm().Ap();
                String str = "SharedPreferences value for key IABTCF_CmpSdkID is " + numAp + ".";
                if (numAp == null || numAp.intValue() == 0) {
                    aVarA.bR("No CMP found. " + str + "\n\nBy January 16, 2024, if you use Google AdMob or Google Ad Manager, you must also use a Google-certified CMP. Test your app in EEA and UK regions to ensure that this warning doesn't appear in those regions.\n\nFor more details, see:\nhttps://support.google.com/admob/answer/13554116");
                    boolean z = this.sdk.getConfiguration().getConsentFlowUserGeography() == AppLovinSdkConfiguration.ConsentFlowUserGeography.GDPR;
                    aVarA.gk(z ? R.drawable.applovin_ic_x_mark : R.drawable.applovin_ic_warning);
                    aVarA.gn(g.a(z ? R.color.applovin_sdk_xmarkColor : R.color.applovin_sdk_warningColor, this.E));
                } else {
                    aVarA.bR("Your integrated CMP might not be Google-certified. " + str + "\n\nBy January 16, 2024, if you use Google AdMob or Google Ad Manager, you must also use a Google-certified CMP. Test your app in EEA and UK regions to ensure that this warning doesn't appear in those regions.\n\nFor more details, see:\nhttps://support.google.com/admob/answer/13554116");
                    aVarA.gk(R.drawable.applovin_ic_warning);
                    aVarA.gn(g.a(R.color.applovin_sdk_warningColor, this.E));
                }
            }
        }
        return aVarA.wX();
    }

    private com.applovin.impl.mediation.debugger.ui.d.c wz() {
        return com.applovin.impl.mediation.debugger.ui.d.c.wW().bO("Network Consent Statuses").y(this.E).aF(true).wX();
    }

    @Override // com.applovin.impl.mediation.debugger.a.InterfaceC0064a
    public void a(com.applovin.impl.mediation.debugger.b.b.a aVar, String str) {
        com.applovin.impl.mediation.debugger.b.b.b bVar;
        String strA;
        EnumC0070b enumC0070bB;
        EnumC0070b enumC0070b;
        String str2;
        ArrayList arrayList = new ArrayList();
        for (com.applovin.impl.mediation.debugger.b.b.b bVar2 : this.aqS) {
            List<com.applovin.impl.mediation.debugger.b.b.b> list = aVar.va().get(bVar2.vd());
            if (list == null || !list.contains(bVar2)) {
                this.sdk.BN();
                if (x.Fn()) {
                    this.sdk.BN().i("MediationDebuggerListAdapter", str + " is missing a required entry: " + bVar2.vg());
                }
                arrayList.add(bVar2);
            }
        }
        if (arrayList.isEmpty()) {
            str2 = "All required entries found at " + str + ".";
            enumC0070b = EnumC0070b.SUCCESS;
        } else {
            Iterator it = arrayList.iterator();
            while (true) {
                if (it.hasNext()) {
                    bVar = (com.applovin.impl.mediation.debugger.b.b.b) it.next();
                    if (bVar.vc()) {
                        break;
                    }
                } else {
                    bVar = null;
                    break;
                }
            }
            if (bVar != null) {
                a.b bVar3 = a.b.MISSING_APPLOVIN_ENTRIES;
                strA = a(bVar3, str, bVar.vg());
                enumC0070bB = b(bVar3);
            } else {
                a.b bVar4 = a.b.MISSING_NON_APPLOVIN_ENTRIES;
                strA = a(bVar4, str, null);
                enumC0070bB = b(bVar4);
            }
            String str3 = strA;
            enumC0070b = enumC0070bB;
            str2 = str3;
        }
        this.arg.add(a(str2, enumC0070b));
        wZ();
    }

    public void a(List<com.applovin.impl.mediation.debugger.b.c.b> list, List<com.applovin.impl.mediation.debugger.b.a.a> list2, List<com.applovin.impl.mediation.debugger.b.a.a> list3, List<com.applovin.impl.mediation.debugger.b.b.b> list4, String str, String str2, String str3, Boolean bool, boolean z, n nVar) {
        this.sdk = nVar;
        this.aqQ = list2;
        this.aqR = list3;
        this.aqS = list4;
        this.aqT = str;
        this.apL = str2;
        this.aqU = str3;
        this.aqV = bool;
        this.aqW = z;
        if (list != null && this.akD.compareAndSet(false, true)) {
            nVar.BN();
            if (x.Fn()) {
                nVar.BN().f("MediationDebuggerListAdapter", "Populating networks...");
            }
            nVar.Cm().F(list);
            t(list);
            u(list2);
            v(this.ara);
            this.arf.addAll(wq());
            this.arg.addAll(wr());
            this.arh.addAll(ws());
            this.ari.addAll(wt());
            this.arj = w(this.aqZ);
            this.ark = w(this.ara);
            this.arl = w(this.arb);
            ArrayList arrayList = new ArrayList(3);
            arrayList.add("privacy_setting_updated");
            arrayList.add("network_sdk_version_updated");
            arrayList.add("live_networks_updated");
            arrayList.add("test_mode_networks_updated");
            AppLovinCommunicator.getInstance(this.E).subscribe(this, arrayList);
            wp();
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.debugger.ui.b.c
            @Override // java.lang.Runnable
            public final void run() {
                this.a.notifyDataSetChanged();
            }
        });
    }

    public void az(boolean z) {
        this.aqY = z;
    }

    @Override // com.applovin.impl.mediation.debugger.a.InterfaceC0064a
    public void b(a.b bVar, @Nullable String str) {
        if (bVar != a.b.DEVELOPER_URI_NOT_FOUND) {
            this.arg.add(a(a(bVar, str, null), b(bVar)));
            wZ();
        } else {
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().f("MediationDebuggerListAdapter", "Developer URI was not found; app-ads.txt row will not show on the mediation debugger");
            }
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "MediationDebuggerListAdapter";
    }

    public n getSdk() {
        return this.sdk;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected int gg(int i) {
        return i == e.APP_INFO.ordinal() ? this.arf.size() : i == e.MAX.ordinal() ? this.arg.size() : i == e.PRIVACY.ordinal() ? this.arh.size() : i == e.ADS.ordinal() ? this.ari.size() : i == e.INCOMPLETE_NETWORKS.ordinal() ? this.arj.size() : i == e.COMPLETED_NETWORKS.ordinal() ? this.ark.size() : this.arl.size();
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected com.applovin.impl.mediation.debugger.ui.d.c gh(int i) {
        return i == e.APP_INFO.ordinal() ? new com.applovin.impl.mediation.debugger.ui.d.e("APP INFO") : i == e.MAX.ordinal() ? new com.applovin.impl.mediation.debugger.ui.d.e("MAX") : i == e.PRIVACY.ordinal() ? new com.applovin.impl.mediation.debugger.ui.d.e("PRIVACY") : i == e.ADS.ordinal() ? new com.applovin.impl.mediation.debugger.ui.d.e("ADS") : i == e.INCOMPLETE_NETWORKS.ordinal() ? new com.applovin.impl.mediation.debugger.ui.d.e("INCOMPLETE SDK INTEGRATIONS") : i == e.COMPLETED_NETWORKS.ordinal() ? new com.applovin.impl.mediation.debugger.ui.d.e("COMPLETED SDK INTEGRATIONS") : new com.applovin.impl.mediation.debugger.ui.d.e("MISSING SDK INTEGRATIONS");
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected List<com.applovin.impl.mediation.debugger.ui.d.c> gi(int i) {
        return i == e.APP_INFO.ordinal() ? this.arf : i == e.MAX.ordinal() ? this.arg : i == e.PRIVACY.ordinal() ? this.arh : i == e.ADS.ordinal() ? this.ari : i == e.INCOMPLETE_NETWORKS.ordinal() ? this.arj : i == e.COMPLETED_NETWORKS.ordinal() ? this.ark : this.arl;
    }

    public boolean isInitialized() {
        return this.akD.get();
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("privacy_setting_updated".equals(appLovinCommunicatorMessage.getTopic())) {
            this.arh = ws();
            wZ();
            return;
        }
        if ("network_sdk_version_updated".equals(appLovinCommunicatorMessage.getTopic())) {
            this.arj = w(this.aqZ);
            this.ark = w(this.ara);
            wZ();
        } else if ("live_networks_updated".equals(appLovinCommunicatorMessage.getTopic())) {
            this.ari = v(b((List<String>) appLovinCommunicatorMessage.getMessageData().getStringArrayList("live_networks"), true), null);
            wZ();
        } else if ("test_mode_networks_updated".equals(appLovinCommunicatorMessage.getTopic())) {
            this.ari = v(null, b((List<String>) appLovinCommunicatorMessage.getMessageData().getStringArrayList("test_mode_networks"), false));
            wZ();
        }
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected int tM() {
        return e.COUNT.ordinal();
    }

    public String toString() {
        return "MediationDebuggerListAdapter{isInitialized=" + this.akD.get() + "}";
    }

    public String vQ() {
        return this.apL;
    }

    public boolean wh() {
        return this.aqY;
    }

    public List<com.applovin.impl.mediation.debugger.b.a.a> wi() {
        return this.aqQ;
    }

    public List<com.applovin.impl.mediation.debugger.b.a.a> wj() {
        return this.aqR;
    }

    public String wk() {
        return this.aqT;
    }

    public List<com.applovin.impl.mediation.debugger.b.a.c> wl() {
        return this.arc;
    }

    public List<com.applovin.impl.mediation.debugger.b.a.c> wm() {
        return this.ard;
    }

    public List<com.applovin.impl.mediation.debugger.b.c.b> wn() {
        return this.are;
    }

    public String wo() {
        return this.aqX.toString();
    }
}

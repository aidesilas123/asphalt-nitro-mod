package com.applovin.impl.sdk.e;

import android.app.Activity;
import com.applovin.impl.privacy.a.d;
import com.applovin.impl.sdk.af;
import com.applovin.impl.sdk.e.q;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.facebook.internal.AnalyticsEvents;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.o2;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class p extends d {
    private final com.applovin.impl.sdk.n sdk;

    public p(com.applovin.impl.sdk.n nVar) {
        super("TaskInitializeSdk", nVar, true);
        this.sdk = nVar;
    }

    private void KF() {
        if (this.sdk.Cx().isInitialized()) {
            return;
        }
        Activity activityCF = this.sdk.CF();
        if (activityCF != null) {
            this.sdk.Cx().b(activityCF);
        } else {
            this.sdk.BO().a(new ab(this.sdk, true, "initializeAdapters", new Runnable() { // from class: com.applovin.impl.sdk.e.c0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.KH();
                }
            }), q.b.MAIN, TimeUnit.SECONDS.toMillis(1L));
        }
    }

    private void KG() {
        Map<String, Object> mapCV;
        Map<String, Object> mapCU;
        if (this.sdk.Bq()) {
            return;
        }
        boolean zIsVerboseLoggingEnabled = this.sdk.BP().isVerboseLoggingEnabled();
        String str = "<Enable verbose logging to see the GAID to use for test devices - https://monetization-support.applovin.com/hc/en-us/articles/236114328-How-can-I-expose-verbose-logging-for-the-SDK>";
        if (this.sdk.BV() != null) {
            if (zIsVerboseLoggingEnabled) {
                str = this.sdk.BU().DM().KR() + " (use this for test devices)";
            }
            mapCV = this.sdk.BV().CV();
            mapCU = this.sdk.BV().CU();
        } else {
            if (zIsVerboseLoggingEnabled) {
                str = this.sdk.BS().Di().KR() + " (use this for test devices)";
            }
            mapCV = this.sdk.BS().CV();
            mapCU = this.sdk.BS().CU();
        }
        com.applovin.impl.sdk.utils.n nVar = new com.applovin.impl.sdk.utils.n();
        nVar.Lo().dz("=====AppLovin SDK=====");
        nVar.dz("===SDK Versions===").e("Version", AppLovinSdk.VERSION).e("Plugin Version", this.sdk.a(com.applovin.impl.sdk.c.b.aOD)).e("Ad Review Version", com.applovin.impl.sdk.f.getVersion()).e("OM SDK Version", this.sdk.Cp().getSdkVersion());
        nVar.dz("===Device Info===").e("OS", com.applovin.impl.sdk.utils.u.LB()).e(IronSourceConstants.TYPE_GAID, str).e("Model", mapCV.get("model")).e("Locale", mapCV.get("locale")).e("Emulator", mapCV.get("sim")).e("Tablet", mapCV.get("is_tablet"));
        nVar.dz("===App Info===").e("Application ID", mapCU.get("package_name")).e("Target SDK", mapCU.get("target_sdk")).e("ExoPlayer Version", Integer.valueOf(com.applovin.impl.sdk.utils.u.LC()));
        nVar.dz("===SDK Settings===").e("SDK Key", this.sdk.getSdkKey()).e("Mediation Provider", this.sdk.getMediationProvider()).e("TG", com.applovin.impl.sdk.utils.t.M(this.sdk)).e("AEI", this.sdk.a(com.applovin.impl.sdk.c.b.aKC)).e("MEI", this.sdk.a(com.applovin.impl.sdk.c.b.aKD)).e("Test Mode On", Boolean.valueOf(this.sdk.CE().isEnabled())).e("Verbose Logging On", Boolean.valueOf(zIsVerboseLoggingEnabled));
        nVar.dz("===Privacy States===\nPlease review AppLovin MAX documentation to be compliant with regional privacy policies.").dz(com.applovin.impl.privacy.a.A(rQ()));
        com.applovin.impl.privacy.a.c cVarCl = this.sdk.Cl();
        nVar.dz("===MAX Terms Flow===").e("Enabled", Boolean.valueOf(cVarCl.isEnabled()));
        if (cVarCl.isEnabled()) {
            nVar.e("Flow Type", cVarCl.zX() == d.a.TERMS ? "MAX Terms Flow" : "MAX Terms and Privacy Policy Flow");
        }
        nVar.e("Privacy Policy URI", cVarCl.getPrivacyPolicyUri()).e("Terms of Service URI", cVarCl.getTermsOfServiceUri());
        this.sdk.Cm();
        nVar.dz("===CMP (CONSENT MANAGEMENT PLATFORM)===").dz(this.sdk.Cm().uI());
        nVar.Lo();
        com.applovin.impl.sdk.x.D("AppLovinSdk", nVar.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void KH() {
        this.sdk.Cx().b(this.sdk.BM().Az());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void zJ() {
        af.z(this.sdk);
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.lang.Runnable
    public void run() {
        com.applovin.impl.sdk.x xVar;
        String str;
        StringBuilder sb;
        String str2 = AnalyticsEvents.PARAMETER_SHARE_OUTCOME_SUCCEEDED;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Initializing AppLovin SDK v" + AppLovinSdk.VERSION + "...");
        }
        try {
            this.sdk.BR().JZ();
            this.sdk.BR().c(com.applovin.impl.sdk.d.f.aSW);
            this.sdk.BR().c(com.applovin.impl.sdk.d.f.aSX);
            this.sdk.Cc().H(rQ());
            this.sdk.Cc().L(rQ());
            this.sdk.BO().a(new e(this.sdk), q.b.MAIN);
            if (this.sdk.BV() != null) {
                this.sdk.BV().DG();
            } else {
                this.sdk.BS().CW();
            }
            this.sdk.Ci().Lq();
            this.sdk.Co().tv();
            if (com.applovin.impl.sdk.utils.u.b(rQ(), this.sdk)) {
                this.sdk.Bt();
            }
            this.sdk.Cr().collectAppHubData();
            KG();
            if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOY)).booleanValue()) {
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.e.b0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.zJ();
                    }
                });
            }
            KF();
            this.sdk.aK(true);
            this.sdk.Cu().Iq();
            this.sdk.BF().maybeTrackAppOpenEvent();
            if ((this.sdk.CB().uC() && !this.sdk.Bq()) || (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.aJl)).booleanValue() && com.applovin.impl.sdk.utils.u.b(com.applovin.impl.sdk.n.getApplicationContext(), this.sdk) && this.sdk.Br())) {
                this.sdk.CB().uB();
            }
            if (this.sdk.BW() != null) {
                this.sdk.BW().cL((String) this.sdk.a(com.applovin.impl.sdk.c.b.aKM));
            }
            this.sdk.Cp().uB();
            if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aKZ)).booleanValue()) {
                this.sdk.bN(((Long) this.sdk.a(com.applovin.impl.sdk.c.b.aLa)).longValue());
            }
        } catch (Throwable th) {
            try {
                com.applovin.impl.sdk.x.e("AppLovinSdk", "Failed to initialize SDK!", th);
                this.sdk.aK(false);
                q(th);
                if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aKn)).booleanValue()) {
                    this.sdk.Bx();
                }
                if (this.sdk.BW() != null) {
                    this.sdk.BW().cL((String) this.sdk.a(com.applovin.impl.sdk.c.b.aKM));
                }
                this.sdk.Cp().uB();
                if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aKZ)).booleanValue()) {
                    this.sdk.bN(((Long) this.sdk.a(com.applovin.impl.sdk.c.b.aLa)).longValue());
                }
                if (!com.applovin.impl.sdk.x.Fn()) {
                    return;
                }
                xVar = this.logger;
                str = this.tag;
                sb = new StringBuilder();
                sb.append("AppLovin SDK ");
                sb.append(AppLovinSdk.VERSION);
                sb.append(" initialization ");
                if (!this.sdk.isEnabled()) {
                }
            } catch (Throwable th2) {
                if (this.sdk.BW() != null) {
                    this.sdk.BW().cL((String) this.sdk.a(com.applovin.impl.sdk.c.b.aKM));
                }
                this.sdk.Cp().uB();
                if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aKZ)).booleanValue()) {
                    this.sdk.bN(((Long) this.sdk.a(com.applovin.impl.sdk.c.b.aLa)).longValue());
                }
                if (com.applovin.impl.sdk.x.Fn()) {
                    com.applovin.impl.sdk.x xVar2 = this.logger;
                    String str3 = this.tag;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("AppLovin SDK ");
                    sb2.append(AppLovinSdk.VERSION);
                    sb2.append(" initialization ");
                    if (!this.sdk.isEnabled()) {
                        str2 = o2.h.t;
                    }
                    sb2.append(str2);
                    sb2.append(" in ");
                    sb2.append(System.currentTimeMillis() - jCurrentTimeMillis);
                    sb2.append("ms");
                    xVar2.f(str3, sb2.toString());
                }
                throw th2;
            }
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            xVar = this.logger;
            str = this.tag;
            sb = new StringBuilder();
            sb.append("AppLovin SDK ");
            sb.append(AppLovinSdk.VERSION);
            sb.append(" initialization ");
            if (!this.sdk.isEnabled()) {
                str2 = o2.h.t;
            }
            sb.append(str2);
            sb.append(" in ");
            sb.append(System.currentTimeMillis() - jCurrentTimeMillis);
            sb.append("ms");
            xVar.f(str, sb.toString());
        }
    }
}

package com.applovin.impl.privacy.a;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorPublisher;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.privacy.a.d;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.s;
import com.applovin.impl.sdk.utils.u;
import com.applovin.impl.sdk.x;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.gms.ads.AdError;
import com.json.b4;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c implements AppLovinCommunicatorPublisher, AppLovinCommunicatorSubscriber {
    private final i axK;
    private List<e> axL;
    private final com.applovin.impl.sdk.n sdk;

    /* JADX INFO: renamed from: com.applovin.impl.privacy.a.c$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] axM;

        static {
            int[] iArr = new int[d.a.values().length];
            axM = iArr;
            try {
                iArr[d.a.UNIFIED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                axM[d.a.TERMS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public interface a {
        void onFlowCompleted(@Nullable com.applovin.impl.privacy.a.a aVar);
    }

    public c(com.applovin.impl.sdk.n nVar) {
        this.sdk = nVar;
        this.axK = new i(nVar);
    }

    private static d.a A(JSONObject jSONObject) {
        return jSONObject.has("consent_flow_settings") ? d.a.UNIFIED : d.a.TERMS;
    }

    public static d B(JSONObject jSONObject) {
        Boolean bool = JsonUtils.getBoolean(jSONObject, "consent_flow_enabled", Boolean.FALSE);
        String string = JsonUtils.getString(jSONObject, "consent_flow_debug_user_geography", "");
        String string2 = JsonUtils.getString(jSONObject, "consent_flow_terms_of_service", null);
        Uri uri = StringUtils.isValidString(string2) ? Uri.parse(string2) : null;
        String string3 = JsonUtils.getString(jSONObject, "consent_flow_privacy_policy", null);
        return new d(bool.booleanValue(), ci(string), d.a.UNIFIED, StringUtils.isValidString(string3) ? Uri.parse(string3) : null, uri);
    }

    public static d C(JSONObject jSONObject) {
        Boolean bool = JsonUtils.getBoolean(jSONObject, "terms_flow_enabled", Boolean.FALSE);
        String string = JsonUtils.getString(jSONObject, "terms_flow_terms_of_service", null);
        Uri uri = StringUtils.isValidString(string) ? Uri.parse(string) : null;
        String string2 = JsonUtils.getString(jSONObject, "terms_flow_privacy_policy", null);
        return new d(bool.booleanValue(), AppLovinSdkConfiguration.ConsentFlowUserGeography.UNKNOWN, d.a.TERMS, StringUtils.isValidString(string2) ? Uri.parse(string2) : null, uri);
    }

    @SuppressLint({"DiscouragedApi"})
    public static d D(Context context) {
        if (context == null) {
            x.H("AppLovinSdk", "Failed to get default terms flow settings.");
            return new d(false, AppLovinSdkConfiguration.ConsentFlowUserGeography.UNKNOWN, d.a.TERMS, null, null);
        }
        String strA = u.a(context.getResources().getIdentifier("applovin_settings", "raw", context.getPackageName()), context, (com.applovin.impl.sdk.n) null);
        JSONObject jSONObjectJsonObjectFromJsonString = StringUtils.isValidString(strA) ? JsonUtils.jsonObjectFromJsonString(strA, new JSONObject()) : new JSONObject();
        d.a aVarA = A(jSONObjectJsonObjectFromJsonString);
        int i = AnonymousClass1.axM[aVarA.ordinal()];
        if (i == 1) {
            return B(JsonUtils.getJSONObject(jSONObjectJsonObjectFromJsonString, "consent_flow_settings", new JSONObject()));
        }
        if (i == 2) {
            return C(JsonUtils.getJSONObject(jSONObjectJsonObjectFromJsonString, "terms_flow_settings", new JSONObject()));
        }
        throw new IllegalStateException("Unknown consent flow type: " + aVarA);
    }

    private void a(final Activity activity, Runnable runnable) {
        if (zW().getPrivacyPolicyUri() != null) {
            runnable.run();
        } else {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.privacy.a.p
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.g(activity);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Uri uri, DialogInterface dialogInterface, int i) {
        throw new IllegalStateException("You cannot use the AppLovin SDK's consent flow without defining a Privacy Policy URL Please refer to " + uri.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.privacy.a.a aVar) {
        AppLovinCommunicator.getInstance(com.applovin.impl.sdk.n.getApplicationContext()).getMessagingService().publish(new AppLovinCommunicatorMessage(new Bundle(), "sdk_consent_flow_finished", this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(a aVar, com.applovin.impl.privacy.a.a aVar2) {
        if (aVar2 == null) {
            this.sdk.a(com.applovin.impl.sdk.c.d.aRt, Boolean.FALSE);
            this.axL = null;
        }
        aVar.onFlowCompleted(aVar2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Activity activity, final a aVar) {
        this.sdk.BN();
        if (x.Fn()) {
            this.sdk.BN().f("ConsentFlowManager", "Starting consent flow with states: " + this.axL);
        }
        if (!this.sdk.BL()) {
            this.sdk.a(com.applovin.impl.sdk.c.d.aRt, Boolean.TRUE);
        }
        this.axK.a(this.axL, activity, new a() { // from class: com.applovin.impl.privacy.a.m
            @Override // com.applovin.impl.privacy.a.c.a
            public final void onFlowCompleted(a aVar2) {
                this.a.a(aVar, aVar2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Uri uri, DialogInterface dialogInterface, int i) {
        s.a(uri, com.applovin.impl.sdk.n.getApplicationContext(), this.sdk);
        throw new IllegalStateException("You cannot use the AppLovin SDK's consent flow without defining a Privacy Policy URL Please refer to " + uri.toString());
    }

    private static AppLovinSdkConfiguration.ConsentFlowUserGeography ci(String str) {
        return "gdpr".equalsIgnoreCase(str) ? AppLovinSdkConfiguration.ConsentFlowUserGeography.GDPR : "other".equalsIgnoreCase(str) ? AppLovinSdkConfiguration.ConsentFlowUserGeography.OTHER : AppLovinSdkConfiguration.ConsentFlowUserGeography.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(Activity activity) {
        final Uri uriZZ = zZ();
        new AlertDialog.Builder(activity).setTitle("Missing Privacy Policy URL").setMessage("You cannot use the AppLovin SDK's consent flow without defining a Privacy Policy URL").setNeutralButton("Go To Documentation", new DialogInterface.OnClickListener() { // from class: com.applovin.impl.privacy.a.o
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.a.b(uriZZ, dialogInterface, i);
            }
        }).setNegativeButton("DISMISS", new DialogInterface.OnClickListener() { // from class: com.applovin.impl.privacy.a.k
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                c.a(uriZZ, dialogInterface, i);
            }
        }).create().show();
    }

    private Uri zZ() {
        return Uri.parse((String) this.sdk.a(this.sdk.Bs() ? com.applovin.impl.sdk.c.b.aQW : com.applovin.impl.sdk.c.b.aQV));
    }

    public void Aa() {
        if (!this.sdk.Bq() && isEnabled()) {
            if (zW().zX() == d.a.UNIFIED) {
                this.sdk.BN();
                if (x.Fn()) {
                    this.sdk.BN().f("AppLovinSdk", "Generating Unified Consent Flow...");
                }
                this.axL = b.h(this.sdk);
            } else {
                this.sdk.BN();
                if (x.Fn()) {
                    this.sdk.BN().f("AppLovinSdk", "Generating Terms Flow...");
                }
                this.axL = b.i(this.sdk);
            }
        }
        if (u.aj(com.applovin.impl.sdk.n.getApplicationContext())) {
            AppLovinCommunicator.getInstance(com.applovin.impl.sdk.n.getApplicationContext()).subscribe(this, "start_sdk_consent_flow");
        }
    }

    public JSONObject Ab() {
        d dVarZW = zW();
        Uri privacyPolicyUri = dVarZW.getPrivacyPolicyUri();
        Uri termsOfServiceUri = dVarZW.getTermsOfServiceUri();
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, b4.r, String.valueOf(isEnabled()));
        JsonUtils.putString(jSONObject, "privacy_policy_url", privacyPolicyUri != null ? privacyPolicyUri.toString() : "");
        JsonUtils.putString(jSONObject, "terms_of_service_url", termsOfServiceUri != null ? termsOfServiceUri.toString() : "");
        return jSONObject;
    }

    public void a(final Activity activity, final a aVar) {
        if (!isEnabled()) {
            aVar.onFlowCompleted(new com.applovin.impl.privacy.a.a(com.applovin.impl.privacy.a.a.axI, "Failed to start consent flow. Please make sure that the consent flow is enabled."));
            return;
        }
        List<e> list = this.axL;
        if (list != null && list.size() != 0) {
            a(activity, new Runnable() { // from class: com.applovin.impl.privacy.a.n
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.b(activity, aVar);
                }
            });
        } else {
            this.sdk.a(com.applovin.impl.sdk.c.d.aRt, Boolean.FALSE);
            aVar.onFlowCompleted(new com.applovin.impl.privacy.a.a(com.applovin.impl.privacy.a.a.ERROR_CODE_UNSPECIFIED, "User may not be eligible for flow."));
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "consent_flow_manager";
    }

    public AppLovinSdkConfiguration.ConsentFlowUserGeography getDebugUserGeography() {
        return zW().getDebugUserGeography();
    }

    public Uri getPrivacyPolicyUri() {
        return zW().getPrivacyPolicyUri();
    }

    public Uri getTermsOfServiceUri() {
        return zW().getTermsOfServiceUri();
    }

    public boolean isEnabled() {
        Map<String, String> extraParameters = this.sdk.getSettings().getExtraParameters();
        return extraParameters.containsKey("consent_flow_enabled") ? Boolean.parseBoolean(extraParameters.get("consent_flow_enabled")) : zW().isEnabled();
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if (getTermsOfServiceUri() == null || !appLovinCommunicatorMessage.getMessageData().getBoolean("include_tos")) {
            this.axL = j.k(this.sdk);
        } else {
            this.axL = j.l(this.sdk);
        }
        if (this.axL.size() == 0) {
            u.a("No Consent Flow Available", (String) null, this.sdk.CF());
        } else {
            a(this.sdk.CF(), new a() { // from class: com.applovin.impl.privacy.a.l
                @Override // com.applovin.impl.privacy.a.c.a
                public final void onFlowCompleted(a aVar) {
                    this.a.a(aVar);
                }
            });
        }
    }

    public String uI() {
        zW();
        Object privacyPolicyUri = getPrivacyPolicyUri();
        Object termsOfServiceUri = getTermsOfServiceUri();
        StringBuilder sb = new StringBuilder();
        sb.append("\nConsent Flow Enabled - ");
        sb.append(isEnabled());
        sb.append("\nPrivacy Policy - ");
        if (privacyPolicyUri == null) {
            privacyPolicyUri = AdError.UNDEFINED_DOMAIN;
        }
        sb.append(privacyPolicyUri);
        sb.append("\nTerms of Service - ");
        if (termsOfServiceUri == null) {
            termsOfServiceUri = AdError.UNDEFINED_DOMAIN;
        }
        sb.append(termsOfServiceUri);
        return sb.toString();
    }

    public d zW() {
        return (d) this.sdk.Ck();
    }

    public d.a zX() {
        return zW().zX();
    }

    public boolean zY() {
        com.applovin.impl.sdk.n nVar = com.applovin.impl.sdk.n.aAC;
        if (!nVar.Br()) {
            return false;
        }
        c cVarCl = nVar.Cl();
        List<e> list = cVarCl.axL;
        return cVarCl.axK.zY() || (list != null && list.size() > 0);
    }
}

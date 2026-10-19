package com.applovin.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.impl.privacy.a.c;
import com.applovin.impl.privacy.a.d;
import com.applovin.impl.sdk.AppLovinSdkSettingsBase;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.u;
import com.applovin.impl.sdk.x;
import com.applovin.sdk.AppLovinSdkConfiguration;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AppLovinSdkSettings extends AppLovinSdkSettingsBase {
    private boolean aZr;
    private String aZw;
    private String abm;
    private boolean it;

    @Nullable
    private n sdk;
    private boolean aZv = true;
    private final Map<String, Object> localSettings = new HashMap();
    private final Map<String, String> metaData = new HashMap();
    private List<String> aZx = Collections.emptyList();
    private List<String> aZy = Collections.emptyList();
    private final Map<String, String> extraParameters = new HashMap();
    private final Object aZz = new Object();
    private boolean aZs = true;
    private boolean aZt = true;
    private boolean aZu = true;

    public interface TermsAndPrivacyPolicyFlowSettings extends TermsFlowSettings {
        AppLovinSdkConfiguration.ConsentFlowUserGeography getDebugUserGeography();

        void setDebugUserGeography(AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeography);
    }

    public interface TermsFlowSettings {
        @Nullable
        Uri getPrivacyPolicyUri();

        @Nullable
        Uri getTermsOfServiceUri();

        boolean isEnabled();

        void setEnabled(boolean z);

        void setPrivacyPolicyUri(Uri uri);

        void setTermsOfServiceUri(Uri uri);
    }

    public AppLovinSdkSettings(Context context) {
        this.abm = "";
        if (context == null) {
            x.H("AppLovinSdkSettings", "context cannot be null. Please provide a valid context.");
        }
        Context contextAn = u.an(context);
        this.aZr = u.ae(contextAn);
        this.backingConsentFlowSettings = c.D(contextAn);
        this.abm = contextAn.getPackageName();
        ap(contextAn);
    }

    @SuppressLint({"DiscouragedApi"})
    private void ap(Context context) {
        int identifier = context.getResources().getIdentifier("applovin_settings", "raw", context.getPackageName());
        if (identifier == 0) {
            return;
        }
        String strA = u.a(identifier, context, (n) null);
        Map<String, String> mapTryToStringMap = JsonUtils.tryToStringMap(StringUtils.isValidString(strA) ? JsonUtils.jsonObjectFromJsonString(strA, new JSONObject()) : new JSONObject());
        synchronized (this.aZz) {
            this.extraParameters.putAll(mapTryToStringMap);
        }
    }

    protected void attachAppLovinSdk(n nVar) {
        this.sdk = nVar;
        if (StringUtils.isValidString(this.aZw)) {
            nVar.CE().C(Arrays.asList(this.aZw.split(",")));
            this.aZw = null;
        }
    }

    public Map<String, String> getExtraParameters() {
        Map<String, String> map;
        synchronized (this.aZz) {
            map = CollectionUtils.map(this.extraParameters);
        }
        return map;
    }

    public List<String> getInitializationAdUnitIds() {
        return this.aZy;
    }

    public TermsAndPrivacyPolicyFlowSettings getTermsAndPrivacyPolicyFlowSettings() {
        ((d) this.backingConsentFlowSettings).a(d.a.UNIFIED);
        return this.backingConsentFlowSettings;
    }

    @Deprecated
    public TermsFlowSettings getTermsFlowSettings() {
        ((d) this.backingConsentFlowSettings).a(d.a.TERMS);
        return this.backingConsentFlowSettings;
    }

    public List<String> getTestDeviceAdvertisingIds() {
        return this.aZx;
    }

    public boolean isCreativeDebuggerEnabled() {
        return this.aZs;
    }

    public boolean isExceptionHandlerEnabled() {
        return this.aZt;
    }

    public boolean isLocationCollectionEnabled() {
        return this.aZu;
    }

    public boolean isMuted() {
        return this.it;
    }

    public boolean isVerboseLoggingEnabled() {
        return this.aZr;
    }

    public void setCreativeDebuggerEnabled(boolean z) {
        x.logApiCall("AppLovinSdkSettings", "setCreativeDebuggerEnabled(creativeDebuggerEnabled=" + z + ")");
        if (this.aZs == z) {
            return;
        }
        this.aZs = z;
        n nVar = this.sdk;
        if (nVar == null) {
            return;
        }
        if (z) {
            nVar.Co().tv();
        } else {
            nVar.Co().tw();
        }
    }

    public void setExceptionHandlerEnabled(boolean z) {
        x.logApiCall("AppLovinSdkSettings", "setExceptionHandlerEnabled(exceptionHandlerEnabled=" + z + ")");
        this.aZt = z;
    }

    public void setExtraParameter(String str, @Nullable String str2) {
        x.logApiCall("AppLovinSdkSettings", "setExtraParameter(key=" + str + ", value=" + str2 + ")");
        if (TextUtils.isEmpty(str)) {
            x.H("AppLovinSdkSettings", "Failed to set extra parameter for null or empty key: " + str);
            return;
        }
        String strTrim = str2 != null ? str2.trim() : null;
        if ("test_mode_network".equalsIgnoreCase(str)) {
            if (this.sdk == null) {
                this.aZw = strTrim;
            } else if (StringUtils.isValidString(strTrim)) {
                this.sdk.CE().C(Arrays.asList(strTrim.split(",")));
            } else {
                this.sdk.CE().bT(null);
            }
        } else if ((AppLovinSdkExtraParameterKey.FILTER_AD_NETWORK.equals(str) || AppLovinSdkExtraParameterKey.ENABLE_SEQUENTIAL_CACHING.equals(str)) && !this.abm.startsWith("com.unity.")) {
            return;
        }
        synchronized (this.aZz) {
            this.extraParameters.put(str, strTrim);
        }
    }

    public void setInitializationAdUnitIds(List<String> list) {
        x.logApiCall("AppLovinSdkSettings", "setInitializationAdUnitIds(initializationAdUnitIds=" + list + ")");
        if (list == null) {
            this.aZy = Collections.emptyList();
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (String str : list) {
            if (StringUtils.isValidString(str) && str.length() > 0) {
                if (str.length() == 16) {
                    arrayList.add(str);
                } else {
                    x.H("AppLovinSdkSettings", "Unable to set initialization ad unit id (" + str + ") - please make sure it is in the format of XXXXXXXXXXXXXXXX");
                }
            }
        }
        this.aZy = arrayList;
    }

    public void setLocationCollectionEnabled(boolean z) {
        x.logApiCall("AppLovinSdkSettings", "setLocationCollectionEnabled(locationCollectionEnabled=" + z + ")");
        this.aZu = z;
    }

    public void setMuted(boolean z) {
        x.logApiCall("AppLovinSdkSettings", "setMuted(muted=" + z + ")");
        this.it = z;
    }

    public void setShouldFailAdDisplayIfDontKeepActivitiesIsEnabled(boolean z) {
        x.logApiCall("AppLovinSdkSettings", "setShouldFailAdDisplayIfDontKeepActivitiesIsEnabled(shouldFailAdDisplayIfDontKeepActivitiesIsEnabled=" + z + ")");
        this.aZv = z;
    }

    public void setTestDeviceAdvertisingIds(List<String> list) {
        x.logApiCall("AppLovinSdkSettings", "setTestDeviceAdvertisingIds(testDeviceAdvertisingIds=" + list + ")");
        if (list == null) {
            this.aZx = Collections.emptyList();
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (String str : list) {
            if (str == null || str.length() != 36) {
                x.H("AppLovinSdkSettings", "Unable to set test device advertising id (" + str + ") - please make sure it is in the format of xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx");
            } else {
                arrayList.add(str);
            }
        }
        this.aZx = arrayList;
    }

    public void setVerboseLogging(boolean z) {
        x.logApiCall("AppLovinSdkSettings", "setVerboseLogging(isVerboseLoggingEnabled=" + z + ")");
        if (!u.Lw()) {
            this.aZr = z;
            return;
        }
        x.H("AppLovinSdkSettings", "Ignoring setting of verbose logging - it is configured from Android manifest already.");
        if (u.ae(null) != z) {
            x.H("AppLovinSdkSettings", "Attempted to programmatically set verbose logging flag to value different from value configured in Android Manifest.");
        }
    }

    public boolean shouldFailAdDisplayIfDontKeepActivitiesIsEnabled() {
        return this.aZv;
    }

    @NonNull
    public String toString() {
        return "AppLovinSdkSettings{isVerboseLoggingEnabled=" + this.aZr + ", muted=" + this.it + ", testDeviceAdvertisingIds=" + this.aZx.toString() + ", initializationAdUnitIds=" + this.aZy.toString() + ", creativeDebuggerEnabled=" + this.aZs + ", exceptionHandlerEnabled=" + this.aZt + ", locationCollectionEnabled=" + this.aZu + '}';
    }
}

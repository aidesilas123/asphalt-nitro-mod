package com.applovin.impl.sdk;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class f implements AppLovinCommunicatorSubscriber {
    private final Object azc = new Object();
    private final LinkedHashMap<String, Bundle> azd = new LinkedHashMap<String, Bundle>() { // from class: com.applovin.impl.sdk.f.1
        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry<String, Bundle> entry) {
            return size() > 16;
        }
    };
    private final Set<a> aze = Collections.synchronizedSet(new HashSet());
    private final n sdk;

    public interface a {
        void onCreativeIdGenerated(String str, String str2);
    }

    public f(n nVar) {
        this.sdk = nVar;
        if (StringUtils.isValidString(getVersion())) {
            AppLovinCommunicator.getInstance(n.getApplicationContext()).subscribe(this, "safedk_ad_info");
        }
    }

    private static String cw(String str) {
        Class<?> cls;
        try {
            try {
                cls = Class.forName("com.applovin.quality.AppLovinQualityService");
            } catch (Throwable unused) {
                cls = Class.forName("com.safedk.android.SafeDK");
            }
            return (String) cls.getMethod(str, new Class[0]).invoke(null, new Object[0]);
        } catch (Throwable unused2) {
            return "";
        }
    }

    public static String getSdkKey() {
        return cw("getSdkKey");
    }

    public static String getVersion() {
        return cw(MobileAdsBridge.versionMethodName);
    }

    public void a(a aVar) {
        this.aze.add(aVar);
    }

    public void b(a aVar) {
        this.aze.remove(aVar);
    }

    @Nullable
    public Bundle cu(String str) {
        Bundle bundle;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.azc) {
            bundle = this.azd.get(str);
        }
        return bundle;
    }

    public void cv(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.azc) {
            this.azd.remove(str);
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return f.class.getSimpleName();
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("safedk_ad_info".equals(appLovinCommunicatorMessage.getTopic())) {
            Bundle bundle = appLovinCommunicatorMessage.getMessageData().getBundle("public");
            if (bundle == null) {
                this.sdk.BN();
                if (x.Fn()) {
                    this.sdk.BN().h("AppLovinSdk", "Received SafeDK ad info without public data");
                    return;
                }
                return;
            }
            Bundle bundle2 = appLovinCommunicatorMessage.getMessageData().getBundle("private");
            if (bundle2 == null) {
                this.sdk.BN();
                if (x.Fn()) {
                    this.sdk.BN().h("AppLovinSdk", "Received SafeDK ad info without private data");
                    return;
                }
                return;
            }
            if (MaxAdFormat.formatFromString(bundle2.getString("ad_format")) == null) {
                this.sdk.BN();
                if (x.Fn()) {
                    this.sdk.BN().h("AppLovinSdk", "Received SafeDK ad info without ad format");
                    return;
                }
                return;
            }
            final String string = bundle2.getString("id");
            if (TextUtils.isEmpty(string)) {
                this.sdk.BN();
                if (x.Fn()) {
                    this.sdk.BN().h("AppLovinSdk", "Received SafeDK ad info without serve id");
                    return;
                }
                return;
            }
            synchronized (this.azc) {
                this.sdk.BN();
                if (x.Fn()) {
                    this.sdk.BN().f("AppLovinSdk", "Storing current SafeDK ad info for serve id: " + string);
                }
                this.azd.put(string, bundle);
            }
            final String string2 = bundle.getString("ad_review_creative_id");
            if (!StringUtils.isValidString(string2) || this.aze.isEmpty()) {
                return;
            }
            for (final a aVar : new HashSet(this.aze)) {
                this.sdk.BO().a(new com.applovin.impl.sdk.e.ab(this.sdk, "creativeIdGenerated", new Runnable() { // from class: com.applovin.impl.sdk.r0
                    @Override // java.lang.Runnable
                    public final void run() {
                        aVar.onCreativeIdGenerated(string, string2);
                    }
                }), q.b.BACKGROUND);
            }
        }
    }
}

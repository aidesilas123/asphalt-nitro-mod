package com.iab.omid.library.gameloft.adsession;

import android.webkit.WebView;
import com.iab.omid.library.gameloft.d.e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class AdSessionContext {
    private final AdSessionContextType adSessionContextType;
    private final String customReferenceData;
    private final String omidJsScriptContent;
    private final Partner partner;
    private final List<VerificationScriptResource> verificationScriptResources;
    private final WebView webView;

    private AdSessionContext(Partner partner, WebView webView, String str, List<VerificationScriptResource> list, String str2) {
        AdSessionContextType adSessionContextType;
        ArrayList arrayList = new ArrayList();
        this.verificationScriptResources = arrayList;
        this.partner = partner;
        this.webView = webView;
        this.omidJsScriptContent = str;
        if (list != null) {
            arrayList.addAll(list);
            adSessionContextType = AdSessionContextType.NATIVE;
        } else {
            adSessionContextType = AdSessionContextType.HTML;
        }
        this.adSessionContextType = adSessionContextType;
        this.customReferenceData = str2;
    }

    public static AdSessionContext createHtmlAdSessionContext(Partner partner, WebView webView, String str) {
        e.a(partner, "Partner is null");
        e.a(webView, "WebView is null");
        if (str != null) {
            e.a(str, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new AdSessionContext(partner, webView, null, null, str);
    }

    public static AdSessionContext createNativeAdSessionContext(Partner partner, String str, List<VerificationScriptResource> list, String str2) {
        e.a(partner, "Partner is null");
        e.a((Object) str, "OM SDK JS script content is null");
        e.a(list, "VerificationScriptResources is null");
        if (str2 != null) {
            e.a(str2, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new AdSessionContext(partner, null, str, list, str2);
    }

    public AdSessionContextType getAdSessionContextType() {
        return this.adSessionContextType;
    }

    public String getCustomReferenceData() {
        return this.customReferenceData;
    }

    public String getOmidJsScriptContent() {
        return this.omidJsScriptContent;
    }

    public Partner getPartner() {
        return this.partner;
    }

    public List<VerificationScriptResource> getVerificationScriptResources() {
        return Collections.unmodifiableList(this.verificationScriptResources);
    }

    public WebView getWebView() {
        return this.webView;
    }
}

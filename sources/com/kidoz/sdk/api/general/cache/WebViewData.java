package com.kidoz.sdk.api.general.cache;

import java.net.MalformedURLException;
import java.net.URL;

/* JADX INFO: loaded from: classes4.dex */
public class WebViewData {
    private String webUrl;
    private String webViewContent;

    public WebViewData(String str, String str2) {
        this.webUrl = str;
        this.webViewContent = str2;
    }

    public String getBaseURL() {
        if (isValidURL()) {
            try {
                URL url = new URL(this.webUrl);
                return url.getProtocol() + "://" + url.getHost();
            } catch (MalformedURLException unused) {
            }
        }
        return "";
    }

    public String getWebUrl() {
        return this.webUrl;
    }

    public String getWebViewContent() {
        return this.webViewContent;
    }

    public boolean hasData() {
        String str = this.webViewContent;
        return (str == null || str == "") ? false : true;
    }

    public boolean isValidURL() {
        String str = this.webUrl;
        if (str == null || str == "") {
            return false;
        }
        return str.toLowerCase().startsWith("https://") || this.webUrl.toLowerCase().startsWith("http://");
    }

    public void setWebUrl(String str) {
        this.webUrl = str;
    }

    public void setWebViewContent(String str) {
        this.webViewContent = str;
    }
}

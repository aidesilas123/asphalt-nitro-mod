package com.nearme.platform.opensdk.pay.download.util.http;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class MyHttpClient {
    /* JADX WARN: Removed duplicated region for block: B:7:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.net.HttpURLConnection getURLConnectioin(android.content.Context r4, java.lang.String r5) throws java.io.IOException {
        /*
            java.net.URL r0 = new java.net.URL
            java.lang.String r5 = com.nearme.platform.opensdk.pay.download.util.Util.Utf8URLencode(r5)
            r0.<init>(r5)
            boolean r4 = isMobileActive(r4)
            if (r4 == 0) goto L26
            java.lang.String r4 = android.net.Proxy.getDefaultHost()
            int r5 = android.net.Proxy.getDefaultPort()
            if (r4 == 0) goto L26
            java.net.Proxy r1 = new java.net.Proxy
            java.net.Proxy$Type r2 = java.net.Proxy.Type.HTTP
            java.net.InetSocketAddress r3 = new java.net.InetSocketAddress
            r3.<init>(r4, r5)
            r1.<init>(r2, r3)
            goto L27
        L26:
            r1 = 0
        L27:
            if (r1 == 0) goto L30
            java.net.URLConnection r4 = r0.openConnection(r1)
            java.net.HttpURLConnection r4 = (java.net.HttpURLConnection) r4
            goto L36
        L30:
            java.net.URLConnection r4 = r0.openConnection()
            java.net.HttpURLConnection r4 = (java.net.HttpURLConnection) r4
        L36:
            r5 = 30000(0x7530, float:4.2039E-41)
            r4.setConnectTimeout(r5)
            r4.setReadTimeout(r5)
            java.lang.String r5 = "User-Agent"
            java.lang.String r0 = "Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9.2) Gecko/20100115 Firefox/3.6"
            r4.setRequestProperty(r5, r0)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nearme.platform.opensdk.pay.download.util.http.MyHttpClient.getURLConnectioin(android.content.Context, java.lang.String):java.net.HttpURLConnection");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.net.HttpURLConnection getUrlConnecttion(android.content.Context r4, java.lang.String r5) throws java.io.IOException {
        /*
            java.net.URL r0 = new java.net.URL
            java.lang.String r5 = com.nearme.platform.opensdk.pay.download.util.Util.Utf8URLencode(r5)
            r0.<init>(r5)
            boolean r5 = isChinaMobileWap(r4)
            if (r5 == 0) goto L51
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "http://10.0.0.172"
            r4.<init>(r5)
            java.lang.String r5 = r0.getPath()
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            java.lang.String r5 = r0.getHost()
            int r1 = r0.getPort()
            java.net.URL r2 = new java.net.URL
            r2.<init>(r4)
            java.net.URLConnection r4 = r2.openConnection()
            java.net.HttpURLConnection r4 = (java.net.HttpURLConnection) r4
            r2 = -1
            if (r1 == r2) goto L4b
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r5)
            java.lang.String r5 = ":"
            r2.append(r5)
            r2.append(r1)
            java.lang.String r5 = r2.toString()
        L4b:
            java.lang.String r1 = "X-Online-Host"
            r4.setRequestProperty(r1, r5)
            goto L79
        L51:
            boolean r4 = isMobileNotChinaUniocomWap(r4)
            if (r4 == 0) goto L78
            java.lang.String r4 = android.net.Proxy.getDefaultHost()
            int r5 = android.net.Proxy.getDefaultPort()
            boolean r1 = android.text.TextUtils.isEmpty(r4)
            if (r1 != 0) goto L78
            java.net.Proxy r1 = new java.net.Proxy
            java.net.Proxy$Type r2 = java.net.Proxy.Type.HTTP
            java.net.InetSocketAddress r3 = new java.net.InetSocketAddress
            r3.<init>(r4, r5)
            r1.<init>(r2, r3)
            java.net.URLConnection r4 = r0.openConnection(r1)
            java.net.HttpURLConnection r4 = (java.net.HttpURLConnection) r4
            goto L79
        L78:
            r4 = 0
        L79:
            if (r4 != 0) goto L81
            java.net.URLConnection r4 = r0.openConnection()
            java.net.HttpURLConnection r4 = (java.net.HttpURLConnection) r4
        L81:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nearme.platform.opensdk.pay.download.util.http.MyHttpClient.getUrlConnecttion(android.content.Context, java.lang.String):java.net.HttpURLConnection");
    }

    public static boolean isChinaMobileWap(Context context) {
        NetworkInfo activeNetworkInfo;
        return (context == null || (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) == null || !activeNetworkInfo.isAvailable() || 1 == activeNetworkInfo.getType() || !"cmwap".equals(activeNetworkInfo.getExtraInfo())) ? false : true;
    }

    public static boolean isMobileActive(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getType() == 0;
    }

    public static boolean isMobileNotChinaUniocomWap(Context context) {
        NetworkInfo activeNetworkInfo;
        return (context == null || (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) == null || !activeNetworkInfo.isAvailable() || 1 == activeNetworkInfo.getType() || "uniwap".equals(activeNetworkInfo.getExtraInfo()) || "3gwap".equals(activeNetworkInfo.getExtraInfo())) ? false : true;
    }

    public static HttpURLConnection openConnection(String str, byte[] bArr, Map<String, String> map, int i, String str2) {
        HttpURLConnection httpURLConnection;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str2).openConnection();
        } catch (Exception unused) {
            httpURLConnection = null;
        }
        try {
            httpURLConnection.setDoInput(true);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setConnectTimeout(i);
            httpURLConnection.setReadTimeout(30000);
            httpURLConnection.setRequestMethod(str);
            if ("POST".equals(str)) {
                httpURLConnection.setDoOutput(true);
                if (map != null) {
                    for (String str3 : map.keySet()) {
                        httpURLConnection.setRequestProperty(str3, map.get(str3));
                    }
                }
            }
        } catch (Exception unused2) {
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
                return null;
            }
        }
        return httpURLConnection;
    }
}

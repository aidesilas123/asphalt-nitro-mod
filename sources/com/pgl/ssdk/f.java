package com.pgl.ssdk;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.LinkAddress;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.RouteInfo;
import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Collections;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes4.dex */
public class f {
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static synchronized java.lang.String a(android.content.Context r8) {
        /*
            Method dump skipped, instruction units count: 246
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.ssdk.f.a(android.content.Context):java.lang.String");
    }

    private static String a(BufferedInputStream bufferedInputStream) {
        int i;
        byte[] bArr = new byte[4096];
        StringBuilder sb = new StringBuilder();
        do {
            try {
                i = bufferedInputStream.read(bArr);
                if (i > 0) {
                    sb.append(new String(bArr, 0, i));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } while (i >= 4096);
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x008b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0081 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0061 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String a(java.lang.String r6) throws java.lang.Throwable {
        /*
            r0 = 0
            java.lang.Runtime r1 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L58
            java.lang.String r2 = "sh"
            java.lang.Process r1 = r1.exec(r2)     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L58
            java.io.BufferedOutputStream r2 = new java.io.BufferedOutputStream     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            java.io.OutputStream r3 = r1.getOutputStream()     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            java.io.BufferedInputStream r3 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            java.io.InputStream r4 = r1.getInputStream()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            byte[] r6 = r6.getBytes()     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L79
            r2.write(r6)     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L79
            r6 = 10
            r2.write(r6)     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L79
            r2.flush()     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L79
            r2.close()     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L79
            r1.waitFor()     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L79
            java.lang.String r6 = a(r3)     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L79
            r2.close()     // Catch: java.io.IOException -> L3a
            goto L3e
        L3a:
            r0 = move-exception
            r0.printStackTrace()
        L3e:
            r3.close()     // Catch: java.io.IOException -> L42
            goto L46
        L42:
            r0 = move-exception
            r0.printStackTrace()
        L46:
            r0 = r6
            goto L75
        L48:
            r6 = move-exception
            goto L5c
        L4a:
            r6 = move-exception
            goto L7b
        L4c:
            r6 = move-exception
            r3 = r0
            goto L5c
        L4f:
            r6 = move-exception
            goto L55
        L51:
            r6 = move-exception
            goto L5a
        L53:
            r6 = move-exception
            r1 = r0
        L55:
            r2 = r1
            r1 = r0
            goto L7f
        L58:
            r6 = move-exception
            r1 = r0
        L5a:
            r2 = r0
            r3 = r2
        L5c:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L79
            if (r2 == 0) goto L69
            r2.close()     // Catch: java.io.IOException -> L65
            goto L69
        L65:
            r6 = move-exception
            r6.printStackTrace()
        L69:
            if (r3 == 0) goto L73
            r3.close()     // Catch: java.io.IOException -> L6f
            goto L73
        L6f:
            r6 = move-exception
            r6.printStackTrace()
        L73:
            if (r1 == 0) goto L78
        L75:
            r1.destroy()
        L78:
            return r0
        L79:
            r6 = move-exception
            r0 = r3
        L7b:
            r5 = r1
            r1 = r0
            r0 = r2
            r2 = r5
        L7f:
            if (r0 == 0) goto L89
            r0.close()     // Catch: java.io.IOException -> L85
            goto L89
        L85:
            r0 = move-exception
            r0.printStackTrace()
        L89:
            if (r1 == 0) goto L93
            r1.close()     // Catch: java.io.IOException -> L8f
            goto L93
        L8f:
            r0 = move-exception
            r0.printStackTrace()
        L93:
            if (r2 == 0) goto L98
            r2.destroy()
        L98:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.ssdk.f.a(java.lang.String):java.lang.String");
    }

    private static void a(LinkProperties linkProperties, JSONArray jSONArray) {
        InetAddress gateway2;
        if (Build.VERSION.SDK_INT >= 21) {
            for (RouteInfo routeInfo : linkProperties.getRoutes()) {
                if (routeInfo != null && routeInfo.isDefaultRoute() && (gateway2 = routeInfo.getGateway()) != null && (!(gateway2 instanceof Inet6Address) || !"::".equals(gateway2.getHostAddress()))) {
                    jSONArray.put(gateway2.getHostAddress());
                }
            }
        }
    }

    private static void b(LinkProperties linkProperties, JSONArray jSONArray) {
        if (Build.VERSION.SDK_INT >= 21) {
            for (LinkAddress linkAddress : linkProperties.getLinkAddresses()) {
                if (linkAddress != null && linkAddress.getAddress() != null && !linkAddress.getAddress().isLoopbackAddress()) {
                    jSONArray.put(linkAddress.getAddress().getHostAddress());
                }
            }
        }
    }

    public static String[] b(Context context) {
        Network[] allNetworks;
        NetworkInfo networkInfo;
        LinkProperties linkProperties;
        int type;
        String[] strArr = new String[5];
        if (Build.VERSION.SDK_INT >= 21) {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null && (allNetworks = connectivityManager.getAllNetworks()) != null) {
                JSONArray jSONArray = new JSONArray();
                JSONArray jSONArray2 = new JSONArray();
                JSONArray jSONArray3 = new JSONArray();
                JSONArray jSONArray4 = new JSONArray();
                JSONArray jSONArray5 = new JSONArray();
                for (Network network : allNetworks) {
                    if (network != null && (networkInfo = connectivityManager.getNetworkInfo(network)) != null && networkInfo.getState() == NetworkInfo.State.CONNECTED && (linkProperties = connectivityManager.getLinkProperties(network)) != null && ((type = networkInfo.getType()) == 0 || type == 1)) {
                        if (Build.VERSION.SDK_INT >= 21) {
                            for (InetAddress inetAddress : linkProperties.getDnsServers()) {
                                if (inetAddress != null) {
                                    jSONArray5.put(inetAddress.getHostAddress());
                                }
                            }
                        }
                        if (type == 0) {
                            b(linkProperties, jSONArray);
                            a(linkProperties, jSONArray2);
                        } else {
                            b(linkProperties, jSONArray3);
                            a(linkProperties, jSONArray4);
                        }
                    }
                }
                strArr[0] = jSONArray3.toString();
                strArr[1] = jSONArray4.toString();
                strArr[2] = jSONArray.toString();
                strArr[3] = jSONArray2.toString();
                strArr[4] = jSONArray5.toString();
            }
        } else {
            try {
                for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                    if (networkInterface != null) {
                        String name = networkInterface.getName();
                        if (!TextUtils.isEmpty(name) && name.contains("wlan")) {
                            ArrayList<InetAddress> list = Collections.list(networkInterface.getInetAddresses());
                            JSONArray jSONArray6 = new JSONArray();
                            for (InetAddress inetAddress2 : list) {
                                if (!inetAddress2.isLoopbackAddress()) {
                                    jSONArray6.put(inetAddress2.getHostAddress());
                                }
                            }
                            strArr[0] = jSONArray6.toString();
                        }
                    }
                }
                for (int i = 0; i < 5; i++) {
                    if (strArr[i] == null) {
                        strArr[i] = "";
                    }
                }
            } catch (SocketException e2) {
                e2.printStackTrace();
            }
        }
        return strArr;
    }
}

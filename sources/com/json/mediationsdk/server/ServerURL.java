package com.json.mediationsdk.server;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import com.json.e5;
import com.json.e9;
import com.json.h7;
import com.json.k0;
import com.json.k2;
import com.json.mediationsdk.config.ConfigFile;
import com.json.mediationsdk.metadata.a;
import com.json.mediationsdk.utils.IronSourceAES;
import com.json.mediationsdk.utils.IronSourceUtils;
import com.json.o;
import com.json.o2;
import com.json.o8;
import com.json.qc;
import com.json.v4;
import com.json.w3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public class ServerURL {
    private static String a = "https://init.supersonicads.com/sdk/v";

    private static String a(List<Pair<String, String>> list) throws UnsupportedEncodingException {
        String str = "";
        for (Pair<String, String> pair : list) {
            if (str.length() > 0) {
                str = str + o2.i.c;
            }
            str = str + ((String) pair.first) + o2.i.b + URLEncoder.encode((String) pair.second, C.UTF8_NAME);
        }
        return str;
    }

    private static String b(String str) {
        return a + str + "?request=";
    }

    public static String getCPVProvidersURL(Context context, String str, String str2, String str3, String str4, boolean z, List<Pair<String, String>> list, boolean z2) throws UnsupportedEncodingException {
        List<String> list2;
        e5 e5VarC = e9.h().c();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair("platform", "android"));
        arrayList.add(new Pair("applicationKey", str));
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(new Pair("applicationUserId", str2));
        }
        arrayList.add(new Pair("sdkVersion", IronSourceUtils.getSDKVersion()));
        if (z) {
            arrayList.add(new Pair("rvManual", "1"));
        }
        if (!IronSourceUtils.isEncryptedResponse()) {
            arrayList.add(new Pair("serr", "0"));
        }
        if (!TextUtils.isEmpty(ConfigFile.getConfigFile().getPluginType())) {
            arrayList.add(new Pair("pluginType", ConfigFile.getConfigFile().getPluginType()));
        }
        if (!TextUtils.isEmpty(ConfigFile.getConfigFile().getPluginVersion())) {
            arrayList.add(new Pair("pluginVersion", ConfigFile.getConfigFile().getPluginVersion()));
        }
        if (!TextUtils.isEmpty(ConfigFile.getConfigFile().getPluginFrameworkVersion())) {
            arrayList.add(new Pair("plugin_fw_v", ConfigFile.getConfigFile().getPluginFrameworkVersion()));
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(new Pair(qc.b, str3));
        }
        if (!TextUtils.isEmpty(str4)) {
            arrayList.add(new Pair("mt", str4));
        }
        String strB = k0.b(context, context.getPackageName());
        if (!TextUtils.isEmpty(strB)) {
            arrayList.add(new Pair("appVer", strB));
        }
        arrayList.add(new Pair("osVer", Build.VERSION.SDK_INT + ""));
        arrayList.add(new Pair("devMake", Build.MANUFACTURER));
        arrayList.add(new Pair("devModel", Build.MODEL));
        arrayList.add(new Pair(v4.v0, (IronSourceUtils.getFirstSession(context) ? 1 : 0) + ""));
        ConcurrentHashMap<String, List<String>> concurrentHashMapC = o8.b().c();
        if (concurrentHashMapC.containsKey(a.b)) {
            arrayList.add(new Pair("coppa", concurrentHashMapC.get(a.b).get(0)));
        }
        if (concurrentHashMapC.containsKey(a.f6348f)) {
            String str5 = concurrentHashMapC.get(a.f6348f).get(0);
            if (!TextUtils.isEmpty(str5) && str5.equalsIgnoreCase(a.i)) {
                arrayList.add(new Pair("ts", "1"));
            }
        }
        if (concurrentHashMapC.containsKey(a.f6346d)) {
            String str6 = concurrentHashMapC.get(a.f6346d).get(0);
            if (!TextUtils.isEmpty(str6) && str6.equalsIgnoreCase("true")) {
                arrayList.add(new Pair("dff", "1"));
            }
        }
        if (concurrentHashMapC.containsKey(a.f6347e) && (list2 = concurrentHashMapC.get(a.f6347e)) != null) {
            arrayList.add(new Pair(a.f6347e, list2.get(0)));
        }
        String connectionType = IronSourceUtils.getConnectionType(context);
        if (!TextUtils.isEmpty(connectionType)) {
            arrayList.add(new Pair("connType", connectionType));
        }
        if (list != null) {
            arrayList.addAll(list);
        }
        String strS = e5VarC.s();
        if (strS.length() != 0) {
            arrayList.add(new Pair("browserUserAgent", strS));
        }
        String str7 = null;
        try {
            str7 = e5VarC.b(context) + "-" + e5VarC.F(context);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (str7 != null && str7.length() != 0) {
            arrayList.add(new Pair("deviceLang", str7));
        }
        arrayList.add(new Pair("bundleId", context.getPackageName()));
        arrayList.add(new Pair("mcc", "" + k2.b(context)));
        arrayList.add(new Pair("mnc", "" + k2.c(context)));
        String strN = e5VarC.n(context);
        if (!TextUtils.isEmpty(strN)) {
            arrayList.add(new Pair("icc", strN));
        }
        String strJ = e5VarC.j(context);
        if (!TextUtils.isEmpty(strJ)) {
            arrayList.add(new Pair(qc.f6530d, strJ));
        }
        String strB2 = e5VarC.b();
        if (!TextUtils.isEmpty(strB2)) {
            arrayList.add(new Pair("tz", strB2));
        }
        arrayList.add(new Pair(qc.d0, "" + e5VarC.p()));
        String strS2 = e5VarC.s(context);
        if (!TextUtils.isEmpty(strS2)) {
            arrayList.add(new Pair("auid", strS2));
        }
        if (z2) {
            arrayList.add(new Pair("isDemandOnly", "1"));
        }
        arrayList.add(new Pair(v4.V, String.valueOf(o.a())));
        arrayList.addAll(IronSourceUtils.parseJsonToPairList(new h7().a()));
        return b(IronSourceUtils.getSDKVersion()) + URLEncoder.encode(IronSourceAES.encode(w3.b().c(), a(arrayList)), C.UTF8_NAME);
    }

    public static String getRequestURL(String str, boolean z, int i) throws UnsupportedEncodingException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair("impression", Boolean.toString(z)));
        arrayList.add(new Pair(o2.i, Integer.toString(i)));
        return str + o2.i.c + a(arrayList);
    }
}

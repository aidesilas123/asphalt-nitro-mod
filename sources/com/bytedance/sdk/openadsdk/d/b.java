package com.bytedance.sdk.openadsdk.d;

import android.text.TextUtils;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bykv.vk.openvk.preload.geckox.GeckoHubImp;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bykv.vk.openvk.preload.geckox.statistic.IStatisticMonitor;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.b.c;
import com.bytedance.sdk.openadsdk.core.j;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import java.security.SecureRandom;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;

/* JADX INFO: compiled from: GeckoHub.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    private static final String[] a = {"gecko-pangle-sg.byteoversea.com"};

    /* JADX INFO: compiled from: GeckoHub.java */
    private static class a {
        private static final b a = new b();
    }

    private b() {
        try {
            GeckoHubImp.inst(o.a());
        } catch (Throwable th) {
            l.c("GeckoHub", "GeckoHubImp init error", th);
        }
    }

    public static b a() {
        return a.a;
    }

    public static void a(ThreadPoolExecutor threadPoolExecutor) {
        try {
            GeckoHubImp.setThreadPoolExecutor(threadPoolExecutor);
        } catch (Throwable th) {
            l.c("GeckoHub", "setThreadPoolExecutor error", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Map<String, q> map, JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (jSONObject == null) {
                jSONObject2.put("success", false);
                jSONObject2.put("msg", str);
                jSONObject2.put("code", 1);
                jSONObject = jSONObject2;
            }
            Iterator<q> it = map.values().iterator();
            while (it.hasNext()) {
                c.a.a(it.next(), jSONObject);
            }
        } catch (Throwable th) {
            l.c("GeckoHub", "upLoadStateEvent error", th);
        }
    }

    private static String c() {
        String[] strArrAa = o.d().aa();
        StringBuilder sb = new StringBuilder();
        sb.append("GeckoLog:get gecko hosts from settings ");
        sb.append(strArrAa == null ? 0 : strArrAa.length);
        l.b("GeckoHub", sb.toString());
        if (strArrAa == null) {
            strArrAa = a;
        }
        String str = strArrAa[new SecureRandom().nextInt(strArrAa.length)];
        if (TextUtils.isEmpty(str)) {
            SecureRandom secureRandom = new SecureRandom();
            String[] strArr = a;
            str = strArr[secureRandom.nextInt(strArr.length)];
        }
        l.b("GeckoHub", "GeckoLog:random host " + str);
        return str;
    }

    public int a(ILoader iLoader, String str) {
        try {
            return GeckoHubImp.inst(o.a()).getResCount(iLoader, str);
        } catch (Throwable th) {
            l.c("GeckoHub", "getResCount error", th);
            return 0;
        }
    }

    public WebResourceResponseModel a(ILoader iLoader, String str, String str2) {
        if (iLoader == null) {
            return null;
        }
        try {
            return GeckoHubImp.inst(o.a()).findResAndMsg(iLoader, str, str2);
        } catch (Throwable th) {
            l.c("GeckoHub", "findRes error", th);
            return null;
        }
    }

    public void a(ILoader iLoader) {
        if (iLoader != null) {
            try {
                GeckoHubImp.inst(o.a()).releaseGeckoResLoader(iLoader);
            } catch (Throwable th) {
                l.c("GeckoHub", "releaseGeckoResLoader error", th);
            }
        }
    }

    public void a(final Map<String, q> map) {
        try {
            String strA = j.a(o.a());
            if (TextUtils.isEmpty(strA)) {
                l.b("GeckoHub", "no did so don't preload");
                return;
            }
            Iterator<q> it = map.values().iterator();
            while (it.hasNext()) {
                c.a.a(it.next());
            }
            GeckoHubImp.setRandomHost(c());
            GeckoHubImp.inst(o.a()).preload(strA, new IStatisticMonitor() { // from class: com.bytedance.sdk.openadsdk.d.b.1
                @Override // com.bykv.vk.openvk.preload.geckox.statistic.IStatisticMonitor
                public void upload(String str, JSONObject jSONObject) {
                    if (!"geckosdk_update_stats".equals(str)) {
                        if ("download_gecko_end".equals(str)) {
                            b.b(map, jSONObject, "");
                        }
                    } else {
                        q qVar = (q) map.get(jSONObject.optString("channel"));
                        if (qVar != null) {
                            c.a.a(str, jSONObject, qVar);
                        }
                    }
                }
            }, map.keySet(), new com.bytedance.sdk.openadsdk.d.a());
        } catch (Throwable th) {
            b(map, null, th.toString());
            l.c("GeckoHub", "releaseGeckoResLoader error", th);
        }
    }

    public ILoader b() {
        try {
            return GeckoHubImp.inst(o.a()).getGeckoResLoader();
        } catch (Throwable th) {
            l.c("GeckoHub", "getGeckoResLoader error", th);
            return null;
        }
    }
}

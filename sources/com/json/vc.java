package com.json;

import com.json.mediationsdk.utils.IronSourceConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class vc extends zd {
    public vc(v vVar) {
        super(vVar);
    }

    public void a(int i, String str) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i));
        map.put("reason", str);
        b(t.TROUBLESHOOT_AUCTION_SUCCESSFUL_RECOVERY_ERROR, map);
    }

    public void a(int i, String str, String str2) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i));
        map.put("reason", str);
        map.put(IronSourceConstants.EVENTS_EXT1, str2);
        b(t.TROUBLESHOOT_NOTIFICATION_ERROR, map);
    }

    public void a(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        b(t.TROUBLESHOOT_AD_EXPIRED, map);
    }

    public void a(Map<String, Object> map, String str) {
        HashMap map2 = new HashMap();
        map2.put("reason", str);
        if (map != null && !map.isEmpty()) {
            map2.putAll(map);
        }
        b(t.TROUBLESHOOT_BIDDING_DATA_MISSING, map2);
    }

    public void b(int i, String str) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i));
        map.put("reason", str);
        b(t.TROUBLESHOOT_LOAD_FAILED, map);
    }

    public void b(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        b(t.TROUBLESHOOTING_BN_RELOAD_EXCEPTION, map);
    }

    public void c(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        b(t.TROUBLESHOOT_INTERNAL_ERROR, map);
    }

    public void d(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        b(t.TROUBLESHOOT_PROVIDER_SETTINGS_MISSING, map);
    }

    public void e(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        b(t.TROUBLESHOOT_UNEXPECTED_AUCTION_FAILED, map);
    }

    public void f(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        b(t.TROUBLESHOOT_UNEXPECTED_AUCTION_SUCCESS, map);
    }

    public void g(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        b(t.TROUBLESHOOT_UNEXPECTED_CLOSED, map);
    }

    public void h(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        b(t.TROUBLESHOOT_UNEXPECTED_INIT_FAILED, map);
    }

    public void i(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        b(t.TROUBLESHOOT_UNEXPECTED_INIT_SUCCESS, map);
    }

    public void j(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        b(t.TROUBLESHOOT_UNEXPECTED_LOAD_FAILED, map);
    }

    public void k(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        b(t.TROUBLESHOOT_UNEXPECTED_LOAD_SUCCESS, map);
    }

    public void l(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        b(t.TROUBLESHOOT_UNEXPECTED_OPENED, map);
    }

    public void m(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        b(t.TROUBLESHOOT_UNEXPECTED_RELOAD_FAILED, map);
    }

    public void n(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        b(t.TROUBLESHOOT_UNEXPECTED_RELOAD_SUCCESS, map);
    }

    public void o(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        b(t.TROUBLESHOOT_UNEXPECTED_SHOW_FAILED, map);
    }

    public void p(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        b(t.TROUBLESHOOT_UNEXPECTED_TIMEOUT, map);
    }

    public void q(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        b(t.TROUBLESHOOTING_WATERFALL_OVERHEAD, map);
    }
}

package com.json;

import android.app.Activity;
import android.text.TextUtils;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class k extends zd {
    public k(v vVar) {
        super(vVar);
    }

    public void a() {
        a(t.SESSION_CAPPED);
    }

    public void a(Activity activity, String str) {
        HashMap map = new HashMap();
        map.put("placement", str);
        if (activity != null) {
            map.put(IronSourceConstants.EVENTS_EXT1, IronSourceConstants.EVENTS_INIT_CONTEXT_FLOW);
        }
        b(t.SHOW_AD, map);
    }

    public void a(String str) {
        HashMap map = new HashMap();
        map.put("placement", str);
        b(t.AD_CLICKED, map);
    }

    public void a(String str, int i, String str2, String str3) {
        HashMap map = new HashMap();
        map.put("placement", str);
        map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i));
        map.put("reason", str2);
        if (!TextUtils.isEmpty(str3)) {
            map.put(IronSourceConstants.EVENTS_EXT1, str3);
        }
        b(t.SHOW_AD_FAILED, map);
    }

    public void a(String str, String str2) {
        HashMap map = new HashMap();
        map.put("placement", str);
        if (!TextUtils.isEmpty(str2)) {
            map.put(IronSourceConstants.EVENTS_EXT1, str2);
        }
        b(t.AD_CLOSED, map);
    }

    public void a(String str, String str2, int i, long j, String str3, long j2, Map<String, Object> map, String str4) {
        HashMap map2 = new HashMap();
        map2.put("placement", str);
        map2.put(IronSourceConstants.EVENTS_REWARD_NAME, str2);
        map2.put(IronSourceConstants.EVENTS_REWARD_AMOUNT, Integer.valueOf(i));
        map2.put(IronSourceConstants.EVENTS_TRANS_ID, str3);
        if (j2 != 0) {
            map2.put("duration", Long.valueOf(j2));
        }
        if (map != null) {
            map2.putAll(map);
        }
        if (!TextUtils.isEmpty(str4)) {
            map2.put(IronSourceConstants.EVENTS_DYNAMIC_USER_ID, str4);
        }
        c(t.AD_REWARDED, map2, j);
    }

    public void a(boolean z) {
        HashMap map = new HashMap();
        map.put("status", z ? "true" : "false");
        b(t.SHOW_AD_CHANCE, map);
    }

    public void b(String str) {
        HashMap map = new HashMap();
        map.put("placement", str);
        b(t.AD_DISMISS_SCREEN, map);
    }

    public void c(String str) {
        HashMap map = new HashMap();
        map.put("placement", str);
        b(t.AD_ENDED, map);
    }

    public void d(String str) {
        HashMap map = new HashMap();
        map.put("placement", str);
        b(t.AD_LEFT_APPLICATION, map);
    }

    public void e(String str) {
        HashMap map = new HashMap();
        map.put("placement", str);
        b(t.AD_OPENED, map);
    }

    public void f(String str) {
        HashMap map = new HashMap();
        map.put("placement", str);
        b(t.AD_PRESENT_SCREEN, map);
    }

    public void g(String str) {
        HashMap map = new HashMap();
        map.put("placement", str);
        b(t.AD_STARTED, map);
    }

    public void h(String str) {
        HashMap map = new HashMap();
        map.put("placement", str);
        b(t.AD_VISIBLE, map);
    }

    public void i(String str) {
        HashMap map = new HashMap();
        map.put("placement", str);
        b(t.PLACEMENT_CAPPED, map);
    }

    public void j(String str) {
        HashMap map = new HashMap();
        map.put("placement", str);
        b(t.SHOW_AD_SUCCESS, map);
    }
}

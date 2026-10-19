package com.json;

import android.text.TextUtils;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class z8 extends zd {
    public z8(v vVar) {
        super(vVar);
    }

    public void a() {
        b(t.RELOAD_AD, new HashMap());
    }

    public void a(int i) {
        HashMap map = new HashMap();
        map.put("sessionDepth", Integer.valueOf(i));
        b(t.DESTROY_AD, map);
    }

    public void a(long j) {
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(j));
        b(t.RELOAD_AD_SUCCESS, map);
    }

    public void a(long j, int i) {
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(j));
        map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i));
        b(t.LOAD_AD_FAILED, map);
    }

    public void a(long j, int i, String str) {
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(j));
        map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i));
        if (!TextUtils.isEmpty(str)) {
            map.put("reason", str);
        }
        b(t.LOAD_AD_FAILED_WITH_REASON, map);
    }

    public void a(long j, boolean z) {
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(j));
        if (z) {
            map.put(IronSourceConstants.EVENTS_PUBLISHER_LOAD, Boolean.TRUE);
        }
        b(t.LOAD_AD_SUCCESS, map);
    }

    public void a(boolean z) {
        HashMap map = new HashMap();
        if (z) {
            map.put(IronSourceConstants.EVENTS_PUBLISHER_LOAD, Boolean.TRUE);
        }
        b(t.LOAD_AD, map);
    }

    public void a(boolean z, long j, boolean z2) {
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(j));
        if (z2) {
            map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceError.ERROR_RV_EXPIRED_ADS));
            map.put("reason", "loaded ads are expired");
        }
        b(z ? t.AD_AVAILABILITY_CHANGED_TRUE : t.AD_AVAILABILITY_CHANGED_FALSE, map);
    }

    public void b(int i) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i));
        b(t.SKIP_RELOAD_AD, map);
    }

    public void b(long j, int i) {
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(j));
        map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i));
        b(t.LOAD_AD_NO_FILL, map);
    }

    public void b(long j, int i, String str) {
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(j));
        map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i));
        if (!TextUtils.isEmpty(str)) {
            map.put("reason", str);
        }
        b(t.RELOAD_AD_FAILED_WITH_REASON, map);
    }

    public void c(long j, int i) {
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(j));
        map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i));
        b(t.RELOAD_AD_NO_FILL, map);
    }
}

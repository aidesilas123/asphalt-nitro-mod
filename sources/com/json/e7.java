package com.json;

import com.json.mediationsdk.utils.IronSourceConstants;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class e7 extends zd {
    public e7(v vVar) {
        super(vVar);
    }

    public void a() {
        a(t.INIT_SUCCESS);
    }

    public void a(int i, String str) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i));
        map.put("reason", str);
        b(t.INIT_FAILED, map);
    }

    public void a(long j) {
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(j));
        b(t.INIT_ENDED, map);
    }

    public void a(String str, String str2) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_EXT1, str + "|" + str2);
        b(t.INIT_STARTED, map);
    }
}

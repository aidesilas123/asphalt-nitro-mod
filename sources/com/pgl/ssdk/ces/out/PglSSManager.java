package com.pgl.ssdk.ces.out;

import android.content.Context;
import android.text.TextUtils;
import com.pgl.ssdk.ces.a;
import com.pgl.ssdk.ces.b;
import com.pgl.ssdk.ces.e;
import com.pgl.ssdk.y;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class PglSSManager {
    private static volatile PglSSManager c;
    private final e a;
    private volatile int b = 0;

    private PglSSManager(Context context, PglSSConfig pglSSConfig) {
        this.a = e.a(context, pglSSConfig.getAppId(), pglSSConfig.getOVRegionType(), pglSSConfig.getCollectMode(), pglSSConfig.getAdSdkVersionCode());
    }

    public static PglSSManager getInstance() {
        return c;
    }

    public static PglSSManager init(Context context, PglSSConfig pglSSConfig, String str, String str2, String str3, String str4) {
        if (context == null && pglSSConfig == null) {
            return null;
        }
        if (c == null) {
            synchronized (PglSSManager.class) {
                if (c == null) {
                    PglSSManager pglSSManager = new PglSSManager(context, pglSSConfig);
                    if (pglSSManager.a != null) {
                        c = pglSSManager;
                        c.a.a(str, str3, str2, str4);
                    }
                }
            }
        }
        return c;
    }

    public Map getFeatureHash(String str, byte[] bArr) {
        e eVar = this.a;
        Objects.requireNonNull(eVar);
        HashMap map = new HashMap();
        String str2 = (String) a.meta(224, eVar.b, new Object[]{str, bArr});
        if (!TextUtils.isEmpty(str2)) {
            map.put("X-Armors", str2);
        }
        return map;
    }

    public String getToken() {
        Objects.requireNonNull(this.a);
        return y.b();
    }

    public void reportNow(String str) {
        if (this.b % 5 == 0) {
            this.a.a(str);
        }
        this.b++;
    }

    public void setCnReportUrl(String str, boolean z) {
        e eVar = this.a;
        Objects.requireNonNull(eVar);
        if (str != null && !str.equals(b.a) && z) {
            eVar.a("updateUrl");
        }
        b.a = str;
    }

    public void setCnTokenUrl(String str, boolean z) {
        Objects.requireNonNull(this.a);
        if (str != null && !str.equals(b.b) && z) {
            y.c();
        }
        b.b = str;
    }

    public void setCustomInfo(HashMap map) {
        this.a.a(map);
    }

    public void setDeviceId(String str) {
        this.a.b(str);
    }

    public void setGaid(String str) {
        this.a.c(str);
    }

    public void setOaid(String str) {
        this.a.d(str);
    }
}

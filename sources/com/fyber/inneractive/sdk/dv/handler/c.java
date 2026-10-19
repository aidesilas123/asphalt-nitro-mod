package com.fyber.inneractive.sdk.dv.handler;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.dv.g;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.network.q;
import com.fyber.inneractive.sdk.network.s;
import com.fyber.inneractive.sdk.response.e;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.m;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.query.QueryInfo;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class c extends com.fyber.inneractive.sdk.dv.handler.a<QueryInfo> {
    public final HashMap<AdFormat, QueryInfo> a = new HashMap<>();
    public boolean b = false;
    public final Object c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1989d = 0;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[UnitDisplayType.values().length];
            a = iArr;
            try {
                iArr[UnitDisplayType.BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[UnitDisplayType.MRECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[UnitDisplayType.REWARDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static void a(String str, com.fyber.inneractive.sdk.dv.enums.a aVar, InneractiveAdRequest inneractiveAdRequest, e eVar, String str2) {
        IAlog.a(String.format("Firing Event 1001 -Phase - %s  Fetch error DV - msg  %s", aVar.name(), str2), new Object[0]);
        s.a aVar2 = new s.a(q.DV_ERROR_PHASE, inneractiveAdRequest, eVar, (JSONArray) null);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("spot_id", str);
        } catch (Exception unused) {
            IAlog.e("Got exception adding param to json object: %s, %s", "spot_id", str);
        }
        String lowerCase = aVar.name().toLowerCase();
        try {
            jSONObject.put(TypedValues.CycleType.S_WAVE_PHASE, lowerCase);
        } catch (Exception unused2) {
            IAlog.e("Got exception adding param to json object: %s, %s", TypedValues.CycleType.S_WAVE_PHASE, lowerCase);
        }
        String strB = b();
        try {
            jSONObject.put("version", strB);
        } catch (Exception unused3) {
            IAlog.e("Got exception adding param to json object: %s, %s", "version", strB);
        }
        try {
            jSONObject.put("message", str2);
        } catch (Exception unused4) {
            IAlog.e("Got exception adding param to json object: %s, %s", "message", str2);
        }
        aVar2.f2120f.put(jSONObject);
        aVar2.a((String) null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0024, code lost:
    
        r0 = "na";
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String b() {
        /*
            java.lang.String r0 = "com.google.android.gms.ads.MobileAds"
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.Throwable -> L22
            java.lang.String r1 = "getVersion"
            r2 = 0
            java.lang.Class[] r3 = new java.lang.Class[r2]     // Catch: java.lang.NoSuchMethodException -> L1d java.lang.Throwable -> L22
            java.lang.reflect.Method r0 = r0.getMethod(r1, r3)     // Catch: java.lang.NoSuchMethodException -> L1d java.lang.Throwable -> L22
            r1 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.NoSuchMethodException -> L1d java.lang.Throwable -> L22
            java.lang.Object r0 = r0.invoke(r1, r2)     // Catch: java.lang.NoSuchMethodException -> L1d java.lang.Throwable -> L22
            if (r0 == 0) goto L22
            java.lang.String r0 = r0.toString()     // Catch: java.lang.NoSuchMethodException -> L1d java.lang.Throwable -> L22
            goto L24
        L1d:
            java.lang.String r0 = com.google.android.gms.ads.MobileAds.getVersionString()     // Catch: java.lang.Throwable -> L22
            goto L24
        L22:
            java.lang.String r0 = "na"
        L24:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.dv.handler.c.b():java.lang.String");
    }

    @Override // com.fyber.inneractive.sdk.dv.handler.a
    public g a(UnitDisplayType unitDisplayType) {
        g gVar;
        int i = a.a[unitDisplayType.ordinal()];
        AdFormat adFormat = (i == 1 || i == 2) ? AdFormat.BANNER : i != 3 ? AdFormat.INTERSTITIAL : AdFormat.REWARDED;
        QueryInfo queryInfo = this.a.get(adFormat);
        if (queryInfo != null) {
            synchronized (this.c) {
                this.a.remove(adFormat);
            }
            gVar = new g(queryInfo);
        } else {
            gVar = null;
        }
        IAlog.a("DVHanlder - get query: %s", gVar);
        m.a(new b(this, adFormat));
        return gVar;
    }

    @Override // com.fyber.inneractive.sdk.dv.handler.a
    public void a() {
        for (AdFormat adFormat : AdFormat.values()) {
            if (adFormat != AdFormat.NATIVE) {
                m.a(new b(this, adFormat));
            }
        }
    }
}

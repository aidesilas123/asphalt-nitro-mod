package com.mbridge.msdk.e;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: MBridgeTrackManager.java */
/* JADX INFO: loaded from: classes4.dex */
public final class m {
    private static final ConcurrentHashMap<String, m> b = new ConcurrentHashMap<>();
    private final k a;

    private m(String str, Context context, w wVar) {
        k kVar = new k(str, this);
        this.a = kVar;
        kVar.a(context);
        kVar.a(wVar);
    }

    public static m a(String str, Context context, w wVar) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ConcurrentHashMap<String, m> concurrentHashMap = b;
        m mVar = concurrentHashMap.get(str);
        if (!y.a(mVar)) {
            return mVar;
        }
        m mVar2 = new m(str, context, wVar);
        concurrentHashMap.put(str, mVar2);
        return mVar2;
    }

    private boolean b(e eVar) {
        try {
            return c(eVar);
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(e eVar) {
        if (y.a(eVar) || TextUtils.isEmpty(eVar.a())) {
            return false;
        }
        return this.a.a(eVar);
    }

    public static m[] d() {
        ConcurrentHashMap<String, m> concurrentHashMap = b;
        m[] mVarArr = new m[concurrentHashMap.size()];
        int i = 0;
        try {
            Iterator<Map.Entry<String, m>> it = concurrentHashMap.entrySet().iterator();
            while (it.hasNext()) {
                mVarArr[i] = it.next().getValue();
                i++;
            }
        } catch (Exception e2) {
            if (a.a) {
                Log.e("TrackManager", "getAllTrackManager error", e2);
            }
        }
        return mVarArr;
    }

    public final String a() {
        if (!(!this.a.r())) {
            return this.a.a();
        }
        if (a.a) {
            Log.e("TrackManager", "MBridgeTrackManager is already running");
        }
        return this.a.b();
    }

    public final void a(final e eVar) {
        if (this.a.r()) {
            if (a.a) {
                Log.d("TrackManager", "SDK is shutdown, track event will not be processed");
                return;
            }
            return;
        }
        try {
            this.a.i().a(new Runnable() { // from class: com.mbridge.msdk.e.m.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (m.this.c(eVar)) {
                        m.this.a.h().a(eVar);
                        eVar.c(m.this.a.d().f6996f);
                        JSONObject jSONObjectD = eVar.d();
                        if (jSONObjectD != null) {
                            try {
                                jSONObjectD.put(SDKAnalyticsEvents.PARAMETER_SESSION_ID, m.this.b());
                                long[] jArrF = m.this.f();
                                jSONObjectD.put("track_time", jArrF[0]);
                                jSONObjectD.put("track_count", jArrF[1]);
                            } catch (JSONException e2) {
                                e2.printStackTrace();
                            }
                            eVar.a(jSONObjectD);
                        }
                        m.this.a.h().b(eVar);
                    }
                }
            });
        } catch (Exception e2) {
            if (a.a) {
                Log.e("TrackManager", "trackEvent error", e2);
            }
        }
    }

    public final void a(JSONObject jSONObject) {
        this.a.a(jSONObject);
    }

    public final boolean a(String str) {
        return b(new e(str));
    }

    public final String b() {
        return this.a.b();
    }

    public final String c() {
        return this.a.c();
    }

    public final void e() {
        try {
            this.a.i().a(new Runnable() { // from class: com.mbridge.msdk.e.m.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        t.a().c();
                        m.this.a.o().b();
                    } catch (Exception e2) {
                        if (a.a) {
                            Log.e("TrackManager", "flush error", e2);
                        }
                    }
                }
            });
        } catch (Exception e2) {
            if (a.a) {
                Log.e("TrackManager", "flush error", e2);
            }
        }
    }

    public final long[] f() {
        return this.a.h().a();
    }
}

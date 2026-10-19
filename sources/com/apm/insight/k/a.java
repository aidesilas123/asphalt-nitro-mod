package com.apm.insight.k;

import androidx.annotation.Nullable;
import com.apm.insight.l.p;
import com.apm.insight.l.q;
import com.apm.insight.runtime.u;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static Runnable a = new Runnable() { // from class: com.apm.insight.k.a.1
        @Override // java.lang.Runnable
        public void run() {
            u uVarB;
            Runnable runnable;
            long j;
            if (p.b(com.apm.insight.i.g())) {
                a.i();
            }
            if (a.b > 0) {
                if (com.apm.insight.l.a.b(com.apm.insight.i.g())) {
                    uVarB = com.apm.insight.runtime.p.b();
                    runnable = a.a;
                    j = 15000;
                } else {
                    uVarB = com.apm.insight.runtime.p.b();
                    runnable = a.a;
                    j = ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
                }
                uVarB.a(runnable, j);
            }
        }
    };
    private static int b = 0;

    public static void a() {
        b = 40;
        com.apm.insight.runtime.p.b().a(a);
    }

    public static void b() {
        if (!k.b()) {
            k.c();
        }
        if (p.b(com.apm.insight.i.g()) && k.a(false)) {
            i();
        }
    }

    public static boolean c() {
        return false;
    }

    public static void d() {
    }

    @Nullable
    private static byte[] h() {
        try {
            return e.a(com.apm.insight.i.i().getConfigUrl(), (Map<String, String>) null, com.apm.insight.entity.b.a().toString().getBytes());
        } catch (Throwable th) {
            q.a(th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void i() {
        int i = b;
        if (i > 0) {
            b = i - 1;
        }
        q.a((Object) "try fetchApmConfig");
        if (com.apm.insight.l.a.b(com.apm.insight.i.g())) {
            JSONArray jSONArrayOptJSONArray = null;
            try {
                byte[] bArrH = h();
                if (bArrH != null) {
                    jSONArrayOptJSONArray = new JSONObject(new String(bArrH)).optJSONArray("data");
                }
            } catch (Throwable th) {
                q.a("npth", th);
            }
            q.a((Object) ("after fetchApmConfig net " + jSONArrayOptJSONArray));
            if (jSONArrayOptJSONArray != null) {
                com.apm.insight.runtime.a.a(jSONArrayOptJSONArray, true);
                b = 0;
            } else {
                b -= 10;
            }
        } else {
            k.c();
            if (k.a()) {
                b = 0;
            }
        }
    }
}

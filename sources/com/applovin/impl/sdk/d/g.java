package com.applovin.impl.sdk.d;

import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.x;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class g {
    private final Map<String, Long> aTm = new HashMap();
    private final n sdk;

    public g(n nVar) {
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.sdk = nVar;
    }

    private void Ka() {
        this.sdk.BO().h(new Runnable() { // from class: com.applovin.impl.sdk.d.h
            @Override // java.lang.Runnable
            public final void run() {
                this.a.Kb();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Kb() {
        try {
            this.sdk.a(com.applovin.impl.sdk.c.d.aRD, JY().toString());
        } catch (Throwable th) {
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().c("GlobalStatsManager", "Unable to save stats", th);
            }
        }
    }

    public void JW() {
        synchronized (this.aTm) {
            this.aTm.clear();
        }
        Ka();
    }

    public void JX() {
        synchronized (this.aTm) {
            Iterator<f> it = f.JV().iterator();
            while (it.hasNext()) {
                this.aTm.remove(it.next().getName());
            }
            Ka();
        }
    }

    public JSONObject JY() {
        JSONObject jSONObject;
        synchronized (this.aTm) {
            jSONObject = new JSONObject();
            for (Map.Entry<String, Long> entry : this.aTm.entrySet()) {
                JsonUtils.putLong(jSONObject, entry.getKey(), entry.getValue().longValue());
            }
        }
        return jSONObject;
    }

    public void JZ() {
        try {
            JSONObject jSONObject = new JSONObject((String) this.sdk.b(com.applovin.impl.sdk.c.d.aRD, JsonUtils.EMPTY_JSON));
            synchronized (this.aTm) {
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    try {
                        String next = itKeys.next();
                        this.aTm.put(next, Long.valueOf(jSONObject.getLong(next)));
                    } catch (JSONException unused) {
                    }
                }
            }
        } catch (Throwable th) {
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().c("GlobalStatsManager", "Unable to load stats", th);
            }
        }
    }

    public long a(f fVar) {
        return a(fVar, 1L);
    }

    long a(f fVar, long j) {
        long jLongValue;
        synchronized (this.aTm) {
            Long l = this.aTm.get(fVar.getName());
            if (l == null) {
                l = 0L;
            }
            jLongValue = l.longValue() + j;
            this.aTm.put(fVar.getName(), Long.valueOf(jLongValue));
        }
        Ka();
        return jLongValue;
    }

    public long b(f fVar) {
        long jLongValue;
        synchronized (this.aTm) {
            Long l = this.aTm.get(fVar.getName());
            if (l == null) {
                l = 0L;
            }
            jLongValue = l.longValue();
        }
        return jLongValue;
    }

    public void b(f fVar, long j) {
        synchronized (this.aTm) {
            this.aTm.put(fVar.getName(), Long.valueOf(j));
        }
        Ka();
    }

    public void c(f fVar) {
        synchronized (this.aTm) {
            this.aTm.remove(fVar.getName());
        }
        Ka();
    }
}

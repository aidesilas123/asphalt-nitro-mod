package com.applovin.impl.sdk.e;

import android.text.TextUtils;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.network.b;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinErrorCodes;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class w<T> extends d implements b.d<T> {
    private final com.applovin.impl.sdk.network.c<T> aHl;
    protected b.a aHv;
    private q.b aUY;
    private com.applovin.impl.sdk.c.b<String> aUZ;
    private com.applovin.impl.sdk.c.b<String> aVa;
    private final b.d<T> apS;

    public w(com.applovin.impl.sdk.network.c<T> cVar, com.applovin.impl.sdk.n nVar) {
        this(cVar, nVar, false);
    }

    public w(com.applovin.impl.sdk.network.c<T> cVar, final com.applovin.impl.sdk.n nVar, boolean z) {
        super("TaskRepeatRequest", nVar, z);
        this.aUY = q.b.BACKGROUND;
        this.aUZ = null;
        this.aVa = null;
        if (cVar == null) {
            throw new IllegalArgumentException("No request specified");
        }
        dq(cVar.zL());
        this.aHl = cVar;
        this.aHv = new b.a();
        this.apS = new b.d<T>() { // from class: com.applovin.impl.sdk.e.w.1
            @Override // com.applovin.impl.sdk.network.b.d
            public void a(int i, String str, T t) {
                boolean z2 = false;
                boolean z3 = i < 200 || i >= 500;
                boolean z4 = i == 429;
                if (!((i != -1009) || w.this.aHl.Ib()) || (!z3 && !z4 && !w.this.aHl.Ia())) {
                    w.this.a(i, str, t);
                    return;
                }
                String strHT = w.this.aHl.HT();
                if (w.this.aHl.HV() <= 0) {
                    if (strHT == null || !strHT.equals(w.this.aHl.zL())) {
                        w wVar = w.this;
                        wVar.g(wVar.aUZ);
                    } else {
                        w wVar2 = w.this;
                        wVar2.g(wVar2.aVa);
                    }
                    w.this.a(i, str, t);
                    return;
                }
                com.applovin.impl.sdk.x xVar = w.this.logger;
                if (com.applovin.impl.sdk.x.Fn()) {
                    w wVar3 = w.this;
                    wVar3.logger.h(wVar3.tag, "Unable to send request due to server failure (code " + i + "). " + w.this.aHl.HV() + " attempts left, retrying in " + TimeUnit.MILLISECONDS.toSeconds(w.this.aHl.HY()) + " seconds...");
                }
                int iHV = w.this.aHl.HV() - 1;
                w.this.aHl.gD(iHV);
                if ((((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aKI)).booleanValue() && w.this.aHl.zL().endsWith("4.0/ad")) || iHV == 0) {
                    w wVar4 = w.this;
                    wVar4.g(wVar4.aUZ);
                    if (StringUtils.isValidString(strHT) && strHT.length() >= 4) {
                        com.applovin.impl.sdk.x xVar2 = w.this.logger;
                        if (com.applovin.impl.sdk.x.Fn()) {
                            w wVar5 = w.this;
                            wVar5.logger.g(wVar5.tag, "Switching to backup endpoint " + strHT);
                        }
                        w.this.aHl.cU(strHT);
                        z2 = true;
                    }
                }
                long millis = (((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aNZ)).booleanValue() && z2) ? 0L : w.this.aHl.HZ() ? TimeUnit.SECONDS.toMillis((long) Math.pow(2.0d, w.this.aHl.HW())) : w.this.aHl.HY();
                q qVarBO = nVar.BO();
                w wVar6 = w.this;
                qVarBO.a(wVar6, wVar6.aUY, millis);
            }

            @Override // com.applovin.impl.sdk.network.b.d
            public void d(T t, int i) {
                w.this.aHl.gD(0);
                w.this.d(t, i);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <ST> void g(com.applovin.impl.sdk.c.b<ST> bVar) {
        if (bVar != null) {
            getSdk().BP().a((com.applovin.impl.sdk.c.b<?>) bVar, (Object) bVar.JD());
        }
    }

    public abstract void a(int i, String str, T t);

    public void a(q.b bVar) {
        this.aUY = bVar;
    }

    public abstract void d(T t, int i);

    public void e(com.applovin.impl.sdk.c.b<String> bVar) {
        this.aUZ = bVar;
    }

    public void f(com.applovin.impl.sdk.c.b<String> bVar) {
        this.aVa = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.applovin.impl.sdk.network.b bVarBQ = getSdk().BQ();
        if (!getSdk().Bp() && !getSdk().isEnabled()) {
            com.applovin.impl.sdk.x.H("AppLovinSdk", "AppLovin SDK is disabled");
            a(-22, null, null);
        } else if (!StringUtils.isValidString(this.aHl.zL()) || this.aHl.zL().length() < 4) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.i(this.tag, "Task has an invalid or null request endpoint.");
            }
            a(AppLovinErrorCodes.INVALID_URL, null, null);
        } else {
            if (TextUtils.isEmpty(this.aHl.HQ())) {
                this.aHl.cV(this.aHl.vS() != null ? "POST" : "GET");
            }
            bVarBQ.a(this.aHl, this.aHv, this.apS);
        }
    }
}

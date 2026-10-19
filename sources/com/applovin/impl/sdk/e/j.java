package com.applovin.impl.sdk.e;

import android.text.TextUtils;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinPostbackListener;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class j extends d {
    private final com.applovin.impl.sdk.network.i aTZ;
    private final AppLovinPostbackListener aUa;
    private final q.b aUb;

    public j(com.applovin.impl.sdk.network.i iVar, q.b bVar, com.applovin.impl.sdk.n nVar, AppLovinPostbackListener appLovinPostbackListener) {
        super("TaskDispatchPostback", nVar);
        if (iVar == null) {
            throw new IllegalArgumentException("No request specified");
        }
        this.aTZ = iVar;
        this.aUa = appLovinPostbackListener;
        this.aUb = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void KC() {
        w<Object> wVar = new w<Object>(this.aTZ, getSdk()) { // from class: com.applovin.impl.sdk.e.j.2
            final String aHr;

            {
                this.aHr = j.this.aTZ.zL();
            }

            @Override // com.applovin.impl.sdk.e.w, com.applovin.impl.sdk.network.b.d
            public void a(int i, String str, Object obj) {
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.logger.i(this.tag, "Failed to dispatch postback. Error code: " + i + " URL: " + this.aHr);
                }
                if (j.this.aUa != null) {
                    j.this.aUa.onPostbackFailure(this.aHr, i);
                }
                if (j.this.aTZ.IG()) {
                    this.sdk.Ch().a(j.this.aTZ.Iy(), this.aHr, i, obj, str, false);
                }
            }

            @Override // com.applovin.impl.sdk.e.w, com.applovin.impl.sdk.network.b.d
            public void d(Object obj, int i) {
                if (obj instanceof String) {
                    for (String str : this.sdk.b(com.applovin.impl.sdk.c.b.aLr)) {
                        if (str.startsWith(str)) {
                            String str2 = (String) obj;
                            if (TextUtils.isEmpty(str2)) {
                                continue;
                            } else {
                                try {
                                    JSONObject jSONObject = new JSONObject(str2);
                                    com.applovin.impl.sdk.utils.i.j(jSONObject, this.sdk);
                                    com.applovin.impl.sdk.utils.i.i(jSONObject, this.sdk);
                                    com.applovin.impl.sdk.utils.i.k(jSONObject, this.sdk);
                                    break;
                                } catch (JSONException unused) {
                                }
                            }
                        }
                    }
                }
                if (j.this.aUa != null) {
                    j.this.aUa.onPostbackSuccess(this.aHr);
                }
                if (j.this.aTZ.IG()) {
                    this.sdk.Ch().a(j.this.aTZ.Iy(), this.aHr, i, obj, null, true);
                }
            }
        };
        wVar.a(this.aUb);
        getSdk().BO().b(wVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!StringUtils.isValidString(this.aTZ.zL())) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.g(this.tag, "Requested URL is not valid; nothing to do...");
            }
            AppLovinPostbackListener appLovinPostbackListener = this.aUa;
            if (appLovinPostbackListener != null) {
                appLovinPostbackListener.onPostbackFailure(this.aTZ.zL(), AppLovinErrorCodes.INVALID_URL);
                return;
            }
            return;
        }
        if (!this.aTZ.Ix()) {
            KC();
            return;
        }
        AppLovinPostbackListener appLovinPostbackListener2 = new AppLovinPostbackListener() { // from class: com.applovin.impl.sdk.e.j.1
            @Override // com.applovin.sdk.AppLovinPostbackListener
            public void onPostbackFailure(String str, int i) {
                j.this.KC();
            }

            @Override // com.applovin.sdk.AppLovinPostbackListener
            public void onPostbackSuccess(String str) {
                if (j.this.aUa != null) {
                    j.this.aUa.onPostbackSuccess(j.this.aTZ.zL());
                }
            }
        };
        if (((Boolean) getSdk().a(com.applovin.impl.sdk.c.b.aQL)).booleanValue()) {
            getSdk().Cg().a(this.aTZ, appLovinPostbackListener2);
        } else {
            com.applovin.impl.adview.d.a(this.aTZ, getSdk(), appLovinPostbackListener2);
        }
    }
}

package com.applovin.impl.sdk.e;

import androidx.annotation.Nullable;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class t extends com.applovin.impl.sdk.e.d {
    private final AppLovinAdLoadListener aTG;
    private final a aUT;

    private static final class a extends com.applovin.impl.b.e {
        a(JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.ad.b bVar, com.applovin.impl.sdk.n nVar) {
            super(jSONObject, jSONObject2, bVar, nVar);
        }

        void b(com.applovin.impl.sdk.utils.y yVar) {
            if (yVar == null) {
                throw new IllegalArgumentException("No aggregated vast response specified");
            }
            this.aXl.add(yVar);
        }
    }

    private static final class b extends t {
        private final String aUU;

        b(String str, com.applovin.impl.b.e eVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
            super(eVar, appLovinAdLoadListener, nVar);
            this.aUU = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            a(dw(this.aUU));
        }
    }

    private static final class c extends t {
        private final JSONObject aUV;

        c(com.applovin.impl.b.e eVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
            super(eVar, appLovinAdLoadListener, nVar);
            this.aUV = eVar.Mt();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "Processing SDK JSON response...");
            }
            String string = JsonUtils.getString(this.aUV, "xml", null);
            if (!StringUtils.isValidString(string)) {
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.logger.i(this.tag, "No VAST response received.");
                }
                a(com.applovin.impl.b.f.NO_WRAPPER_RESPONSE);
            } else {
                if (string.length() < ((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aPr)).intValue()) {
                    a(dw(string));
                    return;
                }
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.logger.i(this.tag, "VAST response is over max length");
                }
                a(com.applovin.impl.b.f.XML_PARSING);
            }
        }
    }

    private static final class d extends t {
        private final com.applovin.impl.sdk.utils.y aUW;

        d(com.applovin.impl.sdk.utils.y yVar, com.applovin.impl.b.e eVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
            super(eVar, appLovinAdLoadListener, nVar);
            if (yVar == null) {
                throw new IllegalArgumentException("No response specified.");
            }
            if (eVar == null) {
                throw new IllegalArgumentException("No context specified.");
            }
            if (appLovinAdLoadListener == null) {
                throw new IllegalArgumentException("No callback specified.");
            }
            this.aUW = yVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "Processing VAST Wrapper response...");
            }
            a(this.aUW);
        }
    }

    t(com.applovin.impl.b.e eVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
        super("TaskProcessVastResponse", nVar);
        if (eVar == null) {
            throw new IllegalArgumentException("No context specified.");
        }
        this.aTG = appLovinAdLoadListener;
        this.aUT = (a) eVar;
    }

    public static t a(com.applovin.impl.sdk.utils.y yVar, com.applovin.impl.b.e eVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
        return new d(yVar, eVar, appLovinAdLoadListener, nVar);
    }

    public static t a(String str, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.ad.b bVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
        return new b(str, new a(jSONObject, jSONObject2, bVar, nVar), appLovinAdLoadListener, nVar);
    }

    public static t a(JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.ad.b bVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
        return new c(new a(jSONObject, jSONObject2, bVar, nVar), appLovinAdLoadListener, nVar);
    }

    void a(com.applovin.impl.b.f fVar) {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.i(this.tag, "Failed to process VAST response due to VAST error code " + fVar);
        }
        com.applovin.impl.b.m.a(this.aUT, this.aTG, fVar, -6, this.sdk);
    }

    void a(com.applovin.impl.sdk.utils.y yVar) {
        int iMr = this.aUT.Mr();
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Finished parsing XML at depth " + iMr);
        }
        this.aUT.b(yVar);
        if (!com.applovin.impl.b.m.d(yVar)) {
            if (!com.applovin.impl.b.m.e(yVar)) {
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.logger.i(this.tag, "VAST response is an error");
                }
                a(com.applovin.impl.b.f.NO_WRAPPER_RESPONSE);
                return;
            } else {
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.logger.f(this.tag, "VAST response is inline. Rendering ad...");
                }
                this.sdk.BO().b(new v(this.aUT, this.aTG, this.sdk));
                return;
            }
        }
        int iIntValue = ((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aPs)).intValue();
        if (iMr < iIntValue) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "VAST response is wrapper. Resolving...");
            }
            this.sdk.BO().b(new z(this.aUT, this.aTG, this.sdk));
            return;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.i(this.tag, "Reached beyond max wrapper depth of " + iIntValue);
        }
        a(com.applovin.impl.b.f.WRAPPER_LIMIT_REACHED);
    }

    @Nullable
    protected com.applovin.impl.sdk.utils.y dw(String str) {
        try {
            return com.applovin.impl.sdk.utils.z.e(str, this.sdk);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.c(this.tag, "Failed to process VAST response", th);
            }
            a(com.applovin.impl.b.f.XML_PARSING);
            return null;
        }
    }
}

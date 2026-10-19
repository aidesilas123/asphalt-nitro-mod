package com.fyber.inneractive.sdk.cache;

import com.fyber.inneractive.sdk.util.IAlog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class d implements a<com.fyber.inneractive.sdk.config.i> {
    public static final String a = String.format("https://%sconfig_android.json", "cdn2.inner-active.mobi/ia-sdk-config/");

    @Override // com.fyber.inneractive.sdk.cache.a
    public com.fyber.inneractive.sdk.config.i a(String str) throws Exception {
        try {
            return com.fyber.inneractive.sdk.config.i.a(new JSONObject(str));
        } catch (JSONException e2) {
            IAlog.b("internal error while parsing global config file", new Object[0]);
            throw e2;
        }
    }

    @Override // com.fyber.inneractive.sdk.cache.a
    public String a() {
        int i = com.fyber.inneractive.sdk.config.f.a;
        return System.getProperty("ia.testEnvironmentConfiguration.globalConfigUrl") == null ? a : System.getProperty("ia.testEnvironmentConfiguration.globalConfigUrl");
    }

    @Override // com.fyber.inneractive.sdk.cache.a
    public /* bridge */ /* synthetic */ void a(com.fyber.inneractive.sdk.config.i iVar) {
    }

    @Override // com.fyber.inneractive.sdk.cache.a
    public String b() {
        return "IALastModifiedFromHeader.global";
    }

    @Override // com.fyber.inneractive.sdk.cache.a
    public String c() {
        return "ia-global.config";
    }

    @Override // com.fyber.inneractive.sdk.cache.a
    public boolean d() {
        return true;
    }
}

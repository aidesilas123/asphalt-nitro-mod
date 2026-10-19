package com.applovin.impl.sdk.network;

import com.applovin.impl.sdk.e.w;
import com.applovin.impl.sdk.n;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a extends com.applovin.impl.sdk.e.d {
    private final c<JSONObject> aHl;
    private final String aoM;

    public a(String str, c<JSONObject> cVar, n nVar) {
        super("CommunicatorRequestTask", nVar, str);
        this.aoM = str;
        this.aHl = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.sdk.BO().b(new w<JSONObject>(this.aHl, this.sdk, Kh()) { // from class: com.applovin.impl.sdk.network.a.1
            @Override // com.applovin.impl.sdk.e.w, com.applovin.impl.sdk.network.b.d
            public void a(int i, String str, JSONObject jSONObject) {
                this.sdk.Ch().a(a.this.aoM, a.this.aHl.zL(), i, jSONObject, str, false);
            }

            @Override // com.applovin.impl.sdk.e.w, com.applovin.impl.sdk.network.b.d
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void d(JSONObject jSONObject, int i) {
                this.sdk.Ch().a(a.this.aoM, a.this.aHl.zL(), i, jSONObject, null, true);
            }
        });
    }
}

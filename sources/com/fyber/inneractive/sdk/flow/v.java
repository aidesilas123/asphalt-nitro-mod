package com.fyber.inneractive.sdk.flow;

import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.network.s;
import com.fyber.inneractive.sdk.util.IAlog;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class v implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ InneractiveAdRequest b;
    public final /* synthetic */ com.fyber.inneractive.sdk.response.e c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ t f2031d;

    public v(t tVar, String str, InneractiveAdRequest inneractiveAdRequest, com.fyber.inneractive.sdk.response.e eVar) {
        this.f2031d = tVar;
        this.a = str;
        this.b = inneractiveAdRequest;
        this.c = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.fyber.inneractive.sdk.config.global.s sVar;
        IAlog.a("Firing Event 803 - Stack trace - %s", this.a);
        com.fyber.inneractive.sdk.network.q qVar = com.fyber.inneractive.sdk.network.q.IA_AD_DESTROYED_WITHOUT_SHOW;
        InneractiveAdRequest inneractiveAdRequest = this.b;
        com.fyber.inneractive.sdk.response.e eVar = this.c;
        t tVar = this.f2031d;
        j jVar = tVar.h;
        l lVar = tVar.l;
        com.fyber.inneractive.sdk.config.global.s sVar2 = lVar != null ? lVar.c : null;
        s.a aVar = new s.a(qVar, inneractiveAdRequest, eVar, (jVar == null || (sVar = jVar.c) == null) ? sVar2 != null ? sVar2.c() : null : sVar.c());
        JSONObject jSONObject = new JSONObject();
        String str = this.a;
        try {
            jSONObject.put("stack_trace", str);
        } catch (Exception unused) {
            IAlog.e("Got exception adding param to json object: %s, %s", "stack_trace", str);
        }
        aVar.f2120f.put(jSONObject);
        aVar.a((String) null);
    }
}

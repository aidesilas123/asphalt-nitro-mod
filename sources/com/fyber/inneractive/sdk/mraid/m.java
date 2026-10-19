package com.fyber.inneractive.sdk.mraid;

import com.fyber.inneractive.sdk.util.k0;
import com.fyber.inneractive.sdk.util.x;
import com.fyber.inneractive.sdk.web.b;
import com.fyber.inneractive.sdk.web.i;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class m extends a {
    public m(Map<String, String> map, com.fyber.inneractive.sdk.web.i iVar, k0 k0Var) {
        super(map, iVar, k0Var);
    }

    @Override // com.fyber.inneractive.sdk.mraid.b
    public void a() {
        x.a aVar;
        String str = this.b.get("url");
        com.fyber.inneractive.sdk.web.i iVar = this.c;
        if (iVar != null) {
            k0 k0Var = this.f2099d;
            L l = iVar.f2756g;
            if (l != 0) {
                aVar = ((i.f) l).a(str, k0Var, (b.a) null);
            } else {
                aVar = new x.a(x.d.FAILED, new Exception("No webview listener available"), iVar.l() == null ? "null" : iVar.l().getClass().getName());
            }
            if (aVar.a == x.d.FAILED) {
                com.fyber.inneractive.sdk.web.i iVar2 = this.c;
                g gVar = g.OPEN;
                Throwable th = aVar.b;
                iVar2.a(gVar, th == null ? "unknown error" : th.getMessage());
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.mraid.a
    public String c() {
        return this.b.get("url");
    }

    @Override // com.fyber.inneractive.sdk.mraid.a
    public void d() {
        com.fyber.inneractive.sdk.web.i iVar = this.c;
        if (iVar != null) {
            iVar.a(g.OPEN, "No native click was detected in a timely fashion");
        }
    }
}

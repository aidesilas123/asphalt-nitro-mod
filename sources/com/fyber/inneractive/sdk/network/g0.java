package com.fyber.inneractive.sdk.network;

import android.content.Context;
import com.fyber.inneractive.sdk.external.InvalidAppIdException;
import com.fyber.inneractive.sdk.network.v;
import com.fyber.inneractive.sdk.util.IAlog;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class g0<T> extends f0<T> {
    public final Context r;
    public final com.fyber.inneractive.sdk.cache.a<T> s;
    public v<T> t;

    public g0(w<T> wVar, Context context, com.fyber.inneractive.sdk.cache.a<T> aVar) {
        this(wVar, context, aVar, x.a().b());
    }

    public g0(w<T> wVar, Context context, com.fyber.inneractive.sdk.cache.a<T> aVar, g gVar) {
        super(wVar, gVar);
        this.r = context;
        this.s = aVar;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public b0 a(j jVar, Map<String, List<String>> map, int i) throws Exception {
        b0 b0Var = new b0();
        try {
            String string = com.fyber.inneractive.sdk.util.q.a(jVar.c, false).toString();
            b0Var.a = this.s.a(string);
            b0Var.b = string;
            return b0Var;
        } catch (Exception e2) {
            IAlog.a("failed parse cacheable network request", e2, new Object[0]);
            if (e2 instanceof InvalidAppIdException) {
                throw e2;
            }
            throw new a0(e2);
        }
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public String a() {
        return this.s.a();
    }

    @Override // com.fyber.inneractive.sdk.network.f0, com.fyber.inneractive.sdk.network.c0
    public void a(b0 b0Var, String str, String str2) {
        v<T> vVar = this.t;
        if (vVar != null) {
            if (vVar.c == null) {
                vVar.c = vVar.a.getSharedPreferences("IAConfigurationPreferences", 0);
            }
            vVar.c.edit().putString(vVar.b.b(), str2).apply();
            if (b0Var.b.isEmpty() || str.isEmpty()) {
                return;
            }
            if (this.t.a(str, b0Var.b)) {
                this.s.a(b0Var.a);
            } else {
                IAlog.b("Failed to cache file", new Object[0]);
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.network.f0, com.fyber.inneractive.sdk.network.c0
    public String c() {
        return this.s.c();
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public o0 i() {
        return o0.LOW;
    }

    @Override // com.fyber.inneractive.sdk.network.f0, com.fyber.inneractive.sdk.network.c0
    public a<T> k() throws Throwable {
        com.fyber.inneractive.sdk.cache.j jVar;
        Context context = this.r;
        com.fyber.inneractive.sdk.cache.a<T> aVar = this.s;
        v<T> vVar = new v<>(context, aVar);
        this.t = vVar;
        try {
            if (aVar.d()) {
                T tA = vVar.b.a(vVar.a(vVar.b.c()));
                if (vVar.c == null) {
                    vVar.c = context.getSharedPreferences("IAConfigurationPreferences", 0);
                }
                jVar = new com.fyber.inneractive.sdk.cache.j(tA, vVar.c.getString(vVar.b.b(), null));
            } else {
                jVar = new com.fyber.inneractive.sdk.cache.j(new v.a());
            }
        } catch (Exception e2) {
            if (vVar.c == null) {
                vVar.c = vVar.a.getSharedPreferences("IAConfigurationPreferences", 0);
            }
            vVar.c.edit().remove(vVar.b.b()).apply();
            jVar = new com.fyber.inneractive.sdk.cache.j(e2);
        }
        return new a<>(jVar.b, jVar.a, this.s.c());
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public boolean o() {
        return false;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public z r() {
        return z.GET;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public int v() {
        return 0;
    }
}

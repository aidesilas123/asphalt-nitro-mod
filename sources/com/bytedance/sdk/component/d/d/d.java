package com.bytedance.sdk.component.d.d;

/* JADX INFO: compiled from: CachePolicyVisitor.java */
/* JADX INFO: loaded from: classes2.dex */
public class d extends a {
    @Override // com.bytedance.sdk.component.d.d.i
    public String a() {
        return "cache_policy";
    }

    @Override // com.bytedance.sdk.component.d.d.i
    public void a(com.bytedance.sdk.component.d.c.c cVar) {
        com.bytedance.sdk.component.d.b bVarT = cVar.t();
        if (bVarT != null) {
            if (bVarT.c()) {
                cVar.a(new j());
                return;
            } else if (bVarT.d()) {
                cVar.a(new f());
                return;
            }
        }
        cVar.a(new k());
    }
}

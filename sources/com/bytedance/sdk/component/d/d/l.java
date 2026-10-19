package com.bytedance.sdk.component.d.d;

/* JADX INFO: compiled from: RawCacheVisitor.java */
/* JADX INFO: loaded from: classes2.dex */
public class l extends a {
    @Override // com.bytedance.sdk.component.d.d.i
    public String a() {
        return "raw_cache";
    }

    @Override // com.bytedance.sdk.component.d.d.i
    public void a(com.bytedance.sdk.component.d.c.c cVar) {
        byte[] bArrA = cVar.s().b(cVar.t()).a(cVar.j());
        if (bArrA == null) {
            cVar.a(new f());
        } else {
            cVar.a(new b(bArrA, null));
        }
    }
}

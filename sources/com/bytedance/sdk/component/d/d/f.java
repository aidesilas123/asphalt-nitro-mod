package com.bytedance.sdk.component.d.d;

import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: DiskCacheVisitor.java */
/* JADX INFO: loaded from: classes2.dex */
public class f extends a {
    private byte[] a(com.bytedance.sdk.component.d.c.c cVar, String str) {
        Collection<com.bytedance.sdk.component.d.c> collectionC = cVar.s().c();
        if (collectionC == null) {
            return null;
        }
        Iterator<com.bytedance.sdk.component.d.c> it = collectionC.iterator();
        while (it.hasNext()) {
            byte[] bArrA = it.next().a(str);
            if (bArrA != null) {
                return bArrA;
            }
        }
        return null;
    }

    private byte[] b(com.bytedance.sdk.component.d.c.c cVar, String str) {
        com.bytedance.sdk.component.d.c cVarC = cVar.s().c(cVar.t());
        if (cVarC == null) {
            return null;
        }
        return cVarC.a(str);
    }

    @Override // com.bytedance.sdk.component.d.d.i
    public String a() {
        return "disk_cache";
    }

    @Override // com.bytedance.sdk.component.d.d.i
    public void a(com.bytedance.sdk.component.d.c.c cVar) {
        String strJ = cVar.j();
        byte[] bArrA = (cVar.u() || cVar.t().f()) ? a(cVar, strJ) : b(cVar, strJ);
        if (bArrA == null) {
            cVar.a(new k());
        } else {
            cVar.a(new b(bArrA, null));
            cVar.s().b(cVar.t()).a(strJ, bArrA);
        }
    }
}

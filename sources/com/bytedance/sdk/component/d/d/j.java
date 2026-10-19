package com.bytedance.sdk.component.d.d;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.d.q;
import com.bytedance.sdk.component.d.u;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: MemoryCacheVisitor.java */
/* JADX INFO: loaded from: classes2.dex */
public class j extends a {
    private Bitmap b(com.bytedance.sdk.component.d.c.c cVar) {
        Collection<q> collectionA = cVar.s().a();
        Bitmap bitmapA = null;
        if (collectionA == null) {
            return null;
        }
        Iterator<q> it = collectionA.iterator();
        while (it.hasNext() && (bitmapA = it.next().a(cVar.e())) == null) {
        }
        return bitmapA;
    }

    private Bitmap c(com.bytedance.sdk.component.d.c.c cVar) {
        return cVar.s().a(cVar.t()).a(cVar.e());
    }

    @Override // com.bytedance.sdk.component.d.d.i
    public String a() {
        return "memory_cache";
    }

    @Override // com.bytedance.sdk.component.d.d.i
    public void a(com.bytedance.sdk.component.d.c.c cVar) {
        u uVarL = cVar.l();
        Bitmap bitmapB = (uVarL == u.BITMAP || uVarL == u.AUTO) ? (cVar.u() || cVar.t().f()) ? b(cVar) : c(cVar) : null;
        if (bitmapB == null) {
            cVar.a(new l());
        } else {
            cVar.a(new m(bitmapB, null, false));
        }
    }
}

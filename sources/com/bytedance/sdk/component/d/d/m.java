package com.bytedance.sdk.component.d.d;

import com.bytedance.sdk.component.d.o;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: SuccessVisitor.java */
/* JADX INFO: loaded from: classes2.dex */
public class m<T> extends a {
    private T a;
    private com.bytedance.sdk.component.d.f b;
    private boolean c;

    public m(T t, com.bytedance.sdk.component.d.f fVar, boolean z) {
        this.a = t;
        this.b = fVar;
        this.c = z;
    }

    private Map<String, String> b() {
        com.bytedance.sdk.component.d.f fVar = this.b;
        if (fVar != null) {
            return fVar.e();
        }
        return null;
    }

    private void b(com.bytedance.sdk.component.d.c.c cVar) {
        o oVarI = cVar.i();
        if (oVarI != null) {
            oVarI.a(new com.bytedance.sdk.component.d.c.d().a(cVar, this.a, b(), this.c));
        }
    }

    @Override // com.bytedance.sdk.component.d.d.i
    public String a() {
        return "success";
    }

    @Override // com.bytedance.sdk.component.d.d.i
    public void a(com.bytedance.sdk.component.d.c.c cVar) {
        String strV = cVar.v();
        Map<String, List<com.bytedance.sdk.component.d.c.c>> mapG = cVar.s().g();
        List<com.bytedance.sdk.component.d.c.c> list = mapG.get(strV);
        if (list == null) {
            b(cVar);
            return;
        }
        synchronized (list) {
            Iterator<com.bytedance.sdk.component.d.c.c> it = list.iterator();
            while (it.hasNext()) {
                b(it.next());
            }
            list.clear();
            mapG.remove(strV);
        }
    }
}

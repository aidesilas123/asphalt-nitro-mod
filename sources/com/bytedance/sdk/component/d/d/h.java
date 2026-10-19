package com.bytedance.sdk.component.d.d;

import com.bytedance.sdk.component.d.o;
import com.json.o2;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: FailVisitor.java */
/* JADX INFO: loaded from: classes2.dex */
public class h extends a {
    private Throwable a;
    private int b;
    private String c;

    public h(int i, String str, Throwable th) {
        this.b = i;
        this.c = str;
        this.a = th;
    }

    private void b(com.bytedance.sdk.component.d.c.c cVar) {
        o oVarI = cVar.i();
        if (oVarI != null) {
            oVarI.a(this.b, this.c, this.a);
        }
    }

    @Override // com.bytedance.sdk.component.d.d.i
    public String a() {
        return o2.h.t;
    }

    @Override // com.bytedance.sdk.component.d.d.i
    public void a(com.bytedance.sdk.component.d.c.c cVar) {
        cVar.a(new com.bytedance.sdk.component.d.c.a(this.b, this.c, this.a));
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

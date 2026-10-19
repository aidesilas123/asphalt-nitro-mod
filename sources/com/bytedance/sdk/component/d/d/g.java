package com.bytedance.sdk.component.d.d;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: DuplicateRequestCheckVisitor.java */
/* JADX INFO: loaded from: classes2.dex */
public class g extends a {
    @Override // com.bytedance.sdk.component.d.d.i
    public String a() {
        return "check_duplicate";
    }

    @Override // com.bytedance.sdk.component.d.d.i
    public void a(com.bytedance.sdk.component.d.c.c cVar) {
        List<com.bytedance.sdk.component.d.c.c> linkedList;
        String strV = cVar.v();
        Map<String, List<com.bytedance.sdk.component.d.c.c>> mapG = cVar.s().g();
        synchronized (mapG) {
            linkedList = mapG.get(strV);
            if (linkedList == null) {
                linkedList = new LinkedList<>();
            }
        }
        synchronized (linkedList) {
            linkedList.add(cVar);
            mapG.put(strV, linkedList);
            if (linkedList.size() <= 1) {
                cVar.a(new d());
            }
        }
    }
}

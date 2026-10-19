package com.bytedance.sdk.component.d.d;

import android.text.TextUtils;

/* JADX INFO: compiled from: CacheKeyVisitor.java */
/* JADX INFO: loaded from: classes2.dex */
public class c extends a {
    @Override // com.bytedance.sdk.component.d.d.i
    public String a() {
        return "generate_key";
    }

    @Override // com.bytedance.sdk.component.d.d.i
    public void a(com.bytedance.sdk.component.d.c.c cVar) {
        if (TextUtils.isEmpty(cVar.e())) {
            com.bytedance.sdk.component.d.l lVarE = cVar.s().e();
            cVar.b(lVarE.a(cVar));
            cVar.a(lVarE.b(cVar));
        }
        cVar.a(new g());
    }
}

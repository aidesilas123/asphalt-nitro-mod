package com.bytedance.sdk.component.b.a.a.a;

import android.text.TextUtils;
import com.bytedance.sdk.component.b.a.k;
import com.bytedance.sdk.component.b.a.m;

/* JADX INFO: compiled from: NetClient.java */
/* JADX INFO: loaded from: classes2.dex */
public class c extends k {
    public d h;

    public c(k.a aVar) {
        super(aVar);
        this.h = new d();
    }

    @Override // com.bytedance.sdk.component.b.a.k
    public com.bytedance.sdk.component.b.a.b a(m mVar) {
        mVar.a(this);
        if (mVar.b() == null || mVar.b().a() == null || TextUtils.isEmpty(mVar.b().a().toString())) {
            return null;
        }
        a aVar = new a(mVar, this.h);
        this.h.c().add(aVar);
        return aVar;
    }

    @Override // com.bytedance.sdk.component.b.a.k
    public com.bytedance.sdk.component.b.a.d a() {
        return this.h;
    }
}

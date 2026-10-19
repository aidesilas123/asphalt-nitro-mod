package com.bytedance.sdk.component.b.a.a.a;

import com.bytedance.sdk.component.b.a.h;
import com.bytedance.sdk.component.b.a.m;
import com.bytedance.sdk.component.b.a.o;
import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: NetChain.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements h.a {
    List<h> a;
    m b;
    int c = 0;

    b(List<h> list, m mVar) {
        this.a = list;
        this.b = mVar;
    }

    @Override // com.bytedance.sdk.component.b.a.h.a
    public m a() {
        return this.b;
    }

    @Override // com.bytedance.sdk.component.b.a.h.a
    public o a(m mVar) throws IOException {
        this.b = mVar;
        int i = this.c + 1;
        this.c = i;
        if (i >= this.a.size()) {
            return null;
        }
        return this.a.get(this.c).a(this);
    }
}

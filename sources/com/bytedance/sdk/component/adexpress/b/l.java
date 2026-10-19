package com.bytedance.sdk.component.adexpress.b;

import com.bytedance.sdk.component.adexpress.b.j;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: RenderRealChain.java */
/* JADX INFO: loaded from: classes.dex */
public class l implements j.a {
    o a;
    private List<j> b;
    private i c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AtomicBoolean f669d = new AtomicBoolean(false);

    public l(List<j> list, i iVar) {
        this.b = list;
        this.c = iVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.b.j.a
    public void a() {
        this.c.a();
        Iterator<j> it = this.b.iterator();
        while (it.hasNext() && !it.next().a(this)) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.b.j.a
    public void a(j jVar) {
        int iIndexOf = this.b.indexOf(jVar);
        if (iIndexOf < 0) {
            return;
        }
        do {
            iIndexOf++;
            if (iIndexOf >= this.b.size()) {
                return;
            }
        } while (!this.b.get(iIndexOf).a(this));
    }

    @Override // com.bytedance.sdk.component.adexpress.b.j.a
    public void a(o oVar) {
        this.a = oVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.b.j.a
    public void a(boolean z) {
        this.f669d.getAndSet(z);
    }

    @Override // com.bytedance.sdk.component.adexpress.b.j.a
    public o b() {
        return this.a;
    }

    @Override // com.bytedance.sdk.component.adexpress.b.j.a
    public boolean b(j jVar) {
        int iIndexOf = this.b.indexOf(jVar);
        return iIndexOf < this.b.size() - 1 && iIndexOf >= 0;
    }

    @Override // com.bytedance.sdk.component.adexpress.b.j.a
    public boolean c() {
        return this.f669d.get();
    }
}

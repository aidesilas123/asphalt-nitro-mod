package com.bykv.vk.openvk.preload.b;

import com.bykv.vk.openvk.preload.b.l;
import java.util.List;

/* JADX INFO: compiled from: BranchInterceptor.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a<IN, OUT> extends l<IN, OUT> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bykv.vk.openvk.preload.b.d
    public final Object a(b<OUT> bVar, IN in) throws Exception {
        new m(bVar);
        String strA = a(in);
        l.a aVar = this.f555g.get(strA);
        if (aVar == null) {
            throw new IllegalArgumentException("can not found branch, branch name is：".concat(String.valueOf(strA)));
        }
        List<h> list = aVar.a;
        Object objA = c.a(list, ((i) bVar).a, this).a(in);
        return !l.a(list) ? objA : bVar.a(objA);
    }

    protected abstract String a(IN in);
}

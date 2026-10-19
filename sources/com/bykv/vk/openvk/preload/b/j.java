package com.bykv.vk.openvk.preload.b;

import com.bykv.vk.openvk.preload.b.i;
import com.bykv.vk.openvk.preload.b.l;
import java.util.List;

/* JADX INFO: compiled from: RetryBranchInterceptor.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class j<IN, OUT> extends l<IN, OUT> {
    private String h;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bykv.vk.openvk.preload.b.d
    public final Object a(b<OUT> bVar, IN in) throws Throwable {
        new m(bVar);
        String strA = a(in);
        this.h = strA;
        l.a aVar = this.f555g.get(strA);
        while (aVar != null) {
            List<h> list = aVar.a;
            try {
                Object objA = c.a(list, bVar.a, this).a(in);
                return !l.a(list) ? objA : bVar.a(objA);
            } catch (i.a e2) {
                Throwable cause = e2.getCause();
                new m(bVar);
                String strA2 = a(in, cause, this.h);
                this.h = strA2;
                aVar = this.f555g.get(strA2);
            } catch (Throwable th) {
                new m(bVar);
                String strA3 = a(in, th, this.h);
                this.h = strA3;
                aVar = this.f555g.get(strA3);
            }
        }
        throw new IllegalArgumentException("can not found branch，branch name is：" + this.h);
    }

    protected abstract String a(IN in);

    protected abstract String a(IN in, Throwable th, String str);
}

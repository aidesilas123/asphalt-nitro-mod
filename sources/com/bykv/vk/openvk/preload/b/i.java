package com.bykv.vk.openvk.preload.b;

import java.util.List;

/* JADX INFO: compiled from: RealInterceptorChain.java */
/* JADX INFO: loaded from: classes.dex */
final class i implements b {
    protected e a;
    private int b;
    private List<h> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f553d;

    /* JADX INFO: compiled from: RealInterceptorChain.java */
    static final class a extends Exception {
        a(Throwable th) {
            super(th);
        }
    }

    i(List<h> list, int i, e eVar, d dVar) {
        this.c = list;
        this.b = i;
        this.a = eVar;
        this.f553d = dVar;
    }

    private d c(Class cls) {
        d dVar = this.f553d;
        while (dVar != null && dVar.getClass() != cls) {
            dVar = dVar.a;
        }
        return dVar;
    }

    @Override // com.bykv.vk.openvk.preload.b.b
    public final Object a(Class cls) {
        d dVarC = c(cls);
        if (dVarC != null) {
            return dVarC.b;
        }
        throw new IllegalArgumentException("can not find pre Interceptor , class:".concat(String.valueOf(cls)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bykv.vk.openvk.preload.b.b
    public final Object a(Object obj) throws Exception {
        d dVar = this.f553d;
        if (dVar != null) {
            dVar.c = obj;
            com.bykv.vk.openvk.preload.b.b.a aVar = dVar.f546d;
            if (aVar != null) {
                aVar.b(dVar.f547e, dVar);
            }
        }
        if (this.b >= this.c.size()) {
            return obj;
        }
        h hVar = this.c.get(this.b);
        Class<? extends d> cls = hVar.a;
        d dVar2 = (d) this.a.a(cls);
        if (dVar2 == null) {
            throw new IllegalArgumentException("interceptor == null , index = " + obj + " , class: " + cls);
        }
        com.bykv.vk.openvk.preload.b.b.a aVar2 = hVar.b;
        i iVar = new i(this.c, this.b + 1, this.a, dVar2);
        dVar2.a(iVar, this.f553d, obj, aVar2, hVar.c);
        com.bykv.vk.openvk.preload.b.b.a aVar3 = dVar2.f546d;
        if (aVar3 != null) {
            aVar3.a(dVar2.f547e, dVar2);
        }
        try {
            Object objA = dVar2.a(iVar, obj);
            com.bykv.vk.openvk.preload.b.b.a aVar4 = dVar2.f546d;
            if (aVar4 != null) {
                aVar4.c(dVar2.f547e, dVar2);
            }
            return objA;
        } catch (a e2) {
            Throwable cause = e2.getCause();
            if (dVar2.f546d != null) {
                dVar2.f546d.b(dVar2.f547e, dVar2, cause);
            }
            throw e2;
        } catch (Throwable th) {
            if (dVar2.f546d != null) {
                dVar2.f546d.a(dVar2.f547e, dVar2, th);
            }
            throw new a(th);
        }
    }

    @Override // com.bykv.vk.openvk.preload.b.b
    public final Object b(Class cls) {
        d dVarC = c(cls);
        if (dVarC != null) {
            return dVarC.c;
        }
        throw new IllegalArgumentException("can not find pre Interceptor , class:".concat(String.valueOf(cls)));
    }
}

package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.q;
import com.bykv.vk.openvk.preload.a.t;
import com.bykv.vk.openvk.preload.a.u;
import java.io.IOException;

/* JADX INFO: compiled from: TreeTypeAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public final class l<T> extends t<T> {
    final com.bykv.vk.openvk.preload.a.f a;
    private final q<T> b;
    private final com.bykv.vk.openvk.preload.a.j<T> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.c.a<T> f494d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private t<T> f497g;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final l<T>.a f496f = new a(this, 0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final u f495e = null;

    /* JADX INFO: compiled from: TreeTypeAdapter.java */
    final class a {
        private a() {
        }

        /* synthetic */ a(l lVar, byte b) {
            this();
        }
    }

    public l(q<T> qVar, com.bykv.vk.openvk.preload.a.j<T> jVar, com.bykv.vk.openvk.preload.a.f fVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        this.b = qVar;
        this.c = jVar;
        this.a = fVar;
        this.f494d = aVar;
    }

    private t<T> b() {
        t<T> tVar = this.f497g;
        if (tVar != null) {
            return tVar;
        }
        t<T> tVarA = this.a.a(this.f495e, this.f494d);
        this.f497g = tVarA;
        return tVarA;
    }

    @Override // com.bykv.vk.openvk.preload.a.t
    public final T a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
        if (this.c == null) {
            return b().a(aVar);
        }
        if (com.bykv.vk.openvk.preload.a.b.k.a(aVar) instanceof com.bykv.vk.openvk.preload.a.m) {
            return null;
        }
        return this.c.a();
    }

    @Override // com.bykv.vk.openvk.preload.a.t
    public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t) throws IOException {
        q<T> qVar = this.b;
        if (qVar == null) {
            b().a(cVar, t);
        } else if (t == null) {
            cVar.e();
        } else {
            com.bykv.vk.openvk.preload.a.b.k.a(qVar.a(), cVar);
        }
    }
}

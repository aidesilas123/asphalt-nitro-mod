package com.mbridge.msdk.e.a;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: RequestQueue.java */
/* JADX INFO: loaded from: classes4.dex */
public final class n {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.mbridge.msdk.e.a.a f6960e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final h f6961f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final q f6962g;
    private final i[] h;
    private b i;
    private final AtomicInteger a = new AtomicInteger();
    private final Set<m<?>> b = new HashSet();
    private final PriorityBlockingQueue<m<?>> c = new PriorityBlockingQueue<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PriorityBlockingQueue<m<?>> f6959d = new PriorityBlockingQueue<>();
    private final List<a> j = new ArrayList();

    /* JADX INFO: compiled from: RequestQueue.java */
    public interface a {
        void a(m<?> mVar, int i);
    }

    public n(h hVar, q qVar, int i, com.mbridge.msdk.e.a.a aVar) {
        this.f6960e = aVar;
        this.f6961f = hVar;
        this.h = new i[i];
        this.f6962g = qVar;
    }

    public final <T> m<T> a(m<T> mVar) {
        mVar.a(this);
        synchronized (this.b) {
            this.b.add(mVar);
        }
        mVar.b(this.a.incrementAndGet());
        a(mVar, 0);
        if (mVar.o()) {
            this.c.add(mVar);
        } else {
            c(mVar);
        }
        return mVar;
    }

    public final void a() {
        b bVar = this.i;
        if (bVar != null) {
            bVar.a();
        }
        for (i iVar : this.h) {
            if (iVar != null) {
                iVar.a();
            }
        }
        b bVar2 = new b(this.c, this.f6959d, this.f6960e, this.f6962g);
        this.i = bVar2;
        bVar2.start();
        for (int i = 0; i < this.h.length; i++) {
            i iVar2 = new i(this.f6959d, this.f6961f, this.f6960e, this.f6962g);
            this.h[i] = iVar2;
            iVar2.start();
        }
    }

    final void a(m<?> mVar, int i) {
        synchronized (this.j) {
            Iterator<a> it = this.j.iterator();
            while (it.hasNext()) {
                it.next().a(mVar, i);
            }
        }
    }

    final <T> void b(m<T> mVar) {
        synchronized (this.b) {
            this.b.remove(mVar);
        }
        a(mVar, 5);
    }

    final <T> void c(m<T> mVar) {
        this.f6959d.add(mVar);
    }
}

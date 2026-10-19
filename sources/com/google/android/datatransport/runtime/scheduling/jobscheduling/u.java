package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.p.b;
import com.google.android.datatransport.runtime.scheduling.persistence.j0;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: WorkInitializer.java */
/* JADX INFO: loaded from: classes2.dex */
public class u {
    private final Executor a;
    private final j0 b;
    private final v c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.p.b f3063d;

    u(Executor executor, j0 j0Var, v vVar, com.google.android.datatransport.runtime.p.b bVar) {
        this.a = executor;
        this.b = j0Var;
        this.c = vVar;
        this.f3063d = bVar;
    }

    private /* synthetic */ Object b() {
        Iterator<TransportContext> it = this.b.C().iterator();
        while (it.hasNext()) {
            this.c.a(it.next(), 1);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void e() {
        this.f3063d.a(new b.a() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.m
            @Override // com.google.android.datatransport.runtime.p.b.a
            public final Object execute() {
                this.a.c();
                return null;
            }
        });
    }

    public void a() {
        this.a.execute(new Runnable() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.n
            @Override // java.lang.Runnable
            public final void run() {
                this.a.e();
            }
        });
    }

    public /* synthetic */ Object c() {
        b();
        return null;
    }
}

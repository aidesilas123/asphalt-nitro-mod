package com.mbridge.msdk.foundation.same.net;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ac;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: RequestQueue.java */
/* JADX INFO: loaded from: classes4.dex */
public class k {
    private static final String a = "k";
    private final Context b;
    private final c c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ExecutorService f7161e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.mbridge.msdk.foundation.same.net.stack.b f7163g;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set<j> f7160d = new HashSet();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AtomicInteger f7162f = new AtomicInteger();

    public k(Context context) {
        a();
        this.b = context.getApplicationContext();
        this.c = new d(new Handler(Looper.getMainLooper()));
    }

    public k(Context context, com.mbridge.msdk.foundation.same.net.stack.b bVar) {
        this.f7163g = bVar;
        a();
        this.b = context.getApplicationContext();
        this.c = new d(new Handler(Looper.getMainLooper()));
    }

    private void a() {
        ac acVarA = ac.a();
        if (!acVarA.a("c_v_r_q_t", true)) {
            this.f7161e = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadPoolExecutor.DiscardPolicy());
            return;
        }
        try {
            this.f7161e = new ThreadPoolExecutor(acVarA.a("v_r_q_c_s", 10), acVarA.a("v_r_q_m_s", 25), acVarA.a("v_r_q_c_t", 15), TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadPoolExecutor.DiscardPolicy());
        } catch (Exception unused) {
            this.f7161e = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadPoolExecutor.DiscardPolicy());
        }
    }

    public final void a(final j jVar) {
        jVar.a(this);
        synchronized (this) {
            this.f7160d.add(jVar);
        }
        jVar.a(this.f7162f.incrementAndGet());
        aa.b(a, "add-to-queue request=" + jVar.b());
        this.f7161e.execute(new Runnable() { // from class: com.mbridge.msdk.foundation.same.net.k.1
            @Override // java.lang.Runnable
            public final void run() {
                if (k.this.f7163g == null) {
                    new i(k.this.c).a(jVar);
                } else {
                    new i(k.this.c, k.this.f7163g).a(jVar);
                }
            }
        });
    }

    final void b(j jVar) {
        synchronized (this) {
            this.f7160d.remove(jVar);
        }
    }
}

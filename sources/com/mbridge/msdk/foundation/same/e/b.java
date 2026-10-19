package com.mbridge.msdk.foundation.same.e;

import android.content.Context;
import com.mbridge.msdk.foundation.same.e.a;
import com.mbridge.msdk.foundation.tools.ac;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: CommonTaskLoader.java */
/* JADX INFO: loaded from: classes4.dex */
public final class b {
    ThreadPoolExecutor a;
    HashMap<Long, a> b;
    WeakReference<Context> c;

    public b(Context context) {
        if (ac.a().a("c_t_l_t_p", true)) {
            this.a = c.a();
        } else {
            if (ac.a().a("c_t_p_t_l", true)) {
                int iAvailableProcessors = (Runtime.getRuntime().availableProcessors() * 2) + 1;
                this.a = new ThreadPoolExecutor(iAvailableProcessors, iAvailableProcessors, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadPoolExecutor.DiscardPolicy());
            } else {
                this.a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadPoolExecutor.DiscardPolicy());
            }
            this.a.allowCoreThreadTimeOut(true);
        }
        this.b = new HashMap<>();
        this.c = new WeakReference<>(context);
    }

    public b(Context context, int i) {
        if (ac.a().a("c_t_l_t_p", true)) {
            this.a = c.a();
        } else {
            if (i == 0) {
                this.a = new ThreadPoolExecutor(1, 5, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadPoolExecutor.DiscardPolicy());
            } else {
                this.a = new ThreadPoolExecutor(i, (i * 2) + 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadPoolExecutor.DiscardPolicy());
            }
            this.a.allowCoreThreadTimeOut(true);
        }
        this.b = new HashMap<>();
        this.c = new WeakReference<>(context);
    }

    private synchronized void b(final a aVar, final a.InterfaceC0404a interfaceC0404a) {
        this.b.put(Long.valueOf(a.b), aVar);
        aVar.f7122d = new a.InterfaceC0404a() { // from class: com.mbridge.msdk.foundation.same.e.b.1
            @Override // com.mbridge.msdk.foundation.same.e.a.InterfaceC0404a
            public final void a(a.b bVar) {
                if (bVar == a.b.CANCEL || bVar == a.b.FINISH) {
                    b.this.b.remove(Long.valueOf(a.b));
                } else if (bVar == a.b.RUNNING && b.this.c.get() == null) {
                    b.this.a();
                }
                a.InterfaceC0404a interfaceC0404a2 = interfaceC0404a;
                if (interfaceC0404a2 != null) {
                    interfaceC0404a2.a(bVar);
                }
            }
        };
    }

    public final synchronized void a() {
        try {
            Iterator<Map.Entry<Long, a>> it = this.b.entrySet().iterator();
            while (it.hasNext()) {
                it.next().getValue().d();
            }
            this.b.clear();
        } catch (Exception unused) {
        }
    }

    public final void a(a aVar) {
        b(aVar, null);
        this.a.execute(aVar);
    }

    public final void a(a aVar, a.InterfaceC0404a interfaceC0404a) {
        b(aVar, interfaceC0404a);
        this.a.execute(aVar);
    }
}

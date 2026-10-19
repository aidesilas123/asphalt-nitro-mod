package com.bytedance.sdk.component.e.a;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.q;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: EventMultiUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {
    public static final d a = new d();

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        if (i == 0) {
            com.bytedance.sdk.component.e.a.b.b.a.a();
        } else if (i == 1) {
            com.bytedance.sdk.component.e.a.b.b.b.a();
        }
    }

    private void a(a aVar) {
        Executor executorF;
        if (Looper.myLooper() != Looper.getMainLooper() && com.bytedance.sdk.component.e.a.c.a.b()) {
            com.bytedance.sdk.component.e.a.c.a.a();
            return;
        }
        f fVarD = aVar.d();
        if (fVarD == null || !com.bytedance.sdk.component.e.a.c.a.b() || (executorF = fVarD.f()) == null) {
            return;
        }
        executorF.execute(new Runnable() { // from class: com.bytedance.sdk.component.e.a.d.1
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.component.e.a.c.a.a();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.bytedance.sdk.component.e.a.d.a aVar, int i) {
        if (i == 0) {
            com.bytedance.sdk.component.e.a.b.b.a.a(aVar);
        } else if (i == 1) {
            com.bytedance.sdk.component.e.a.b.b.b.a(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i) {
        if (i == 0) {
            com.bytedance.sdk.component.e.a.b.b.a.a(str);
        } else if (i == 1) {
            com.bytedance.sdk.component.e.a.b.b.b.a(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, List<String> list, boolean z, int i) {
        if (i == 0) {
            com.bytedance.sdk.component.e.a.b.b.a.a(str, list, z);
        } else if (i == 1) {
            com.bytedance.sdk.component.e.a.b.b.b.a(str, list, z);
        }
    }

    private boolean a(Context context, f fVar) {
        if (context == null || fVar == null) {
            return false;
        }
        if (fVar.g() == 2) {
            return true;
        }
        if (fVar.g() == 1) {
            return fVar.o();
        }
        try {
            return q.a(context);
        } catch (Throwable th) {
            com.bytedance.sdk.component.e.a.c.c.d(th.getMessage());
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        if (i == 0) {
            com.bytedance.sdk.component.e.a.b.b.a.b();
        } else if (i == 1) {
            com.bytedance.sdk.component.e.a.b.b.b.b();
        }
    }

    private void b(a aVar, Context context) {
        c.a(context, "context == null");
        c.a(aVar, "AdLogConfig == null");
        c.a(aVar.d(), "AdLogDepend ==null");
    }

    private void b(final com.bytedance.sdk.component.e.a.d.a aVar) {
        final f fVarP = i.g().p();
        if (aVar == null || fVarP == null || i.g().f() == null || fVarP.e() == null) {
            return;
        }
        if (!i.g().b()) {
            i.g().a(aVar);
            return;
        }
        boolean zA = a(i.g().f(), fVarP);
        com.bytedance.sdk.component.e.a.c.c.a("dispatchEvent mainProcess:" + zA);
        if (zA) {
            i.g().a(aVar);
            return;
        }
        com.bytedance.sdk.component.e.a.c.c.a("sub thread dispatch:" + d());
        if (d()) {
            fVarP.e().execute(new com.bytedance.sdk.component.e.a.e.e("dispatchEvent") { // from class: com.bytedance.sdk.component.e.a.d.4
                @Override // java.lang.Runnable
                public void run() {
                    d.this.a(aVar, fVarP.g());
                }
            });
        } else {
            a(aVar, fVarP.g());
        }
    }

    private boolean d() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }

    public void a() {
        com.bytedance.sdk.component.e.a.c.c.a("EventMultiUtils start");
        final f fVarP = i.g().p();
        if (fVarP == null || i.g().f() == null || fVarP.e() == null) {
            return;
        }
        if (!i.g().b()) {
            i.g().i();
            return;
        }
        if (a(i.g().f(), fVarP)) {
            i.g().i();
        } else if (d()) {
            fVarP.e().execute(new com.bytedance.sdk.component.e.a.e.e("start") { // from class: com.bytedance.sdk.component.e.a.d.2
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.component.e.a.c.c.a("TTExecutor start");
                    d.this.a(fVarP.g());
                }
            });
        } else {
            a(fVarP.g());
        }
    }

    public void a(a aVar, Context context) {
        b(aVar, context);
        i.g().a(context);
        i.g().a(aVar.i());
        i.g().b(aVar.f());
        i.g().c(aVar.g());
        i.g().a(aVar.b());
        i.g().d(aVar.h());
        i.g().e(aVar.e());
        i.g().a(aVar.a() == null ? com.bytedance.sdk.component.e.a.a.a.e.a : aVar.a());
        i.g().b(aVar.j());
        i.g().a(aVar.d());
        i.g().a(aVar.c());
        com.bytedance.sdk.component.e.a.b.c.c.a(aVar.l());
        com.bytedance.sdk.component.e.a.b.c.c.b(aVar.k());
        a(aVar);
    }

    public void a(com.bytedance.sdk.component.e.a.d.a aVar) {
        b(aVar);
    }

    public void a(final String str) {
        final f fVarP = i.g().p();
        if (fVarP == null || i.g().f() == null || fVarP.e() == null || !fVarP.i()) {
            return;
        }
        if (fVarP.g() == 0 && TextUtils.isEmpty(str)) {
            return;
        }
        if (!i.g().b() || a(i.g().f(), fVarP)) {
            i.g().a(str);
        } else if (d()) {
            fVarP.e().execute(new com.bytedance.sdk.component.e.a.e.e("trackFailed") { // from class: com.bytedance.sdk.component.e.a.d.6
                @Override // java.lang.Runnable
                public void run() {
                    d.this.a(str, fVarP.g());
                }
            });
        } else {
            a(str, fVarP.g());
        }
    }

    public void a(final String str, final List<String> list, final boolean z, Map<String, String> map) {
        final f fVarP = i.g().p();
        if (fVarP == null || i.g().f() == null || fVarP.e() == null || !fVarP.i()) {
            return;
        }
        if (fVarP.g() == 1) {
            if (list == null || list.isEmpty()) {
                return;
            }
        } else if (fVarP.g() == 0 && (TextUtils.isEmpty(str) || list == null || list.isEmpty())) {
            return;
        }
        if (!i.g().b() || a(i.g().f(), fVarP)) {
            i.g().a(str, list, z, map);
        } else if (d()) {
            fVarP.e().execute(new com.bytedance.sdk.component.e.a.e.e("trackFailed") { // from class: com.bytedance.sdk.component.e.a.d.5
                @Override // java.lang.Runnable
                public void run() {
                    d.this.a(str, (List<String>) list, z, fVarP.g());
                }
            });
        } else {
            a(str, list, z, fVarP.g());
        }
    }

    public void a(boolean z) {
        i.g().a(z);
    }

    public void b() {
        final f fVarP = i.g().p();
        if (fVarP == null || i.g().f() == null || fVarP.e() == null) {
            return;
        }
        if (!i.g().b()) {
            i.g().k();
            return;
        }
        if (a(i.g().f(), fVarP)) {
            i.g().k();
        } else if (d()) {
            fVarP.e().execute(new com.bytedance.sdk.component.e.a.e.e("stop") { // from class: com.bytedance.sdk.component.e.a.d.3
                @Override // java.lang.Runnable
                public void run() {
                    d.this.b(fVarP.g());
                }
            });
        } else {
            b(fVarP.g());
        }
    }

    public void c() {
    }
}

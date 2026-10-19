package com.iab.omid.library.kidoznet.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.kidoznet.processor.a;
import com.iab.omid.library.kidoznet.utils.f;
import com.iab.omid.library.kidoznet.utils.h;
import com.iab.omid.library.kidoznet.walking.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class TreeWalker implements a.InterfaceC0320a {
    private static TreeWalker i = new TreeWalker();
    private static Handler j = new Handler(Looper.getMainLooper());
    private static Handler k = null;
    private static final Runnable l = new b();
    private static final Runnable m = new c();
    private int b;
    private long h;
    private List<TreeWalkerTimeLogger> a = new ArrayList();
    private boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<com.iab.omid.library.kidoznet.weakreference.a> f5003d = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.iab.omid.library.kidoznet.walking.a f5005f = new com.iab.omid.library.kidoznet.walking.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.iab.omid.library.kidoznet.processor.b f5004e = new com.iab.omid.library.kidoznet.processor.b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.iab.omid.library.kidoznet.walking.b f5006g = new com.iab.omid.library.kidoznet.walking.b(new com.iab.omid.library.kidoznet.walking.async.c());

    public interface TreeWalkerNanoTimeLogger extends TreeWalkerTimeLogger {
        void onTreeProcessedNano(int i, long j);
    }

    public interface TreeWalkerTimeLogger {
        void onTreeProcessed(int i, long j);
    }

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TreeWalker.this.f5006g.b();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TreeWalker.getInstance().l();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TreeWalker.k != null) {
                TreeWalker.k.post(TreeWalker.l);
                TreeWalker.k.postDelayed(TreeWalker.m, 200L);
            }
        }
    }

    TreeWalker() {
    }

    private void a(long j2) {
        if (this.a.size() > 0) {
            for (TreeWalkerTimeLogger treeWalkerTimeLogger : this.a) {
                treeWalkerTimeLogger.onTreeProcessed(this.b, TimeUnit.NANOSECONDS.toMillis(j2));
                if (treeWalkerTimeLogger instanceof TreeWalkerNanoTimeLogger) {
                    ((TreeWalkerNanoTimeLogger) treeWalkerTimeLogger).onTreeProcessedNano(this.b, j2);
                }
            }
        }
    }

    private void a(View view, com.iab.omid.library.kidoznet.processor.a aVar, JSONObject jSONObject, com.iab.omid.library.kidoznet.walking.c cVar, boolean z) {
        aVar.a(view, jSONObject, this, cVar == com.iab.omid.library.kidoznet.walking.c.PARENT_VIEW, z);
    }

    private void a(String str, View view, JSONObject jSONObject) {
        com.iab.omid.library.kidoznet.processor.a aVarB = this.f5004e.b();
        String strB = this.f5005f.b(str);
        if (strB != null) {
            JSONObject jSONObjectA = aVarB.a(view);
            com.iab.omid.library.kidoznet.utils.c.a(jSONObjectA, str);
            com.iab.omid.library.kidoznet.utils.c.b(jSONObjectA, strB);
            com.iab.omid.library.kidoznet.utils.c.a(jSONObject, jSONObjectA);
        }
    }

    private boolean a(View view, JSONObject jSONObject) {
        a.C0321a c0321aC = this.f5005f.c(view);
        if (c0321aC == null) {
            return false;
        }
        com.iab.omid.library.kidoznet.utils.c.a(jSONObject, c0321aC);
        return true;
    }

    private boolean b(View view, JSONObject jSONObject) {
        String strD = this.f5005f.d(view);
        if (strD == null) {
            return false;
        }
        com.iab.omid.library.kidoznet.utils.c.a(jSONObject, strD);
        com.iab.omid.library.kidoznet.utils.c.a(jSONObject, Boolean.valueOf(this.f5005f.f(view)));
        this.f5005f.d();
        return true;
    }

    private void d() {
        a(f.b() - this.h);
    }

    private void e() {
        this.b = 0;
        this.f5003d.clear();
        this.c = false;
        Iterator<com.iab.omid.library.kidoznet.adsession.a> it = com.iab.omid.library.kidoznet.internal.c.c().a().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().e()) {
                this.c = true;
                break;
            }
        }
        this.h = f.b();
    }

    public static TreeWalker getInstance() {
        return i;
    }

    private void i() {
        if (k == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            k = handler;
            handler.post(l);
            k.postDelayed(m, 200L);
        }
    }

    private void k() {
        Handler handler = k;
        if (handler != null) {
            handler.removeCallbacks(m);
            k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        e();
        f();
        d();
    }

    @Override // com.iab.omid.library.kidoznet.processor.a.InterfaceC0320a
    public void a(View view, com.iab.omid.library.kidoznet.processor.a aVar, JSONObject jSONObject, boolean z) {
        com.iab.omid.library.kidoznet.walking.c cVarE;
        if (h.d(view) && (cVarE = this.f5005f.e(view)) != com.iab.omid.library.kidoznet.walking.c.UNDERLYING_VIEW) {
            JSONObject jSONObjectA = aVar.a(view);
            com.iab.omid.library.kidoznet.utils.c.a(jSONObject, jSONObjectA);
            if (!b(view, jSONObjectA)) {
                boolean z2 = z || a(view, jSONObjectA);
                if (this.c && cVarE == com.iab.omid.library.kidoznet.walking.c.OBSTRUCTION_VIEW && !z2) {
                    this.f5003d.add(new com.iab.omid.library.kidoznet.weakreference.a(view));
                }
                a(view, aVar, jSONObjectA, cVarE, z2);
            }
            this.b++;
        }
    }

    public void addTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.a.contains(treeWalkerTimeLogger)) {
            return;
        }
        this.a.add(treeWalkerTimeLogger);
    }

    @VisibleForTesting
    void f() {
        this.f5005f.e();
        long jB = f.b();
        com.iab.omid.library.kidoznet.processor.a aVarA = this.f5004e.a();
        if (this.f5005f.b().size() > 0) {
            for (String str : this.f5005f.b()) {
                JSONObject jSONObjectA = aVarA.a(null);
                a(str, this.f5005f.a(str), jSONObjectA);
                com.iab.omid.library.kidoznet.utils.c.b(jSONObjectA);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(str);
                this.f5006g.a(jSONObjectA, hashSet, jB);
            }
        }
        if (this.f5005f.c().size() > 0) {
            JSONObject jSONObjectA2 = aVarA.a(null);
            a(null, aVarA, jSONObjectA2, com.iab.omid.library.kidoznet.walking.c.PARENT_VIEW, false);
            com.iab.omid.library.kidoznet.utils.c.b(jSONObjectA2);
            this.f5006g.b(jSONObjectA2, this.f5005f.c(), jB);
            if (this.c) {
                Iterator<com.iab.omid.library.kidoznet.adsession.a> it = com.iab.omid.library.kidoznet.internal.c.c().a().iterator();
                while (it.hasNext()) {
                    it.next().a(this.f5003d);
                }
            }
        } else {
            this.f5006g.b();
        }
        this.f5005f.a();
    }

    public void g() {
        k();
    }

    public void h() {
        i();
    }

    public void j() {
        g();
        this.a.clear();
        j.post(new a());
    }

    public void removeTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.a.contains(treeWalkerTimeLogger)) {
            this.a.remove(treeWalkerTimeLogger);
        }
    }
}

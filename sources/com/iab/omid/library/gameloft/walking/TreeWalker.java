package com.iab.omid.library.gameloft.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.gameloft.c.a;
import com.iab.omid.library.gameloft.d.d;
import com.iab.omid.library.gameloft.d.f;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class TreeWalker implements a.InterfaceC0312a {
    private static TreeWalker a = new TreeWalker();
    private static Handler b = new Handler(Looper.getMainLooper());
    private static Handler c = null;
    private static final Runnable j = new Runnable() { // from class: com.iab.omid.library.gameloft.walking.TreeWalker.2
        @Override // java.lang.Runnable
        public void run() {
            TreeWalker.getInstance().h();
        }
    };
    private static final Runnable k = new Runnable() { // from class: com.iab.omid.library.gameloft.walking.TreeWalker.3
        @Override // java.lang.Runnable
        public void run() {
            if (TreeWalker.c != null) {
                TreeWalker.c.post(TreeWalker.j);
                TreeWalker.c.postDelayed(TreeWalker.k, 200L);
            }
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f4894e;
    private long i;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<TreeWalkerTimeLogger> f4893d = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private a f4896g = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.iab.omid.library.gameloft.c.b f4895f = new com.iab.omid.library.gameloft.c.b();
    private b h = new b(new com.iab.omid.library.gameloft.walking.a.c());

    public interface TreeWalkerNanoTimeLogger extends TreeWalkerTimeLogger {
        void onTreeProcessedNano(int i, long j);
    }

    public interface TreeWalkerTimeLogger {
        void onTreeProcessed(int i, long j);
    }

    TreeWalker() {
    }

    private void a(long j2) {
        if (this.f4893d.size() > 0) {
            for (TreeWalkerTimeLogger treeWalkerTimeLogger : this.f4893d) {
                treeWalkerTimeLogger.onTreeProcessed(this.f4894e, TimeUnit.NANOSECONDS.toMillis(j2));
                if (treeWalkerTimeLogger instanceof TreeWalkerNanoTimeLogger) {
                    ((TreeWalkerNanoTimeLogger) treeWalkerTimeLogger).onTreeProcessedNano(this.f4894e, j2);
                }
            }
        }
    }

    private void a(View view, com.iab.omid.library.gameloft.c.a aVar, JSONObject jSONObject, c cVar) {
        aVar.a(view, jSONObject, this, cVar == c.PARENT_VIEW);
    }

    private void a(String str, View view, JSONObject jSONObject) {
        com.iab.omid.library.gameloft.c.a aVarB = this.f4895f.b();
        String strA = this.f4896g.a(str);
        if (strA != null) {
            JSONObject jSONObjectA = aVarB.a(view);
            com.iab.omid.library.gameloft.d.b.a(jSONObjectA, str);
            com.iab.omid.library.gameloft.d.b.b(jSONObjectA, strA);
            com.iab.omid.library.gameloft.d.b.a(jSONObject, jSONObjectA);
        }
    }

    private boolean a(View view, JSONObject jSONObject) {
        String strA = this.f4896g.a(view);
        if (strA == null) {
            return false;
        }
        com.iab.omid.library.gameloft.d.b.a(jSONObject, strA);
        this.f4896g.e();
        return true;
    }

    private void b(View view, JSONObject jSONObject) {
        ArrayList<String> arrayListB = this.f4896g.b(view);
        if (arrayListB != null) {
            com.iab.omid.library.gameloft.d.b.a(jSONObject, arrayListB);
        }
    }

    public static TreeWalker getInstance() {
        return a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        i();
        d();
        j();
    }

    private void i() {
        this.f4894e = 0;
        this.i = d.a();
    }

    private void j() {
        a(d.a() - this.i);
    }

    private void k() {
        if (c == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            c = handler;
            handler.post(j);
            c.postDelayed(k, 200L);
        }
    }

    private void l() {
        Handler handler = c;
        if (handler != null) {
            handler.removeCallbacks(k);
            c = null;
        }
    }

    public void a() {
        k();
    }

    @Override // com.iab.omid.library.gameloft.c.a.InterfaceC0312a
    public void a(View view, com.iab.omid.library.gameloft.c.a aVar, JSONObject jSONObject) {
        c cVarC;
        if (f.d(view) && (cVarC = this.f4896g.c(view)) != c.UNDERLYING_VIEW) {
            JSONObject jSONObjectA = aVar.a(view);
            com.iab.omid.library.gameloft.d.b.a(jSONObject, jSONObjectA);
            if (!a(view, jSONObjectA)) {
                b(view, jSONObjectA);
                a(view, aVar, jSONObjectA, cVarC);
            }
            this.f4894e++;
        }
    }

    public void addTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f4893d.contains(treeWalkerTimeLogger)) {
            return;
        }
        this.f4893d.add(treeWalkerTimeLogger);
    }

    public void b() {
        c();
        this.f4893d.clear();
        b.post(new Runnable() { // from class: com.iab.omid.library.gameloft.walking.TreeWalker.1
            @Override // java.lang.Runnable
            public void run() {
                TreeWalker.this.h.a();
            }
        });
    }

    public void c() {
        l();
    }

    @VisibleForTesting
    void d() {
        this.f4896g.c();
        long jA = d.a();
        com.iab.omid.library.gameloft.c.a aVarA = this.f4895f.a();
        if (this.f4896g.b().size() > 0) {
            for (String str : this.f4896g.b()) {
                JSONObject jSONObjectA = aVarA.a(null);
                a(str, this.f4896g.b(str), jSONObjectA);
                com.iab.omid.library.gameloft.d.b.a(jSONObjectA);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(str);
                this.h.b(jSONObjectA, hashSet, jA);
            }
        }
        if (this.f4896g.a().size() > 0) {
            JSONObject jSONObjectA2 = aVarA.a(null);
            a(null, aVarA, jSONObjectA2, c.PARENT_VIEW);
            com.iab.omid.library.gameloft.d.b.a(jSONObjectA2);
            this.h.a(jSONObjectA2, this.f4896g.a(), jA);
        } else {
            this.h.a();
        }
        this.f4896g.d();
    }

    public void removeTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f4893d.contains(treeWalkerTimeLogger)) {
            this.f4893d.remove(treeWalkerTimeLogger);
        }
    }
}

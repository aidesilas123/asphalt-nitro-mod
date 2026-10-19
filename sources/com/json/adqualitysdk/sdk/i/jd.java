package com.json.adqualitysdk.sdk.i;

import android.view.View;
import androidx.annotation.MainThread;
import com.ironsource.adqualitysdk.sdk.i.iy.c;
import com.ironsource.adqualitysdk.sdk.i.iy.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class jd {
    private static jd a;
    private List<View> b = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<jh> f5904d = new ArrayList();
    private List<View> c = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ij f5905e = new a();

    final class a implements ij {
        a() {
        }

        @Override // com.json.adqualitysdk.sdk.i.ij
        /* JADX INFO: renamed from: ﻐ */
        public final void mo571() {
            List<View> listM939 = jp.m939();
            jd.this.c.clear();
            jd.this.c.addAll(jd.this.b);
            for (int i = 0; i < listM939.size(); i++) {
                View view = listM939.get(i);
                jd.this.c.remove(view);
                if (!jd.this.b.contains(view)) {
                    jd.this.b.add(view);
                    jd.this.f(view);
                }
            }
            for (int i2 = 0; i2 < jd.this.c.size(); i2++) {
                View view2 = (View) jd.this.c.get(i2);
                jd.this.b.remove(view2);
                jd.this.c(view2);
            }
            jd.this.c.clear();
        }
    }

    final class b extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ jh f5906d;

        b(jh jhVar) {
            this.f5906d = jhVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            Iterator it = jd.this.b.iterator();
            while (it.hasNext()) {
                this.f5906d.mo234((View) it.next());
            }
        }
    }

    private jd() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public synchronized void c(View view) {
        Iterator<jh> it = this.f5904d.iterator();
        while (it.hasNext()) {
            it.next().mo235(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public synchronized void f(View view) {
        Iterator<jh> it = this.f5904d.iterator();
        while (it.hasNext()) {
            it.next().mo234(view);
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static synchronized jd m907() {
        if (a == null) {
            a = new jd();
        }
        return a;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m908(jh jhVar) {
        synchronized (this) {
            this.f5904d.remove(jhVar);
            if (this.f5904d.size() == 0) {
                t.m1039(iy.m886().new d(this.f5905e));
            }
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m909(jh jhVar) {
        synchronized (this) {
            this.f5904d.add(jhVar);
        }
        t.m1039(iy.m886().new c(this.f5905e));
        t.m1046(new b(jhVar));
    }
}

package com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d;

import android.app.Activity;
import android.content.Intent;
import android.view.ViewGroup;
import java.util.ArrayList;

/* JADX INFO: compiled from: PluginEventDispatcher.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    private ArrayList<a> a;
    private ArrayList<String> b;

    public b() {
        this.a = null;
        this.b = null;
        this.a = new ArrayList<>();
        this.b = new ArrayList<>();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0035 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void b(android.app.Activity r4, android.view.ViewGroup r5, java.lang.String[] r6) {
        /*
            r3 = this;
            r0 = 0
        L1:
            int r1 = r6.length
            if (r0 >= r1) goto L38
            r1 = r6[r0]
            java.lang.Class r2 = java.lang.Class.forName(r1)     // Catch: java.lang.ClassNotFoundException -> Lb
            goto L10
        Lb:
            r2 = move-exception
            r2.printStackTrace()
            r2 = 0
        L10:
            if (r2 != 0) goto L20
            java.lang.ClassLoader r2 = java.lang.ClassLoader.getSystemClassLoader()     // Catch: java.lang.ClassNotFoundException -> L1b
            java.lang.Class r2 = r2.loadClass(r1)     // Catch: java.lang.ClassNotFoundException -> L1b
            goto L20
        L1b:
            r1 = move-exception
            r1.printStackTrace()
            goto L35
        L20:
            java.lang.Object r1 = r2.newInstance()     // Catch: java.lang.Exception -> L31
            boolean r2 = r1 instanceof com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
            if (r2 == 0) goto L35
            com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a r1 = (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a) r1
            r3.d(r1)
            r1.onPluginStart(r4, r5)
            goto L35
        L31:
            r1 = move-exception
            r1.printStackTrace()
        L35:
            int r0 = r0 + 1
            goto L1
        L38:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.b.b(android.app.Activity, android.view.ViewGroup, java.lang.String[]):void");
    }

    private void c() {
        for (int i = 0; i < this.b.size(); i++) {
        }
    }

    public void a(Activity activity, ViewGroup viewGroup) {
        b(activity, viewGroup, d.a);
        b(activity, viewGroup, c.a);
        c();
    }

    public void d(a aVar) {
        String name = aVar.getClass().getName();
        if (this.b.contains(name)) {
            return;
        }
        this.a.add(aVar);
        this.b.add(name);
    }

    public boolean e(int i, int i2, Intent intent) {
        for (int i3 = 0; i3 < this.a.size(); i3++) {
            if (this.a.get(i3).onActivityResult(i, i2, intent)) {
                return true;
            }
        }
        return false;
    }

    public void f() {
        for (int i = 0; i < this.a.size(); i++) {
            this.a.get(i).onPostNativePause();
        }
    }

    public void g() {
        for (int i = 0; i < this.a.size(); i++) {
            this.a.get(i).onPostNativeResume();
        }
    }

    public void h() {
        for (int i = 0; i < this.a.size(); i++) {
            this.a.get(i).onPreNativePause();
        }
    }

    public void i() {
        for (int i = 0; i < this.a.size(); i++) {
            this.a.get(i).onPreNativeResume();
        }
    }
}

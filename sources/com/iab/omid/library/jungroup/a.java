package com.iab.omid.library.jungroup;

import android.content.Context;
import android.os.Handler;
import android.view.WindowManager;
import com.iab.omid.library.jungroup.a.e;
import com.iab.omid.library.jungroup.b.g;
import com.iab.omid.library.jungroup.d.d;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public static final c a = new c();

    public static void a(Context context) {
        c cVar = a;
        Context applicationContext = context.getApplicationContext();
        d.a("Application Context cannot be null", applicationContext);
        if (cVar.a) {
            return;
        }
        cVar.a = true;
        g gVarA = g.a();
        gVarA.c.getClass();
        com.iab.omid.library.jungroup.a.a aVar = new com.iab.omid.library.jungroup.a.a();
        e eVar = gVarA.b;
        Handler handler = new Handler();
        eVar.getClass();
        gVarA.f4963d = new com.iab.omid.library.jungroup.a.d(handler, applicationContext, aVar, gVarA);
        com.iab.omid.library.jungroup.b.b.f4960d.a(applicationContext);
        WindowManager windowManager = com.iab.omid.library.jungroup.d.b.a;
        com.iab.omid.library.jungroup.d.b.c = applicationContext.getResources().getDisplayMetrics().density;
        com.iab.omid.library.jungroup.d.b.a = (WindowManager) applicationContext.getSystemService("window");
        com.iab.omid.library.jungroup.b.d.b.a = applicationContext.getApplicationContext();
    }
}

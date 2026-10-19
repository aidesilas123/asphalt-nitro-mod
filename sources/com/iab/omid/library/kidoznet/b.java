package com.iab.omid.library.kidoznet;

import android.content.Context;
import com.iab.omid.library.kidoznet.internal.f;
import com.iab.omid.library.kidoznet.internal.h;
import com.iab.omid.library.kidoznet.utils.e;
import com.iab.omid.library.kidoznet.utils.g;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    private boolean a;

    private void b(Context context) {
        g.a(context, "Application Context cannot be null");
    }

    String a() {
        return "1.4.3-Kidoznet";
    }

    void a(Context context) {
        b(context);
        if (b()) {
            return;
        }
        a(true);
        h.c().a(context);
        com.iab.omid.library.kidoznet.internal.b.g().a(context);
        com.iab.omid.library.kidoznet.utils.a.a(context);
        com.iab.omid.library.kidoznet.utils.c.a(context);
        e.a(context);
        f.b().a(context);
        com.iab.omid.library.kidoznet.internal.a.a().a(context);
    }

    void a(boolean z) {
        this.a = z;
    }

    boolean b() {
        return this.a;
    }

    void c() {
        g.a();
        com.iab.omid.library.kidoznet.internal.a.a().d();
    }
}

package com.iab.omid.library.gameloft;

import android.content.Context;
import com.iab.omid.library.gameloft.b.c;
import com.iab.omid.library.gameloft.d.e;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    private boolean a;

    private void b(Context context) {
        e.a(context, "Application Context cannot be null");
    }

    String a() {
        return "1.2.19-Gameloft";
    }

    void a(Context context) {
        b(context);
        if (b()) {
            return;
        }
        a(true);
        com.iab.omid.library.gameloft.b.e.a().a(context);
        com.iab.omid.library.gameloft.b.b.a().a(context);
        com.iab.omid.library.gameloft.d.b.a(context);
        c.a().a(context);
    }

    void a(boolean z) {
        this.a = z;
    }

    boolean a(String str) {
        return true;
    }

    boolean b() {
        return this.a;
    }
}

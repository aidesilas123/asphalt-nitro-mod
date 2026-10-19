package com.tapjoy.internal;

import android.content.Context;
import android.content.SharedPreferences;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class w1 {
    public final o3 a;
    public final o3 b;

    public w1(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("fiverocks", 0);
        this.a = new o3(sharedPreferences, "noMoreToday.date");
        this.b = new o3(sharedPreferences, "noMoreToday.actionIds");
        a();
    }

    public final void a() {
        String strC = this.a.c();
        if (strC == null || new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date()).equals(strC)) {
            return;
        }
        this.a.b(null);
        this.b.b(null);
    }
}

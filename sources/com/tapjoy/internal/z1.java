package com.tapjoy.internal;

import com.tapjoy.TapjoyLog;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class z1 extends Thread {
    public final /* synthetic */ String a;
    public final /* synthetic */ Map b;
    public final /* synthetic */ i8 c;

    public z1(i8 i8Var, String str, HashMap map) {
        this.c = i8Var;
        this.a = str;
        this.b = map;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        TapjoyLog.i("Tapjoy", "Beacon_id = " + this.c.f7918e);
        com.tapjoy.j0 j0Var = this.c.f7919f;
        StringBuilder sb = new StringBuilder();
        sb.append(i8.a);
        sb.append("/");
        String str = (String) i8.f7917d.get(this.a);
        if (str == null) {
            str = "";
        }
        sb.append(str);
        j0Var.d(sb.toString(), null, null, this.b);
    }
}

package com.tapjoy.internal;

import android.os.SystemClock;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class i5 {
    public final d3 a;
    public final r4 b = new r4();
    public long c;

    public i5(d3 d3Var) {
        this.a = d3Var;
    }

    public final d4 a(r1 r1Var, String str) {
        this.a.b();
        d4 d4Var = new d4();
        d3 d3Var = d3.a;
        d4Var.c = r1Var;
        d4Var.f7887d = str;
        if (na.a) {
            d4Var.f7888e = Long.valueOf(na.a());
            System.currentTimeMillis();
        } else {
            d4Var.f7888e = Long.valueOf(System.currentTimeMillis());
            SystemClock.elapsedRealtime();
        }
        return d4Var;
    }

    public final synchronized void b(d4 d4Var) {
        if (d4Var.c != r1.USAGES) {
            r4 r4Var = this.b;
            r1 r1Var = r4Var.c;
            if (r1Var != null) {
                String str = r4Var.f7976d;
                if (str == null) {
                    i3.a(r1Var, "type", str, "name");
                    throw null;
                }
                if (r4Var.a() == null) {
                    throw new NullPointerException("unknownFields == null");
                }
            }
            r4 r4Var2 = this.b;
            r4Var2.c = d4Var.c;
            r4Var2.f7976d = d4Var.f7887d;
        }
    }

    public final void c(String str, String str2, double d2, String str3, String str4, String str5) {
        this.a.g(str2, d2);
        d4 d4VarA = a(r1.APP, "purchase");
        Objects.requireNonNull(c1.b, "unknownFields == null");
        b(d4VarA);
        this.a.c(d4VarA.f7888e.longValue(), d2);
    }
}

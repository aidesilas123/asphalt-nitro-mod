package com.tapjoy.internal;

import android.graphics.Point;
import android.os.SystemClock;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.json.o2;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class t3 extends q4 {
    public final n3 a;
    public final n3 b;
    public final n3 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Point f8003d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final n3 f8004e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final n3 f8005f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f8006g;
    public final b h;
    public final ArrayList i = new ArrayList();
    public final ArrayList j = new ArrayList();
    public final LinkedHashMap k;
    public final g8 l;

    static {
        new l3();
    }

    public t3(b4 b4Var) throws IOException {
        b4Var.a();
        String strQ = null;
        String strQ2 = null;
        while (b4Var.e()) {
            String strO = b4Var.o();
            if (TypedValues.AttributesType.S_FRAME.equals(strO)) {
                b4Var.a();
                while (b4Var.e()) {
                    String strO2 = b4Var.o();
                    if (o2.h.D.equals(strO2)) {
                        this.a = (n3) b4Var.b(n3.b);
                    } else if (o2.h.C.equals(strO2)) {
                        this.b = (n3) b4Var.b(n3.b);
                    } else if ("close_button".equals(strO2)) {
                        this.c = (n3) b4Var.b(n3.b);
                    } else if ("close_button_offset".equals(strO2)) {
                        this.f8003d = (Point) b4Var.b(g.a);
                    } else {
                        b4Var.u();
                    }
                }
                b4Var.d();
            } else if ("creative".equals(strO)) {
                b4Var.a();
                while (b4Var.e()) {
                    String strO3 = b4Var.o();
                    if (o2.h.D.equals(strO3)) {
                        this.f8004e = (n3) b4Var.b(n3.b);
                    } else if (o2.h.C.equals(strO3)) {
                        this.f8005f = (n3) b4Var.b(n3.b);
                    } else {
                        b4Var.u();
                    }
                }
                b4Var.d();
            } else if ("url".equals(strO)) {
                this.f8006g = b4Var.q();
            } else if (b.a(strO)) {
                this.h = b.a(strO, b4Var);
            } else if ("mappings".equals(strO)) {
                b4Var.a();
                while (b4Var.e()) {
                    String strO4 = b4Var.o();
                    if (o2.h.D.equals(strO4)) {
                        b4Var.c(this.i, j9.a);
                    } else if (o2.h.C.equals(strO4)) {
                        b4Var.c(this.j, j9.a);
                    } else {
                        b4Var.u();
                    }
                }
                b4Var.d();
            } else if ("meta".equals(strO)) {
                this.k = b4Var.m();
            } else if ("ttl".equals(strO)) {
                b4Var.j();
                SystemClock.elapsedRealtime();
            } else if ("no_more_today".equals(strO)) {
                this.l = (g8) b4Var.b(g8.a);
            } else if ("ad_content".equals(strO)) {
                strQ2 = b4Var.q();
            } else if ("redirect_url".equals(strO)) {
                strQ = b4Var.q();
            } else {
                b4Var.u();
            }
        }
        b4Var.d();
        if (this.f8006g == null) {
            this.f8006g = "";
        }
        ArrayList<j9> arrayList = this.i;
        if (arrayList != null) {
            for (j9 j9Var : arrayList) {
                if (j9Var.f7927g == null) {
                    j9Var.f7927g = strQ2;
                }
                if (j9Var.f7926f == null) {
                    j9Var.f7926f = strQ;
                }
            }
        }
        ArrayList<j9> arrayList2 = this.j;
        if (arrayList2 != null) {
            for (j9 j9Var2 : arrayList2) {
                if (j9Var2.f7927g == null) {
                    j9Var2.f7927g = strQ2;
                }
                if (j9Var2.f7926f == null) {
                    j9Var2.f7926f = strQ;
                }
            }
        }
    }
}

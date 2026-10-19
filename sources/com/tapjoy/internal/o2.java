package com.tapjoy.internal;

import android.graphics.PointF;
import com.json.o2;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class o2 {
    public static final f2 a = new f2();
    public final l1 b;
    public final PointF c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f7948d = new ArrayList();

    public o2(b4 b4Var) throws IOException {
        this.b = l1.a;
        b4Var.a();
        while (b4Var.e()) {
            String strO = b4Var.o();
            if ("buttons".equals(strO)) {
                if (b4Var.f()) {
                    b4Var.c(this.f7948d, u0.a);
                } else {
                    b4Var.u();
                }
            } else if ("window_aspect_ratio".equals(strO)) {
                if (b4Var.g()) {
                    PointF pointF = new PointF();
                    b4Var.a();
                    while (b4Var.e()) {
                        String strO2 = b4Var.o();
                        if ("width".equals(strO2)) {
                            pointF.x = (float) b4Var.j();
                        } else if ("height".equals(strO2)) {
                            pointF.y = (float) b4Var.j();
                        } else {
                            b4Var.u();
                        }
                    }
                    b4Var.d();
                    if (pointF.x != 0.0f && pointF.y != 0.0f) {
                        this.c = pointF;
                    }
                } else {
                    b4Var.u();
                }
            } else if ("orientation".equals(strO)) {
                String strP = b4Var.p();
                if (o2.h.C.equals(strP)) {
                    this.b = l1.c;
                } else if (o2.h.D.equals(strP)) {
                    this.b = l1.b;
                }
            } else {
                b4Var.u();
            }
        }
        b4Var.d();
    }

    public final boolean a() {
        Iterator it = this.f7948d.iterator();
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                return true;
            }
            u0 u0Var = (u0) it.next();
            n3 n3Var = u0Var.l;
            if (n3Var != null) {
                if (!((n3Var.f7944d == null && n3Var.f7945e == null) ? false : true)) {
                    return false;
                }
            }
            n3 n3Var2 = u0Var.m;
            if (n3Var2 != null) {
                if (n3Var2.f7944d == null && n3Var2.f7945e == null) {
                    z = false;
                }
                if (!z) {
                    return false;
                }
            }
        }
    }
}

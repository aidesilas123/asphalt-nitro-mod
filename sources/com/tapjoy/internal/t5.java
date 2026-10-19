package com.tapjoy.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class t5 extends q4 {
    public final ArrayList a = new ArrayList();
    public final LinkedHashMap b;
    public final float c;

    static {
        new h5();
    }

    public t5(b4 b4Var) throws IOException {
        b4Var.a();
        String strQ = null;
        String strQ2 = null;
        while (b4Var.e()) {
            String strO = b4Var.o();
            if ("layouts".equals(strO)) {
                b4Var.c(this.a, o2.a);
            } else if ("meta".equals(strO)) {
                this.b = b4Var.m();
            } else if ("max_show_time".equals(strO)) {
                this.c = (float) b4Var.j();
            } else if ("ad_content".equals(strO)) {
                strQ = b4Var.q();
            } else if ("redirect_url".equals(strO)) {
                strQ2 = b4Var.q();
            } else {
                b4Var.u();
            }
        }
        b4Var.d();
        ArrayList arrayList = this.a;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ArrayList<u0> arrayList2 = ((o2) it.next()).f7948d;
                if (arrayList2 != null) {
                    for (u0 u0Var : arrayList2) {
                        if (u0Var.j == null) {
                            u0Var.j = strQ;
                        }
                        if (u0Var.i == null) {
                            u0Var.i = strQ2;
                        }
                    }
                }
            }
        }
    }

    public final boolean a() {
        Iterator it = this.a.iterator();
        boolean zA = true;
        while (it.hasNext()) {
            zA = ((o2) it.next()).a();
            if (!zA) {
                return false;
            }
        }
        return zA;
    }
}

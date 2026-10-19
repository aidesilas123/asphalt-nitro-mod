package com.tapjoy.internal;

import com.tapjoy.FiveRocksIntegration;
import com.tapjoy.TJPlacement;
import com.tapjoy.TJPlacementListener;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b implements a {
    public static final String[] a;

    static {
        String[] strArr = {"reward", "purchase", "custom_action"};
        a = strArr;
        Arrays.sort(strArr);
    }

    public static b a(String str, b4 b4Var) throws IOException {
        String strP = null;
        if (!"reward".equals(str)) {
            if (!"purchase".equals(str) || b4Var.v()) {
                return null;
            }
            k0 k0Var = (k0) b4Var;
            k0Var.I(3);
            String strP2 = "";
            String strP3 = strP2;
            while (b4Var.e()) {
                String strO = b4Var.o();
                if ("campaign_id".equals(strO)) {
                    strP2 = b4Var.v() ? "" : b4Var.p();
                } else if ("product_id".equals(strO)) {
                    strP3 = b4Var.v() ? "" : b4Var.p();
                } else {
                    b4Var.u();
                }
            }
            k0Var.I(4);
            return new o9(strP2, strP3);
        }
        if (b4Var.v()) {
            return null;
        }
        int iK = 1;
        k0 k0Var2 = (k0) b4Var;
        k0Var2.I(3);
        String strP4 = null;
        String strP5 = null;
        while (b4Var.e()) {
            String strO2 = b4Var.o();
            if ("id".equals(strO2)) {
                strP = b4Var.p();
            } else if ("name".equals(strO2)) {
                strP4 = b4Var.p();
            } else if ("quantity".equals(strO2)) {
                iK = b4Var.k();
            } else if ("token".equals(strO2)) {
                strP5 = b4Var.p();
            } else {
                b4Var.u();
            }
        }
        k0Var2.I(4);
        return new x4(strP, strP4, iK, strP5);
    }

    public static boolean a(String str) {
        return Arrays.binarySearch(a, str) >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(z8 z8Var) {
        TJPlacement tJPlacement;
        TJPlacementListener tJPlacementListener;
        if (!(this instanceof x5)) {
            if (this instanceof m6) {
                x4 x4Var = (x4) ((m6) this);
                z8Var.a(x4Var.b, x4Var.c, x4Var.f8020d, x4Var.f8021e);
                return;
            }
            return;
        }
        o9 o9Var = (o9) ((x5) this);
        String str = o9Var.b;
        String str2 = o9Var.c;
        o8 o8Var = FiveRocksIntegration.a;
        synchronized (o8Var) {
            tJPlacement = (TJPlacement) o8Var.get(z8Var.a);
        }
        if (tJPlacement == null || (tJPlacementListener = tJPlacement.c) == null) {
            return;
        }
        tJPlacementListener.onPurchaseRequest(tJPlacement, new e8(str), str2);
    }
}

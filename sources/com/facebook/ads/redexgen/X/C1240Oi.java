package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Oi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1240Oi {
    public static final Map<String, WeakReference<C1239Oh>> A00 = new HashMap();

    public static int A00() {
        return A00.size();
    }

    public static C1239Oh A01(YA ya, AbstractC1566aS abstractC1566aS, int i, InterfaceC1237Of interfaceC1237Of) {
        C1239Oh c1239Oh = new C1239Oh(ya, abstractC1566aS, ya.A01().A09(), i);
        c1239Oh.A0b(interfaceC1237Of);
        c1239Oh.A0X();
        A00.put(abstractC1566aS.A0R(), new WeakReference<>(c1239Oh));
        return c1239Oh;
    }

    public static C1239Oh A02(String str) {
        WeakReference<C1239Oh> weakReference = A00.get(str);
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public static void A03(AbstractC1566aS abstractC1566aS, C1239Oh c1239Oh) {
        A00.put(abstractC1566aS.A0R(), new WeakReference<>(c1239Oh));
    }

    public static void A04(String str) {
        A00.remove(str);
    }
}

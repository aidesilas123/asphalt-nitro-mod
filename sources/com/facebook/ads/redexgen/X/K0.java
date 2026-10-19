package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class K0 {
    public static final Set<Object> A00 = Collections.newSetFromMap(new WeakHashMap());
    public static final AtomicBoolean A01 = new AtomicBoolean(true);
    public static final AtomicReference<InterfaceC1128Jy> A02 = new AtomicReference<>();

    public static void A00(Throwable th, Object obj) throws Throwable {
        if (!A01.get()) {
            throw th;
        }
        A00.add(obj);
        KF.A00().A9E(3306, th);
        InterfaceC1128Jy interfaceC1128Jy = A02.get();
        if (interfaceC1128Jy != null) {
            interfaceC1128Jy.AEc(th, obj);
        }
    }

    public static void A01(boolean z, InterfaceC1128Jy interfaceC1128Jy) {
        A01.set(z);
        A02.set(interfaceC1128Jy);
    }

    public static boolean A02(Object obj) {
        return A00.contains(obj);
    }
}

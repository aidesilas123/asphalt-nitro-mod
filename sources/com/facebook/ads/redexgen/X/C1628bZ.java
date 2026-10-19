package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bZ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1628bZ {
    public final Map<View, C1635bg> A00 = new WeakHashMap();

    public final synchronized C1635bg A00(View view) {
        C1635bg c1635bg = this.A00.get(view);
        if (c1635bg != null) {
            return c1635bg;
        }
        return C1635bg.A08;
    }

    public final synchronized void A01(View view) {
        this.A00.remove(view);
    }

    public final synchronized void A02(View view, C1635bg c1635bg) {
        this.A00.put(view, c1635bg);
    }

    public final synchronized void A03(Collection<View> collection) {
        Iterator<View> it = this.A00.keySet().iterator();
        while (it.hasNext()) {
            collection.add(it.next());
        }
    }
}

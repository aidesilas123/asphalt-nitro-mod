package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1028Fx implements InterfaceC1630bb {
    public final /* synthetic */ C1629ba A00;

    public C1028Fx(C1629ba c1629ba) {
        this.A00 = c1629ba;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1630bb
    public final void ACr() {
        ArrayList arrayList;
        synchronized (this.A00.A06) {
            arrayList = new ArrayList(this.A00.A06.size());
            for (Runnable runnable : this.A00.A06.values()) {
                if (runnable != null) {
                    arrayList.add(runnable);
                }
            }
            this.A00.A06.clear();
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        if (this.A00.A01 != null) {
            this.A00.A01.ACr();
        }
    }
}

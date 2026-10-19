package com.facebook.ads.redexgen.X;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class YJ implements C6C {
    public final Map<String, C6A> A00 = new HashMap();

    @Override // com.facebook.ads.redexgen.X.C6C
    public final synchronized String AEe() {
        StringBuilder sb;
        sb = new StringBuilder();
        Iterator<C6A> it = this.A00.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            sb.append('\n');
        }
        return sb.toString();
    }

    @Override // com.facebook.ads.redexgen.X.C6C
    public final synchronized void reset() {
        this.A00.clear();
    }
}

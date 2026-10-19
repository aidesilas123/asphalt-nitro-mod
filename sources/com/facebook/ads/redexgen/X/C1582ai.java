package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ai, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1582ai extends K8 {
    public final /* synthetic */ C1581ah A00;
    public final /* synthetic */ Map A01;
    public final /* synthetic */ Map A02;

    public C1582ai(C1581ah c1581ah, Map map, Map map2) {
        this.A00 = c1581ah;
        this.A02 = map;
        this.A01 = map2;
    }

    @Override // com.facebook.ads.redexgen.X.K8
    public final void A06() {
        if (TextUtils.isEmpty(this.A00.A01.A0Y())) {
            return;
        }
        HashMap map = new HashMap();
        map.putAll(this.A02);
        map.putAll(this.A01);
        this.A00.A09.A09().A9i(this.A00.A01.A0Y(), map);
    }
}

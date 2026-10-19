package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bR, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1620bR {
    public final InterfaceC1624bV A00;
    public final String A01;
    public final Collection<C1635bg> A02;
    public final Collection<C1635bg> A03;
    public final List<Rect> A04;

    public C1620bR(String str, InterfaceC1624bV interfaceC1624bV, List<Rect> list, Collection<C1635bg> collection, Collection<C1635bg> collection2) {
        this.A01 = str;
        this.A00 = interfaceC1624bV;
        this.A04 = new ArrayList(list);
        this.A02 = collection;
        this.A03 = collection2;
    }
}

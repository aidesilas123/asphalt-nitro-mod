package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1636bh<ModelType, StateType> {
    public final ModelType A02;
    public final StateType A03;
    public final String A04;
    public List<InterfaceC1638bj<ModelType, StateType>> A01 = null;
    public C1635bg A00 = C1635bg.A08;

    public C1636bh(ModelType modeltype, StateType statetype, String str) {
        this.A02 = modeltype;
        this.A03 = statetype;
        this.A04 = str;
    }

    public final C1636bh<ModelType, StateType> A05(InterfaceC1638bj<ModelType, StateType> interfaceC1638bj) {
        if (this.A01 == null) {
            this.A01 = new ArrayList();
        }
        this.A01.add(interfaceC1638bj);
        return this;
    }

    public final C1635bg<ModelType, StateType> A06() {
        return new C1635bg<>(this);
    }
}

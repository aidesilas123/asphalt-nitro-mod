package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class ZI implements InterfaceC07373k {
    public final /* synthetic */ EI A00;
    public final /* synthetic */ C07353i A01;

    public ZI(EI ei, C07353i c07353i) {
        this.A00 = ei;
        this.A01 = c07353i;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07373k
    public final Object A4T(int i) {
        C07333g c07333gA00 = this.A01.A00(i);
        if (c07333gA00 == null) {
            return null;
        }
        return c07333gA00.A0M();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07373k
    public final List<Object> A5c(String str, int i) {
        List<C07333g> listA03 = this.A01.A03(str, i);
        if (listA03 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int size = listA03.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(listA03.get(i2).A0M());
        }
        return arrayList;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07373k
    public final boolean ADn(int i, int i2, Bundle bundle) {
        return this.A01.A04(i, i2, bundle);
    }
}

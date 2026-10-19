package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Zf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1519Zf implements LE<Bundle> {
    public static byte[] A03;
    public final C2F A00;
    public final InterfaceC1265Ph A01;
    public final List<C1518Ze> A02;

    static {
        A01();
    }

    public C1519Zf(List<C2D> list, Bundle bundle, InterfaceC1265Ph interfaceC1265Ph) {
        this.A02 = new ArrayList(list.size());
        this.A01 = interfaceC1265Ph;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(A00(10, 5, 15));
        for (int i = 0; i < list.size(); i++) {
            this.A02.add(new C1518Ze(list.get(i), (Bundle) parcelableArrayList.get(i)));
        }
        this.A00 = (C2F) L8.A00(bundle.getByteArray(A00(0, 10, 28)));
    }

    public C1519Zf(List<C2D> list, InterfaceC1265Ph interfaceC1265Ph) {
        this.A02 = new ArrayList(list.size());
        this.A01 = interfaceC1265Ph;
        Iterator<C2D> it = list.iterator();
        while (it.hasNext()) {
            this.A02.add(new C1518Ze(it.next()));
        }
        this.A00 = new C2F();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 49);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{126, 121, 108, 121, 100, 126, 121, 100, 110, 126, 106, 123, 109, 106, 109};
    }

    public final Bundle A02() {
        Bundle bundle = new Bundle();
        bundle.putByteArray(A00(0, 10, 28), L8.A01(this.A00));
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.A02.size());
        Iterator<C1518Ze> it = this.A02.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().A05());
        }
        bundle.putParcelableArrayList(A00(10, 5, 15), arrayList);
        return bundle;
    }

    public final C2F A03() {
        return this.A00;
    }

    public final void A04() {
        this.A00.A03();
        Iterator<C1518Ze> it = this.A02.iterator();
        while (it.hasNext()) {
            it.next().A06();
        }
    }

    public final void A05() {
        this.A00.A02();
    }

    public final void A06(double d2, double d3) {
        if (d3 >= 0.0d) {
            this.A00.A05(d2, d3);
        }
        double dA8B = this.A01.A8B();
        this.A00.A04(d2, dA8B);
        Iterator<C1518Ze> it = this.A02.iterator();
        while (it.hasNext()) {
            it.next().A07(d2, dA8B);
        }
    }
}

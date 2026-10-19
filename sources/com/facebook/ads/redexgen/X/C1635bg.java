package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1635bg<ModelType, StateType> {
    public static byte[] A06;
    public static String[] A07 = {"K3IBH5IY5D9A1s0otTNJJ1EDvo1qLs", "HR7iyfZ1MOS5huP42RSdRpCkeBunQMOf", "", "bEqFTGguyIKgMYqaAFudqvCpFKGvMgpm", "3wGEEC73gwsSkVWXWqLxZk", "wIAJ3aMEmj6qTKsV0aDgjtipvoJzkW0C", "SCvpsyQDnQo4JnEbtI83SB", "GSqpB1BwT3x"};
    public static final C1635bg A08;
    public boolean A00;
    public final C1635bg A01;
    public final ModelType A02;
    public final StateType A03;
    public final String A04;
    public final List<InterfaceC1638bj<ModelType, StateType>> A05;

    static {
        A02();
        A08 = new C1635bg(null, null, A01(0, 5, 123), Collections.emptyList(), A08);
    }

    public C1635bg(C1636bh<ModelType, StateType> c1636bh) {
        this(c1636bh.A02, c1636bh.A03, c1636bh.A04, c1636bh.A01 == null ? Collections.emptyList() : c1636bh.A01, c1636bh.A00);
    }

    public C1635bg(ModelType modeltype, StateType statetype, String str, List<InterfaceC1638bj<ModelType, StateType>> list, C1635bg c1635bg) {
        this.A02 = modeltype;
        this.A03 = statetype;
        this.A04 = str;
        this.A01 = c1635bg;
        this.A00 = false;
        this.A05 = list;
    }

    public static <ModelType, StateType> C1636bh<ModelType, StateType> A00(ModelType modeltype, StateType statetype, String str) {
        return new C1636bh<>(modeltype, statetype, str);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 113);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A06 = new byte[]{81, 89, 92, 96, 101};
    }

    public final void A03(InterfaceC1624bV interfaceC1624bV) {
        Iterator<InterfaceC1638bj<ModelType, StateType>> it = this.A05.iterator();
        while (it.hasNext()) {
            it.next().A5X(this, interfaceC1624bV);
        }
        EnumC1625bW enumC1625bWA8A = interfaceC1624bV.A8A(this);
        String[] strArr = A07;
        if (strArr[1].charAt(23) == strArr[3].charAt(23)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A07;
        strArr2[7] = "xMDdEaQw2xH";
        strArr2[2] = "";
        if (enumC1625bWA8A == EnumC1625bW.A02) {
            this.A00 = true;
        }
    }

    public final boolean A04() {
        return this.A00;
    }
}

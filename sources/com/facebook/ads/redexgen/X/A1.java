package com.facebook.ads.redexgen.X;

import java.util.ArrayList;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class A1 {
    public static String[] A06 = {"rmgpPCWB7BYHQ3azE8yCiRChgWLX4K1O", "ESYL8WQp59BjyyK9DI9xkUBJ1yOk4QLd", "YweXfGig2PVNilG2mJZlv3ovQAOkP8UY", "CAftEyLXQvcAYYqOnK17yfwScyM6Y9GQ", "5ZUx", "CHSAxwc6W9B6bhcUywJKjVUar2kzl0Sb", "G9dVYOs473", "8VVZpCzafohaQpJb3SOOvVZNRfYg5osa"};
    public A2 A01;
    public A2 A02;
    public boolean A03;
    public final ArrayList<A2> A05 = new ArrayList<>();
    public final C08919x A04 = new C08919x();
    public AbstractC08939z A00 = AbstractC08939z.A01;

    private A2 A00(A2 a2, AbstractC08939z abstractC08939z) {
        if (abstractC08939z.A0E() || this.A00.A0E()) {
            return a2;
        }
        AbstractC08939z abstractC08939z2 = this.A00;
        int i = a2.A01.A02;
        if (A06[5].charAt(2) == 'm') {
            throw new RuntimeException();
        }
        A06[3] = "6Z7kXvoTE0GMRlV8X7ahHWF28Ir1JA8U";
        int iA04 = abstractC08939z.A04(abstractC08939z2.A0A(i, this.A04, true).A03);
        return iA04 == -1 ? a2 : new A2(abstractC08939z.A09(iA04, this.A04).A00, a2.A01.A00(iA04));
    }

    private void A02() {
        if (this.A05.isEmpty()) {
            return;
        }
        this.A01 = this.A05.get(0);
    }

    public final A2 A03() {
        return this.A01;
    }

    public final A2 A04() {
        if (this.A05.isEmpty()) {
            return null;
        }
        ArrayList<A2> arrayList = this.A05;
        int size = arrayList.size() - 1;
        if (A06[3].charAt(28) == 'b') {
            throw new RuntimeException();
        }
        String[] strArr = A06;
        strArr[6] = "IuVtQJyFuB";
        strArr[7] = "VEjGs0KHAo6Qkjlg0Fq6YAYYmbb9RMII";
        return arrayList.get(size);
    }

    public final A2 A05() {
        if (this.A05.isEmpty() || this.A00.A0E() || this.A03) {
            return null;
        }
        return this.A05.get(0);
    }

    public final A2 A06() {
        return this.A02;
    }

    public final EW A07(int i) {
        EW ew = null;
        AbstractC08939z abstractC08939z = this.A00;
        if (abstractC08939z != null) {
            int iA00 = abstractC08939z.A00();
            for (int i2 = 0; i2 < this.A05.size(); i2++) {
                A2 a2 = this.A05.get(i2);
                int i3 = a2.A01.A02;
                if (i3 < iA00 && this.A00.A09(i3, this.A04).A00 == i) {
                    if (ew != null) {
                        return null;
                    }
                    ew = a2.A01;
                }
            }
        }
        return ew;
    }

    public final void A08() {
        this.A03 = false;
        A02();
    }

    public final void A09() {
        this.A03 = true;
    }

    public final void A0A(int i) {
        A02();
    }

    public final void A0B(int i, EW ew) {
        this.A05.add(new A2(i, ew));
        if (this.A05.size() != 1 || this.A00.A0E()) {
            return;
        }
        A02();
    }

    public final void A0C(int i, EW ew) {
        A2 a2 = new A2(i, ew);
        this.A05.remove(a2);
        if (a2.equals(this.A02)) {
            this.A02 = this.A05.isEmpty() ? null : this.A05.get(0);
        }
    }

    public final void A0D(int i, EW ew) {
        this.A02 = new A2(i, ew);
    }

    public final void A0E(AbstractC08939z abstractC08939z) {
        for (int i = 0; i < this.A05.size(); i++) {
            ArrayList<A2> arrayList = this.A05;
            arrayList.set(i, A00(arrayList.get(i), abstractC08939z));
        }
        A2 a2 = this.A02;
        if (a2 != null) {
            this.A02 = A00(a2, abstractC08939z);
        }
        this.A00 = abstractC08939z;
        A02();
    }

    public final boolean A0F() {
        return this.A03;
    }
}

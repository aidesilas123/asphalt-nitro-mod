package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Hs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1073Hs {
    public static String[] A07 = {"5DRquCQGg5fv0P6nja7IsOodPXBGhUeG", "CLJKgVN4XJask5diLy7MGSBxba0Pch5a", "wHftqcE0jDwIdOqBDBC3mNx0B5SBQznZ", "ol9v552kFRhJ1T6A32CtEuz", "A1CuUzQu9jwyUqSqJ17msfwDUTn6GREa", "TbNgrGyLzvQfDvkF0WCoqwQu2K", "lR0XC8VxWttqZJTwOmQs4gh4fjIE6f", "2mBuumTUpjmiSXNoBcdi8fBRoWPOanRf"};
    public static final Comparator<C1072Hr> A08 = new C1070Hp();
    public static final Comparator<C1072Hr> A09 = new C1071Hq();
    public int A01;
    public int A02;
    public int A03;
    public final int A04;
    public final C1072Hr[] A06 = new C1072Hr[5];
    public final ArrayList<C1072Hr> A05 = new ArrayList<>();
    public int A00 = -1;

    public C1073Hs(int i) {
        this.A04 = i;
    }

    private void A00() {
        if (this.A00 != 1) {
            Collections.sort(this.A05, A08);
            this.A00 = 1;
        }
    }

    private void A01() {
        if (this.A00 != 0) {
            Collections.sort(this.A05, A09);
            this.A00 = 0;
        }
    }

    public final float A02(float f2) {
        A01();
        float f3 = this.A03 * f2;
        int i = 0;
        for (int i2 = 0; i2 < this.A05.size(); i2++) {
            C1072Hr c1072Hr = this.A05.get(i2);
            i += c1072Hr.A02;
            if (i >= f3) {
                return c1072Hr.A00;
            }
        }
        if (this.A05.isEmpty()) {
            return Float.NaN;
        }
        ArrayList<C1072Hr> arrayList = this.A05;
        int size = arrayList.size();
        if (A07[3].length() == 12) {
            throw new RuntimeException();
        }
        A07[3] = "XkLaJBoD11zWycQ";
        return arrayList.get(size - 1).A00;
    }

    public final void A03(int i, float f2) {
        C1072Hr c1072Hr;
        A00();
        int i2 = this.A02;
        if (i2 > 0) {
            C1072Hr[] c1072HrArr = this.A06;
            int i3 = i2 - 1;
            this.A02 = i3;
            c1072Hr = c1072HrArr[i3];
        } else {
            c1072Hr = new C1072Hr(null);
        }
        int i4 = this.A01;
        this.A01 = i4 + 1;
        c1072Hr.A01 = i4;
        c1072Hr.A02 = i;
        c1072Hr.A00 = f2;
        this.A05.add(c1072Hr);
        this.A03 += i;
        while (true) {
            int i5 = this.A03;
            int i6 = this.A04;
            if (i5 <= i6) {
                return;
            }
            int i7 = i5 - i6;
            C1072Hr c1072Hr2 = this.A05.get(0);
            if (c1072Hr2.A02 <= i7) {
                int i8 = this.A03;
                int i9 = c1072Hr2.A02;
                if (A07[5].length() != 26) {
                    throw new RuntimeException();
                }
                A07[6] = "uvvU8EqEwFGMOcNu2z1EziqDegtCkn";
                this.A03 = i8 - i9;
                this.A05.remove(0);
                int i10 = this.A02;
                if (i10 < 5) {
                    C1072Hr[] c1072HrArr2 = this.A06;
                    this.A02 = i10 + 1;
                    c1072HrArr2[i10] = c1072Hr2;
                }
            } else {
                c1072Hr2.A02 -= i7;
                this.A03 -= i7;
            }
        }
    }
}

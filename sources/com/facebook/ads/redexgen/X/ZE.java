package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class ZE implements C4K {
    public static byte[] A08;
    public static String[] A09 = {"X1JWoRd1RTsi5LXg3YfkE890Z0SkAp6s", "8cHG76lMVFwKxBGRg2kgut24eHhxfbd", "G9TzZa55JFGh4eGgvGtqHGY1m3qrW6LM", "T7A4lgHZzGr7V1uQcw7LfDSO4lerGRH7", "wT7nveBXif1G6UL4LkiEJi9kfhK", "XR1Jqmc9zxsTs7lfyBsyi3NvUHLKhP3K", "pVA6ZWYUVwE4UScIoRBBosOqE3FsfWwK", "nWmw"};
    public int A00;
    public InterfaceC07152n<C07493x> A01;
    public final InterfaceC07483w A02;
    public final C4L A03;
    public final Runnable A04;
    public final ArrayList<C07493x> A05;
    public final ArrayList<C07493x> A06;
    public final boolean A07;

    static {
        A03();
    }

    public ZE(InterfaceC07483w interfaceC07483w) {
        this(interfaceC07483w, false);
    }

    public ZE(InterfaceC07483w interfaceC07483w, boolean z) {
        this.A01 = new ZU(30);
        this.A05 = new ArrayList<>();
        this.A06 = new ArrayList<>();
        this.A00 = 0;
        this.A02 = interfaceC07483w;
        this.A07 = z;
        this.A03 = new C4L(this);
    }

    private int A00(int i, int i2) {
        int i3;
        int i4;
        for (int size = this.A06.size() - 1; size >= 0; size--) {
            C07493x c07493x = this.A06.get(size);
            if (c07493x.A00 == 8) {
                if (c07493x.A02 < c07493x.A01) {
                    i3 = c07493x.A02;
                    i4 = c07493x.A01;
                } else {
                    i3 = c07493x.A01;
                    i4 = c07493x.A02;
                }
                if (i < i3 || i > i4) {
                    if (i < c07493x.A02) {
                        if (i2 == 1) {
                            c07493x.A02++;
                            c07493x.A01++;
                        } else if (i2 == 2) {
                            c07493x.A02--;
                            c07493x.A01--;
                        }
                    }
                } else if (i3 == c07493x.A02) {
                    if (i2 == 1) {
                        c07493x.A01++;
                    } else if (i2 == 2) {
                        c07493x.A01--;
                    }
                    i++;
                } else {
                    if (i2 == 1) {
                        c07493x.A02++;
                    } else if (i2 == 2) {
                        c07493x.A02--;
                    }
                    i--;
                }
            } else if (c07493x.A02 <= i) {
                if (c07493x.A00 == 1) {
                    int i5 = c07493x.A01;
                    if (A09[7].length() != 4) {
                        throw new RuntimeException();
                    }
                    A09[7] = "N0sU";
                    i -= i5;
                } else if (c07493x.A00 == 2) {
                    i += c07493x.A01;
                }
            } else if (i2 == 1) {
                c07493x.A02++;
            } else if (i2 == 2) {
                c07493x.A02--;
            }
        }
        for (int size2 = this.A06.size() - 1; size2 >= 0; size2--) {
            C07493x c07493x2 = this.A06.get(size2);
            if (c07493x2.A00 == 8) {
                if (c07493x2.A01 == c07493x2.A02 || c07493x2.A01 < 0) {
                    this.A06.remove(size2);
                    AEJ(c07493x2);
                }
            } else if (c07493x2.A01 <= 0) {
                this.A06.remove(size2);
                AEJ(c07493x2);
            }
        }
        return i;
    }

    private final int A01(int i, int i2) {
        int size = this.A06.size();
        while (i2 < size) {
            C07493x c07493x = this.A06.get(i2);
            if (c07493x.A00 == 8) {
                if (c07493x.A02 == i) {
                    i = c07493x.A01;
                } else {
                    if (c07493x.A02 < i) {
                        i--;
                    }
                    if (c07493x.A01 <= i) {
                        i++;
                    }
                }
            } else if (c07493x.A02 > i) {
                continue;
            } else if (c07493x.A00 != 2) {
                int i3 = c07493x.A00;
                String[] strArr = A09;
                if (strArr[6].charAt(31) != strArr[5].charAt(31)) {
                    throw new RuntimeException();
                }
                A09[1] = "6d2Cvy1MfGwOem3AHh21iiz4RwVuOhP";
                if (i3 == 1) {
                    i += c07493x.A01;
                }
            } else {
                if (i < c07493x.A02 + c07493x.A01) {
                    return -1;
                }
                i -= c07493x.A01;
            }
            i2++;
        }
        return i;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 66);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A08 = new byte[]{-100, -75, -78, -75, -74, -66, -75, 103, -68, -73, -85, -88, -69, -84, 103, -74, -73, 103, -69, -64, -73, -84, 103, -83, -74, -71, 103, -44, -45, -47, -34, -123, -41, -54, -46, -44, -37, -54, -123, -58, -45, -55, -123, -38, -43, -55, -58, -39, -54, -123, -44, -43, -40, -123, -56, -58, -45, -123, -57, -54, -123, -55, -50, -40, -43, -58, -39, -56, -51, -54, -55, -123, -50, -45, -123, -53, -50, -41, -40, -39, -123, -43, -58, -40, -40, -24, -23, -103, -20, -31, -24, -18, -27, -35, -103, -37, -34, -103, -21, -34, -26, -24, -17, -34, -103, -24, -21, -103, -18, -23, -35, -38, -19, -34, -89, Ascii.RS, 19, Ascii.SUB, 32, Ascii.ETB, Ascii.SI, -53, Ascii.EM, Ascii.SUB, Ascii.US, -53, Ascii.SI, Ascii.DC4, Ascii.RS, Ascii.ESC, Ascii.FF, Ascii.US, Ascii.SO, 19, -53, Ascii.FF, Ascii.SI, Ascii.SI, -53, Ascii.SUB, Ascii.GS, -53, Ascii.CAN, Ascii.SUB, 33, Ascii.DLE, -53, 17, Ascii.SUB, Ascii.GS, -53, Ascii.ESC, Ascii.GS, Ascii.DLE, -53, Ascii.ETB, Ascii.FF, 36, Ascii.SUB, 32, Ascii.US};
    }

    private void A04(C07493x c07493x) {
        A09(c07493x);
    }

    private void A05(C07493x c07493x) {
        A09(c07493x);
    }

    private void A06(C07493x c07493x) {
        int i = c07493x.A02;
        int i2 = 0;
        int i3 = c07493x.A02 + c07493x.A01;
        byte b = -1;
        int i4 = c07493x.A02;
        while (i4 < i3) {
            boolean z = false;
            if (this.A02.A5e(i4) != null || A0C(i4)) {
                if (b == 0) {
                    A08(AAI(2, i, i2, null));
                    z = true;
                }
                b = 1;
            } else {
                if (b == 1) {
                    A09(AAI(2, i, i2, null));
                    z = true;
                }
                b = 0;
            }
            if (z) {
                i4 -= i2;
                i3 -= i2;
                i2 = 1;
            } else {
                i2++;
            }
            i4++;
        }
        if (i2 != c07493x.A01) {
            AEJ(c07493x);
            c07493x = AAI(2, i, i2, null);
        }
        if (b == 0) {
            A08(c07493x);
        } else {
            A09(c07493x);
        }
    }

    private void A07(C07493x c07493x) {
        int i = c07493x.A02;
        int i2 = 0;
        int i3 = c07493x.A02 + c07493x.A01;
        byte b = -1;
        int i4 = c07493x.A02;
        while (true) {
            String[] strArr = A09;
            if (strArr[6].charAt(31) != strArr[5].charAt(31)) {
                throw new RuntimeException();
            }
            A09[0] = "QVMb2fRXyzWHiAZPpRD1aZXDVthvAAWC";
            if (i4 >= i3) {
                if (i2 != c07493x.A01) {
                    Object obj = c07493x.A03;
                    AEJ(c07493x);
                    c07493x = AAI(4, i, i2, obj);
                }
                if (b == 0) {
                    A08(c07493x);
                    return;
                } else {
                    A09(c07493x);
                    return;
                }
            }
            if (this.A02.A5e(i4) != null || A0C(i4)) {
                if (b == 0) {
                    A08(AAI(4, i, i2, c07493x.A03));
                    i2 = 0;
                    i = i4;
                }
                b = 1;
            } else {
                if (b == 1) {
                    A09(AAI(4, i, i2, c07493x.A03));
                    i2 = 0;
                    i = i4;
                }
                b = 0;
            }
            i2++;
            i4++;
        }
    }

    private void A08(C07493x c07493x) {
        int i;
        if (c07493x.A00 != 1) {
            int i2 = c07493x.A00;
            if (A09[4].length() == 28) {
                throw new RuntimeException();
            }
            A09[7] = "fuh7";
            if (i2 != 8) {
                int iA00 = A00(c07493x.A02, c07493x.A00);
                int i3 = 1;
                int i4 = c07493x.A02;
                switch (c07493x.A00) {
                    case 2:
                        i = 0;
                        break;
                    case 3:
                    default:
                        throw new IllegalArgumentException(A02(85, 30, 55) + c07493x);
                    case 4:
                        i = 1;
                        break;
                }
                for (int i5 = 1; i5 < c07493x.A01; i5++) {
                    int iA002 = A00(c07493x.A02 + (i * i5), c07493x.A00);
                    boolean z = false;
                    switch (c07493x.A00) {
                        case 2:
                            z = iA002 == iA00;
                            break;
                        case 4:
                            z = iA002 == iA00 + 1;
                            break;
                    }
                    if (z) {
                        i3++;
                    } else {
                        C07493x c07493xAAI = AAI(c07493x.A00, iA00, i3, c07493x.A03);
                        A0A(c07493xAAI, i4);
                        AEJ(c07493xAAI);
                        if (c07493x.A00 == 4) {
                            i4 += i3;
                        }
                        iA00 = iA002;
                        String[] strArr = A09;
                        if (strArr[3].charAt(27) != strArr[2].charAt(27)) {
                            i3 = 1;
                        } else {
                            A09[1] = "yo86shE8ew7ry1OmrvVtBHjQ2wHk5Ec";
                            i3 = 1;
                        }
                    }
                }
                Object obj = c07493x.A03;
                AEJ(c07493x);
                if (i3 > 0) {
                    C07493x c07493xAAI2 = AAI(c07493x.A00, iA00, i3, obj);
                    if (A09[7].length() != 4) {
                        throw new RuntimeException();
                    }
                    A09[4] = "6SUXoeHtz7oI0Lc";
                    A0A(c07493xAAI2, i4);
                    AEJ(c07493xAAI2);
                    return;
                }
                return;
            }
        }
        throw new IllegalArgumentException(A02(115, 46, 105));
    }

    private void A09(C07493x c07493x) {
        this.A06.add(c07493x);
        switch (c07493x.A00) {
            case 1:
                this.A02.AAJ(c07493x.A02, c07493x.A01);
                return;
            case 2:
                this.A02.AAM(c07493x.A02, c07493x.A01);
                return;
            case 3:
            case 5:
            case 6:
            case 7:
            default:
                throw new IllegalArgumentException(A02(0, 27, 5) + c07493x);
            case 4:
                this.A02.A9z(c07493x.A02, c07493x.A01, c07493x.A03);
                return;
            case 8:
                this.A02.AAK(c07493x.A02, c07493x.A01);
                return;
        }
    }

    private final void A0A(C07493x c07493x, int i) {
        this.A02.AB4(c07493x);
        switch (c07493x.A00) {
            case 2:
                this.A02.AAL(i, c07493x.A01);
                return;
            case 3:
            default:
                throw new IllegalArgumentException(A02(27, 58, 35));
            case 4:
                this.A02.A9z(i, c07493x.A01, c07493x.A03);
                return;
        }
    }

    private final void A0B(List<C07493x> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            AEJ(list.get(i));
        }
        list.clear();
    }

    private boolean A0C(int i) {
        int size = this.A06.size();
        for (int i2 = 0; i2 < size; i2++) {
            C07493x c07493x = this.A06.get(i2);
            if (c07493x.A00 != 8) {
                int i3 = c07493x.A00;
                if (A09[4].length() == 28) {
                    throw new RuntimeException();
                }
                A09[7] = "h3FT";
                if (i3 == 1) {
                    int i4 = c07493x.A02 + c07493x.A01;
                    for (int i5 = c07493x.A02; i5 < i4; i5++) {
                        if (A01(i5, i2 + 1) == i) {
                            return true;
                        }
                    }
                } else {
                    continue;
                }
            } else if (A01(c07493x.A01, i2 + 1) == i) {
                return true;
            }
        }
        return false;
    }

    public final int A0D(int i) {
        return A01(i, 0);
    }

    public final int A0E(int i) {
        int size = this.A05.size();
        for (int i2 = 0; i2 < size; i2++) {
            C07493x c07493x = this.A05.get(i2);
            switch (c07493x.A00) {
                case 1:
                    if (c07493x.A02 <= i) {
                        i += c07493x.A01;
                    }
                    break;
                case 2:
                    if (c07493x.A02 > i) {
                        continue;
                    } else {
                        if (c07493x.A02 + c07493x.A01 > i) {
                            return -1;
                        }
                        i -= c07493x.A01;
                    }
                    break;
                case 8:
                    if (c07493x.A02 == i) {
                        i = c07493x.A01;
                    } else {
                        if (c07493x.A02 < i) {
                            i--;
                        }
                        if (c07493x.A01 <= i) {
                            i++;
                        }
                    }
                    break;
            }
        }
        return i;
    }

    public final void A0F() {
        int size = this.A06.size();
        for (int i = 0; i < size; i++) {
            this.A02.AB6(this.A06.get(i));
        }
        A0B(this.A06);
        this.A00 = 0;
    }

    public final void A0G() {
        A0F();
        int size = this.A05.size();
        for (int i = 0; i < size; i++) {
            C07493x c07493x = this.A05.get(i);
            switch (c07493x.A00) {
                case 1:
                    this.A02.AB6(c07493x);
                    this.A02.AAJ(c07493x.A02, c07493x.A01);
                    break;
                case 2:
                    this.A02.AB6(c07493x);
                    this.A02.AAL(c07493x.A02, c07493x.A01);
                    break;
                case 4:
                    this.A02.AB6(c07493x);
                    this.A02.A9z(c07493x.A02, c07493x.A01, c07493x.A03);
                    break;
                case 8:
                    this.A02.AB6(c07493x);
                    this.A02.AAK(c07493x.A02, c07493x.A01);
                    break;
            }
            Runnable runnable = this.A04;
            if (runnable != null) {
                runnable.run();
            }
        }
        A0B(this.A05);
        this.A00 = 0;
        if (A09[0].charAt(28) != 'A') {
            throw new RuntimeException();
        }
        A09[1] = "6Qpi3zwbHCTXm3nhA4JhLro11ECL3LU";
    }

    public final void A0H() {
        this.A03.A05(this.A05);
        int size = this.A05.size();
        for (int i = 0; i < size; i++) {
            C07493x c07493x = this.A05.get(i);
            int i2 = c07493x.A00;
            String[] strArr = A09;
            if (strArr[6].charAt(31) != strArr[5].charAt(31)) {
                throw new RuntimeException();
            }
            A09[1] = "1BDdKJQJlsgxETOK14Gjs1hC7fjbuKK";
            switch (i2) {
                case 1:
                    A04(c07493x);
                    break;
                case 2:
                    A06(c07493x);
                    break;
                case 4:
                    A07(c07493x);
                    break;
                case 8:
                    A05(c07493x);
                    break;
            }
            Runnable runnable = this.A04;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.A05.clear();
    }

    public final void A0I() {
        A0B(this.A05);
        A0B(this.A06);
        this.A00 = 0;
    }

    public final boolean A0J() {
        return this.A05.size() > 0;
    }

    public final boolean A0K() {
        return (this.A06.isEmpty() || this.A05.isEmpty()) ? false : true;
    }

    public final boolean A0L(int i) {
        return (this.A00 & i) != 0;
    }

    @Override // com.facebook.ads.redexgen.X.C4K
    public final C07493x AAI(int i, int i2, int i3, Object obj) {
        C07493x c07493xA2W = this.A01.A2W();
        if (c07493xA2W == null) {
            return new C07493x(i, i2, i3, obj);
        }
        c07493xA2W.A00 = i;
        c07493xA2W.A02 = i2;
        c07493xA2W.A01 = i3;
        c07493xA2W.A03 = obj;
        return c07493xA2W;
    }

    @Override // com.facebook.ads.redexgen.X.C4K
    public final void AEJ(C07493x c07493x) {
        if (this.A07) {
            return;
        }
        c07493x.A03 = null;
        this.A01.AER(c07493x);
    }
}

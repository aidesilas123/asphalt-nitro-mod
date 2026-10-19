package com.facebook.ads.redexgen.X;

import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4L, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class C4L {
    public static String[] A01 = {"1CU3iw4Trc3qggngkxP7P26jEGLrLZaR", "qcH7HKgKdAybLTWn0rmK7JyCE0S9C8rn", "oNJ0dA1Zpt4CixMfeWT18n5RxX88Y0E3", "FZ8N3xW3PfzdZjJWrErZ2QIuE13XuJtD", "DvPOKoiXqOiYMgjx6IqCziqOSBLzEcJY", "MpMZeZ7xc490HXAXJonG5r1KTyiIoUHH", "NGMd8PbmdSzgSLgNcWdVjgLa", "jY1Ixh6DMe9BpV8yAbg842YJP45AQ2Eb"};
    public final C4K A00;

    public C4L(C4K c4k) {
        this.A00 = c4k;
    }

    private int A00(List<C07493x> list) {
        boolean z = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).A00 != 8) {
                z = true;
            } else if (z) {
                return size;
            }
        }
        return -1;
    }

    private void A01(List<C07493x> list, int i, int i2) {
        C07493x c07493x = list.get(i);
        C07493x c07493x2 = list.get(i2);
        switch (c07493x2.A00) {
            case 1:
                A02(list, i, c07493x, i2, c07493x2);
                break;
            case 2:
                A03(list, i, c07493x, i2, c07493x2);
                break;
            case 4:
                A04(list, i, c07493x, i2, c07493x2);
                break;
        }
    }

    private void A02(List<C07493x> list, int i, C07493x c07493x, int i2, C07493x c07493x2) {
        int i3 = c07493x.A01 < c07493x2.A02 ? 0 - 1 : 0;
        if (c07493x.A02 < c07493x2.A02) {
            i3++;
        }
        if (c07493x2.A02 <= c07493x.A02) {
            c07493x.A02 += c07493x2.A01;
        }
        if (c07493x2.A02 <= c07493x.A01) {
            c07493x.A01 += c07493x2.A01;
        }
        c07493x2.A02 += i3;
        list.set(i, c07493x2);
        list.set(i2, c07493x);
    }

    private final void A03(List<C07493x> list, int i, C07493x c07493x, int i2, C07493x c07493x2) {
        boolean z;
        C07493x c07493xAAI = null;
        boolean z2 = false;
        if (c07493x.A02 < c07493x.A01) {
            z = false;
            if (c07493x2.A02 == c07493x.A02 && c07493x2.A01 == c07493x.A01 - c07493x.A02) {
                z2 = true;
            }
        } else {
            z = true;
            if (c07493x2.A02 == c07493x.A01 + 1 && c07493x2.A01 == c07493x.A02 - c07493x.A01) {
                z2 = true;
            }
        }
        if (c07493x.A01 < c07493x2.A02) {
            c07493x2.A02--;
        } else if (c07493x.A01 < c07493x2.A02 + c07493x2.A01) {
            c07493x2.A01--;
            c07493x.A00 = 2;
            c07493x.A01 = 1;
            int i3 = c07493x2.A01;
            if (A01[6].length() == 11) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[2] = "8AUTweiK2qHuqKAjuAP9RAHRjtqC9cI5";
            strArr[3] = "fxjAamJyQJjVOLb9u9QxKoC9co41mLuZ";
            if (i3 == 0) {
                list.remove(i2);
                this.A00.AEJ(c07493x2);
                return;
            }
            return;
        }
        if (c07493x.A02 <= c07493x2.A02) {
            c07493x2.A02++;
        } else if (c07493x.A02 < c07493x2.A02 + c07493x2.A01) {
            c07493xAAI = this.A00.AAI(2, c07493x.A02 + 1, (c07493x2.A02 + c07493x2.A01) - c07493x.A02, null);
            c07493x2.A01 = c07493x.A02 - c07493x2.A02;
        }
        if (z2) {
            list.set(i, c07493x2);
            list.remove(i2);
            this.A00.AEJ(c07493x);
            return;
        }
        if (z) {
            if (c07493xAAI != null) {
                if (c07493x.A02 > c07493xAAI.A02) {
                    c07493x.A02 -= c07493xAAI.A01;
                }
                if (c07493x.A01 > c07493xAAI.A02) {
                    c07493x.A01 -= c07493xAAI.A01;
                }
            }
            if (c07493x.A02 > c07493x2.A02) {
                c07493x.A02 -= c07493x2.A01;
            }
            if (c07493x.A01 > c07493x2.A02) {
                c07493x.A01 -= c07493x2.A01;
            }
        } else {
            if (c07493xAAI != null) {
                if (c07493x.A02 >= c07493xAAI.A02) {
                    c07493x.A02 -= c07493xAAI.A01;
                }
                if (c07493x.A01 >= c07493xAAI.A02) {
                    c07493x.A01 -= c07493xAAI.A01;
                }
            }
            if (c07493x.A02 >= c07493x2.A02) {
                c07493x.A02 -= c07493x2.A01;
            }
            if (c07493x.A01 >= c07493x2.A02) {
                c07493x.A01 -= c07493x2.A01;
            }
        }
        list.set(i, c07493x2);
        String[] strArr2 = A01;
        if (strArr2[1].charAt(7) == strArr2[5].charAt(7)) {
            throw new RuntimeException();
        }
        String[] strArr3 = A01;
        strArr3[1] = "R1vl9Esi4EQuoIO0IEs3BYKA9Bp2yfIo";
        strArr3[5] = "ll7MLLjNdpT1F8Cd0W3dCYnGe1w6KT9M";
        if (c07493x.A02 != c07493x.A01) {
            list.set(i2, c07493x);
        } else {
            list.remove(i2);
        }
        if (c07493xAAI != null) {
            list.add(i, c07493xAAI);
        }
    }

    private final void A04(List<C07493x> list, int i, C07493x c07493x, int i2, C07493x c07493x2) {
        C07493x c07493xAAI = null;
        C07493x c07493xAAI2 = null;
        if (c07493x.A01 < c07493x2.A02) {
            c07493x2.A02--;
        } else if (c07493x.A01 < c07493x2.A02 + c07493x2.A01) {
            c07493x2.A01--;
            c07493xAAI = this.A00.AAI(4, c07493x.A02, 1, c07493x2.A03);
        }
        if (c07493x.A02 <= c07493x2.A02) {
            c07493x2.A02++;
        } else if (c07493x.A02 < c07493x2.A02 + c07493x2.A01) {
            int i3 = (c07493x2.A02 + c07493x2.A01) - c07493x.A02;
            c07493xAAI2 = this.A00.AAI(4, c07493x.A02 + 1, i3, c07493x2.A03);
            c07493x2.A01 -= i3;
        }
        list.set(i2, c07493x);
        if (c07493x2.A01 > 0) {
            list.set(i, c07493x2);
        } else {
            list.remove(i);
            this.A00.AEJ(c07493x2);
        }
        if (c07493xAAI != null) {
            list.add(i, c07493xAAI);
        }
        if (c07493xAAI2 != null) {
            list.add(i, c07493xAAI2);
        }
    }

    public final void A05(List<C07493x> list) {
        while (true) {
            int iA00 = A00(list);
            if (iA00 == -1) {
                return;
            } else {
                A01(list, iA00, iA00 + 1);
            }
        }
    }
}

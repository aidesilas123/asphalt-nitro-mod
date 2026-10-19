package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9z, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public abstract class AbstractC08939z {
    public static String[] A00 = {"PM7DSx0y0lrec1UT4WPnkT9xVE7xO4Q3", "BEgdeY8scYjWDgLVGs4ZUut3Hirr2MX3", "ZAPPhI63uMybzXuqxrZ5dKdt3S18BPE9", "MM2rXOZDxF7k2VlV9Dcr24aSmfbMyxXV", "eywYp4IUfN7s09w4sjk3CdaIEMxiykZ2", "eISkZjTp9yJ8vcJJgc2cD29HnvZjEHrc", "bxIeMq2jLgGDMU", "MX4WpiU2EnoJ87vmil9r758WOfjNIsLN"};
    public static final AbstractC08939z A01 = new XQ();

    public abstract int A00();

    public abstract int A01();

    public int A02(int i, int i2, boolean z) {
        switch (i2) {
            case 0:
                if (i == A06(z)) {
                    return -1;
                }
                return i + 1;
            case 1:
                return i;
            case 2:
                return i == A06(z) ? A05(z) : i + 1;
            default:
                throw new IllegalStateException();
        }
    }

    public final int A03(int i, C08919x c08919x, C08929y c08929y, int i2, boolean z) {
        int i3 = A09(i, c08919x).A00;
        if (A0B(i3, c08929y).A01 != i) {
            return i + 1;
        }
        int iA02 = A02(i3, i2, z);
        if (A00[1].charAt(27) != 'r') {
            throw new RuntimeException();
        }
        A00[5] = "vHlQRfGLACzPc9SqhGGMQS9yx8mDrtQw";
        if (iA02 == -1) {
            return -1;
        }
        C08929y c08929yA0B = A0B(iA02, c08929y);
        if (A00[6].length() == 14) {
            A00[5] = "g3EvwHO3x67yk3ScCmOHXM9FC4inpbOU";
            return c08929yA0B.A00;
        }
        String[] strArr = A00;
        strArr[4] = "oJT8BcC7iC9ashzghnGVZpN5rOviRVye";
        strArr[3] = "BXJ5tQfk704SS2XTm0iOlKfvNFhc4WVf";
        return c08929yA0B.A00;
    }

    public abstract int A04(Object obj);

    public int A05(boolean z) {
        return A0E() ? -1 : 0;
    }

    public int A06(boolean z) {
        if (A0E()) {
            return -1;
        }
        return A01() - 1;
    }

    public final Pair<Integer, Long> A07(C08929y c08929y, C08919x c08919x, int i, long j) {
        return A08(c08929y, c08919x, i, j, 0L);
    }

    public final Pair<Integer, Long> A08(C08929y c08929y, C08919x c08919x, int i, long j, long j2) {
        HI.A00(i, 0, A01());
        A0D(i, c08929y, false, j2);
        if (j == C.TIME_UNSET) {
            j = c08929y.A01();
            if (A00[5].charAt(22) != '9') {
                throw new RuntimeException();
            }
            A00[0] = "jYNh2aRlntxjcST03zipQODHWrcZ3Q9N";
            if (j == C.TIME_UNSET) {
                return null;
            }
        }
        int i2 = c08929y.A00;
        long jA03 = c08929y.A03() + j;
        long jA07 = A09(i2, c08919x).A07();
        while (jA07 != C.TIME_UNSET && jA03 >= jA07) {
            int i3 = c08929y.A01;
            if (A00[1].charAt(27) == 'r') {
                String[] strArr = A00;
                strArr[7] = "IuvzXoPM3cIs3JU7ThgGmV6LQ39mYtz4";
                strArr[2] = "DGRaGmTIVAXEwTC12jYPgBDTgoVWDlIc";
                if (i2 >= i3) {
                    break;
                }
                jA03 -= jA07;
                i2++;
                jA07 = A09(i2, c08919x).A07();
            } else {
                throw new RuntimeException();
            }
        }
        return Pair.create(Integer.valueOf(i2), Long.valueOf(jA03));
    }

    public final C08919x A09(int i, C08919x c08919x) {
        return A0A(i, c08919x, false);
    }

    public abstract C08919x A0A(int i, C08919x c08919x, boolean z);

    public final C08929y A0B(int i, C08929y c08929y) {
        return A0C(i, c08929y, false);
    }

    public final C08929y A0C(int i, C08929y c08929y, boolean z) {
        return A0D(i, c08929y, z, 0L);
    }

    public abstract C08929y A0D(int i, C08929y c08929y, boolean z, long j);

    public final boolean A0E() {
        return A01() == 0;
    }

    public final boolean A0F(int i, C08919x c08919x, C08929y c08929y, int i2, boolean z) {
        return A03(i, c08919x, c08929y, i2, z) == -1;
    }
}

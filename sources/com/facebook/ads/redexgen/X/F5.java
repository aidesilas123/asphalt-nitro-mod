package com.facebook.ads.redexgen.X;

import android.net.Uri;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class F5 {
    public final int A00;
    public final int[] A01;
    public final long[] A02;
    public final Uri[] A03;

    public F5() {
        this(-1, new int[0], new Uri[0], new long[0]);
    }

    public F5(int i, int[] iArr, Uri[] uriArr, long[] jArr) {
        HI.A03(iArr.length == uriArr.length);
        this.A00 = i;
        this.A01 = iArr;
        this.A03 = uriArr;
        this.A02 = jArr;
    }

    public final int A00() {
        return A01(-1);
    }

    public final int A01(int i) {
        int i2;
        int i3 = i + 1;
        while (true) {
            int[] iArr = this.A01;
            if (i3 >= iArr.length || (i2 = iArr[i3]) == 0 || i2 == 1) {
                break;
            }
            i3++;
        }
        return i3;
    }

    public final boolean A02() {
        return this.A00 == -1 || A00() < this.A00;
    }
}

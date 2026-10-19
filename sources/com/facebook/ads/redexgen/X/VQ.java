package com.facebook.ads.redexgen.X;

import android.text.SpannableStringBuilder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class VQ implements FW {
    public static byte[] A04;
    public final int A00;
    public final List<VR> A01;
    public final long[] A02;
    public final long[] A03;

    static {
        A01();
    }

    public VQ(List<VR> list) {
        this.A01 = list;
        int size = list.size();
        this.A00 = size;
        this.A02 = new long[size * 2];
        for (int i = 0; i < this.A00; i++) {
            VR vr = list.get(i);
            int i2 = i * 2;
            this.A02[i2] = vr.A01;
            this.A02[i2 + 1] = vr.A00;
        }
        long[] jArr = this.A02;
        long[] jArrCopyOf = Arrays.copyOf(jArr, jArr.length);
        this.A03 = jArrCopyOf;
        Arrays.sort(jArrCopyOf);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 44);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{19};
    }

    @Override // com.facebook.ads.redexgen.X.FW
    public final List<FV> A6T(long j) {
        ArrayList arrayList = null;
        VR vr = null;
        SpannableStringBuilder spannableStringBuilder = null;
        for (int i = 0; i < this.A00; i++) {
            long[] jArr = this.A02;
            if (jArr[i * 2] <= j && j < jArr[(i * 2) + 1]) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                VR vr2 = this.A01.get(i);
                if (!vr2.A00()) {
                    arrayList.add(vr2);
                } else if (vr == null) {
                    vr = vr2;
                } else {
                    String strA00 = A00(0, 1, 53);
                    if (spannableStringBuilder == null) {
                        spannableStringBuilder = new SpannableStringBuilder();
                        spannableStringBuilder.append(vr.A0C).append((CharSequence) strA00).append(vr2.A0C);
                    } else {
                        spannableStringBuilder.append((CharSequence) strA00).append(vr2.A0C);
                    }
                }
            }
        }
        if (spannableStringBuilder != null) {
            arrayList.add(new VR(spannableStringBuilder));
        } else if (vr != null) {
            arrayList.add(vr);
        }
        return arrayList != null ? arrayList : Collections.emptyList();
    }

    @Override // com.facebook.ads.redexgen.X.FW
    public final long A6t(int i) {
        HI.A03(i >= 0);
        HI.A03(i < this.A03.length);
        return this.A03[i];
    }

    @Override // com.facebook.ads.redexgen.X.FW
    public final int A6u() {
        return this.A03.length;
    }

    @Override // com.facebook.ads.redexgen.X.FW
    public final int A7L(long j) {
        int iA0A = C1078Hx.A0A(this.A03, j, false, false);
        if (iA0A < this.A03.length) {
            return iA0A;
        }
        return -1;
    }
}

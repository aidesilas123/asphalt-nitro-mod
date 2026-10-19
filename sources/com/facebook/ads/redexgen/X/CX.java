package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class CX {
    public static String[] A04 = {"1Xip6MK3UX39SbdrhQxDlLsVDK2jyOlR", "AU2BHKQnn2fYqPG5g1tvrnNHtccLtsvW", "5fujN1flEc5Me9dyDOpwJW6OKLh1geLG", "d2hyRAFooTRyki1bdAaACMGjhokH1kbm", "1id0n4LmWumjAHQEVAwGAQFe8ZjykTcE", "nyz5FVBYTM1P8JU78hecVl8rttPnaVCa", "YJ", "Rq"};
    public int A00;
    public int A01;
    public final int A02;
    public final byte[] A03;

    public CX(byte[] bArr) {
        this.A03 = bArr;
        this.A02 = bArr.length;
    }

    private void A00() {
        int i;
        int i2 = this.A01;
        HI.A04(i2 >= 0 && (i2 < (i = this.A02) || (i2 == i && this.A00 == 0)));
    }

    public final int A01() {
        return (this.A01 * 8) + this.A00;
    }

    public final int A02(int i) {
        int i2 = this.A01;
        int iMin = Math.min(i, 8 - this.A00);
        int i3 = i2 + 1;
        int i4 = ((this.A03[i2] & 255) >> this.A00) & (255 >> (8 - iMin));
        while (iMin < i) {
            i4 |= (this.A03[i3] & 255) << iMin;
            iMin += 8;
            i3++;
        }
        int i5 = i4 & ((-1) >>> (32 - i));
        A03(i);
        return i5;
    }

    public final void A03(int i) {
        int i2 = i / 8;
        int i3 = this.A01 + i2;
        this.A01 = i3;
        int i4 = this.A00 + (i - (i2 * 8));
        this.A00 = i4;
        if (i4 > 7) {
            this.A01 = i3 + 1;
            this.A00 = i4 - 8;
        }
        A00();
        String[] strArr = A04;
        if (strArr[6].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        A04[2] = "0KTU32mldvOu3DR9Ufqh7FWixRDNtvi7";
    }

    public final boolean A04() {
        boolean z = (((this.A03[this.A01] & 255) >> this.A00) & 1) == 1;
        A03(1);
        return z;
    }
}

package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class Ch {
    public static String[] A04 = {"2qF5pOFs0IqpaE", "RfbD", "IXwzeXFQZ", "dH", "BZS0QFjYyMMtKdvz4XAttyOti7UPpZp6", "Ysa0lHORyV9SROuBxKvF6aLHu99ippeO", "IeuKB6uAyoApG9pIT7", "E"};
    public static final byte[] A05 = {0, 0, 1};
    public int A00;
    public int A01;
    public byte[] A02;
    public boolean A03;

    public Ch(int i) {
        this.A02 = new byte[i];
    }

    public final void A00() {
        this.A03 = false;
        this.A00 = 0;
        this.A01 = 0;
    }

    public final void A01(byte[] bArr, int i, int i2) {
        if (this.A03) {
            int i3 = i2 - i;
            byte[] bArr2 = this.A02;
            int length = bArr2.length;
            int i4 = this.A00;
            if (length < i4 + i3) {
                int i5 = i4 + i3;
                String[] strArr = A04;
                if (strArr[3].length() == strArr[0].length()) {
                    throw new RuntimeException();
                }
                A04[6] = "v6SEB1OgzyQ0Lh40gt";
                this.A02 = Arrays.copyOf(bArr2, i5 * 2);
            }
            System.arraycopy(bArr, i, this.A02, this.A00, i3);
            this.A00 += i3;
        }
    }

    public final boolean A02(int i, int i2) {
        if (this.A03) {
            int i3 = this.A00 - i2;
            this.A00 = i3;
            if (this.A01 != 0 || i != 181) {
                this.A03 = false;
                return true;
            }
            this.A01 = i3;
        } else if (i == 179) {
            this.A03 = true;
        }
        byte[] bArr = A05;
        A01(bArr, 0, bArr.length);
        return false;
    }
}

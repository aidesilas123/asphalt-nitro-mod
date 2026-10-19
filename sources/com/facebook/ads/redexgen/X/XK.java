package com.facebook.ads.redexgen.X;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class XK implements AJ {
    public static String[] A06 = {"ah04u6Q1dWL1egRXsMbkKPPKVNg3n80Y", "1r3Xl", "QdGXgsTRn6hV21sTZ0R1NqLOMYSBKtb", "W5J07OSQmEt2BpZCmOH8LkruncIVNrBM", "eos", "Srtad58bv8C1EQlDg1Sg05LzKtWehsxy", "6l07m1yopJeFlxaeyKeGX2bioVISysWk", "EvvDtS6FF2cIgMDn1y2HucXqTtg4jIlT"};
    public static final int A07 = Float.floatToIntBits(Float.NaN);
    public boolean A05;
    public int A01 = -1;
    public int A00 = -1;
    public int A02 = 0;
    public ByteBuffer A03 = AJ.A00;
    public ByteBuffer A04 = AJ.A00;

    public static void A00(int i, ByteBuffer byteBuffer) {
        int iFloatToIntBits = Float.floatToIntBits((float) (((double) i) * 4.656612875245797E-10d));
        if (iFloatToIntBits == A07) {
            String[] strArr = A06;
            if (strArr[3].charAt(25) == strArr[0].charAt(25)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A06;
            strArr2[3] = "4Wp1fSxBSz27MSPaqgAWdYVJBUm2UDMg";
            strArr2[0] = "ROimvzAXRxuGV4aswmxntShxO5JnpSBy";
            iFloatToIntBits = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(iFloatToIntBits);
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final boolean A4N(int i, int i2, int i3) throws AI {
        if (!C1078Hx.A0b(i3)) {
            throw new AI(i, i2, i3);
        }
        if (this.A01 == i && this.A00 == i2 && this.A02 == i3) {
            return false;
        }
        this.A01 = i;
        this.A00 = i2;
        this.A02 = i3;
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final ByteBuffer A7O() {
        ByteBuffer byteBuffer = this.A04;
        this.A04 = AJ.A00;
        return byteBuffer;
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final int A7P() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final int A7Q() {
        return 4;
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final int A7R() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final boolean A8l() {
        return C1078Hx.A0b(this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final boolean A8q() {
        if (this.A05) {
            ByteBuffer byteBuffer = this.A04;
            String[] strArr = A06;
            if (strArr[5].charAt(19) == strArr[7].charAt(19)) {
                throw new RuntimeException();
            }
            A06[6] = "qfZMyeN6d8pBtgFrDPBavvok2D4WqpK2";
            if (byteBuffer == AJ.A00) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final void AE6() {
        this.A05 = true;
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final void AE7(ByteBuffer byteBuffer) {
        boolean z = this.A02 == 1073741824;
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i = iLimit - iPosition;
        if (!z) {
            i = (i / 3) * 4;
        }
        if (this.A03.capacity() < i) {
            this.A03 = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.A03.clear();
        }
        if (z) {
            while (iPosition < iLimit) {
                int i2 = byteBuffer.get(iPosition) & 255;
                if (A06[6].charAt(28) == 'f') {
                    throw new RuntimeException();
                }
                String[] strArr = A06;
                strArr[5] = "tg0osbUMfAK2L8b7LXggWdc0GJyIN6RO";
                strArr[7] = "LN5IASfbHFxc5GOwRpJRg3zlfXbH1jQ8";
                A00(i2 | ((byteBuffer.get(iPosition + 1) & 255) << 8) | ((byteBuffer.get(iPosition + 2) & 255) << 16) | ((byteBuffer.get(iPosition + 3) & 255) << 24), this.A03);
                iPosition += 4;
            }
        } else {
            while (iPosition < iLimit) {
                A00(((byteBuffer.get(iPosition) & 255) << 8) | ((byteBuffer.get(iPosition + 1) & 255) << 16) | ((byteBuffer.get(iPosition + 2) & 255) << 24), this.A03);
                iPosition += 3;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        this.A03.flip();
        this.A04 = this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final void flush() {
        this.A04 = AJ.A00;
        this.A05 = false;
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final void reset() {
        flush();
        this.A01 = -1;
        this.A00 = -1;
        this.A02 = 0;
        this.A03 = AJ.A00;
    }
}

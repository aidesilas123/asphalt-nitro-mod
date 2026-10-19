package com.facebook.ads.redexgen.X;

import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public abstract class BP extends XC<BO, BN, FX> implements InterfaceC1415Vc {
    public static byte[] A01;
    public final String A00;

    static {
        A0J();
    }

    public BP(String str) {
        super(new BO[2], new BN[2]);
        this.A00 = str;
        A0Y(1024);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.facebook.ads.redexgen.X.3C] */
    @Override // com.facebook.ads.redexgen.X.XC
    /* JADX INFO: renamed from: A0E, reason: merged with bridge method [inline-methods] */
    public final C3C A0V() {
        return new BN(this) { // from class: com.facebook.ads.redexgen.X.3C
            public final BP A00;

            {
                this.A00 = this;
            }

            @Override // com.facebook.ads.redexgen.X.BN
            public final void A08() {
                this.A00.A0a(this);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.XC
    /* JADX INFO: renamed from: A0F, reason: merged with bridge method [inline-methods] */
    public final FX A0W(BO bo, BN bn, boolean z) {
        try {
            ByteBuffer byteBuffer = bo.A01;
            bn.A09(((XE) bo).A00, A0b(byteBuffer.array(), byteBuffer.limit(), z), bo.A00);
            bn.A01(Integer.MIN_VALUE);
            return null;
        } catch (FX e2) {
            return e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.XC
    /* JADX INFO: renamed from: A0G, reason: merged with bridge method [inline-methods] */
    public final FX A0X(Throwable th) {
        return new FX(A0I(0, 23, 36), th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.XC
    /* JADX INFO: renamed from: A0H, reason: merged with bridge method [inline-methods] */
    public final BO A0T() {
        return new BO();
    }

    public static String A0I(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 67);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0J() {
        A01 = new byte[]{-68, -43, -52, -33, -41, -52, -54, -37, -52, -53, -121, -53, -52, -54, -42, -53, -52, -121, -52, -39, -39, -42, -39};
    }

    public abstract FW A0b(byte[] bArr, int i, boolean z) throws FX;

    @Override // com.facebook.ads.redexgen.X.XC
    /* JADX INFO: renamed from: A0c, reason: merged with bridge method [inline-methods] */
    public final void A0a(BN bn) {
        super.A0a(bn);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1415Vc
    public final void AFQ(long j) {
    }
}

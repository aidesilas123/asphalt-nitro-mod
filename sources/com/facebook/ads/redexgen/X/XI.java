package com.facebook.ads.redexgen.X;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class XI implements AJ {
    public static String[] A06 = {"LkLK", "abA9PNMrvscgwbqokpbH2", "wszIi3vfQywtet5OFqyTWUvoUYNS5ktb", "liexkOjxlVrdDutCVl0EvpIg3k3OXdWT", "uDjcyehsvUvWAc8oFKsUcicvrdYrbu", "Yx0xuqb7ConKzBOp6wI44fmqMUTcgjwu", "2AEFdY1ASteFDfy1ihWDcuoiihyMOIox", "2HHuLOzdt0KrTaQRoJg3USXKVGpaMcoz"};
    public boolean A05;
    public int A02 = -1;
    public int A00 = -1;
    public int A01 = 0;
    public ByteBuffer A03 = AJ.A00;
    public ByteBuffer A04 = AJ.A00;

    @Override // com.facebook.ads.redexgen.X.AJ
    public final boolean A4N(int i, int i2, int i3) throws AI {
        if (i3 != 3 && i3 != 2 && i3 != Integer.MIN_VALUE && i3 != 1073741824) {
            throw new AI(i, i2, i3);
        }
        if (this.A02 != i || this.A00 != i2 || this.A01 != i3) {
            this.A02 = i;
            this.A00 = i2;
            this.A01 = i3;
            return true;
        }
        String[] strArr = A06;
        if (strArr[5].charAt(14) == strArr[3].charAt(14)) {
            throw new RuntimeException();
        }
        A06[4] = "26RCfMYW5Do9ItFOuFHGepjFl0G7YQ";
        return false;
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
        return 2;
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final int A7R() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final boolean A8l() {
        int i = this.A01;
        return (i == 0 || i == 2) ? false : true;
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final boolean A8q() {
        return this.A05 && this.A04 == AJ.A00;
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final void AE6() {
        this.A05 = true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.facebook.ads.redexgen.X.AJ
    public final void AE7(ByteBuffer byteBuffer) {
        int i;
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i2 = iLimit - iPosition;
        switch (this.A01) {
            case Integer.MIN_VALUE:
                i = (i2 / 3) * 2;
                break;
            case 3:
                i = i2 * 2;
                break;
            case 1073741824:
                i = i2 / 2;
                break;
            default:
                throw new IllegalStateException();
        }
        if (this.A03.capacity() < i) {
            ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
            String[] strArr = A06;
            if (strArr[5].charAt(14) == strArr[3].charAt(14)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A06;
            strArr2[6] = "hXv0xOe0fZxBP6BjMdwou1g9whaCh4Nv";
            strArr2[7] = "rvzJSg8TnEJLrC3bKKMSDNtobyDED6VD";
            this.A03 = byteBufferOrder;
        } else {
            this.A03.clear();
        }
        switch (this.A01) {
            case Integer.MIN_VALUE:
                while (iPosition < iLimit) {
                    this.A03.put(byteBuffer.get(iPosition + 1));
                    this.A03.put(byteBuffer.get(iPosition + 2));
                    iPosition += 3;
                }
                byteBuffer.position(byteBuffer.limit());
                this.A03.flip();
                this.A04 = this.A03;
                return;
            case 3:
                while (iPosition < iLimit) {
                    this.A03.put((byte) 0);
                    ByteBuffer byteBuffer2 = this.A03;
                    byte b = (byte) ((byteBuffer.get(iPosition) & 255) - 128);
                    if (A06[1].length() != 4) {
                        String[] strArr3 = A06;
                        strArr3[5] = "93yfqVEE4BL66fKyhULGxcexfiDPz3ma";
                        strArr3[3] = "pJFS3cGyfO0gWrhajAAEFVsdSj1hVUV9";
                        byteBuffer2.put(b);
                        iPosition++;
                    } else {
                        byteBuffer2.put(b);
                        iPosition++;
                    }
                }
                byteBuffer.position(byteBuffer.limit());
                this.A03.flip();
                this.A04 = this.A03;
                return;
            case 1073741824:
                while (iPosition < iLimit) {
                    this.A03.put(byteBuffer.get(iPosition + 2));
                    this.A03.put(byteBuffer.get(iPosition + 3));
                    iPosition += 4;
                }
                byteBuffer.position(byteBuffer.limit());
                this.A03.flip();
                this.A04 = this.A03;
                return;
            default:
                throw new IllegalStateException();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final void flush() {
        this.A04 = AJ.A00;
        this.A05 = false;
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final void reset() {
        flush();
        this.A02 = -1;
        this.A00 = -1;
        this.A01 = 0;
        this.A03 = AJ.A00;
    }
}

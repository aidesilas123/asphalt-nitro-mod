package com.facebook.ads.redexgen.X;

import android.support.v4.media.session.PlaybackStateCompat;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class XG implements AJ {
    public static String[] A0D = {"pWxjFsNDaGkCJOJIXf3nBpXapJRDFAns", "UkLwcPvzhTn0p2HYHg4j6N15VQJC2l4J", "YJRY7F74jhCJ9GxMtbKfeDIDzZlQRHvd", "", "", "sMHZoQnzt9jO1PxekMXjLs1IjEAfMk8v", "KagcOA94TBJJAh6RgnCdHwb09FdTTp2T", "s5OQD0o5JvIPNjQnPDHHdNmWUeQWTVLd"};
    public int A04;
    public long A06;
    public long A07;
    public C0908Ao A08;
    public ByteBuffer A09;
    public ByteBuffer A0A;
    public ShortBuffer A0B;
    public boolean A0C;
    public float A01 = 1.0f;
    public float A00 = 1.0f;
    public int A02 = -1;
    public int A05 = -1;
    public int A03 = -1;

    public XG() {
        ByteBuffer byteBuffer = AJ.A00;
        this.A09 = byteBuffer;
        this.A0B = byteBuffer.asShortBuffer();
        this.A0A = AJ.A00;
        this.A04 = -1;
    }

    public final float A00(float f2) {
        float fA00 = C1078Hx.A00(f2, 0.1f, 8.0f);
        if (this.A00 != fA00) {
            this.A00 = fA00;
            this.A08 = null;
        }
        flush();
        return fA00;
    }

    public final float A01(float f2) {
        float fA00 = C1078Hx.A00(f2, 0.1f, 8.0f);
        if (this.A01 != fA00) {
            this.A01 = fA00;
            this.A08 = null;
        }
        flush();
        return fA00;
    }

    public final long A02(long j) {
        long j2 = this.A07;
        if (j2 < PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) {
            return (long) (((double) this.A01) * j);
        }
        int i = this.A03;
        int i2 = this.A05;
        if (A0D[5].charAt(5) != 'Q') {
            throw new RuntimeException();
        }
        A0D[1] = "wo8T89BmhgCv6RPfRPDSoWflpmmFSmBw";
        return i == i2 ? C1078Hx.A0F(j, this.A06, j2) : C1078Hx.A0F(j, this.A06 * ((long) i), j2 * ((long) i2));
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final boolean A4N(int i, int i2, int i3) throws AI {
        if (i3 != 2) {
            throw new AI(i, i2, i3);
        }
        int i4 = this.A04;
        if (i4 == -1) {
            i4 = i;
        }
        if (this.A05 == i && this.A02 == i2 && this.A03 == i4) {
            return false;
        }
        this.A05 = i;
        this.A02 = i2;
        this.A03 = i4;
        this.A08 = null;
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final ByteBuffer A7O() {
        ByteBuffer byteBuffer = this.A0A;
        this.A0A = AJ.A00;
        return byteBuffer;
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final int A7P() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final int A7Q() {
        return 2;
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final int A7R() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final boolean A8l() {
        return this.A05 != -1 && (Math.abs(this.A01 - 1.0f) >= 0.01f || Math.abs(this.A00 - 1.0f) >= 0.01f || this.A03 != this.A05);
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final boolean A8q() {
        C0908Ao c0908Ao;
        return this.A0C && ((c0908Ao = this.A08) == null || c0908Ao.A0H() == 0);
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final void AE6() {
        HI.A04(this.A08 != null);
        this.A08.A0J();
        this.A0C = true;
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final void AE7(ByteBuffer byteBuffer) {
        HI.A04(this.A08 != null);
        boolean zHasRemaining = byteBuffer.hasRemaining();
        if (A0D[1].charAt(8) != 'h') {
            throw new RuntimeException();
        }
        A0D[0] = "CgSP7s2gOF1CWMy2qVo8ASfS0wZJy2y3";
        if (zHasRemaining) {
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.A06 += (long) iRemaining;
            this.A08.A0L(shortBufferAsShortBuffer);
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
        int iA0H = this.A08.A0H() * this.A02 * 2;
        if (iA0H > 0) {
            if (this.A09.capacity() < iA0H) {
                ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(iA0H).order(ByteOrder.nativeOrder());
                this.A09 = byteBufferOrder;
                this.A0B = byteBufferOrder.asShortBuffer();
            } else {
                this.A09.clear();
                this.A0B.clear();
            }
            this.A08.A0K(this.A0B);
            this.A07 += (long) iA0H;
            this.A09.limit(iA0H);
            this.A0A = this.A09;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final void flush() {
        if (A8l()) {
            C0908Ao c0908Ao = this.A08;
            if (c0908Ao == null) {
                this.A08 = new C0908Ao(this.A05, this.A02, this.A01, this.A00, this.A03);
            } else {
                c0908Ao.A0I();
            }
        }
        this.A0A = AJ.A00;
        this.A06 = 0L;
        this.A07 = 0L;
        this.A0C = false;
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final void reset() {
        this.A01 = 1.0f;
        this.A00 = 1.0f;
        this.A02 = -1;
        this.A05 = -1;
        this.A03 = -1;
        ByteBuffer byteBuffer = AJ.A00;
        this.A09 = byteBuffer;
        this.A0B = byteBuffer.asShortBuffer();
        this.A0A = AJ.A00;
        this.A04 = -1;
        this.A08 = null;
        this.A06 = 0L;
        this.A07 = 0L;
        this.A0C = false;
    }
}

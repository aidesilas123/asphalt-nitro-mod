package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Arrays;
import java.util.Collections;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class WJ implements InterfaceC0941Cg {
    public static byte[] A0D;
    public static final double[] A0E;
    public long A00;
    public long A01;
    public long A02;
    public long A03;
    public long A04;
    public InterfaceC0930Bm A05;
    public String A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public final boolean[] A0C = new boolean[4];
    public final Ch A0B = new Ch(128);

    static {
        A02();
        A0E = new double[]{23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    }

    public static Pair<Format, Long> A00(Ch ch, String str) {
        byte[] bArrCopyOf = Arrays.copyOf(ch.A02, ch.A00);
        int i = bArrCopyOf[4] & 255;
        int i2 = bArrCopyOf[5] & 255;
        int i3 = (i << 4) | (i2 >> 4);
        int i4 = ((i2 & 15) << 8) | (bArrCopyOf[6] & 255);
        float f2 = 1.0f;
        switch ((bArrCopyOf[7] & 240) >> 4) {
            case 2:
                f2 = (i4 * 4) / (i3 * 3);
                break;
            case 3:
                f2 = (i4 * 16) / (i3 * 9);
                break;
            case 4:
                f2 = (i4 * 121) / (i3 * 100);
                break;
        }
        Format formatA03 = Format.A03(str, A01(0, 11, 121), null, -1, -1, i3, i4, -1.0f, Collections.singletonList(bArrCopyOf), -1, f2, null);
        long j = 0;
        int i5 = (bArrCopyOf[7] & Ascii.SI) - 1;
        if (i5 >= 0) {
            double[] dArr = A0E;
            if (i5 < dArr.length) {
                double d2 = dArr[i5];
                int i6 = ch.A01;
                int i7 = (bArrCopyOf[i6 + 9] & 96) >> 5;
                int i8 = bArrCopyOf[i6 + 9] & Ascii.US;
                if (i7 != i8) {
                    d2 *= (((double) i7) + 1.0d) / ((double) (i8 + 1));
                }
                j = (long) (1000000.0d / d2);
            }
        }
        return Pair.create(formatA03, Long.valueOf(j));
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 8);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0D = new byte[]{7, Ascii.CAN, Ascii.NAK, Ascii.DC4, Ascii.RS, 94, Ascii.FS, 1, Ascii.DC4, Ascii.SYN, 67};
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void A4O(C1062Hh c1062Hh) {
        int iA06 = c1062Hh.A06();
        int iA07 = c1062Hh.A07();
        byte[] bArr = c1062Hh.A00;
        this.A04 += (long) c1062Hh.A04();
        this.A05.AEr(c1062Hh, c1062Hh.A04());
        while (true) {
            int iA04 = C1058Hd.A04(bArr, iA06, iA07, this.A0C);
            if (iA04 == iA07) {
                break;
            }
            int i = c1062Hh.A00[iA04 + 3] & 255;
            if (!this.A07) {
                int i2 = iA04 - iA06;
                if (i2 > 0) {
                    this.A0B.A01(bArr, iA06, iA04);
                }
                if (this.A0B.A02(i, i2 < 0 ? -i2 : 0)) {
                    Pair<Format, Long> pairA00 = A00(this.A0B, this.A06);
                    this.A05.A5j((Format) pairA00.first);
                    this.A00 = ((Long) pairA00.second).longValue();
                    this.A07 = true;
                }
            }
            if (i == 0 || i == 179) {
                int i3 = iA07 - iA04;
                if (this.A0A && this.A08 && this.A07) {
                    this.A05.AEs(this.A03, this.A09 ? 1 : 0, ((int) (this.A04 - this.A02)) - i3, i3, null);
                }
                boolean z = this.A0A;
                if (!z || this.A08) {
                    this.A02 = this.A04 - ((long) i3);
                    long j = this.A01;
                    if (j == C.TIME_UNSET) {
                        j = z ? this.A03 + this.A00 : 0L;
                    }
                    this.A03 = j;
                    this.A09 = false;
                    this.A01 = C.TIME_UNSET;
                    this.A0A = true;
                }
                this.A08 = i == 0;
            } else if (i == 184) {
                this.A09 = true;
            }
            iA06 = iA04 + 3;
        }
        if (this.A07) {
            return;
        }
        this.A0B.A01(bArr, iA06, iA07);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void A4l(InterfaceC0922Bc interfaceC0922Bc, C0952Cu c0952Cu) {
        c0952Cu.A05();
        this.A06 = c0952Cu.A04();
        this.A05 = interfaceC0922Bc.AFx(c0952Cu.A03(), 2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void ADi() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void ADj(long j, boolean z) {
        this.A01 = j;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void AEv() {
        C1058Hd.A0B(this.A0C);
        this.A0B.A00();
        this.A04 = 0L;
        this.A0A = false;
    }
}

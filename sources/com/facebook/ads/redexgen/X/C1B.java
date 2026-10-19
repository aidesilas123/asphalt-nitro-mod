package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.pm.PackageManager;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.view.Surface;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.1B, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class C1B extends C3E implements HY {
    public static byte[] A0E;
    public static String[] A0F = {"2QlMa6qwn7PgdSN4l85jvs7nWajl1MES", "7IDLWOxlh1sFSIB31zRzFYQ7PMnWp72Y", "sIqK", "BoflpFUQeBwwM6pd17Qd", "rQg4TubfQMsXj8fsx3Kc9qFAo71Wl6cI", "0mBM", "Xb0wUTlMwSXhcbJOEuklFsawZUYnk", "6gVYRFlBQUgMJoz7eJC1LBuasB8Ybt5d"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public long A05;
    public MediaFormat A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public final Context A0B;
    public final AQ A0C;
    public final AW A0D;

    static {
        A06();
    }

    public C1B(Context context, D4 d4, BK<X6> bk, boolean z, Handler handler, AR ar, AC ac, AJ... ajArr) {
        this(context, d4, bk, z, handler, ar, new XL(ac, ajArr));
    }

    public C1B(Context context, D4 d4, BK<X6> bk, boolean z, Handler handler, AR ar, AW aw) {
        super(1, d4, bk, z);
        this.A0B = context.getApplicationContext();
        this.A0D = aw;
        this.A0C = new AQ(handler, ar);
        aw.AFJ(new XJ(this));
    }

    private int A00(C0956Cy c0956Cy, Format format) {
        PackageManager packageManager;
        if (C1078Hx.A02 < 24 && A04(15, 22, 10).equals(c0956Cy.A02)) {
            boolean z = true;
            if (C1078Hx.A02 == 23 && (packageManager = this.A0B.getPackageManager()) != null && packageManager.hasSystemFeature(A04(37, 25, 77))) {
                z = false;
            }
            if (z) {
                return -1;
            }
        }
        return format.A09;
    }

    private final int A01(C0956Cy c0956Cy, Format format, Format[] formatArr) {
        return A00(c0956Cy, format);
    }

    private final MediaFormat A02(Format format, String str, int i) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString(A04(113, 4, 45), str);
        mediaFormat.setInteger(A04(71, 13, 29), format.A05);
        mediaFormat.setInteger(A04(125, 11, 77), format.A0C);
        DA.A06(mediaFormat, format.A0P);
        DA.A04(mediaFormat, A04(99, 14, 124), i);
        if (C1078Hx.A02 >= 23) {
            mediaFormat.setInteger(A04(117, 8, 28), 0);
        }
        return mediaFormat;
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 67);
        }
        return new String(bArrCopyOfRange);
    }

    private void A05() {
        long jA6Y = this.A0D.A6Y(A8q());
        if (jA6Y != Long.MIN_VALUE) {
            if (!this.A08) {
                jA6Y = Math.max(this.A05, jA6Y);
            }
            this.A05 = jA6Y;
            this.A08 = false;
        }
    }

    public static void A06() {
        A0E = new byte[]{37, 39, 50, 68, 57, 47, 41, 68, Ascii.VT, Ascii.VT, 9, 68, Ascii.SO, Ascii.SI, 9, 6, 4, 17, 103, 46, 38, 38, 46, 37, 44, 103, 59, 40, 62, 103, 45, 44, 42, 38, 45, 44, 59, 111, 96, 106, 124, 97, 103, 106, 32, 125, 97, 104, 122, 121, 111, 124, 107, 32, 98, 107, 111, 96, 108, 111, 109, 101, 108, 120, 105, 100, 98, 34, Ascii.DEL, 108, 122, 61, 54, 63, 48, 48, 59, 50, 115, 61, 49, 43, 48, 42, 59, 54, 33, 60, 63, 39, 54, Ascii.CR, 0, Ascii.ETB, 10, Ascii.DC4, 9, 17, 0, 82, 94, 71, Ascii.DC2, 86, 81, 79, 74, 75, Ascii.DC2, 76, 86, 69, 90, 3, 7, 3, Ascii.VT, 47, 45, 54, 48, 45, 54, 43, 38, 125, 111, 99, 126, 98, 107, 35, 124, 111, 122, 107, Ascii.GS, Ascii.SI, 3, Ascii.GS, Ascii.ESC, 0, 9, 72, 87, 64, 93, 84, 94, 70, 87};
    }

    public static boolean A08(String str) {
        if (C1078Hx.A02 < 24 && A04(0, 15, 41).equals(str)) {
            if (A04(136, 7, 45).equals(C1078Hx.A05)) {
                if (!C1078Hx.A03.startsWith(A04(143, 8, 113)) && !C1078Hx.A03.startsWith(A04(84, 7, 16))) {
                    boolean zStartsWith = C1078Hx.A03.startsWith(A04(91, 8, 38));
                    if (A0F[0].charAt(11) == 'E') {
                        throw new RuntimeException();
                    }
                    A0F[7] = "opGrTNmI0QvRBzLgsKXfoISibxDPDheH";
                    if (zStartsWith) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    private final boolean A09(String str) {
        int iA00 = C1055Ha.A00(str);
        return iA00 != 0 && this.A0D.A8p(iA00);
    }

    @Override // com.facebook.ads.redexgen.X.C3E, com.facebook.ads.redexgen.X.AbstractC0964Dl
    public final void A12() {
        try {
            this.A0D.AEO();
            try {
                super.A12();
                this.A0U.A00();
                this.A0C.A04(this.A0U);
                String[] strArr = A0F;
                if (strArr[5].length() != strArr[2].length()) {
                    throw new RuntimeException();
                }
                A0F[0] = "oD9vMZ2y7vvHJ8P8Vn8jWHJMMQFHYWzQ";
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.A12();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C3E, com.facebook.ads.redexgen.X.AbstractC0964Dl
    public final void A13() {
        super.A13();
        this.A0D.ADs();
    }

    @Override // com.facebook.ads.redexgen.X.C3E, com.facebook.ads.redexgen.X.AbstractC0964Dl
    public final void A14() {
        A05();
        this.A0D.pause();
        super.A14();
    }

    @Override // com.facebook.ads.redexgen.X.C3E, com.facebook.ads.redexgen.X.AbstractC0964Dl
    public final void A15(long j, boolean z) throws C9K {
        super.A15(j, z);
        this.A0D.reset();
        this.A05 = j;
        this.A07 = true;
        this.A08 = true;
    }

    @Override // com.facebook.ads.redexgen.X.C3E, com.facebook.ads.redexgen.X.AbstractC0964Dl
    public final void A16(boolean z) throws C9K {
        super.A16(z);
        this.A0C.A05(this.A0U);
        int i = A11().A00;
        if (i != 0) {
            this.A0D.A5R(i);
        } else {
            this.A0D.A54();
        }
    }

    @Override // com.facebook.ads.redexgen.X.C3E
    public final int A1A(MediaCodec mediaCodec, C0956Cy c0956Cy, Format format, Format format2) {
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00bd A[PHI: r1
      0x00bd: PHI (r1v7 int) = (r1v5 int), (r1v10 int) binds: [B:61:0x00db, B:48:0x00bb] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c5 A[PHI: r1
      0x00c5: PHI (r1v6 int) = (r1v5 int), (r1v7 int), (r1v10 int) binds: [B:61:0x00db, B:50:0x00c3, B:48:0x00bb] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d1  */
    @Override // com.facebook.ads.redexgen.X.C3E
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int A1B(com.facebook.ads.redexgen.X.D4 r15, com.facebook.ads.redexgen.X.BK<com.facebook.ads.redexgen.X.X6> r16, com.facebook.ads.internal.exoplayer2.thirdparty.Format r17) throws com.facebook.ads.redexgen.X.D7 {
        /*
            Method dump skipped, instruction units count: 222
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1B.A1B(com.facebook.ads.redexgen.X.D4, com.facebook.ads.redexgen.X.BK, com.facebook.ads.internal.exoplayer2.thirdparty.Format):int");
    }

    @Override // com.facebook.ads.redexgen.X.C3E
    public final C0956Cy A1E(D4 d4, Format format, boolean z) throws D7 {
        C0956Cy c0956CyA7U;
        return (!A09(format.A0O) || (c0956CyA7U = d4.A7U()) == null) ? super.A1E(d4, format, z) : c0956CyA7U;
    }

    @Override // com.facebook.ads.redexgen.X.C3E
    public final void A1H() throws C9K {
        try {
            this.A0D.ADt();
        } catch (AV e2) {
            throw C9K.A01(e2, A0y());
        }
    }

    @Override // com.facebook.ads.redexgen.X.C3E
    public final void A1K(MediaCodec mediaCodec, MediaFormat mediaFormat) throws C9K {
        int iA00;
        int[] iArr;
        int i;
        MediaFormat mediaFormat2 = this.A06;
        if (mediaFormat2 != null) {
            String string = mediaFormat2.getString(A04(113, 4, 45));
            String[] strArr = A0F;
            if (strArr[5].length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0F;
            strArr2[5] = "rkxX";
            strArr2[2] = "9ODr";
            iA00 = C1055Ha.A00(string);
            mediaFormat = this.A06;
        } else {
            iA00 = this.A04;
        }
        int integer = mediaFormat.getInteger(A04(71, 13, 29));
        int integer2 = mediaFormat.getInteger(A04(125, 11, 77));
        if (this.A09 && integer == 6 && (i = this.A00) < 6) {
            iArr = new int[i];
            for (int i2 = 0; i2 < this.A00; i2++) {
                iArr[i2] = i2;
            }
        } else {
            iArr = null;
        }
        try {
            this.A0D.A4M(iA00, integer, integer2, 0, iArr, this.A02, this.A03);
        } catch (AS e2) {
            throw C9K.A01(e2, A0y());
        }
    }

    @Override // com.facebook.ads.redexgen.X.C3E
    public final void A1L(Format format) throws C9K {
        super.A1L(format);
        this.A0C.A03(format);
        this.A04 = A04(62, 9, 78).equals(format.A0O) ? format.A0A : 2;
        this.A00 = format.A05;
        this.A02 = format.A06;
        this.A03 = format.A07;
    }

    @Override // com.facebook.ads.redexgen.X.C3E
    public final void A1M(XE xe) {
        if (!this.A07 || xe.A03()) {
            return;
        }
        if (Math.abs(xe.A00 - this.A05) > 500000) {
            this.A05 = xe.A00;
        }
        this.A07 = false;
    }

    @Override // com.facebook.ads.redexgen.X.C3E
    public final void A1N(C0956Cy c0956Cy, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto) {
        this.A01 = A01(c0956Cy, format, A19());
        this.A09 = A08(c0956Cy.A02);
        this.A0A = c0956Cy.A04;
        MediaFormat mediaFormatA02 = A02(format, c0956Cy.A01 == null ? A04(62, 9, 78) : c0956Cy.A01, this.A01);
        mediaCodec.configure(mediaFormatA02, (Surface) null, mediaCrypto, 0);
        if (!this.A0A) {
            this.A06 = null;
        } else {
            this.A06 = mediaFormatA02;
            mediaFormatA02.setString(A04(113, 4, 45), format.A0O);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C3E
    public final void A1O(String str, long j, long j2) {
        this.A0C.A06(str, j, j2);
    }

    @Override // com.facebook.ads.redexgen.X.C3E
    public final boolean A1P(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws C9K {
        if (this.A0A && (i2 & 2) != 0) {
            mediaCodec.releaseOutputBuffer(i, false);
            return true;
        }
        if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            this.A0U.A08++;
            this.A0D.A8K();
            return true;
        }
        try {
            if (!this.A0D.A8H(byteBuffer, j3)) {
                return false;
            }
            mediaCodec.releaseOutputBuffer(i, false);
            this.A0U.A06++;
            return true;
        } catch (AT | AV e2) {
            throw C9K.A01(e2, A0y());
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0964Dl, com.facebook.ads.redexgen.X.XS
    public final HY A7F() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.HY
    public final C08749f A7Z() {
        return this.A0D.A7Z();
    }

    @Override // com.facebook.ads.redexgen.X.HY
    public final long A7c() {
        if (A7t() == 2) {
            A05();
        }
        return this.A05;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0964Dl, com.facebook.ads.redexgen.X.InterfaceC08849p
    public final void A8L(int i, Object obj) throws C9K {
        switch (i) {
            case 2:
                this.A0D.setVolume(((Float) obj).floatValue());
                break;
            case 3:
                this.A0D.AF8((AB) obj);
                break;
            default:
                super.A8L(i, obj);
                break;
        }
    }

    @Override // com.facebook.ads.redexgen.X.C3E, com.facebook.ads.redexgen.X.XS
    public final boolean A8q() {
        return super.A8q() && this.A0D.A8q();
    }

    @Override // com.facebook.ads.redexgen.X.C3E, com.facebook.ads.redexgen.X.XS
    public final boolean A90() {
        return this.A0D.A8P() || super.A90();
    }

    @Override // com.facebook.ads.redexgen.X.HY
    public final C08749f AFP(C08749f c08749f) {
        return this.A0D.AFP(c08749f);
    }
}

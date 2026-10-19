package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import com.facebook.ads.internal.exoplayer2.thirdparty.video.DummySurface;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.1A, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class C1A extends C3E {
    public static boolean A0b;
    public static boolean A0c;
    public static byte[] A0d;
    public static String[] A0e = {"1acRM6Cf6EhxOJODmj0H0eP8VC35ZmTt", "cV9GjlkLQwwiHa", "i1c6IC1hwgIn8DthxqNi0XpoGO8BN4qE", "gFn4mUSFpSKHUauCdH5nTsZh8y8bn5UZ", "9nkQNk0PAkkX03QPU4alH8fTsKo9h28D", "s2uNxYIY6duU338ylAtcR72UhbPyFCsP", "VOm8bC2ft6X0ZlQ", "HWs0n0OHt4vGmZ"};
    public static final int[] A0f;
    public I8 A00;
    public float A01;
    public float A02;
    public float A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;
    public int A09;
    public int A0A;
    public int A0B;
    public int A0C;
    public int A0D;
    public int A0E;
    public int A0F;
    public int A0G;
    public long A0H;
    public long A0I;
    public long A0J;
    public long A0K;
    public long A0L;
    public long A0M;
    public Surface A0N;
    public Surface A0O;
    public I7 A0P;
    public boolean A0Q;
    public boolean A0R;
    public boolean A0S;
    public final int A0T;
    public final long A0U;
    public final Context A0V;
    public final IB A0W;
    public final IK A0X;
    public final boolean A0Y;
    public final long[] A0Z;
    public final long[] A0a;

    static {
        A0D();
        A0f = new int[]{1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    }

    public C1A(Context context, D4 d4, long j, BK<X6> bk, boolean z, Handler handler, IL il, int i) {
        super(2, d4, bk, z);
        this.A0U = j;
        this.A0T = i;
        Context applicationContext = context.getApplicationContext();
        this.A0V = applicationContext;
        this.A0W = new IB(applicationContext);
        this.A0X = new IK(handler, il);
        this.A0Y = A0M();
        this.A0Z = new long[10];
        this.A0a = new long[10];
        this.A0M = C.TIME_UNSET;
        this.A0K = C.TIME_UNSET;
        this.A0J = C.TIME_UNSET;
        this.A08 = -1;
        this.A06 = -1;
        this.A01 = -1.0f;
        this.A02 = -1.0f;
        this.A0F = 1;
        A07();
    }

    public static int A00(C0956Cy c0956Cy, Format format) {
        if (format.A09 == -1) {
            return A01(c0956Cy, format.A0O, format.A0F, format.A08);
        }
        int length = 0;
        int size = format.A0P.size();
        for (int i = 0; i < size; i++) {
            length += format.A0P.get(i).length;
        }
        int i2 = format.A09;
        if (A0e[4].charAt(25) == 'e') {
            throw new RuntimeException();
        }
        A0e[5] = "PFjSJxahL7zuosjl0ltO07DmFDIUFrxC";
        return i2 + length;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c7, code lost:
    
        if (r5.A05 != false) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:8:0x000d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A01(com.facebook.ads.redexgen.X.C0956Cy r5, java.lang.String r6, int r7, int r8) {
        /*
            Method dump skipped, instruction units count: 304
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1A.A01(com.facebook.ads.redexgen.X.Cy, java.lang.String, int, int):int");
    }

    public static Point A02(C0956Cy c0956Cy, Format format) throws D7 {
        boolean z = format.A08 > format.A0F;
        int i = z ? format.A08 : format.A0F;
        int i2 = z ? format.A0F : format.A08;
        float f2 = i2 / i;
        for (int i3 : A0f) {
            int i4 = (int) (i3 * f2);
            if (i3 <= i || i4 <= i2) {
                return null;
            }
            if (C1078Hx.A02 >= 21) {
                int i5 = z ? i4 : i3;
                if (!z) {
                    i3 = i4;
                }
                Point pointA0E = c0956Cy.A0E(i5, i3);
                if (c0956Cy.A0H(pointA0E.x, pointA0E.y, format.A01)) {
                    return pointA0E;
                }
            } else {
                int iA04 = C1078Hx.A04(i3, 16) * 16;
                int iA042 = C1078Hx.A04(i4, 16) * 16;
                if (iA04 * iA042 <= D9.A00()) {
                    int i6 = z ? iA042 : iA04;
                    if (!z) {
                        iA04 = iA042;
                    }
                    return new Point(i6, iA04);
                }
            }
        }
        return null;
    }

    private final MediaFormat A03(Format format, I7 i7, boolean z, int i) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString(A05(1094, 4, 120), format.A0O);
        mediaFormat.setInteger(A05(1359, 5, 19), format.A0F);
        mediaFormat.setInteger(A05(971, 6, 26), format.A08);
        DA.A06(mediaFormat, format.A0P);
        DA.A03(mediaFormat, A05(954, 10, 18), format.A01);
        DA.A04(mediaFormat, A05(1180, 16, 48), format.A0B);
        DA.A02(mediaFormat, format.A0J);
        mediaFormat.setInteger(A05(1079, 9, 25), i7.A02);
        mediaFormat.setInteger(A05(1055, 10, 13), i7.A00);
        DA.A04(mediaFormat, A05(1065, 14, 39), i7.A01);
        if (C1078Hx.A02 >= 23) {
            mediaFormat.setInteger(A05(1153, 8, 122), 0);
        }
        if (z) {
            String strA05 = A05(875, 8, 49);
            if (A0e[5].charAt(18) != 't') {
                throw new RuntimeException();
            }
            A0e[5] = "LIFMuRLmQz6XdmDBeptCblAg9hMw0FnF";
            mediaFormat.setInteger(strA05, 0);
        }
        if (i != 0) {
            A0K(mediaFormat, i);
        }
        return mediaFormat;
    }

    private final I7 A04(C0956Cy c0956Cy, Format format, Format[] formatArr) throws D7 {
        int iMax = format.A0F;
        int iMax2 = format.A08;
        int iA00 = A00(c0956Cy, format);
        if (formatArr.length == 1) {
            return new I7(iMax, iMax2, iA00);
        }
        boolean z = false;
        for (Format format2 : formatArr) {
            if (A0V(c0956Cy.A03, format, format2)) {
                z |= format2.A0F == -1 || format2.A08 == -1;
                iMax = Math.max(iMax, format2.A0F);
                iMax2 = Math.max(iMax2, format2.A08);
                iA00 = Math.max(iA00, A00(c0956Cy, format2));
            }
        }
        if (z) {
            StringBuilder sbAppend = new StringBuilder().append(A05(683, 43, 125)).append(iMax);
            String strA05 = A05(1379, 1, 98);
            String string = sbAppend.append(strA05).append(iMax2).toString();
            String strA052 = A05(522, 23, 33);
            Log.w(strA052, string);
            Point pointA02 = A02(c0956Cy, format);
            if (pointA02 != null) {
                iMax = Math.max(iMax, pointA02.x);
                iMax2 = Math.max(iMax2, pointA02.y);
                iA00 = Math.max(iA00, A01(c0956Cy, format.A0O, iMax, iMax2));
                Log.w(strA052, A05(164, 34, 75) + iMax + strA05 + iMax2);
            }
        }
        return new I7(iMax, iMax2, iA00);
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0d, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 89);
        }
        return new String(bArrCopyOfRange);
    }

    private void A06() {
        MediaCodec mediaCodecA1C;
        this.A0R = false;
        if (C1078Hx.A02 < 23 || !this.A0S || (mediaCodecA1C = A1C()) == null) {
            return;
        }
        this.A00 = new I8(this, mediaCodecA1C);
    }

    private void A07() {
        this.A0E = -1;
        this.A0C = -1;
        this.A03 = -1.0f;
        this.A0D = -1;
    }

    private void A08() {
        if (this.A09 > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.A0X.A02(this.A09, jElapsedRealtime - this.A0H);
            this.A09 = 0;
            this.A0H = jElapsedRealtime;
        }
    }

    private void A09() {
        int i = this.A08;
        if (i == -1 && this.A06 == -1) {
            return;
        }
        if (this.A0E == i && this.A0C == this.A06 && this.A0D == this.A07 && this.A03 == this.A01) {
            return;
        }
        this.A0X.A01(i, this.A06, this.A07, this.A01);
        this.A0E = this.A08;
        this.A0C = this.A06;
        this.A0D = this.A07;
        this.A03 = this.A01;
    }

    private void A0A() {
        if (this.A0R) {
            this.A0X.A03(this.A0O);
        }
    }

    private void A0B() {
        int i = this.A0E;
        if (i == -1) {
            int i2 = this.A0C;
            String[] strArr = A0e;
            if (strArr[0].charAt(20) != strArr[2].charAt(20)) {
                throw new RuntimeException();
            }
            A0e[6] = "GSr0Qxmd2Qhu1M0N5tyB3p9H4Vler7W";
            if (i2 == -1) {
                return;
            }
        }
        this.A0X.A01(i, this.A0C, this.A0D, this.A03);
    }

    private void A0C() {
        this.A0J = this.A0U > 0 ? SystemClock.elapsedRealtime() + this.A0U : C.TIME_UNSET;
    }

    public static void A0D() {
        A0d = new byte[]{10, Ascii.CR, Ascii.VT, 10, 93, 91, 93, 95, 112, 118, 112, 117, 6, 118, 119, 106, 112, 119, 1, 108, Ascii.FS, Ascii.ESC, Ascii.GS, Ascii.FS, 126, Ascii.CR, Ascii.SI, Ascii.SO, 9, 94, Ascii.VT, Ascii.SI, 76, 58, 61, 61, 61, 32, 108, 49, 71, 64, 64, 64, 0, Ascii.FS, 5, 3, 64, 54, 49, 48, 49, 96, 53, 57, 64, 54, 49, 51, 49, 96, 53, 57, 81, 86, 68, 81, 82, 85, 71, 93, 88, 95, 77, 74, 74, 102, 106, 113, 100, 101, Ascii.CAN, 40, 44, 56, 9, 54, 46, 60, 43, Ascii.DC4, 80, 100, 99, 112, 78, 95, 126, 101, 116, 78, 35, 9, 7, 10, 8, 0, 102, 122, 19, 35, 51, 32, 55, 40, 32, 65, 85, 42, 65, 83, 81, 80, 84, 61, 45, 62, 41, 54, 62, 32, 62, 43, 41, 77, 51, 65, 55, 36, 76, 66, 67, 66, 43, 61, 68, 70, 103, 116, 108, Ascii.NAK, Ascii.DC2, Ascii.DC4, Ascii.GS, 85, 70, 79, 46, 37, 73, 95, 38, 38, 81, 125, 118, 119, 113, 50, Ascii.DEL, 115, 106, 50, 96, 119, 97, 125, 126, 103, 102, 123, 125, 124, 50, 115, 118, 120, 103, 97, 102, 119, 118, 50, 102, 125, 40, 50, 104, 68, 70, 66, 68, 120, Ascii.SUB, Ascii.SI, Ascii.DEL, 124, 126, 121, 122, 115, 106, 120, 126, 96, 126, Ascii.FF, 96, 111, 77, 80, 124, 117, 108, 126, 120, 102, 119, 86, 77, 92, 43, 34, 59, 41, 47, 49, 62, Ascii.FS, 7, 3, 44, 37, 60, 46, 40, 54, 59, 8, Ascii.DLE, 54, 49, 67, 112, 99, 116, 85, 114, 103, 116, 89, 85, Ascii.RS, 107, 105, 105, 105, 43, 94, 92, 92, 94, Ascii.VT, 126, 124, 124, 123, Ascii.DEL, 10, Ascii.VT, 8, 8, 64, 53, 52, 55, 53, 90, 47, 46, 45, 41, Ascii.RS, 107, 107, 105, 105, Ascii.EM, 62, 51, 44, 58, Ascii.FS, 55, 58, 60, 52, Ascii.DEL, 4, 51, 58, 56, 62, 60, 38, Ascii.EM, 45, 62, 50, 58, Ascii.FF, 54, 37, 58, 115, Ascii.DEL, 40, 38, 32, 33, 42, 42, 48, 40, 45, 35, 88, 92, 89, 95, 42, 36, 34, 35, 40, 40, 50, 62, 58, 58, 92, 91, 93, 84, 33, 47, 41, 40, 35, 35, 57, 53, 49, 49, 87, 80, 84, 81, Ascii.SYN, Ascii.CAN, Ascii.RS, Ascii.US, Ascii.DC4, Ascii.DC4, Ascii.SO, 2, 6, 6, 96, 103, 98, 96, 84, 90, 92, 93, 86, 86, 76, 68, 81, 95, 38, 36, 35, 43, Ascii.DEL, 113, 119, 118, 125, 125, 103, 111, 122, 116, Ascii.SI, Ascii.VT, Ascii.SO, Ascii.CR, 58, 52, 50, 51, 56, 56, 34, 42, 63, 49, 74, 72, 76, 68, Ascii.FF, 34, 4, 5, Ascii.SO, Ascii.SO, Ascii.DC4, 8, 9, 7, 124, 126, 122, 120, 75, 101, 67, 66, 73, 73, 83, 75, 78, 64, 59, 63, 61, 53, 44, 51, 38, 40, 42, 73, 44, 97, 126, 106, 104, 100, 4, 97, 9, Ascii.SYN, Ascii.ETB, Ascii.SI, Ascii.DC2, 108, 9, 119, 80, 88, 87, 80, 87, 70, 19, 102, Ascii.VT, 9, Ascii.FF, 0, Ascii.CR, Ascii.DLE, 72, 54, 51, 98, 55, 51, Ascii.SYN, Ascii.ESC, Ascii.SO, Ascii.DC2, 10, Ascii.DC4, 4, Ascii.ESC, 101, 125, 120, 121, Ascii.DEL, 8, 112, 38, 62, 54, 58, 41, 38, 44, 62, 70, 76, 89, 55, 53, Ascii.GS, Ascii.FS, 17, Ascii.EM, 59, Ascii.ETB, Ascii.FS, Ascii.GS, Ascii.ESC, 46, 17, Ascii.FS, Ascii.GS, Ascii.ETB, 42, Ascii.GS, Ascii.SYN, Ascii.FS, Ascii.GS, 10, Ascii.GS, 10, 114, 106, 117, 120, 117, 125, Ascii.RS, 8, 101, 100, 97, Ascii.SUB, 115, 101, 8, 10, Ascii.SO, 119, 40, 42, 63, 73, 0, 8, 8, 0, Ascii.VT, 2, 44, Ascii.CR, 6, 51, Ascii.SI, Ascii.SYN, Ascii.DLE, 86, 55, 41, 79, 65, 72, 96, 8, 5, 50, 32, 80, 79, 84, 85, 82, 47, 35, 52, 61, 70, 65, 75, 42, 61, 52, 76, 75, 74, 55, 32, 41, 81, 86, 86, 69, 89, 80, 124, 126, 99, Ascii.ESC, Ascii.DEL, Ascii.DLE, 40, 33, 46, 52, 47, 45, 118, 88, 97, 112, 97, 60, 37, 63, 87, 59, 79, 45, Ascii.DC4, 5, Ascii.DC4, 72, 80, 76, 77, 34, 73, 58, 3, 97, 103, 98, 109, 8, Ascii.SO, 10, Ascii.FF, 52, 81, 87, 82, 120, Ascii.GS, Ascii.SUB, Ascii.CAN, Ascii.EM, 119, 19, 81, 77, 49, 54, 88, 69, 95, 85, Ascii.EM, Ascii.DLE, 121, 118, 65, 87, 75, 72, 81, 80, 77, 75, 74, 87, 4, 81, 74, 79, 74, 75, 83, 74, 10, 4, 103, 75, 64, 65, 71, 4, 73, 69, 92, 4, 86, 65, 87, 75, 72, 81, 80, 77, 75, 74, Ascii.RS, 4, Ascii.ESC, Ascii.RS, Ascii.CAN, 101, Ascii.FF, Ascii.FS, Ascii.RS, 121, 125, 68, 123, 118, 99, 114, 72, 71, 101, 120, 107, 125, Ascii.FF, Ascii.DC2, 8, Ascii.FF, Ascii.SI, 121, 1, Ascii.ETB, 102, 120, 98, 102, 101, Ascii.CR, 51, 37, 84, 74, 95, 82, 87, 33, 68, 82, 35, 61, 40, 37, 32, 93, Ascii.SI, 52, 52, 123, 54, 58, 53, 34, 123, 40, 47, 41, 62, 58, 54, 123, 56, 51, 58, 53, 60, 62, 40, 119, 123, 40, 52, 123, 63, 41, 52, 43, 43, 50, 53, 60, 123, 52, 61, 61, 40, 62, 47, 97, 123, 67, 36, 64, 36, 37, 81, 84, 55, 84, 44, 71, 43, 60, 63, Ascii.FF, 17, 102, Ascii.FF, Ascii.ESC, Ascii.ETB, 114, 117, 117, 112, 86, 61, 62, 83, 92, 94, 67, Ascii.SO, 108, 100, Ascii.EM, 93, 32, 91, 66, 86, 71, 74, 76, Ascii.SO, 80, 70, 80, 80, 74, 76, 77, Ascii.SO, 74, 71, 9, Ascii.GS, Ascii.FS, 7, 69, Ascii.SO, Ascii.SUB, Ascii.VT, Ascii.GS, Ascii.FF, 17, Ascii.SO, 83, Ascii.FS, 17, 10, 10, 17, 19, Ascii.VT, Ascii.SUB, 7, Ascii.CAN, 69, 4, Ascii.CR, Ascii.SO, Ascii.FS, 32, 49, 44, 51, 110, 49, 42, 36, 43, 55, 95, 78, 83, 76, 17, 72, 83, 76, 103, 114, 53, 58, 47, 106, Ascii.RS, Ascii.US, Ascii.CAN, 96, 118, 107, 116, 82, 109, 96, 97, 107, 70, 113, 98, 98, 97, 118, 107, 97, 98, 10, 3, Ascii.US, Ascii.CAN, 9, Ascii.RS, 45, 57, 42, 38, 46, 102, 57, 42, 63, 46, 126, 107, 112, Ascii.DEL, Ascii.DEL, 112, 119, 43, 38, 42, 36, 43, 55, 54, 42, 61, 1, 59, 107, 104, 51, 50, 1, 58, 42, 43, 50, 59, 36, Ascii.DC2, Ascii.US, Ascii.SYN, 126, Ascii.ESC, 120, 115, 
        112, 125, 125, 41, 38, 34, 36, 78, 40, 41, 33, 39, 84, 79, 84, 78, Ascii.VT, Ascii.CR, Ascii.CR, Ascii.DLE, 1, 8, 59, 55, 80, 85, 64, Ascii.CAN, 82, 70, 94, 79, 67, 68, 89, 111, 102, 92, 123, 53, 55, 59, 52, 52, 51, 52, 61, 123, 119, 100, Ascii.DEL, 120, 121, 73, 112, 57, 53, 44, 121, 60, 49, 61, 51, 60, 32, 19, Ascii.US, 6, 83, Ascii.ETB, Ascii.DLE, Ascii.SO, Ascii.VT, 10, 83, Ascii.CR, Ascii.ETB, 4, Ascii.ESC, 45, 33, 56, 109, 55, 41, 36, 52, 40, 54, 51, 109, 105, 100, 111, 76, 72, 76, 68, 96, 111, 99, 111, 122, 102, Ascii.DC2, Ascii.NAK, Ascii.US, Ascii.ETB, Ascii.DLE, Ascii.GS, 9, Ascii.SI, 35, Ascii.SUB, 79, Ascii.CR, Ascii.SO, Ascii.CR, 56, 41, 38, 45, 36, 36, Ascii.ETB, 44, 50, 35, 44, 39, 46, 46, Ascii.GS, 38, 46, 90, 75, 68, 79, 70, 70, 117, 78, 89, 112, 97, 110, 101, 108, 108, 95, 100, 116, 83, 81, 74, 76, 81, 74, 87, 90, 70, 81, 88, 81, 85, 71, 81, 123, 65, 64, 68, 65, 64, 118, 65, 82, 82, 81, 70, Ascii.ESC, 6, Ascii.GS, 8, Ascii.GS, 0, 6, 7, 68, Ascii.CR, Ascii.FF, Ascii.SO, Ascii.ESC, Ascii.FF, Ascii.FF, Ascii.SUB, 113, 59, 50, 55, 122, 50, 51, 58, 65, 83, 92, 70, 93, 92, 91, 110, 118, 116, 109, 75, 116, 121, 120, 114, 95, 104, 123, 123, 120, 111, 71, 82, 90, 87, 92, 108, 65, 92, 68, 74, 93, 82, 97, 91, 75, Ascii.FF, Ascii.CR, Ascii.SYN, Ascii.SYN, Ascii.GS, Ascii.DC4, Ascii.GS, Ascii.FS, 85, 8, Ascii.DC4, Ascii.EM, 1, Ascii.SUB, Ascii.EM, Ascii.ESC, 19, Ascii.GS, Ascii.SO, Ascii.EM, 5, Ascii.SO, Ascii.SO, 52, 38, 94, 62, 33, 44, 45, 39, 103, 123, 47, 56, 56, 55, 40, 37, 36, 46, 110, 32, 55, 34, 0, Ascii.US, Ascii.DC2, 19, Ascii.EM, 89, Ascii.RS, 19, 0, Ascii.NAK, 38, 57, 52, 53, 63, Ascii.DEL, 61, 32, 100, 38, 125, 53, 35, 68, 91, 86, 87, 93, Ascii.GS, 74, Ascii.US, 68, 92, 86, Ascii.FS, 93, 92, 0, Ascii.FS, 68, 66, 10, 50, 45, 32, 33, 43, 107, 60, 105, 50, 42, 32, 106, 43, 42, 118, 106, 50, 52, 125, 97, 119, 98, 101, 121, 120, 110, 113, 96, 107, 124, 125, 61, 35, 46, 62, 34, Ascii.SI, Ascii.ETB, Ascii.ETB, Ascii.FS, Ascii.VT, 39, Ascii.RS, 115, 107, 107, 96, 119, 91, 98, 106, 67};
    }

    private final void A0E(int i) {
        super.A0U.A02 += i;
        this.A09 += i;
        this.A05 += i;
        super.A0U.A05 = Math.max(this.A05, super.A0U.A05);
        if (this.A09 >= this.A0T) {
            A08();
        }
    }

    private final void A0F(MediaCodec mediaCodec, int i, long j) {
        C1075Hu.A02(A05(930, 15, 93));
        mediaCodec.releaseOutputBuffer(i, false);
        C1075Hu.A00();
        A0E(1);
    }

    private final void A0G(MediaCodec mediaCodec, int i, long j) {
        A09();
        C1075Hu.A02(A05(1161, 19, 109));
        mediaCodec.releaseOutputBuffer(i, true);
        C1075Hu.A00();
        this.A0L = SystemClock.elapsedRealtime() * 1000;
        super.A0U.A06++;
        this.A05 = 0;
        A1R();
    }

    private final void A0H(MediaCodec mediaCodec, int i, long j) {
        C1075Hu.A02(A05(1211, 15, 68));
        mediaCodec.releaseOutputBuffer(i, false);
        C1075Hu.A00();
        super.A0U.A08++;
    }

    private final void A0I(MediaCodec mediaCodec, int i, long j, long j2) {
        A09();
        C1075Hu.A02(A05(1161, 19, 109));
        mediaCodec.releaseOutputBuffer(i, j2);
        C1075Hu.A00();
        this.A0L = SystemClock.elapsedRealtime() * 1000;
        super.A0U.A06++;
        this.A05 = 0;
        A1R();
    }

    public static void A0J(MediaCodec mediaCodec, Surface surface) {
        mediaCodec.setOutputSurface(surface);
    }

    public static void A0K(MediaFormat mediaFormat, int i) {
        mediaFormat.setFeatureEnabled(A05(1241, 17, 33), true);
        mediaFormat.setInteger(A05(859, 16, 122), i);
    }

    private void A0L(Surface surface) throws C9K {
        if (surface == null) {
            if (this.A0N != null) {
                surface = this.A0N;
            } else {
                C0956Cy c0956CyA1D = A1D();
                if (c0956CyA1D != null && A0T(c0956CyA1D)) {
                    this.A0N = DummySurface.A01(this.A0V, c0956CyA1D.A05);
                    surface = this.A0N;
                }
            }
        }
        if (this.A0O == surface) {
            if (surface != null) {
                Surface surface2 = this.A0N;
                String[] strArr = A0e;
                if (strArr[1].length() == strArr[7].length()) {
                    String[] strArr2 = A0e;
                    strArr2[1] = "4gXhdQ7K18codO";
                    strArr2[7] = "dCZzuzcRJjaMd3";
                    if (surface == surface2) {
                        return;
                    }
                } else if (surface == surface2) {
                    return;
                }
                A0B();
                A0A();
                return;
            }
            return;
        }
        this.A0O = surface;
        if (A0e[3].charAt(22) != 'Z') {
            throw new RuntimeException();
        }
        A0e[5] = "451d0u4cD9rJ2w2guGtx9AsvugCig8Nc";
        int iA7t = A7t();
        if (iA7t == 1 || iA7t == 2) {
            MediaCodec mediaCodecA1C = A1C();
            if (C1078Hx.A02 < 23 || mediaCodecA1C == null || surface == null || this.A0Q) {
                A1G();
                A1I();
            } else {
                A0J(mediaCodecA1C, surface);
            }
        }
        if (surface != null && surface != this.A0N) {
            A0B();
            A06();
            if (iA7t == 2) {
                A0C();
                return;
            }
            return;
        }
        A07();
        if (A0e[5].charAt(18) != 't') {
            A06();
        } else {
            A0e[3] = "pSIGciD2qJewSpKsBqH446Zc9mkVUpAR";
            A06();
        }
    }

    public static boolean A0M() {
        return C1078Hx.A02 <= 22 && A05(948, 6, 53).equals(C1078Hx.A03) && A05(545, 6, 101).equals(C1078Hx.A05);
    }

    public static boolean A0N(long j) {
        return j < -30000;
    }

    public static boolean A0O(long j) {
        return j < -500000;
    }

    private final boolean A0P(long j, long j2) {
        return A0O(j);
    }

    private final boolean A0Q(long j, long j2) {
        return A0N(j);
    }

    private final boolean A0R(long j, long j2) {
        return A0N(j) && j2 > 100000;
    }

    private final boolean A0S(MediaCodec mediaCodec, int i, long j, long j2) throws C9K {
        int iA0z = A0z(j2);
        if (iA0z == 0) {
            return false;
        }
        super.A0U.A03++;
        A0E(this.A04 + iA0z);
        A1F();
        return true;
    }

    private boolean A0T(C0956Cy c0956Cy) {
        return C1078Hx.A02 >= 23 && !this.A0S && !A0U(c0956Cy.A02) && (!c0956Cy.A05 || DummySurface.A05(this.A0V));
    }

    /* JADX WARN: Removed duplicated region for block: B:368:0x0905  */
    /* JADX WARN: Removed duplicated region for block: B:382:0x093a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean A0U(java.lang.String r9) {
        /*
            Method dump skipped, instruction units count: 3110
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1A.A0U(java.lang.String):boolean");
    }

    public static boolean A0V(boolean z, Format format, Format format2) {
        return format.A0O.equals(format2.A0O) && format.A0B == format2.A0B && (z || (format.A0F == format2.A0F && format.A08 == format2.A08)) && C1078Hx.A0g(format.A0J, format2.A0J);
    }

    @Override // com.facebook.ads.redexgen.X.C3E, com.facebook.ads.redexgen.X.AbstractC0964Dl
    public final void A12() {
        this.A08 = -1;
        this.A06 = -1;
        this.A01 = -1.0f;
        this.A02 = -1.0f;
        this.A0M = C.TIME_UNSET;
        this.A0K = C.TIME_UNSET;
        this.A0A = 0;
        A07();
        A06();
        this.A0W.A08();
        this.A00 = null;
        this.A0S = false;
        try {
            super.A12();
        } finally {
            super.A0U.A00();
            this.A0X.A05(super.A0U);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C3E, com.facebook.ads.redexgen.X.AbstractC0964Dl
    public final void A13() {
        super.A13();
        this.A09 = 0;
        this.A0H = SystemClock.elapsedRealtime();
        this.A0L = SystemClock.elapsedRealtime() * 1000;
    }

    @Override // com.facebook.ads.redexgen.X.C3E, com.facebook.ads.redexgen.X.AbstractC0964Dl
    public final void A14() {
        this.A0J = C.TIME_UNSET;
        A08();
        super.A14();
    }

    @Override // com.facebook.ads.redexgen.X.C3E, com.facebook.ads.redexgen.X.AbstractC0964Dl
    public final void A15(long j, boolean z) throws C9K {
        super.A15(j, z);
        A06();
        this.A0I = C.TIME_UNSET;
        this.A05 = 0;
        this.A0K = C.TIME_UNSET;
        int i = this.A0A;
        if (i != 0) {
            this.A0M = this.A0Z[i - 1];
            this.A0A = 0;
        }
        if (z) {
            A0C();
        } else {
            this.A0J = C.TIME_UNSET;
        }
    }

    @Override // com.facebook.ads.redexgen.X.C3E, com.facebook.ads.redexgen.X.AbstractC0964Dl
    public final void A16(boolean z) throws C9K {
        super.A16(z);
        int i = A11().A00;
        this.A0G = i;
        this.A0S = i != 0;
        this.A0X.A06(super.A0U);
        this.A0W.A09();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0964Dl
    public final void A17(Format[] formatArr, long j) throws C9K {
        if (this.A0M == C.TIME_UNSET) {
            this.A0M = j;
        } else {
            int i = this.A0A;
            if (i == this.A0Z.length) {
                Log.w(A05(522, 23, 33), A05(776, 45, 2) + this.A0Z[this.A0A - 1]);
            } else {
                int i2 = i + 1;
                String[] strArr = A0e;
                if (strArr[1].length() != strArr[7].length()) {
                    throw new RuntimeException();
                }
                A0e[4] = "ShVF99lXvOUYr05H2Tvsc9mrs3vvqIZt";
                this.A0A = i2;
            }
            long[] jArr = this.A0Z;
            int i3 = this.A0A;
            jArr[i3 - 1] = j;
            this.A0a[i3 - 1] = this.A0K;
        }
        super.A17(formatArr, j);
    }

    @Override // com.facebook.ads.redexgen.X.C3E
    public final int A1A(MediaCodec mediaCodec, C0956Cy c0956Cy, Format format, Format format2) {
        if (!A0V(c0956Cy.A03, format, format2) || format2.A0F > this.A0P.A02 || format2.A08 > this.A0P.A00 || A00(c0956Cy, format2) > this.A0P.A01) {
            return 0;
        }
        return format.A0K(format2) ? 1 : 3;
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x010e  */
    @Override // com.facebook.ads.redexgen.X.C3E
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int A1B(com.facebook.ads.redexgen.X.D4 r10, com.facebook.ads.redexgen.X.BK<com.facebook.ads.redexgen.X.X6> r11, com.facebook.ads.internal.exoplayer2.thirdparty.Format r12) throws com.facebook.ads.redexgen.X.D7 {
        /*
            Method dump skipped, instruction units count: 272
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1A.A1B(com.facebook.ads.redexgen.X.D4, com.facebook.ads.redexgen.X.BK, com.facebook.ads.internal.exoplayer2.thirdparty.Format):int");
    }

    @Override // com.facebook.ads.redexgen.X.C3E
    public final void A1F() throws C9K {
        super.A1F();
        this.A04 = 0;
    }

    @Override // com.facebook.ads.redexgen.X.C3E
    public final void A1G() {
        try {
            super.A1G();
            this.A04 = 0;
            Surface surface = this.A0N;
            if (surface != null) {
                Surface surface2 = this.A0O;
                String[] strArr = A0e;
                if (strArr[1].length() != strArr[7].length()) {
                    throw new RuntimeException();
                }
                A0e[5] = "XHzJ2HWKwUKgXdkRP5t1s0JJnuLP0pfM";
                if (surface2 == surface) {
                    this.A0O = null;
                }
                surface.release();
                this.A0N = null;
            }
        } catch (Throwable th) {
            this.A04 = 0;
            if (this.A0N != null) {
                Surface surface3 = this.A0O;
                Surface surface4 = this.A0N;
                if (surface3 == surface4) {
                    this.A0O = null;
                }
                surface4.release();
                this.A0N = null;
            }
            throw th;
        }
    }

    @Override // com.facebook.ads.redexgen.X.C3E
    public final void A1J(long j) {
        this.A04--;
        while (true) {
            int i = this.A0A;
            if (i == 0) {
                return;
            }
            long j2 = this.A0a[0];
            if (A0e[4].charAt(25) == 'e') {
                throw new RuntimeException();
            }
            A0e[6] = "welnO5ckQSDvaPJP3GxM6gJ3";
            if (j < j2) {
                return;
            }
            long[] jArr = this.A0Z;
            this.A0M = jArr[0];
            int i2 = i - 1;
            this.A0A = i2;
            System.arraycopy(jArr, 1, jArr, 0, i2);
            long[] jArr2 = this.A0a;
            System.arraycopy(jArr2, 1, jArr2, 0, this.A0A);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0086  */
    @Override // com.facebook.ads.redexgen.X.C3E
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A1K(android.media.MediaCodec r9, android.media.MediaFormat r10) {
        /*
            Method dump skipped, instruction units count: 223
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1A.A1K(android.media.MediaCodec, android.media.MediaFormat):void");
    }

    @Override // com.facebook.ads.redexgen.X.C3E
    public final void A1L(Format format) throws C9K {
        super.A1L(format);
        this.A0X.A04(format);
        this.A02 = format.A02;
        this.A0B = format.A0B;
    }

    @Override // com.facebook.ads.redexgen.X.C3E
    public final void A1M(XE xe) {
        this.A04++;
        this.A0K = Math.max(xe.A00, this.A0K);
        if (C1078Hx.A02 >= 23 || !this.A0S) {
            return;
        }
        A1R();
    }

    @Override // com.facebook.ads.redexgen.X.C3E
    public final void A1N(C0956Cy c0956Cy, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto) throws D7 {
        I7 i7A04 = A04(c0956Cy, format, A19());
        this.A0P = i7A04;
        MediaFormat mediaFormatA03 = A03(format, i7A04, this.A0Y, this.A0G);
        if (this.A0O == null) {
            HI.A04(A0T(c0956Cy));
            if (this.A0N == null) {
                this.A0N = DummySurface.A01(this.A0V, c0956Cy.A05);
            }
            this.A0O = this.A0N;
        }
        mediaCodec.configure(mediaFormatA03, this.A0O, mediaCrypto, 0);
        if (C1078Hx.A02 < 23 || !this.A0S) {
            return;
        }
        this.A00 = new I8(this, mediaCodec);
    }

    @Override // com.facebook.ads.redexgen.X.C3E
    public final void A1O(String str, long j, long j2) {
        this.A0X.A07(str, j, j2);
        this.A0Q = A0U(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d6, code lost:
    
        if (r9 != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d8, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d9, code lost:
    
        if (r9 != false) goto L45;
     */
    @Override // com.facebook.ads.redexgen.X.C3E
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A1P(long r32, long r34, android.media.MediaCodec r36, java.nio.ByteBuffer r37, int r38, int r39, long r40, boolean r42) throws com.facebook.ads.redexgen.X.C9K {
        /*
            Method dump skipped, instruction units count: 292
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1A.A1P(long, long, android.media.MediaCodec, java.nio.ByteBuffer, int, int, long, boolean):boolean");
    }

    @Override // com.facebook.ads.redexgen.X.C3E
    public final boolean A1Q(C0956Cy c0956Cy) {
        return this.A0O != null || A0T(c0956Cy);
    }

    public final void A1R() {
        if (this.A0R) {
            return;
        }
        this.A0R = true;
        this.A0X.A03(this.A0O);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0964Dl, com.facebook.ads.redexgen.X.InterfaceC08849p
    public final void A8L(int i, Object obj) throws C9K {
        if (i == 1) {
            A0L((Surface) obj);
            return;
        }
        if (i != 4) {
            super.A8L(i, obj);
            return;
        }
        this.A0F = ((Integer) obj).intValue();
        MediaCodec mediaCodecA1C = A1C();
        if (mediaCodecA1C != null) {
            int i2 = this.A0F;
            if (A0e[6].length() == 11) {
                throw new RuntimeException();
            }
            A0e[4] = "ynW9njiEKJeSgaNYH6SlaayD7qz19oDR";
            mediaCodecA1C.setVideoScalingMode(i2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0034, code lost:
    
        if (r9.A0S == false) goto L20;
     */
    @Override // com.facebook.ads.redexgen.X.C3E, com.facebook.ads.redexgen.X.XS
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A90() {
        /*
            r9 = this;
            boolean r0 = super.A90()
            r8 = 1
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r0 == 0) goto L3f
            boolean r0 = r9.A0R
            if (r0 != 0) goto L36
            android.view.Surface r1 = r9.A0N
            if (r1 == 0) goto L18
            android.view.Surface r0 = r9.A0O
            if (r0 == r1) goto L36
        L18:
            android.media.MediaCodec r3 = r9.A1C()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C1A.A0e
            r0 = 6
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 11
            if (r1 == r0) goto L39
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1A.A0e
            java.lang.String r1 = "3hQTJaHLIy4JZfUSwiFMMfqMh"
            r0 = 6
            r2[r0] = r1
            if (r3 == 0) goto L36
            boolean r0 = r9.A0S
            if (r0 == 0) goto L3f
        L36:
            r9.A0J = r5
            return r8
        L39:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L3f:
            long r1 = r9.A0J
            r7 = 0
            int r0 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r0 != 0) goto L47
            return r7
        L47:
            long r3 = android.os.SystemClock.elapsedRealtime()
            long r1 = r9.A0J
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 >= 0) goto L52
            return r8
        L52:
            r9.A0J = r5
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1A.A90():boolean");
    }
}

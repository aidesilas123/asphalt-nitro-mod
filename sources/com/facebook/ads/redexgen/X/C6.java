package com.facebook.ads.redexgen.X;

import android.util.Pair;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.applovin.exoplayer2.common.base.Ascii;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import com.facebook.ads.internal.exoplayer2.thirdparty.drm.DrmInitData;
import com.facebook.ads.internal.exoplayer2.thirdparty.metadata.Metadata;
import com.facebook.ads.internal.exoplayer2.thirdparty.metadata.id3.Id3Frame;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.kidoz.sdk.api.general.utils.ConstantDef;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class C6 {
    public static byte[] A00;
    public static String[] A01 = {DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "1fRxwJ5XE31BEFto", "uScK6DjhwaakoKLKywWqQqJcG3f6AUTY", "4Hlq2lRki9cJUEzjlqXKmdMa0dcUUFBD", "g78w6vvkNWOU54nDIB5PtPh0iS7AkCQe", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Krct3XGjvdQG30dTRHyGL58gGhCYlC87", "LauCO"};
    public static final int A02;
    public static final int A03;
    public static final int A04;
    public static final int A05;
    public static final int A06;
    public static final int A07;
    public static final int A08;

    static {
        A0J();
        A08 = C1078Hx.A08(A0I(696, 4, 49));
        A05 = C1078Hx.A08(A0I(662, 4, 118));
        A07 = C1078Hx.A08(A0I(692, 4, 67));
        A04 = C1078Hx.A08(A0I(636, 4, 12));
        A06 = C1078Hx.A08(A0I(TTAdConstant.STYLE_SIZE_RADIO_2_3, 4, 95));
        A02 = C1078Hx.A08(A0I(606, 4, 15));
        A03 = C1078Hx.A08(A0I(632, 4, 120));
    }

    public static float A00(C1062Hh c1062Hh, int i) {
        c1062Hh.A0Y(i + 8);
        return c1062Hh.A0H() / c1062Hh.A0H();
    }

    public static int A01(C1062Hh c1062Hh) {
        int iA0E = c1062Hh.A0E();
        int i = iA0E & 127;
        while ((iA0E & 128) == 128) {
            iA0E = c1062Hh.A0E();
            i = (i << 7) | (iA0E & 127);
        }
        return i;
    }

    public static int A02(C1062Hh c1062Hh) {
        c1062Hh.A0Y(16);
        int iA08 = c1062Hh.A08();
        if (iA08 == A05) {
            return 1;
        }
        if (iA08 == A08) {
            return 2;
        }
        if (iA08 == A07 || iA08 == A04 || iA08 == A06 || iA08 == A02) {
            return 3;
        }
        return iA08 == A03 ? 4 : -1;
    }

    public static int A03(C1062Hh c1062Hh, int i, int i2) {
        int iA06 = c1062Hh.A06();
        while (iA06 - i < i2) {
            c1062Hh.A0Y(iA06);
            int iA08 = c1062Hh.A08();
            boolean z = iA08 > 0;
            if (A01[4].charAt(24) != 'i') {
                throw new RuntimeException();
            }
            A01[4] = "NygnrBLA11LVP9MJCR7n8rNii2RIBIyr";
            HI.A05(z, A0I(574, 32, 87));
            if (c1062Hh.A08() == C1.A0T) {
                return iA06;
            }
            iA06 += iA08;
        }
        return -1;
    }

    public static long A04(C1062Hh c1062Hh) {
        c1062Hh.A0Y(8);
        c1062Hh.A0Z(C1.A01(c1062Hh.A08()) != 0 ? 16 : 8);
        if (A01[1].length() == 12) {
            throw new RuntimeException();
        }
        A01[7] = "3W9G8I03JPUdsev";
        return c1062Hh.A0M();
    }

    public static Pair<long[], long[]> A05(C1446Wk c1446Wk) {
        C1445Wj c1445WjA07;
        if (c1446Wk == null || (c1445WjA07 = c1446Wk.A07(C1.A0P)) == null) {
            return Pair.create(null, null);
        }
        C1062Hh c1062Hh = c1445WjA07.A00;
        c1062Hh.A0Y(8);
        int iA01 = C1.A01(c1062Hh.A08());
        int iA0H = c1062Hh.A0H();
        long[] jArr = new long[iA0H];
        long[] jArr2 = new long[iA0H];
        for (int i = 0; i < iA0H; i++) {
            jArr[i] = iA01 == 1 ? c1062Hh.A0N() : c1062Hh.A0M();
            jArr2[i] = iA01 == 1 ? c1062Hh.A0L() : c1062Hh.A08();
            if (c1062Hh.A0U() != 1) {
                throw new IllegalArgumentException(A0I(272, 23, 92));
            }
            c1062Hh.A0Z(2);
        }
        return Pair.create(jArr, jArr2);
    }

    public static Pair<Long, String> A06(C1062Hh c1062Hh) {
        c1062Hh.A0Y(8);
        int iA01 = C1.A01(c1062Hh.A08());
        c1062Hh.A0Z(iA01 == 0 ? 8 : 16);
        long jA0M = c1062Hh.A0M();
        c1062Hh.A0Z(iA01 == 0 ? 4 : 8);
        int iA0I = c1062Hh.A0I();
        return Pair.create(Long.valueOf(jA0M), A0I(0, 0, 85) + ((char) (((iA0I >> 10) & 31) + 96)) + ((char) (((iA0I >> 5) & 31) + 96)) + ((char) ((iA0I & 31) + 96)));
    }

    public static Pair<String, byte[]> A07(C1062Hh c1062Hh, int i) {
        c1062Hh.A0Y(i + 8 + 4);
        c1062Hh.A0Z(1);
        A01(c1062Hh);
        c1062Hh.A0Z(2);
        int iA0E = c1062Hh.A0E();
        if ((iA0E & 128) != 0) {
            c1062Hh.A0Z(2);
        }
        int i2 = iA0E & 64;
        if (A01[6].charAt(18) != 'y') {
            throw new RuntimeException();
        }
        A01[4] = "xKeFRQRG14ulCThjCTH6nGG5i69swr7b";
        if (i2 != 0) {
            c1062Hh.A0Z(c1062Hh.A0I());
        }
        if ((iA0E & 32) != 0) {
            c1062Hh.A0Z(2);
        }
        c1062Hh.A0Z(1);
        A01(c1062Hh);
        String strA03 = C1055Ha.A03(c1062Hh.A0E());
        if (!A0I(482, 10, 95).equals(strA03) && !A0I(501, 13, 123).equals(strA03) && !A0I(IronSourceConstants.INIT_COMPLETE, 16, 48).equals(strA03)) {
            c1062Hh.A0Z(12);
            c1062Hh.A0Z(1);
            int iA01 = A01(c1062Hh);
            byte[] bArr = new byte[iA01];
            c1062Hh.A0c(bArr, 0, iA01);
            return Pair.create(strA03, bArr);
        }
        Pair<String, byte[]> pairCreate = Pair.create(strA03, null);
        if (A01[6].charAt(18) != 'y') {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[0] = ConstantDef.SDK_CONTENT_VERSION;
        strArr[5] = "i";
        return pairCreate;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.util.Pair<java.lang.Integer, com.facebook.ads.redexgen.X.CN> A08(com.facebook.ads.redexgen.X.C1062Hh r10, int r11, int r12) {
        /*
            Method dump skipped, instruction units count: 276
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C6.A08(com.facebook.ads.redexgen.X.Hh, int, int):android.util.Pair");
    }

    public static Pair<Integer, CN> A09(C1062Hh c1062Hh, int i, int i2) {
        Pair<Integer, CN> pairA08;
        int iA06 = c1062Hh.A06();
        while (true) {
            int i3 = iA06 - i;
            if (A01[3].charAt(18) == 'y') {
                throw new RuntimeException();
            }
            A01[6] = "VuSqoU71mDFleviScFynwgGpV5GSmBmr";
            if (i3 >= i2) {
                return null;
            }
            c1062Hh.A0Y(iA06);
            int iA08 = c1062Hh.A08();
            HI.A05(iA08 > 0, A0I(574, 32, 87));
            if (c1062Hh.A08() == C1.A14 && (pairA08 = A08(c1062Hh, iA06, iA08)) != null) {
                return pairA08;
            }
            iA06 += iA08;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0111  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.redexgen.X.C4 A0A(com.facebook.ads.redexgen.X.C1062Hh r23, int r24, int r25, java.lang.String r26, com.facebook.ads.internal.exoplayer2.thirdparty.drm.DrmInitData r27, boolean r28) throws com.facebook.ads.redexgen.X.C08729d {
        /*
            Method dump skipped, instruction units count: 354
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C6.A0A(com.facebook.ads.redexgen.X.Hh, int, int, java.lang.String, com.facebook.ads.internal.exoplayer2.thirdparty.drm.DrmInitData, boolean):com.facebook.ads.redexgen.X.C4");
    }

    public static C5 A0B(C1062Hh c1062Hh) {
        long jA0M;
        c1062Hh.A0Y(8);
        int iA01 = C1.A01(c1062Hh.A08());
        c1062Hh.A0Z(iA01 == 0 ? 8 : 16);
        int iA08 = c1062Hh.A08();
        c1062Hh.A0Z(4);
        boolean z = true;
        String[] strArr = A01;
        if (strArr[0].length() != strArr[5].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[0] = "r";
        strArr2[5] = "s";
        int iA06 = c1062Hh.A06();
        int i = iA01 == 0 ? 4 : 8;
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            }
            if (c1062Hh.A00[iA06 + i2] != -1) {
                z = false;
                break;
            }
            i2++;
        }
        if (z) {
            c1062Hh.A0Z(i);
            jA0M = C.TIME_UNSET;
        } else {
            jA0M = iA01 == 0 ? c1062Hh.A0M() : c1062Hh.A0N();
            if (jA0M == 0) {
                jA0M = C.TIME_UNSET;
            }
        }
        c1062Hh.A0Z(16);
        int iA082 = c1062Hh.A08();
        int iA083 = c1062Hh.A08();
        c1062Hh.A0Z(4);
        int iA084 = c1062Hh.A08();
        int iA085 = c1062Hh.A08();
        return new C5(iA08, jA0M, (iA082 == 0 && iA083 == 65536 && iA084 == (-65536) && iA085 == 0) ? 90 : (iA082 == 0 && iA083 == (-65536) && iA084 == 65536 && iA085 == 0) ? 270 : (iA082 == (-65536) && iA083 == 0 && iA084 == 0 && iA085 == (-65536)) ? 180 : 0);
    }

    public static CM A0C(C1446Wk c1446Wk, C1445Wj c1445Wj, long j, DrmInitData drmInitData, boolean z, boolean z2) throws C08729d {
        long j2 = j;
        C1446Wk c1446WkA06 = c1446Wk.A06(C1.A0e);
        int iA02 = A02(c1446WkA06.A07(C1.A0W).A00);
        if (iA02 == -1) {
            return null;
        }
        C5 c5A0B = A0B(c1446Wk.A07(C1.A1K).A00);
        if (j2 == C.TIME_UNSET) {
            j2 = c5A0B.A02;
        }
        long jA04 = A04(c1445Wj.A00);
        if (A01[6].charAt(18) != 'y') {
            throw new RuntimeException();
        }
        A01[7] = "VRI";
        long jA0F = j2 == C.TIME_UNSET ? C.TIME_UNSET : C1078Hx.A0F(j2, 1000000L, jA04);
        C1446Wk c1446WkA062 = c1446WkA06.A06(C1.A0i).A06(C1.A17);
        Pair<Long, String> pairA06 = A06(c1446WkA06.A07(C1.A0d).A00);
        C4 c4A0A = A0A(c1446WkA062.A07(C1.A1B).A00, c5A0B.A00, c5A0B.A01, (String) pairA06.second, drmInitData, z2);
        long[] jArr = null;
        long[] jArr2 = null;
        if (!z) {
            Pair<long[], long[]> pairA05 = A05(c1446Wk.A06(C1.A0O));
            jArr = (long[]) pairA05.first;
            jArr2 = (long[]) pairA05.second;
        }
        if (c4A0A.A02 == null) {
            return null;
        }
        return new CM(c5A0B.A00, iA02, ((Long) pairA06.first).longValue(), jA04, jA0F, c4A0A.A02, c4A0A.A01, c4A0A.A03, c4A0A.A00, jArr, jArr2);
    }

    public static CN A0D(C1062Hh c1062Hh, int i, int i2, String str) {
        int i3 = i + 8;
        while (i3 - i < i2) {
            c1062Hh.A0Y(i3);
            int iA08 = c1062Hh.A08();
            if (c1062Hh.A08() == C1.A1H) {
                int iA01 = C1.A01(c1062Hh.A08());
                c1062Hh.A0Z(1);
                int i4 = 0;
                int i5 = 0;
                if (iA01 == 0) {
                    c1062Hh.A0Z(1);
                } else {
                    int iA0E = c1062Hh.A0E();
                    i4 = (iA0E & PsExtractor.VIDEO_STREAM_MASK) >> 4;
                    i5 = iA0E & 15;
                }
                boolean z = c1062Hh.A0E() == 1;
                int iA0E2 = c1062Hh.A0E();
                byte[] bArr = new byte[16];
                c1062Hh.A0c(bArr, 0, bArr.length);
                byte[] bArr2 = null;
                if (z && iA0E2 == 0) {
                    int iA0E3 = c1062Hh.A0E();
                    if (A01[3].charAt(18) == 'y') {
                        throw new RuntimeException();
                    }
                    A01[6] = "4wz2pNpdOED2I1F7uwyPx7ja9AIbtNj6";
                    bArr2 = new byte[iA0E3];
                    c1062Hh.A0c(bArr2, 0, iA0E3);
                }
                return new CN(z, str, iA0E2, bArr, i4, i5, bArr2);
            }
            i3 += iA08;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:157:0x044e  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0511  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.redexgen.X.CP A0E(com.facebook.ads.redexgen.X.CM r35, com.facebook.ads.redexgen.X.C1446Wk r36, com.facebook.ads.redexgen.X.C0924Be r37) throws com.facebook.ads.redexgen.X.C08729d {
        /*
            Method dump skipped, instruction units count: 1396
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C6.A0E(com.facebook.ads.redexgen.X.CM, com.facebook.ads.redexgen.X.Wk, com.facebook.ads.redexgen.X.Be):com.facebook.ads.redexgen.X.CP");
    }

    public static Metadata A0F(C1445Wj c1445Wj, boolean z) {
        if (z) {
            return null;
        }
        C1062Hh c1062Hh = c1445Wj.A00;
        c1062Hh.A0Y(8);
        while (c1062Hh.A04() >= 8) {
            int iA06 = c1062Hh.A06();
            int iA08 = c1062Hh.A08();
            if (c1062Hh.A08() == C1.A0h) {
                c1062Hh.A0Y(iA06);
                return A0H(c1062Hh, iA06 + iA08);
            }
            c1062Hh.A0Z(iA08 - 8);
        }
        return null;
    }

    public static Metadata A0G(C1062Hh c1062Hh, int i) {
        c1062Hh.A0Z(8);
        ArrayList arrayList = new ArrayList();
        while (c1062Hh.A06() < i) {
            Id3Frame id3FrameA04 = CE.A04(c1062Hh);
            if (id3FrameA04 != null) {
                arrayList.add(id3FrameA04);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    public static Metadata A0H(C1062Hh c1062Hh, int i) {
        c1062Hh.A0Z(12);
        while (true) {
            int iA06 = c1062Hh.A06();
            if (A01[2].charAt(2) == 't') {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[0] = "B";
            strArr[5] = "e";
            if (iA06 >= i) {
                return null;
            }
            int iA062 = c1062Hh.A06();
            int iA08 = c1062Hh.A08();
            if (c1062Hh.A08() == C1.A0a) {
                c1062Hh.A0Y(iA062);
                return A0G(c1062Hh, iA062 + iA08);
            }
            c1062Hh.A0Z(iA08 - 8);
        }
    }

    public static String A0I(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 15);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0J() {
        A00 = new byte[]{92, 80, -94, -107, -99, -111, -103, -98, -103, -98, -105, -125, -111, -99, -96, -100, -107, -93, 113, -92, -124, -103, -99, -107, -93, -92, -111, -99, -96, 116, -107, -100, -92, -111, 80, 86, 74, -100, -113, -105, -117, -109, -104, -109, -104, -111, 125, -117, -105, -102, -106, -113, -99, 115, -104, 109, -110, -97, -104, -107, 74, -96, -108, -26, -39, -31, -43, -35, -30, -35, -30, -37, -56, -35, -31, -39, -25, -24, -43, -31, -28, -72, -39, -32, -24, -43, -73, -36, -43, -30, -37, -39, -25, -108, 102, 76, -98, -111, -103, -115, -107, -102, -107, -102, -109, Ascii.DEL, -91, -102, -113, -108, -98, -101, -102, -107, -90, -115, -96, -107, -101, -102, Ascii.DEL, -115, -103, -100, -104, -111, -97, 76, 87, -118, -123, -125, 102, 119, -120, -119, 123, -120, -119, Ascii.DEL, -99, -92, -91, -88, -97, -92, -99, 86, -101, -102, -97, -86, 86, -94, -97, -87, -86, 112, 86, -101, -102, -97, -86, 86, -102, -91, -101, -87, 86, -92, -91, -86, 86, -87, -86, -105, -88, -86, 86, -83, -97, -86, -98, 86, -105, 86, -87, -81, -92, -103, 86, -87, -105, -93, -90, -94, -101, 100, -102, -65, -76, -64, -65, -60, -70, -60, -59, -74, -65, -59, 113, -60, -59, -77, -67, 113, -77, -64, -55, 113, -73, -64, -61, 113, -59, -61, -78, -76, -68, 113, -61, -31, -48, -46, -38, -113, -41, -48, -30, -113, -35, -34, -113, -30, -48, -36, -33, -37, -44, -113, -29, -48, -47, -37, -44, -113, -30, -40, -23, -44, -113, -40, -35, -43, -34, -31, -36, -48, -29, -40, -34, -35, -64, -39, -34, -32, -37, -37, -38, -35, -33, -48, -49, -117, -40, -48, -49, -44, -52, -117, -35, -52, -33, -48, -103, -126, -111, -111, -115, -118, -124, -126, -107, -118, -112, -113, 80, -107, -107, -114, -115, 76, -103, -114, -115, -101, -86, -86, -90, -93, -99, -101, -82, -93, -87, -88, 105, -78, 103, -99, -101, -89, -97, -84, -101, 103, -89, -87, -82, -93, -87, -88, -88, -73, -73, -77, -80, -86, -88, -69, -80, -74, -75, 118, -65, 116, -76, -73, 123, 116, -86, -84, -88, 116, 125, 119, Ascii.DEL, 121, -120, -120, -124, -127, 123, 121, -116, -127, -121, -122, 71, -112, 69, -123, -120, 76, 69, -114, -116, -116, -89, -74, -74, -78, -81, -87, -89, -70, -81, -75, -76, 117, -66, 115, -73, -69, -81, -87, -79, -70, -81, -77, -85, 115, -70, -66, 121, -83, -96, -76, -93, -88, -82, 110, 114, -90, -81, -81, 126, -110, -127, -122, -116, 76, 126, -128, 80, -39, -19, -36, -31, -25, -89, -39, -28, -39, -37, 120, -116, 123, -128, -122, 70, 120, -124, -119, 68, -114, 121, -30, -10, -27, -22, -16, -80, -26, -30, -28, -76, -127, -107, -124, -119, -113, 79, -115, -112, 84, -127, 77, -116, -127, -108, -115, -49, -29, -46, -41, -35, -99, -37, -34, -45, -43, -71, -51, -68, -63, -57, -121, -54, -71, -49, -21, -1, -18, -13, -7, -71, 0, -8, -18, -72, -18, -2, -3, -96, -76, -93, -88, -82, 110, -75, -83, -93, 109, -93, -77, -78, 109, -89, -93, -36, -16, -33, -28, -22, -86, -15, -23, -33, -87, -33, -17, -18, -87, -29, -33, -74, -21, -19, -22, -31, -28, -25, -32, -72, -25, -35, -19, -69, -70, -69, -119, -17, -18, -17, -1, -65, -63, -54, -65, -65, -63, -54, -49, -55, -50, -49, -46, -54, -89, -38, -43, -45, -71, -49, -32, -53, -122, -39, -50, -43, -37, -46, -54, -122, -56, -53, -122, -42, -43, -39, -49, -38, -49, -36, -53, -127, -118, -127, -114, -123, -111, -116, -128, 63, -128, -109, -114, -116, 63, -120, -110, 63, -116, -128, -115, -125, -128, -109, -114, -111, -104, -12, -20, -5, -24, -114, 125, -113, -121, -8, -24, -19, -18, -91, -26, -7, -12, -14, -91, -18, -8, -91, -14, -26, -13, -23, -26, -7, -12, -9, -2, -8, -12, -6, -13, -31, -29, -48, -30, -76, -91, -82, -93, 96, -95, -76, -81, -83, 96, -87, -77, 96, -83, -95, -82, -92, -95, -76, -81, -78, -71, -58, -73, -54, -58, -74, -87, -92, -91, -61, -74, -79, -78, -68, 124, -128, -76, -67, -67, -112, -125, 126, Ascii.DEL, -119, 73, 123, -112, 125, -114, -127, 124, 125, -121, 71, -128, 125, -114, 123, -21, -34, -39, -38, -28, -92, -19, -94, -21, -29, -39, -93, -28, -29, -89, -93, -21, -27, -83, -95, -108, -113, -112, -102, 90, -93, 88, -95, -103, -113, 89, -102, -103, 93, 89, -95, -101, 100};
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x008c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0209  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void A0K(com.facebook.ads.redexgen.X.C1062Hh r23, int r24, int r25, int r26, int r27, int r28, com.facebook.ads.internal.exoplayer2.thirdparty.drm.DrmInitData r29, com.facebook.ads.redexgen.X.C4 r30, int r31) throws com.facebook.ads.redexgen.X.C08729d {
        /*
            Method dump skipped, instruction units count: 564
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C6.A0K(com.facebook.ads.redexgen.X.Hh, int, int, int, int, int, com.facebook.ads.internal.exoplayer2.thirdparty.drm.DrmInitData, com.facebook.ads.redexgen.X.C4, int):void");
    }

    public static void A0L(C1062Hh c1062Hh, int i, int i2, int i3, int i4, String str, C4 c4) throws C08729d {
        String strA0I;
        c1062Hh.A0Y(i2 + 8 + 8);
        List listSingletonList = null;
        long j = Long.MAX_VALUE;
        if (i == C1.A03) {
            strA0I = A0I(295, 20, 18);
        } else if (i == C1.A1P) {
            strA0I = A0I(388, 28, 55);
            int i5 = (i3 - 8) - 8;
            byte[] bArr = new byte[i5];
            c1062Hh.A0c(bArr, 0, i5);
            listSingletonList = Collections.singletonList(bArr);
        } else if (i == C1.A1X) {
            strA0I = A0I(367, 21, 9);
        } else if (i == C1.A19) {
            strA0I = A0I(295, 20, 18);
            j = 0;
        } else {
            if (i != C1.A0A) {
                throw new IllegalStateException();
            }
            strA0I = A0I(342, 25, 56);
            c4.A01 = 1;
        }
        c4.A02 = Format.A09(Integer.toString(i4), strA0I, null, -1, 0, str, -1, null, j, listSingletonList);
    }

    public static void A0M(C1062Hh c1062Hh, int i, int i2, int i3, int i4, String str, boolean z, DrmInitData drmInitData, C4 c4, int i5) throws C08729d {
        int iA0I;
        int iA0F;
        DrmInitData drmInitDataA02 = drmInitData;
        int iIntValue = i;
        c1062Hh.A0Y(i2 + 8 + 8);
        int iA0I2 = 0;
        if (z) {
            iA0I2 = c1062Hh.A0I();
            c1062Hh.A0Z(6);
        } else {
            c1062Hh.A0Z(8);
        }
        if (iA0I2 == 0 || iA0I2 == 1) {
            iA0I = c1062Hh.A0I();
            c1062Hh.A0Z(6);
            iA0F = c1062Hh.A0F();
            if (iA0I2 == 1) {
                c1062Hh.A0Z(16);
            }
        } else {
            if (iA0I2 != 2) {
                return;
            }
            c1062Hh.A0Z(16);
            iA0F = (int) Math.round(c1062Hh.A03());
            iA0I = c1062Hh.A0H();
            c1062Hh.A0Z(20);
        }
        int iA06 = c1062Hh.A06();
        if (iIntValue == C1.A0R) {
            Pair<Integer, CN> pairA09 = A09(c1062Hh, i2, i3);
            if (A01[2].charAt(2) == 't') {
                throw new RuntimeException();
            }
            A01[1] = "rXJd0uQKTdLTB";
            if (pairA09 != null) {
                iIntValue = ((Integer) pairA09.first).intValue();
                drmInitDataA02 = drmInitDataA02 == null ? null : drmInitDataA02.A02(((CN) pairA09.second).A02);
                c4.A03[i5] = (CN) pairA09.second;
            }
            c1062Hh.A0Y(iA06);
        }
        String strA0I = null;
        if (iIntValue == C1.A05) {
            strA0I = A0I(426, 9, 14);
        } else if (iIntValue == C1.A0N) {
            strA0I = A0I(457, 10, 114);
        } else if (iIntValue == C1.A0J) {
            strA0I = A0I(501, 13, 123);
        } else if (iIntValue == C1.A0L || iIntValue == C1.A0M) {
            strA0I = A0I(IronSourceConstants.INIT_COMPLETE, 16, 48);
        } else if (iIntValue == C1.A0K) {
            strA0I = A0I(530, 28, 108);
        } else if (iIntValue == C1.A0w) {
            strA0I = A0I(TypedValues.CycleType.TYPE_PATH_ROTATE, 10, 48);
        } else if (iIntValue == C1.A0x) {
            strA0I = A0I(445, 12, 8);
        } else if (iIntValue == C1.A0b || iIntValue == C1.A15) {
            strA0I = A0I(492, 9, 73);
        } else if (iIntValue == C1.A04) {
            strA0I = A0I(482, 10, 95);
        } else {
            int i6 = C1.A06;
            if (A01[7].length() == 14) {
                throw new RuntimeException();
            }
            A01[1] = "HdbKXAaE1rDpPSyLEE9ktT";
            if (iIntValue == i6) {
                strA0I = A0I(435, 10, 105);
            }
        }
        byte[] bArr = null;
        if (A01[4].charAt(24) != 'i') {
            throw new RuntimeException();
        }
        A01[6] = "QyfbMcdO26pfDQU6rlymYH0CLTjMRKBW";
        while (iA06 - i2 < i3) {
            c1062Hh.A0Y(iA06);
            int iA08 = c1062Hh.A08();
            HI.A05(iA08 > 0, A0I(574, 32, 87));
            int iA082 = c1062Hh.A08();
            if (iA082 == C1.A0T || (z && iA082 == C1.A1W)) {
                int iA03 = iA082 == C1.A0T ? iA06 : A03(c1062Hh, iA06, iA08);
                if (iA03 != -1) {
                    Pair<String, byte[]> pairA07 = A07(c1062Hh, iA03);
                    strA0I = (String) pairA07.first;
                    bArr = (byte[]) pairA07.second;
                    if (A0I(467, 15, 17).equals(strA0I)) {
                        Pair<Integer, Integer> pairA03 = HM.A03(bArr);
                        iA0F = ((Integer) pairA03.first).intValue();
                        iA0I = ((Integer) pairA03.second).intValue();
                    }
                }
            } else {
                int i7 = C1.A0F;
                if (A01[2].charAt(2) == 't') {
                    throw new RuntimeException();
                }
                String[] strArr = A01;
                strArr[0] = "Q";
                strArr[5] = "M";
                if (iA082 == i7) {
                    c1062Hh.A0Y(iA06 + 8);
                    c4.A02 = A8.A07(c1062Hh, Integer.toString(i4), str, drmInitDataA02);
                } else if (iA082 == C1.A0I) {
                    c1062Hh.A0Y(iA06 + 8);
                    c4.A02 = A8.A08(c1062Hh, Integer.toString(i4), str, drmInitDataA02);
                } else if (iA082 == C1.A0H) {
                    c4.A02 = Format.A07(Integer.toString(i4), strA0I, null, -1, -1, iA0I, iA0F, null, drmInitDataA02, 0, str);
                } else if (iA082 == C1.A06) {
                    bArr = new byte[iA08];
                    c1062Hh.A0Y(iA06);
                    c1062Hh.A0c(bArr, 0, iA08);
                }
            }
            iA06 += iA08;
        }
        if (c4.A02 != null || strA0I == null) {
            return;
        }
        c4.A02 = Format.A06(Integer.toString(i4), strA0I, null, -1, -1, iA0I, iA0F, A0I(492, 9, 73).equals(strA0I) ? 2 : -1, bArr != null ? Collections.singletonList(bArr) : null, drmInitDataA02, 0, str);
    }

    public static boolean A0N(long[] jArr, long j, long j2, long j3) {
        int length = jArr.length - 1;
        return jArr[0] <= j2 && j2 < jArr[C1078Hx.A06(3, 0, length)] && jArr[C1078Hx.A06(jArr.length - 3, 0, length)] < j3 && j3 <= j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001b, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static byte[] A0O(com.facebook.ads.redexgen.X.C1062Hh r7, int r8, int r9) {
        /*
            int r3 = r8 + 8
        L2:
            int r4 = r3 - r8
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C6.A01
            r0 = 0
            r1 = r2[r0]
            r0 = 5
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L1c
        L16:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L1c:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C6.A01
            java.lang.String r1 = "hiyhCkw83qioTZht4ycME2aPtqNlSya0"
            r0 = 2
            r2[r0] = r1
            if (r4 >= r9) goto L59
            r7.A0Y(r3)
            int r6 = r7.A08()
            int r5 = r7.A08()
            int r4 = com.facebook.ads.redexgen.X.C1.A0r
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C6.A01
            r0 = 2
            r1 = r1[r0]
            r0 = 2
            char r1 = r1.charAt(r0)
            r0 = 116(0x74, float:1.63E-43)
            if (r1 == r0) goto L16
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C6.A01
            java.lang.String r1 = "K"
            r0 = 0
            r2[r0] = r1
            java.lang.String r1 = "V"
            r0 = 5
            r2[r0] = r1
            if (r5 != r4) goto L57
            byte[] r1 = r7.A00
            int r0 = r3 + r6
            byte[] r0 = java.util.Arrays.copyOfRange(r1, r3, r0)
            return r0
        L57:
            int r3 = r3 + r6
            goto L2
        L59:
            r3 = 0
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C6.A01
            r0 = 4
            r1 = r1[r0]
            r0 = 24
            char r1 = r1.charAt(r0)
            r0 = 105(0x69, float:1.47E-43)
            if (r1 == r0) goto L6a
            return r3
        L6a:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C6.A01
            java.lang.String r1 = "op0Xll27WP2wTMdM3NyEU8fL7oyu7ROp"
            r0 = 6
            r2[r0] = r1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C6.A0O(com.facebook.ads.redexgen.X.Hh, int, int):byte[]");
    }
}

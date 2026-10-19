package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.metadata.Metadata;
import com.facebook.ads.internal.exoplayer2.thirdparty.metadata.id3.ApicFrame;
import com.facebook.ads.internal.exoplayer2.thirdparty.metadata.id3.BinaryFrame;
import com.facebook.ads.internal.exoplayer2.thirdparty.metadata.id3.ChapterFrame;
import com.facebook.ads.internal.exoplayer2.thirdparty.metadata.id3.ChapterTocFrame;
import com.facebook.ads.internal.exoplayer2.thirdparty.metadata.id3.CommentFrame;
import com.facebook.ads.internal.exoplayer2.thirdparty.metadata.id3.GeobFrame;
import com.facebook.ads.internal.exoplayer2.thirdparty.metadata.id3.Id3Frame;
import com.facebook.ads.internal.exoplayer2.thirdparty.metadata.id3.PrivFrame;
import com.facebook.ads.internal.exoplayer2.thirdparty.metadata.id3.TextInformationFrame;
import com.facebook.ads.internal.exoplayer2.thirdparty.metadata.id3.UrlLinkFrame;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1431Vu implements DE {
    public static byte[] A01;
    public static String[] A02 = {"mDpfQ0Mg1qMGU0sRUyB4w0yHI9AflFxL", "HrWFAZbBmLlJHBGWXoy88PVYdiXTIEfW", "ZQEIpFlmPj9dChjEJf3cuXBCToBvQGIn", "RQPpjxLwn1F2LqLyPS6YhTLdMSPVP9VK", "XPMzSAYF2Koz19PEH34p5", "swwfqTWHhic8XQtgs9vSQ", "6JbQXNgGm6Rlu9UTMBxnLLi5Rd7F6qFb", "jePmV9Iz"};
    public static final int A03;
    public static final DQ A04;
    public final DQ A00;

    static {
        A0L();
        A04 = new C1432Vv();
        A03 = C1078Hx.A08(A0I(166, 3, 12));
    }

    public C1431Vu() {
        this(null);
    }

    public C1431Vu(DQ dq) {
        this.A00 = dq;
    }

    public static int A00(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    public static int A01(C1062Hh c1062Hh, int i) {
        byte[] bArr = c1062Hh.A00;
        for (int iA06 = c1062Hh.A06(); iA06 + 1 < i; iA06++) {
            if ((bArr[iA06] & 255) == 255 && bArr[iA06 + 1] == 0) {
                int i2 = iA06 + 2;
                int i3 = iA06 + 1;
                int i4 = (i - iA06) - 2;
                String[] strArr = A02;
                if (strArr[0].charAt(4) == strArr[6].charAt(4)) {
                    throw new RuntimeException();
                }
                A02[1] = "GmDFLtMXmPbGQOJzrAUGcq8JFdShu0kr";
                System.arraycopy(bArr, i2, bArr, i3, i4);
                i--;
            }
        }
        return i;
    }

    public static int A02(byte[] bArr, int i) {
        while (i < bArr.length) {
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
        return bArr.length;
    }

    public static int A03(byte[] bArr, int i, int i2) {
        int iA02 = A02(bArr, i);
        if (i2 == 0 || i2 == 3) {
            return iA02;
        }
        while (iA02 < bArr.length - 1) {
            if (iA02 % 2 == 0 && bArr[iA02 + 1] == 0) {
                return iA02;
            }
            iA02 = A02(bArr, iA02 + 1);
        }
        return bArr.length;
    }

    public static ApicFrame A04(C1062Hh c1062Hh, int i, int i2) throws UnsupportedEncodingException {
        int iA02;
        String strA0M;
        int iA0E = c1062Hh.A0E();
        String strA0H = A0H(iA0E);
        byte[] bArr = new byte[i - 1];
        c1062Hh.A0c(bArr, 0, i - 1);
        String strA0I = A0I(FacebookRequestErrorClassification.ESC_APP_NOT_INSTALLED, 6, 45);
        String strA0I2 = A0I(169, 10, 32);
        if (i2 == 2) {
            iA02 = 2;
            strA0M = strA0I + C1078Hx.A0M(new String(bArr, 0, 3, strA0I2));
            if (A0I(474, 9, 58).equals(strA0M)) {
                strA0M = A0I(464, 10, 126);
            }
        } else {
            iA02 = A02(bArr, 0);
            strA0M = C1078Hx.A0M(new String(bArr, 0, iA02, strA0I2));
            if (strA0M.indexOf(47) == -1) {
                strA0M = strA0I + strA0M;
            }
        }
        int i3 = bArr[iA02 + 1] & 255;
        int i4 = iA02 + 2;
        int iA03 = A03(bArr, i4, iA0E);
        return new ApicFrame(strA0M, new String(bArr, i4, iA03 - i4, strA0H), i3, A0N(bArr, A00(iA0E) + iA03, bArr.length));
    }

    public static BinaryFrame A05(C1062Hh c1062Hh, int i, String str) {
        byte[] bArr = new byte[i];
        c1062Hh.A0c(bArr, 0, i);
        return new BinaryFrame(str, bArr);
    }

    public static ChapterFrame A06(C1062Hh c1062Hh, int i, int i2, boolean z, int i3, DQ dq) throws UnsupportedEncodingException {
        int iA06 = c1062Hh.A06();
        int iA02 = A02(c1062Hh.A00, iA06);
        String str = new String(c1062Hh.A00, iA06, iA02 - iA06, A0I(169, 10, 32));
        c1062Hh.A0Y(iA02 + 1);
        int iA08 = c1062Hh.A08();
        int iA082 = c1062Hh.A08();
        long jA0M = c1062Hh.A0M();
        if (jA0M == 4294967295L) {
            jA0M = -1;
        }
        long jA0M2 = c1062Hh.A0M();
        if (jA0M2 == 4294967295L) {
            jA0M2 = -1;
        }
        ArrayList arrayList = new ArrayList();
        int i4 = iA06 + i;
        while (c1062Hh.A06() < i4) {
            Id3Frame id3FrameA0B = A0B(i2, c1062Hh, z, i3, dq);
            if (id3FrameA0B != null) {
                arrayList.add(id3FrameA0B);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        return new ChapterFrame(str, iA08, iA082, jA0M, jA0M2, id3FrameArr);
    }

    public static ChapterTocFrame A07(C1062Hh c1062Hh, int i, int i2, boolean z, int i3, DQ dq) throws UnsupportedEncodingException {
        int iA06 = c1062Hh.A06();
        int iA02 = A02(c1062Hh.A00, iA06);
        String strA0I = A0I(169, 10, 32);
        String str = new String(c1062Hh.A00, iA06, iA02 - iA06, strA0I);
        c1062Hh.A0Y(iA02 + 1);
        int iA0E = c1062Hh.A0E();
        boolean z2 = (iA0E & 2) != 0;
        boolean z3 = (iA0E & 1) != 0;
        int iA0E2 = c1062Hh.A0E();
        String[] strArr = new String[iA0E2];
        for (int i4 = 0; i4 < iA0E2; i4++) {
            int iA062 = c1062Hh.A06();
            int iA022 = A02(c1062Hh.A00, iA062);
            strArr[i4] = new String(c1062Hh.A00, iA062, iA022 - iA062, strA0I);
            c1062Hh.A0Y(iA022 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i5 = iA06 + i;
        while (c1062Hh.A06() < i5) {
            String[] strArr2 = A02;
            if (strArr2[4].length() != strArr2[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr3 = A02;
            strArr3[4] = "YQsr0udxa6AlS4ZOrNFlw";
            strArr3[5] = "dBU8ocTiI6WLc8wZTOIXb";
            Id3Frame id3FrameA0B = A0B(i2, c1062Hh, z, i3, dq);
            if (id3FrameA0B != null) {
                arrayList.add(id3FrameA0B);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        return new ChapterTocFrame(str, z2, z3, strArr, id3FrameArr);
    }

    public static CommentFrame A08(C1062Hh c1062Hh, int i) throws UnsupportedEncodingException {
        if (i < 4) {
            return null;
        }
        int iA0E = c1062Hh.A0E();
        String strA0H = A0H(iA0E);
        byte[] bArr = new byte[3];
        c1062Hh.A0c(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        byte[] bArr2 = new byte[i - 4];
        c1062Hh.A0c(bArr2, 0, i - 4);
        int iA03 = A03(bArr2, 0, iA0E);
        String str2 = new String(bArr2, 0, iA03, strA0H);
        int iA00 = A00(iA0E) + iA03;
        return new CommentFrame(str, str2, A0K(bArr2, iA00, A03(bArr2, iA00, iA0E), strA0H));
    }

    public static GeobFrame A09(C1062Hh c1062Hh, int i) throws UnsupportedEncodingException {
        int iA0E = c1062Hh.A0E();
        String strA0H = A0H(iA0E);
        byte[] bArr = new byte[i - 1];
        c1062Hh.A0c(bArr, 0, i - 1);
        int iA02 = A02(bArr, 0);
        String str = new String(bArr, 0, iA02, A0I(169, 10, 32));
        int i2 = iA02 + 1;
        int iA03 = A03(bArr, i2, iA0E);
        String strA0K = A0K(bArr, i2, iA03, strA0H);
        int iA00 = A00(iA0E) + iA03;
        int iA032 = A03(bArr, iA00, iA0E);
        return new GeobFrame(str, strA0K, A0K(bArr, iA00, iA032, strA0H), A0N(bArr, A00(iA0E) + iA032, bArr.length));
    }

    public static DR A0A(C1062Hh c1062Hh) {
        int iA04 = c1062Hh.A04();
        String strA0I = A0I(179, 10, 19);
        if (iA04 < 10) {
            Log.w(strA0I, A0I(26, 31, 29));
            return null;
        }
        int iA0G = c1062Hh.A0G();
        if (iA0G != A03) {
            Log.w(strA0I, A0I(376, 48, 19) + iA0G);
            return null;
        }
        int iA0E = c1062Hh.A0E();
        c1062Hh.A0Z(1);
        int iA0E2 = c1062Hh.A0E();
        int iA0D = c1062Hh.A0D();
        if (iA0E == 2) {
            if ((iA0E2 & 64) != 0) {
                Log.w(strA0I, A0I(PsExtractor.PRIVATE_STREAM_1, 68, 48));
                return null;
            }
        } else if (iA0E == 3) {
            if ((iA0E2 & 64) != 0) {
                int iA08 = c1062Hh.A08();
                c1062Hh.A0Z(iA08);
                iA0D -= iA08 + 4;
            }
        } else {
            if (iA0E != 4) {
                Log.w(strA0I, A0I(257, 46, 37) + iA0E);
                return null;
            }
            if ((iA0E2 & 64) != 0) {
                int iA0D2 = c1062Hh.A0D();
                c1062Hh.A0Z(iA0D2 - 4);
                iA0D -= iA0D2;
            }
            if ((iA0E2 & 16) != 0) {
                iA0D -= 10;
            }
        }
        return new DR(iA0E, iA0E < 4 && (iA0E2 & 128) != 0, iA0D);
    }

    /* JADX WARN: Removed duplicated region for block: B:119:0x01bc A[Catch: UnsupportedEncodingException -> 0x02c3, all -> 0x02d4, Merged into TryCatch #1 {all -> 0x02d4, UnsupportedEncodingException -> 0x02c3, blocks: (B:95:0x015a, B:166:0x0266, B:173:0x02c3, B:98:0x0164, B:105:0x017a, B:107:0x0182, B:119:0x01bc, B:128:0x01d4, B:142:0x0214, B:149:0x0225, B:157:0x0238, B:163:0x024f, B:164:0x025c), top: B:183:0x0150 }, TRY_ENTER] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.internal.exoplayer2.thirdparty.metadata.id3.Id3Frame A0B(int r25, com.facebook.ads.redexgen.X.C1062Hh r26, boolean r27, int r28, com.facebook.ads.redexgen.X.DQ r29) {
        /*
            Method dump skipped, instruction units count: 741
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1431Vu.A0B(int, com.facebook.ads.redexgen.X.Hh, boolean, int, com.facebook.ads.redexgen.X.DQ):com.facebook.ads.internal.exoplayer2.thirdparty.metadata.id3.Id3Frame");
    }

    public static PrivFrame A0C(C1062Hh c1062Hh, int i) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i];
        c1062Hh.A0c(bArr, 0, i);
        int iA02 = A02(bArr, 0);
        return new PrivFrame(new String(bArr, 0, iA02, A0I(169, 10, 32)), A0N(bArr, iA02 + 1, bArr.length));
    }

    public static TextInformationFrame A0D(C1062Hh c1062Hh, int i) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int iA0E = c1062Hh.A0E();
        String strA0H = A0H(iA0E);
        byte[] bArr = new byte[i - 1];
        c1062Hh.A0c(bArr, 0, i - 1);
        int iA03 = A03(bArr, 0, iA0E);
        String str = new String(bArr, 0, iA03, strA0H);
        int iA00 = A00(iA0E) + iA03;
        return new TextInformationFrame(A0I(353, 4, 104), str, A0K(bArr, iA00, A03(bArr, iA00, iA0E), strA0H));
    }

    public static TextInformationFrame A0E(C1062Hh c1062Hh, int i, String str) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int iA0E = c1062Hh.A0E();
        String strA0H = A0H(iA0E);
        byte[] bArr = new byte[i - 1];
        c1062Hh.A0c(bArr, 0, i - 1);
        return new TextInformationFrame(str, null, new String(bArr, 0, A03(bArr, 0, iA0E), strA0H));
    }

    public static UrlLinkFrame A0F(C1062Hh c1062Hh, int i) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int iA0E = c1062Hh.A0E();
        String strA0H = A0H(iA0E);
        byte[] bArr = new byte[i - 1];
        c1062Hh.A0c(bArr, 0, i - 1);
        int iA03 = A03(bArr, 0, iA0E);
        String str = new String(bArr, 0, iA03, strA0H);
        int iA00 = A00(iA0E) + iA03;
        return new UrlLinkFrame(A0I(454, 4, 52), str, A0K(bArr, iA00, A02(bArr, iA00), A0I(169, 10, 32)));
    }

    public static UrlLinkFrame A0G(C1062Hh c1062Hh, int i, String str) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i];
        c1062Hh.A0c(bArr, 0, i);
        return new UrlLinkFrame(str, null, new String(bArr, 0, A02(bArr, 0), A0I(169, 10, 32)));
    }

    public static String A0H(int i) {
        String strA0I = A0I(169, 10, 32);
        switch (i) {
            case 0:
                return strA0I;
            case 1:
                return A0I(357, 6, 72);
            case 2:
                return A0I(363, 8, 105);
            case 3:
                String strA0I2 = A0I(371, 5, 97);
                String[] strArr = A02;
                if (strArr[0].charAt(4) == strArr[6].charAt(4)) {
                    throw new RuntimeException();
                }
                A02[7] = "WB3CnC";
                return strA0I2;
            default:
                return strA0I;
        }
    }

    public static String A0I(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 2);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A0J(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, A0I(0, 6, 105), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, A0I(6, 8, 11), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    public static String A0K(byte[] bArr, int i, int i2, String str) throws UnsupportedEncodingException {
        if (i2 > i && i2 <= bArr.length) {
            return new String(bArr, i, i2 - i, str);
        }
        String[] strArr = A02;
        if (strArr[4].length() != strArr[5].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[0] = "r4Qi0WBzOYfLLA4UC9s9DAK76ksjAQPp";
        strArr2[6] = "c5jPrSHyFK7RFs6Pjjym9ojkSMFCl1O5";
        return A0I(0, 0, 121);
    }

    public static void A0L() {
        A01 = new byte[]{78, 8, 78, 8, 78, 8, 44, 106, 44, 106, 44, 106, 44, 106, 89, 85, 19, 7, Ascii.DC4, Ascii.CAN, Ascii.DLE, 38, Ascii.FS, Ascii.SI, Ascii.DLE, 72, 91, 126, 107, 126, 63, 107, 112, 112, 63, 108, 119, 112, 109, 107, 63, 107, 112, 63, 125, 122, 63, 126, 113, 63, 86, 91, 44, 63, 107, 126, 120, Ascii.SYN, 49, 57, 60, 53, 52, 112, 36, 63, 112, 52, 53, 51, 63, 52, 53, 112, 54, 34, 49, 61, 53, 106, 112, 57, 52, 109, 119, 80, 88, 93, 84, 85, 17, 69, 94, 17, 71, 80, 93, 88, 85, 80, 69, 84, 17, 120, 117, 2, 17, 69, 80, 86, 17, 70, 88, 69, 89, 17, 92, 80, 91, 94, 67, 103, 84, 67, 66, 88, 94, 95, Ascii.FF, 4, 48, 35, 47, 39, 98, 49, 43, 56, 39, 98, 39, 58, 33, 39, 39, 38, 49, 98, 48, 39, 47, 35, 43, 44, 43, 44, 37, 98, 54, 35, 37, 98, 38, 35, 54, 35, 71, 74, 61, 107, 113, 109, Ascii.SI, Ascii.SUB, Ascii.SUB, Ascii.ETB, Ascii.ESC, Ascii.SI, 19, 88, 117, 34, 85, 116, 114, 126, 117, 116, 99, 97, 89, 91, 66, 66, 87, 86, Ascii.DC2, 123, 118, 1, Ascii.DC2, 70, 83, 85, Ascii.DC2, 69, 91, 70, 90, Ascii.DC2, 95, 83, 88, 93, 64, 100, 87, 64, 65, 91, 93, 92, Ascii.SI, 0, Ascii.DC2, 83, 92, 86, Ascii.DC2, 71, 92, 86, 87, 84, 91, 92, 87, 86, Ascii.DC2, 81, 93, 95, 66, 64, 87, 65, 65, 91, 93, 92, Ascii.DC2, 65, 81, 90, 87, 95, 87, 116, 76, 78, 87, 87, 66, 67, 7, 110, 99, Ascii.DC4, 7, 83, 70, 64, 7, 80, 78, 83, 79, 7, 82, 73, 84, 82, 87, 87, 72, 85, 83, 66, 67, 7, 74, 70, 77, 72, 85, 113, 66, 85, 84, 78, 72, 73, Ascii.SUB, Ascii.FS, 36, 38, 63, 63, 38, 33, 40, 111, 58, 33, 60, 58, 63, 63, 32, 61, 59, 42, 43, 111, 44, 32, 34, 63, 61, 42, 60, 60, 42, 43, 111, 32, 61, 111, 42, 33, 44, 61, 54, 63, 59, 42, 43, 111, 41, 61, 46, 34, 42, 62, 50, 50, 50, Ascii.US, Ascii.RS, Ascii.FF, 103, 123, 124, 62, 63, 45, 70, 90, 93, 41, 46, 54, 55, 37, 78, 91, 68, Ascii.DEL, 116, 105, 97, 116, 114, 101, 116, 117, 49, 119, 120, 99, 98, 101, 49, 101, 121, 99, 116, 116, 49, 115, 104, 101, 116, 98, 49, 126, 119, 49, 88, 85, 34, 49, 101, 112, 118, 49, 121, 116, 112, 117, 116, 99, 43, 49, 19, 40, 53, 51, 54, 54, 41, 52, 50, 35, 34, 102, 37, 46, 39, 52, 39, 37, 50, 35, 52, 102, 35, 40, 37, 41, 34, 47, 40, 33, 97, 110, 110, 110, 70, 66, 78, 72, 74, 0, Ascii.NAK, 17, Ascii.GS, Ascii.ESC, Ascii.EM, 83, Ascii.SYN, Ascii.FF, Ascii.EM, Ascii.ESC, 81, 85, 89, 95, 93, Ascii.ETB, 82, 72, 95};
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean A0M(com.facebook.ads.redexgen.X.C1062Hh r16, int r17, int r18, boolean r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 262
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1431Vu.A0M(com.facebook.ads.redexgen.X.Hh, int, int, boolean):boolean");
    }

    public static byte[] A0N(byte[] bArr, int i, int i2) {
        return i2 <= i ? new byte[0] : Arrays.copyOfRange(bArr, i, i2);
    }

    public final Metadata A0O(byte[] bArr, int i) {
        ArrayList arrayList = new ArrayList();
        C1062Hh c1062Hh = new C1062Hh(bArr, i);
        DR drA0A = A0A(c1062Hh);
        if (drA0A == null) {
            return null;
        }
        int iA06 = c1062Hh.A06();
        int i2 = drA0A.A01 == 2 ? 6 : 10;
        int iA01 = drA0A.A00;
        if (drA0A.A02) {
            iA01 = A01(c1062Hh, drA0A.A00);
        }
        c1062Hh.A0X(iA06 + iA01);
        boolean z = false;
        if (!A0M(c1062Hh, drA0A.A01, i2, false)) {
            if (drA0A.A01 != 4 || !A0M(c1062Hh, 4, i2, true)) {
                Log.w(A0I(179, 10, 19), A0I(84, 45, 51) + drA0A.A01);
                return null;
            }
            z = true;
        }
        while (c1062Hh.A04() >= i2) {
            Id3Frame id3FrameA0B = A0B(drA0A.A01, c1062Hh, z, i2, this.A00);
            if (id3FrameA0B != null) {
                arrayList.add(id3FrameA0B);
            }
        }
        return new Metadata(arrayList);
    }

    @Override // com.facebook.ads.redexgen.X.DE
    public final Metadata A4x(D1 d1) {
        ByteBuffer byteBuffer = d1.A01;
        return A0O(byteBuffer.array(), byteBuffer.limit());
    }
}

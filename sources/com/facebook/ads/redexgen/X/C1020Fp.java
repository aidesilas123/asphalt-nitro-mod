package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Region;
import android.util.SparseArray;
import androidx.core.view.ViewCompat;
import com.applovin.exoplayer2.common.base.Ascii;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1020Fp {
    public static byte[] A07;
    public static String[] A08 = {"qcU5l5rVDanZ0IBZnB67EILhI18GgdFe", "32XpuNghlFeF4zyqPL948gmCUNCGk", "bftD5DkqR73p2Uf2yBhEF5T9UOvyv9s", "0", "qryxRa4yOsFNWhLtu25s3YxhDLRy", "", "tLr9RBWs5E21", "UeFN6nMF8sjHvHxScJIKm37Ehl9oCVg2"};
    public static final byte[] A09;
    public static final byte[] A0A;
    public static final byte[] A0B;
    public Bitmap A00;
    public final Canvas A01;
    public final Paint A02;
    public final Paint A03;
    public final C1012Fh A04;
    public final C1013Fi A05;
    public final C1019Fo A06;

    static {
        A0A();
        A09 = new byte[]{0, 7, 8, Ascii.SI};
        A0A = new byte[]{0, 119, -120, -1};
        A0B = new byte[]{0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    }

    public C1020Fp(int i, int i2) {
        Paint paint = new Paint();
        this.A02 = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.A03 = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.A01 = new Canvas();
        this.A05 = new C1013Fi(719, 575, 0, 719, 0, 575);
        this.A04 = new C1012Fh(0, A0F(), A0G(), A0H());
        this.A06 = new C1019Fo(i, i2);
    }

    public static int A00(int i, int i2, int i3, int i4) {
        return (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    public static int A01(C1061Hg c1061Hg, int[] iArr, byte[] bArr, int i, int i2, Paint paint, Canvas canvas) {
        int i3 = i;
        boolean z = false;
        do {
            int iA04 = 0;
            int iA042 = c1061Hg.A04(2);
            if (iA042 != 0) {
                iA04 = 1;
                if (A08[1].length() != 29) {
                    throw new RuntimeException();
                }
                A08[6] = "cKDkKJCaTP5Z";
            } else if (c1061Hg.A0F()) {
                iA04 = c1061Hg.A04(3) + 3;
                iA042 = c1061Hg.A04(2);
                if (A08[1].length() == 29) {
                    A08[1] = "Xe5wyvwrL1rxQiCfD8ENREY9AaRUH";
                }
            } else if (!c1061Hg.A0F()) {
                switch (c1061Hg.A04(2)) {
                    case 0:
                        z = true;
                        iA042 = 0;
                        break;
                    case 1:
                        iA04 = 2;
                        iA042 = 0;
                        break;
                    case 2:
                        iA04 = c1061Hg.A04(4) + 12;
                        iA042 = c1061Hg.A04(2);
                        break;
                    case 3:
                        iA04 = c1061Hg.A04(8) + 29;
                        if (A08[1].length() != 29) {
                            throw new RuntimeException();
                        }
                        A08[5] = "eZC8v48u";
                        iA042 = c1061Hg.A04(2);
                        break;
                    default:
                        iA042 = 0;
                        break;
                }
            } else {
                iA04 = 1;
                iA042 = 0;
            }
            if (iA04 != 0 && paint != null) {
                if (bArr != null) {
                    iA042 = bArr[iA042];
                }
                paint.setColor(iArr[iA042]);
                canvas.drawRect(i3, i2, i3 + iA04, i2 + 1, paint);
            }
            i3 += iA04;
        } while (!z);
        return i3;
    }

    public static int A02(C1061Hg c1061Hg, int[] iArr, byte[] bArr, int i, int i2, Paint paint, Canvas canvas) {
        int i3 = i;
        boolean z = false;
        do {
            int iA04 = 0;
            int iA042 = c1061Hg.A04(4);
            if (iA042 != 0) {
                iA04 = 1;
            } else if (!c1061Hg.A0F()) {
                int iA043 = c1061Hg.A04(3);
                if (iA043 != 0) {
                    iA04 = iA043 + 2;
                    iA042 = 0;
                } else {
                    z = true;
                    iA042 = 0;
                }
            } else if (c1061Hg.A0F()) {
                switch (c1061Hg.A04(2)) {
                    case 0:
                        iA04 = 1;
                        if (A08[1].length() == 29) {
                            String[] strArr = A08;
                            strArr[3] = DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B;
                            strArr[4] = "RKCQrML1KI9i2rbeBXbE06C32ORX";
                            iA042 = 0;
                        } else {
                            iA042 = 0;
                        }
                        break;
                    case 1:
                        iA04 = 2;
                        iA042 = 0;
                        break;
                    case 2:
                        iA04 = c1061Hg.A04(4) + 9;
                        iA042 = c1061Hg.A04(4);
                        break;
                    case 3:
                        iA04 = c1061Hg.A04(8) + 25;
                        String[] strArr2 = A08;
                        if (strArr2[3].length() == strArr2[4].length()) {
                            throw new RuntimeException();
                        }
                        A08[6] = "tDVEwF5JbpPt";
                        iA042 = c1061Hg.A04(4);
                        break;
                        break;
                    default:
                        iA042 = 0;
                        break;
                }
            } else {
                iA04 = c1061Hg.A04(2) + 4;
                iA042 = c1061Hg.A04(4);
            }
            if (iA04 != 0 && paint != null) {
                if (bArr != null) {
                    iA042 = bArr[iA042];
                }
                paint.setColor(iArr[iA042]);
                float f2 = i3;
                float f3 = i2;
                if (A08[6].length() != 12) {
                    throw new RuntimeException();
                }
                A08[1] = "PxagUxU0Gd3Wd2jZQY5J7se2mW8fT";
                canvas.drawRect(f2, f3, i3 + iA04, i2 + 1, paint);
            }
            i3 += iA04;
        } while (!z);
        return i3;
    }

    public static int A03(C1061Hg c1061Hg, int[] iArr, byte[] bArr, int i, int i2, Paint paint, Canvas canvas) {
        int iA04;
        int i3 = i;
        boolean z = false;
        do {
            int iA042 = c1061Hg.A04(8);
            if (iA042 != 0) {
                iA04 = 1;
            } else if (c1061Hg.A0F()) {
                iA04 = c1061Hg.A04(7);
                iA042 = c1061Hg.A04(8);
            } else {
                iA04 = c1061Hg.A04(7);
                if (A08[6].length() != 12) {
                    throw new RuntimeException();
                }
                A08[1] = "SuejjuLnG0h9t9VMaryqiTg33Oi2Z";
                if (iA04 != 0) {
                    iA042 = 0;
                } else {
                    z = true;
                    iA04 = 0;
                    iA042 = 0;
                }
            }
            if (iA04 != 0 && paint != null) {
                if (bArr != null) {
                    iA042 = bArr[iA042];
                }
                paint.setColor(iArr[iA042]);
                canvas.drawRect(i3, i2, i3 + iA04, i2 + 1, paint);
            }
            i3 += iA04;
        } while (!z);
        return i3;
    }

    public static C1012Fh A04(C1061Hg c1061Hg, int i) {
        int iA04;
        int iA042;
        int iA043;
        int iA044;
        int i2 = 8;
        int iA045 = c1061Hg.A04(8);
        c1061Hg.A08(8);
        int i3 = i - 2;
        int[] iArrA0F = A0F();
        int[] iArrA0G = A0G();
        int[] iArrA0H = A0H();
        while (i3 > 0) {
            int iA046 = c1061Hg.A04(i2);
            int iA047 = c1061Hg.A04(i2);
            int i4 = i3 - 2;
            int[] iArr = (iA047 & 128) != 0 ? iArrA0F : (iA047 & 64) != 0 ? iArrA0G : iArrA0H;
            if ((iA047 & 1) != 0) {
                iA04 = c1061Hg.A04(i2);
                iA042 = c1061Hg.A04(i2);
                iA043 = c1061Hg.A04(i2);
                iA044 = c1061Hg.A04(i2);
                i3 = i4 - 4;
            } else {
                iA04 = c1061Hg.A04(6) << 2;
                iA042 = c1061Hg.A04(4) << 4;
                iA043 = c1061Hg.A04(4) << 4;
                iA044 = c1061Hg.A04(2) << 6;
                i3 = i4 - 2;
            }
            if (iA04 == 0) {
                iA042 = 0;
                iA043 = 0;
                iA044 = 255;
            }
            iArr[iA046] = A00((byte) (255 - (iA044 & 255)), C1078Hx.A06((int) (((double) iA04) + (((double) (iA042 - 128)) * 1.402d)), 0, 255), C1078Hx.A06((int) ((((double) iA04) - (((double) (iA043 - 128)) * 0.34414d)) - (((double) (iA042 - 128)) * 0.71414d)), 0, 255), C1078Hx.A06((int) (((double) iA04) + (((double) (iA043 - 128)) * 1.772d)), 0, 255));
            i2 = 8;
        }
        return new C1012Fh(iA045, iArrA0F, iArrA0G, iArrA0H);
    }

    public static C1013Fi A05(C1061Hg c1061Hg) {
        int iA04;
        int iA042;
        int iA043;
        int iA044;
        c1061Hg.A08(4);
        boolean zA0F = c1061Hg.A0F();
        c1061Hg.A08(3);
        int iA045 = c1061Hg.A04(16);
        int iA046 = c1061Hg.A04(16);
        if (zA0F) {
            iA04 = c1061Hg.A04(16);
            iA044 = c1061Hg.A04(16);
            iA042 = c1061Hg.A04(16);
            iA043 = c1061Hg.A04(16);
        } else {
            iA04 = 0;
            iA042 = 0;
            iA043 = iA046;
            iA044 = iA045;
        }
        return new C1013Fi(iA045, iA046, iA04, iA044, iA042, iA043);
    }

    public static C1014Fj A06(C1061Hg c1061Hg) {
        int iA04 = c1061Hg.A04(16);
        c1061Hg.A08(4);
        int iA042 = c1061Hg.A04(2);
        boolean zA0F = c1061Hg.A0F();
        c1061Hg.A08(1);
        byte[] bArr = null;
        byte[] bArr2 = null;
        if (iA042 == 1) {
            c1061Hg.A08(c1061Hg.A04(8) * 16);
        } else if (iA042 == 0) {
            int iA043 = c1061Hg.A04(16);
            int iA044 = c1061Hg.A04(16);
            if (iA043 > 0) {
                bArr = new byte[iA043];
                c1061Hg.A0E(bArr, 0, iA043);
            }
            if (iA044 > 0) {
                bArr2 = new byte[iA044];
                c1061Hg.A0E(bArr2, 0, iA044);
            } else {
                bArr2 = bArr;
            }
        }
        return new C1014Fj(iA04, zA0F, bArr, bArr2);
    }

    public static C1015Fk A07(C1061Hg c1061Hg, int i) {
        int iA04 = c1061Hg.A04(8);
        int iA042 = c1061Hg.A04(4);
        int iA043 = c1061Hg.A04(2);
        c1061Hg.A08(2);
        int i2 = i - 2;
        SparseArray sparseArray = new SparseArray();
        while (i2 > 0) {
            int iA044 = c1061Hg.A04(8);
            c1061Hg.A08(8);
            i2 -= 6;
            sparseArray.put(iA044, new C1016Fl(c1061Hg.A04(16), c1061Hg.A04(16)));
        }
        return new C1015Fk(iA04, iA042, iA043, sparseArray);
    }

    public static C1017Fm A08(C1061Hg c1061Hg, int i) {
        int i2 = 8;
        int iA04 = c1061Hg.A04(8);
        c1061Hg.A08(4);
        boolean zA0F = c1061Hg.A0F();
        c1061Hg.A08(3);
        int iA042 = c1061Hg.A04(16);
        int iA043 = c1061Hg.A04(16);
        int iA044 = c1061Hg.A04(3);
        int iA045 = c1061Hg.A04(3);
        c1061Hg.A08(2);
        int iA046 = c1061Hg.A04(8);
        int iA047 = c1061Hg.A04(8);
        int iA048 = c1061Hg.A04(4);
        int iA049 = c1061Hg.A04(2);
        c1061Hg.A08(2);
        int i3 = i - 10;
        SparseArray sparseArray = new SparseArray();
        while (i3 > 0) {
            int iA0410 = c1061Hg.A04(16);
            int iA0411 = c1061Hg.A04(2);
            int iA0412 = c1061Hg.A04(2);
            int iA0413 = c1061Hg.A04(12);
            c1061Hg.A08(4);
            int iA0414 = c1061Hg.A04(12);
            i3 -= 6;
            int iA0415 = 0;
            int iA0416 = 0;
            if (iA0411 == 1 || iA0411 == 2) {
                iA0415 = c1061Hg.A04(i2);
                iA0416 = c1061Hg.A04(i2);
                i3 -= 2;
            }
            sparseArray.put(iA0410, new C1018Fn(iA0411, iA0412, iA0413, iA0414, iA0415, iA0416));
            i2 = 8;
        }
        return new C1017Fm(iA04, zA0F, iA042, iA043, iA044, iA045, iA046, iA047, iA048, iA049, sparseArray);
    }

    public static String A09(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 17);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0A() {
        A07 = new byte[]{Ascii.DC2, 55, 34, 55, 118, 48, 63, 51, 58, 50, 118, 58, 51, 56, 49, 34, 62, 118, 51, 46, 53, 51, 51, 50, 37, 118, 58, 63, 59, 63, 34, 106, 88, 76, 126, 79, 92, 93, 75, 92};
    }

    public static void A0B(C1014Fj c1014Fj, C1012Fh c1012Fh, int i, int i2, int i3, Paint paint, Canvas canvas) {
        int[] iArr;
        if (i == 3) {
            iArr = c1012Fh.A03;
        } else {
            if (A08[2].length() == 20) {
                throw new RuntimeException();
            }
            A08[1] = "74G7JuTvJBV0INH1XI3DUfK6d2EWZ";
            iArr = i == 2 ? c1012Fh.A02 : c1012Fh.A01;
        }
        A0D(c1014Fj.A03, iArr, i, i2, i3, paint, canvas);
        A0D(c1014Fj.A02, iArr, i, i2, i3 + 1, paint, canvas);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void A0C(com.facebook.ads.redexgen.X.C1061Hg r6, com.facebook.ads.redexgen.X.C1019Fo r7) {
        /*
            Method dump skipped, instruction units count: 314
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1020Fp.A0C(com.facebook.ads.redexgen.X.Hg, com.facebook.ads.redexgen.X.Fo):void");
    }

    public static void A0D(byte[] bArr, int[] iArr, int i, int i2, int i3, Paint paint, Canvas canvas) {
        byte[] bArr2;
        int i4 = i3;
        C1061Hg c1061Hg = new C1061Hg(bArr);
        byte[] bArrA0E = null;
        byte[] bArrA0E2 = null;
        int iA03 = i2;
        while (c1061Hg.A01() != 0) {
            switch (c1061Hg.A04(8)) {
                case 16:
                    if (i == 3) {
                        bArr2 = bArrA0E2 == null ? A0A : bArrA0E2;
                    } else if (i == 2) {
                        bArr2 = bArrA0E == null ? A09 : bArrA0E;
                    } else {
                        bArr2 = null;
                        if (A08[5].length() == 5) {
                            throw new RuntimeException();
                        }
                        String[] strArr = A08;
                        strArr[0] = "aCQdDxqS2bkmSWw219FL9FrVQLNlGxjh";
                        strArr[7] = "CXVqOrR1KNECyNPiemwICdwFVxmD3XsB";
                    }
                    if (A08[5].length() == 5) {
                        throw new RuntimeException();
                    }
                    A08[1] = "sxwfPuAvCy0meNXm9qprXKFgJpDmZ";
                    iA03 = A01(c1061Hg, iArr, bArr2, iA03, i4, paint, canvas);
                    c1061Hg.A05();
                    break;
                    break;
                case 17:
                    iA03 = A02(c1061Hg, iArr, i == 3 ? 0 == 0 ? A0B : null : null, iA03, i4, paint, canvas);
                    c1061Hg.A05();
                    break;
                case 18:
                    iA03 = A03(c1061Hg, iArr, null, iA03, i4, paint, canvas);
                    break;
                case 32:
                    bArrA0E = A0E(4, 4, c1061Hg);
                    break;
                case 33:
                    bArrA0E2 = A0E(4, 8, c1061Hg);
                    break;
                case 34:
                    bArrA0E2 = A0E(16, 8, c1061Hg);
                    break;
                case PsExtractor.VIDEO_STREAM_MASK /* 240 */:
                    i4 += 2;
                    iA03 = i2;
                    break;
            }
        }
    }

    public static byte[] A0E(int i, int i2, C1061Hg c1061Hg) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) c1061Hg.A04(i2);
        }
        return bArr;
    }

    public static int[] A0F() {
        return new int[]{0, -1, ViewCompat.MEASURED_STATE_MASK, -8421505};
    }

    public static int[] A0G() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i = 1; i < iArr.length; i++) {
            if (i < 8) {
                int i2 = i & 1;
                if (A08[1].length() != 29) {
                    throw new RuntimeException();
                }
                A08[6] = "OBOqbcJ5TVgi";
                iArr[i] = A00(255, i2 != 0 ? 255 : 0, (i & 2) != 0 ? 255 : 0, (i & 4) != 0 ? 255 : 0);
            } else {
                iArr[i] = A00(255, (i & 1) != 0 ? 127 : 0, (i & 2) != 0 ? 127 : 0, (i & 4) == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:148:0x003c, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int[] A0H() {
        /*
            Method dump skipped, instruction units count: 480
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1020Fp.A0H():int[]");
    }

    public final List<FV> A0I(byte[] bArr, int i) {
        C1061Hg c1061Hg = new C1061Hg(bArr, i);
        while (c1061Hg.A01() >= 48 && c1061Hg.A04(8) == 15) {
            A0C(c1061Hg, this.A06);
        }
        if (this.A06.A01 == null) {
            return Collections.emptyList();
        }
        C1013Fi c1013Fi = this.A06.A00 != null ? this.A06.A00 : this.A05;
        if (this.A00 == null || c1013Fi.A05 + 1 != this.A00.getWidth() || c1013Fi.A00 + 1 != this.A00.getHeight()) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(c1013Fi.A05 + 1, c1013Fi.A00 + 1, Bitmap.Config.ARGB_8888);
            this.A00 = bitmapCreateBitmap;
            this.A01.setBitmap(bitmapCreateBitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray<C1016Fl> sparseArray = this.A06.A01.A03;
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            C1016Fl c1016FlValueAt = sparseArray.valueAt(i2);
            C1017Fm c1017Fm = this.A06.A08.get(sparseArray.keyAt(i2));
            int i3 = c1016FlValueAt.A00 + c1013Fi.A02;
            int i4 = c1016FlValueAt.A01 + c1013Fi.A04;
            this.A01.clipRect(i3, i4, Math.min(c1017Fm.A08 + i3, c1013Fi.A01), Math.min(c1017Fm.A02 + i4, c1013Fi.A03), Region.Op.REPLACE);
            C1012Fh c1012Fh = this.A06.A06.get(c1017Fm.A00);
            if (c1012Fh == null && (c1012Fh = this.A06.A04.get(c1017Fm.A00)) == null) {
                c1012Fh = this.A04;
            }
            SparseArray<C1018Fn> sparseArray2 = c1017Fm.A09;
            for (int i5 = 0; i5 < sparseArray2.size(); i5++) {
                int iKeyAt = sparseArray2.keyAt(i5);
                C1018Fn c1018FnValueAt = sparseArray2.valueAt(i5);
                C1014Fj c1014Fj = this.A06.A07.get(iKeyAt);
                String[] strArr = A08;
                if (strArr[0].charAt(24) == strArr[7].charAt(24)) {
                    throw new RuntimeException();
                }
                A08[1] = "0wDldquZfVkccfOmGfzJ1HL0d6oT0";
                if (c1014Fj == null) {
                    c1014Fj = this.A06.A05.get(iKeyAt);
                }
                if (c1014Fj != null) {
                    A0B(c1014Fj, c1012Fh, c1017Fm.A01, i3 + c1018FnValueAt.A02, i4 + c1018FnValueAt.A05, c1014Fj.A01 ? null : this.A02, this.A01);
                }
            }
            if (c1017Fm.A0A) {
                this.A03.setColor(c1017Fm.A01 == 3 ? c1012Fh.A03[c1017Fm.A07] : c1017Fm.A01 == 2 ? c1012Fh.A02[c1017Fm.A06] : c1012Fh.A01[c1017Fm.A05]);
                this.A01.drawRect(i3, i4, c1017Fm.A08 + i3, c1017Fm.A02 + i4, this.A03);
            }
            arrayList.add(new FV(Bitmap.createBitmap(this.A00, i3, i4, c1017Fm.A08, c1017Fm.A02), i3 / c1013Fi.A05, 0, i4 / c1013Fi.A00, 0, c1017Fm.A08 / c1013Fi.A05, c1017Fm.A02 / c1013Fi.A00));
            this.A01.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        return arrayList;
    }

    public final void A0J() {
        this.A06.A00();
    }
}

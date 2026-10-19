package com.google.zxing;

import com.google.zxing.common.BitMatrix;
import com.google.zxing.oned.Code128Writer;
import com.google.zxing.oned.i;
import com.google.zxing.oned.j;
import com.google.zxing.oned.l;
import com.google.zxing.oned.o;
import com.google.zxing.oned.u;
import java.util.Map;

/* JADX INFO: compiled from: MultiFormatWriter.java */
/* JADX INFO: loaded from: classes3.dex */
public final class c implements f {

    /* JADX INFO: compiled from: MultiFormatWriter.java */
    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[BarcodeFormat.values().length];
            a = iArr;
            try {
                iArr[BarcodeFormat.EAN_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[BarcodeFormat.UPC_E.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[BarcodeFormat.EAN_13.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[BarcodeFormat.UPC_A.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[BarcodeFormat.QR_CODE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[BarcodeFormat.CODE_39.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[BarcodeFormat.CODE_93.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[BarcodeFormat.CODE_128.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[BarcodeFormat.ITF.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[BarcodeFormat.PDF_417.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[BarcodeFormat.CODABAR.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                a[BarcodeFormat.DATA_MATRIX.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                a[BarcodeFormat.AZTEC.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    @Override // com.google.zxing.f
    public BitMatrix a(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws g {
        f jVar;
        switch (a.a[barcodeFormat.ordinal()]) {
            case 1:
                jVar = new j();
                break;
            case 2:
                jVar = new u();
                break;
            case 3:
                jVar = new i();
                break;
            case 4:
                jVar = new o();
                break;
            case 5:
                jVar = new com.google.zxing.j.a();
                break;
            case 6:
                jVar = new com.google.zxing.oned.e();
                break;
            case 7:
                jVar = new com.google.zxing.oned.g();
                break;
            case 8:
                jVar = new Code128Writer();
                break;
            case 9:
                jVar = new l();
                break;
            case 10:
                jVar = new com.google.zxing.pdf417.b();
                break;
            case 11:
                jVar = new com.google.zxing.oned.b();
                break;
            case 12:
                jVar = new com.google.zxing.i.a();
                break;
            case 13:
                jVar = new com.google.zxing.h.a();
                break;
            default:
                throw new IllegalArgumentException("No encoder available for format " + barcodeFormat);
        }
        return jVar.a(str, barcodeFormat, i, i2, map);
    }
}

package com.facebook.ads.redexgen.X;

import android.util.Log;
import android.util.Pair;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.drm.DrmInitData;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Bw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C0936Bw {
    public static byte[] A0h;
    public static String[] A0i = {"IyltKROI0dONAvxCzSFxMMbap986o", "mujPYAYhkPmTBtOccd1mpeNR", "0Po3ACznS97z3RfgrsPeIGcIu3WtX", "Uu0n9DuNw1LDS1xbXky22YF4xgkhplY6", "LMa7o3DPVrMB0USQzYMxMUIDtj36p7Zv", "YQocGDdhEprGCVrh1x2f0Ac7ybbPw1BN", "b3mlxzrKdW1g7zcxBPM3qbO1DSwndDSh", "Ser"};
    public float A00;
    public float A01;
    public float A02;
    public float A03;
    public float A04;
    public float A05;
    public float A06;
    public float A07;
    public float A08;
    public float A09;
    public int A0A;
    public int A0B;
    public int A0C;
    public int A0D;
    public int A0E;
    public int A0F;
    public int A0G;
    public int A0H;
    public int A0I;
    public int A0J;
    public int A0K;
    public int A0L;
    public int A0M;
    public int A0N;
    public int A0O;
    public int A0P;
    public int A0Q;
    public int A0R;
    public long A0S;
    public long A0T;
    public DrmInitData A0U;
    public C0929Bl A0V;
    public InterfaceC0930Bm A0W;
    public Bx A0X;
    public String A0Y;
    public boolean A0Z;
    public boolean A0a;
    public boolean A0b;
    public boolean A0c;
    public byte[] A0d;
    public byte[] A0e;
    public byte[] A0f;
    public String A0g;

    static {
        A04();
    }

    public C0936Bw() {
        this.A0R = -1;
        this.A0J = -1;
        this.A0I = -1;
        this.A0G = -1;
        this.A0H = 0;
        this.A0e = null;
        this.A0P = -1;
        this.A0b = false;
        this.A0D = -1;
        this.A0E = -1;
        this.A0C = -1;
        this.A0K = 1000;
        this.A0L = 200;
        this.A06 = -1.0f;
        this.A07 = -1.0f;
        this.A04 = -1.0f;
        this.A05 = -1.0f;
        this.A02 = -1.0f;
        this.A03 = -1.0f;
        this.A08 = -1.0f;
        this.A09 = -1.0f;
        this.A00 = -1.0f;
        this.A01 = -1.0f;
        this.A0B = 1;
        this.A0A = -1;
        this.A0O = 8000;
        this.A0S = 0L;
        this.A0T = 0L;
        this.A0Z = true;
        this.A0g = A01(868, 3, 104);
    }

    public /* synthetic */ C0936Bw(C1452Wq c1452Wq) {
        this();
    }

    public static Pair<String, List<byte[]>> A00(C1062Hh c1062Hh) throws C08729d {
        try {
            c1062Hh.A0Z(16);
            long jA0K = c1062Hh.A0K();
            if (jA0K == 1482049860) {
                return new Pair<>(A01(881, 10, 51), null);
            }
            if (jA0K != 826496599) {
                Log.w(A01(283, 17, 0), A01(419, 51, 45));
                return new Pair<>(A01(944, 15, 101), null);
            }
            byte[] bArr = c1062Hh.A00;
            for (int iA06 = c1062Hh.A06() + 20; iA06 < bArr.length - 4; iA06++) {
                if (bArr[iA06] == 0 && bArr[iA06 + 1] == 0 && bArr[iA06 + 2] == 1 && bArr[iA06 + 3] == 15) {
                    return new Pair<>(A01(934, 10, 127), Collections.singletonList(Arrays.copyOfRange(bArr, iA06, bArr.length)));
                }
            }
            throw new C08729d(A01(238, 45, 91));
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new C08729d(A01(137, 33, 14));
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0h, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A0i;
            if (strArr[2].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            A0i[5] = "YLAPK4AntFjLAXIjsqe57SorlZ7T8mVd";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 8);
            i4++;
        }
    }

    public static List<byte[]> A03(byte[] bArr) throws C08729d {
        String strA01 = A01(204, 34, 56);
        try {
            if (bArr[0] != 2) {
                throw new C08729d(strA01);
            }
            int i = 1;
            int i2 = 0;
            while (bArr[i] == -1) {
                i2 += 255;
                i++;
            }
            int i3 = i + 1;
            int i4 = i2 + bArr[i];
            if (A0i[5].charAt(0) != 'Y') {
                throw new RuntimeException();
            }
            A0i[6] = "t9W1bu55HCX38CTD9AnwpVMfQcluPXu3";
            int i5 = 0;
            while (bArr[i3] == -1) {
                i5 += 255;
                i3++;
            }
            int i6 = i3 + 1;
            int i7 = i5 + bArr[i3];
            if (bArr[i6] != 1) {
                throw new C08729d(strA01);
            }
            byte[] bArr2 = new byte[i4];
            System.arraycopy(bArr, i6, bArr2, 0, i4);
            int i8 = i6 + i4;
            if (bArr[i8] != 3) {
                throw new C08729d(strA01);
            }
            int i9 = i8 + i7;
            if (bArr[i9] != 5) {
                throw new C08729d(strA01);
            }
            byte[] bArr3 = new byte[bArr.length - i9];
            System.arraycopy(bArr, i9, bArr3, 0, bArr.length - i9);
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(bArr2);
            arrayList.add(bArr3);
            return arrayList;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new C08729d(strA01);
        }
    }

    public static void A04() {
        A0h = new byte[]{40, 38, 85, 99, 114, 114, 111, 104, 97, 38, 107, 111, 107, 99, 82, Ascii.DEL, 118, 99, 38, 114, 105, 38, 17, Ascii.SI, 17, 17, 19, 64, 94, 64, 66, 50, 103, 121, 98, 114, 117, 82, 76, 87, 71, 64, 60, 86, 75, 67, 65, 86, 64, 64, 56, 38, 61, 45, 42, 86, 53, 54, 42, 42, 53, 60, 42, 42, Ascii.DC2, Ascii.FF, Ascii.SYN, Ascii.DC2, Ascii.DLE, 96, 125, 99, 122, 112, 125, Ascii.DEL, 59, 37, 55, 42, 63, 61, 85, 54, 72, Ascii.ETB, 9, Ascii.ESC, 6, 19, 17, 121, Ascii.SUB, 101, 67, 93, 79, 81, 45, 67, 65, 79, 101, 123, 107, 116, 113, 119, 83, 77, 66, 81, 95, 61, 91, 92, 70, 61, 94, 91, 70, 75, 85, 94, 88, 95, 79, 66, 78, 17, Ascii.SI, 6, Ascii.US, 2, Ascii.DC2, Ascii.EM, 3, 67, 116, 116, 105, 116, 38, 118, 103, 116, 117, 111, 104, 97, 38, 64, 105, 115, 116, 69, 69, 38, 118, 116, 111, 112, 103, 114, 99, 38, 98, 103, 114, 103, 93, 106, 106, 119, 106, 56, 104, 121, 106, 107, 113, 118, Ascii.DEL, 56, 85, 75, 55, 89, 91, 85, 56, 123, 119, 124, 125, 123, 56, 104, 106, 113, 110, 121, 108, 125, 117, 66, 66, 95, 66, Ascii.DLE, 64, 81, 66, 67, 89, 94, 87, Ascii.DLE, 70, 95, 66, 82, 89, 67, Ascii.DLE, 83, 95, 84, 85, 83, Ascii.DLE, 64, 66, 89, 70, 81, 68, 85, Ascii.NAK, 50, 58, 63, 54, 55, 115, 39, 60, 115, 53, 58, 61, 55, 115, Ascii.NAK, 60, 38, 33, Ascii.DLE, Ascii.DLE, 115, 5, Ascii.DLE, 98, 115, 58, 61, 58, 39, 58, 50, 63, 58, 41, 50, 39, 58, 60, 61, 115, 55, 50, 39, 50, 69, 105, 124, 122, 103, 123, 99, 105, 77, 112, 124, 122, 105, 107, 124, 103, 122, 0, 33, 32, 99, Ascii.RS, Ascii.CR, 3, 110, 3, Ascii.GS, 97, Ascii.SI, Ascii.CR, 3, 110, 39, 61, 110, 59, 32, 61, 59, 62, 62, 33, 60, 58, 43, 42, 96, 110, Ascii.GS, 43, 58, 58, 39, 32, 41, 110, 35, 39, 35, 43, Ascii.SUB, 55, 62, 43, 110, 58, 33, 110, 126, 114, 105, 123, 111, 126, 120, 111, 46, 34, 53, 57, 48, 43, 82, 45, 58, 46, 82, 94, 85, 68, 89, 85, 46, 64, 82, 82, 48, 60, 55, 38, 59, 55, 76, 54, 55, 37, 91, Ascii.DC2, Ascii.RS, Ascii.ETB, Ascii.SO, 3, Ascii.DC2, Ascii.DC4, 3, 53, Ascii.SO, 5, Ascii.CAN, Ascii.DLE, 5, 3, Ascii.DC4, 5, 4, 64, 45, 41, 45, 37, 64, Ascii.DC4, Ascii.EM, Ascii.DLE, 5, 78, 112, 75, 78, 75, 74, 82, 75, 5, 99, 74, 80, 87, 102, 102, Ascii.VT, 5, 118, 64, 81, 81, 76, 75, 66, 5, 72, 76, 72, 64, 113, 92, 85, 64, 5, 81, 74, 5, 83, 76, 65, 64, 74, 10, 93, 8, 80, 75, 78, 75, 74, 82, 75, 19, 40, 52, 35, 37, 41, 33, 40, 47, 60, 35, 34, 102, 37, 41, 34, 35, 37, 102, 47, 34, 35, 40, 50, 47, 32, 47, 35, 52, 104, 120, 67, 94, 88, 93, 93, 66, 95, 89, 72, 73, Ascii.CR, 125, 110, 96, Ascii.CR, 79, 68, 89, Ascii.CR, 73, 72, 93, 89, 69, Ascii.ETB, Ascii.CR, 34, 43, 57, 36, 49, 51, 70, 60, 53, 39, 58, 47, 45, 94, 69, 35, 57, 37, 69, 43, 58, 47, 38, 52, 41, 60, 62, 77, 86, 48, 42, 54, 86, 56, 42, 41, 116, 125, 111, 114, 103, 101, Ascii.SYN, Ascii.CR, 107, 113, 109, Ascii.CR, 99, 116, 97, 102, 111, 125, 96, 117, 119, 4, Ascii.US, 121, 99, Ascii.DEL, Ascii.US, 99, 96, 108, 101, 119, 106, Ascii.DEL, 125, 114, Ascii.NAK, 115, 105, 117, Ascii.NAK, 114, Ascii.DEL, 108, 121, 123, 114, 96, 126, 2, 123, 107, 122, 2, 107, 98, 120, Ascii.DEL, 110, 110, 94, 87, 92, 64, 77, 71, 90, 73, Ascii.SO, 7, Ascii.SO, 8, 96, 109, 100, 109, 107, 2, 89, 72, 72, 84, 81, 91, 89, 76, 81, 87, 86, Ascii.ETB, 92, 78, 90, 75, 77, 90, 75, 124, 109, 109, 113, 116, 126, 124, 105, 116, 114, 115, 50, 109, 122, 110, Ascii.US, Ascii.SO, Ascii.SO, Ascii.DC2, Ascii.ETB, Ascii.GS, Ascii.US, 10, Ascii.ETB, 17, Ascii.DLE, 81, 8, 17, Ascii.FS, Ascii.CR, Ascii.VT, Ascii.FS, Ascii.DLE, 1, 1, Ascii.GS, Ascii.CAN, Ascii.DC2, Ascii.DLE, 5, Ascii.CAN, Ascii.RS, Ascii.US, 94, 9, 92, 2, 4, 19, 3, Ascii.CAN, 1, 115, 103, 118, 123, 125, 61, 115, 113, 33, Ascii.ETB, 3, Ascii.DC2, Ascii.US, Ascii.EM, 89, 19, Ascii.ETB, Ascii.NAK, 69, 83, 71, 86, 91, 93, Ascii.GS, 84, 94, 83, 81, 118, 98, 115, 126, 120, 56, 122, 103, 35, 118, 58, 123, 118, 99, 122, Ascii.DC2, 6, Ascii.ETB, Ascii.SUB, Ascii.FS, 92, Ascii.RS, 3, Ascii.SYN, Ascii.DC4, 70, 82, 67, 78, 72, 8, 74, 87, 66, 64, 10, 107, Ascii.NAK, 68, 80, 65, 76, 74, 10, 74, 85, 80, 86, 37, 49, 32, 45, 43, 107, 54, 37, 51, 34, 54, 39, 42, 44, 108, 55, 49, 54, 38, 110, 43, 39, 3, Ascii.ETB, 6, Ascii.VT, Ascii.CR, 77, Ascii.DC4, Ascii.FF, 6, 76, 6, Ascii.SYN, 17, 123, 111, 126, 115, 117, 53, 108, 116, 126, 52, 126, 110, 105, 52, 114, 126, 120, 108, 125, 112, 118, 54, 111, 118, 107, 123, 112, 106, 101, 113, 96, 109, 107, 43, 124, 41, 113, 106, 111, 106, 107, 115, 106, 5, Ascii.SO, 7, 125, 108, 113, 125, 38, 113, 36, 122, 122, 104, 77, 82, 95, 94, 84, Ascii.DC4, 8, 92, 75, 75, Ascii.SYN, 9, 4, 5, Ascii.SI, 79, 1, Ascii.SYN, 3, 121, 102, 107, 106, 96, 32, 103, 106, 121, 108, 104, 119, 122, 123, 113, 49, 115, 110, 42, 104, 51, 123, 109, 103, 120, 117, 116, 126, 62, 124, 97, 116, 118, 35, 1, Ascii.RS, 19, Ascii.DC2, Ascii.CAN, 88, 0, 1, Ascii.DC4, 70, Ascii.ESC, 4, 9, 8, 2, 66, Ascii.NAK, 64, Ascii.CAN, 3, 6, 3, 2, Ascii.SUB, 3, 69, 90, 87, 86, 92, Ascii.FS, 75, Ascii.RS, 69, 93, 87, Ascii.GS, 92, 93, 1, Ascii.GS, 69, 67, Ascii.VT, 109, 114, Ascii.DEL, 126, 116, 52, 99, 54, 109, 117, Ascii.DEL, 53, 116, 117, 41, 53, 109, 107, 34};
    }

    public static boolean A05(C1062Hh c1062Hh) throws C08729d {
        try {
            int iA0C = c1062Hh.A0C();
            if (iA0C == 1) {
                return true;
            }
            if (iA0C != 65534) {
                return false;
            }
            c1062Hh.A0Y(24);
            long jA0L = c1062Hh.A0L();
            long mostSignificantBits = C1450Wo.A0s.getMostSignificantBits();
            if (A0i[0].length() != 29) {
                throw new RuntimeException();
            }
            A0i[6] = "mXDtn5ZrlLpOkU84k9DC3Hi3Pcorcpog";
            if (jA0L == mostSignificantBits) {
                if (c1062Hh.A0L() == C1450Wo.A0s.getLeastSignificantBits()) {
                    return true;
                }
            }
            return false;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new C08729d(A01(170, 34, 16));
        }
    }

    private byte[] A06() {
        if (this.A06 == -1.0f) {
            return null;
        }
        float f2 = this.A07;
        if (A0i[6].charAt(11) == 'b') {
            throw new RuntimeException();
        }
        String[] strArr = A0i;
        strArr[2] = "PBvrZHKgmU2uAVRQDCT9n0bIRHOqM";
        strArr[1] = "guZt3O6voa6ads6nTVRQaZ05";
        if (f2 == -1.0f || this.A04 == -1.0f) {
            return null;
        }
        float f3 = this.A05;
        if (A0i[7].length() != 6) {
            String[] strArr2 = A0i;
            strArr2[2] = "PayVPjYQSmFvrGG0qfp7CT6HXa6Ad";
            strArr2[1] = "9Xa9tASZMquPJJBB3AwdoWSz";
            if (f3 == -1.0f) {
                return null;
            }
        } else if (f3 == -1.0f) {
            return null;
        }
        if (this.A02 == -1.0f || this.A03 == -1.0f || this.A08 == -1.0f || this.A09 == -1.0f || this.A00 == -1.0f || this.A01 == -1.0f) {
            return null;
        }
        byte[] bArr = new byte[25];
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.put((byte) 0);
        byteBufferWrap.putShort((short) ((this.A06 * 50000.0f) + 0.5f));
        byteBufferWrap.putShort((short) ((this.A07 * 50000.0f) + 0.5f));
        byteBufferWrap.putShort((short) ((this.A04 * 50000.0f) + 0.5f));
        byteBufferWrap.putShort((short) ((this.A05 * 50000.0f) + 0.5f));
        byteBufferWrap.putShort((short) ((this.A02 * 50000.0f) + 0.5f));
        byteBufferWrap.putShort((short) ((this.A03 * 50000.0f) + 0.5f));
        byteBufferWrap.putShort((short) ((this.A08 * 50000.0f) + 0.5f));
        byteBufferWrap.putShort((short) ((this.A09 * 50000.0f) + 0.5f));
        byteBufferWrap.putShort((short) (this.A00 + 0.5f));
        byteBufferWrap.putShort((short) (this.A01 + 0.5f));
        byteBufferWrap.putShort((short) this.A0K);
        byteBufferWrap.putShort((short) this.A0L);
        return bArr;
    }

    public final void A07() {
        Bx bx = this.A0X;
        if (bx != null) {
            bx.A02(this);
        }
    }

    public final void A08() {
        Bx bx = this.A0X;
        if (bx != null) {
            bx.A00();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x034f  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x035b  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0372  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x038f  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x03ab  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x03e0  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x042a  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x044a  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0458  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0464  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0477  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0483  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x048f  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x04a1  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0516  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0572  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x057d  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x05b1  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x05fb  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0626  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0638  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x064c  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x064e  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x067d  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0687  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0731  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x076d  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0290  */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1091)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:390)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:370)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:85)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:33)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A09(com.facebook.ads.redexgen.X.InterfaceC0922Bc r30, int r31) throws com.facebook.ads.redexgen.X.C08729d {
        /*
            Method dump skipped, instruction units count: 2168
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0936Bw.A09(com.facebook.ads.redexgen.X.Bc, int):void");
    }
}

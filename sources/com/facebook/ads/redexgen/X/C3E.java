package com.facebook.ads.redexgen.X;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import com.json.mediationsdk.logger.IronSourceError;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3E, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public abstract class C3E extends AbstractC0964Dl {
    public static byte[] A0d;
    public static String[] A0e = {"el1NIdjJdnQk8rQ7yI3DLJMJGUNGpsaL", "cMnDkAErKs2M6cVzDcwdPqTaRDuVL2G6", "3Ljz1yFix4teFI07gFBJ1ZVJZ4Elk", "rfweshkfyu7YGNu9gmTN5aJbUxr0jD44", "UwDJ5OwzyxxJZbvw2og9SG", "E", "kELoxR7DFwuexd5ZjpenISH", "LMGopoJZLCWwOw1IQPtLBjMdbqq8sxxW"};
    public static final byte[] A0f;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public long A05;
    public MediaCodec A06;
    public Format A07;
    public BJ<X6> A08;
    public BJ<X6> A09;
    public C0956Cy A0A;
    public ByteBuffer A0B;
    public boolean A0C;
    public boolean A0D;
    public boolean A0E;
    public boolean A0F;
    public boolean A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public boolean A0K;
    public boolean A0L;
    public boolean A0M;
    public boolean A0N;
    public boolean A0O;
    public boolean A0P;
    public boolean A0Q;
    public boolean A0R;
    public ByteBuffer[] A0S;
    public ByteBuffer[] A0T;
    public C0914Au A0U;
    public final MediaCodec.BufferInfo A0V;
    public final C9X A0W;
    public final XE A0X;
    public final XE A0Y;
    public final BK<X6> A0Z;
    public final D4 A0a;
    public final List<Long> A0b;
    public final boolean A0c;

    static {
        A0j();
        A0f = C1078Hx.A0h(A0Z(59, 76, 99));
    }

    public C3E(int i, D4 d4, BK<X6> bk, boolean z) {
        super(i);
        HI.A04(C1078Hx.A02 >= 16);
        this.A0a = (D4) HI.A01(d4);
        this.A0Z = bk;
        this.A0c = z;
        this.A0X = new XE(0);
        this.A0Y = XE.A02();
        this.A0W = new C9X();
        this.A0b = new ArrayList();
        this.A0V = new MediaCodec.BufferInfo();
        this.A01 = 0;
        this.A02 = 0;
    }

    private int A0W(String str) {
        if (C1078Hx.A02 <= 25 && A0Z(263, 25, 38).equals(str) && (C1078Hx.A06.startsWith(A0Z(625, 7, 38)) || C1078Hx.A06.startsWith(A0Z(597, 7, 83)) || C1078Hx.A06.startsWith(A0Z(604, 7, 97)) || C1078Hx.A06.startsWith(A0Z(618, 7, 48)))) {
            return 2;
        }
        if (C1078Hx.A02 >= 24) {
            return 0;
        }
        if (!A0Z(338, 22, 120).equals(str) && !A0Z(360, 29, 114).equals(str)) {
            return 0;
        }
        if (A0Z(683, 8, 102).equals(C1078Hx.A03)) {
            return 1;
        }
        if (A0Z(691, 12, 53).equals(C1078Hx.A03)) {
            return 1;
        }
        if (A0Z(IronSourceError.ERROR_NT_LOAD_WHILE_LONG_INITIATION, 7, 95).equals(C1078Hx.A03)) {
            return 1;
        }
        return A0Z(732, 7, 15).equals(C1078Hx.A03) ? 1 : 0;
    }

    private final long A0X() {
        return 0L;
    }

    public static MediaCodec.CryptoInfo A0Y(XE xe, int i) {
        MediaCodec.CryptoInfo cryptoInfoA02 = xe.A02.A02();
        if (i == 0) {
            return cryptoInfoA02;
        }
        if (cryptoInfoA02.numBytesOfClearData == null) {
            cryptoInfoA02.numBytesOfClearData = new int[1];
        }
        int[] iArr = cryptoInfoA02.numBytesOfClearData;
        int i2 = iArr[0];
        if (A0e[2].length() == 1) {
            throw new RuntimeException();
        }
        String[] strArr = A0e;
        strArr[7] = "NOzrMPRB76F8DdbUb3OPVPb4rTNpEGvY";
        strArr[3] = "IDmZDsJhwqXuUzopfYWLVElAjmr2DtdU";
        iArr[0] = i2 + i;
        return cryptoInfoA02;
    }

    public static String A0Z(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0d, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = (bArrCopyOfRange[i4] ^ i3) ^ 57;
            if (A0e[5].length() == 20) {
                throw new RuntimeException();
            }
            A0e[0] = "GT4OiQXgMfCUtJ1QRZ1mZZkQ0KPtv7dD";
            bArrCopyOfRange[i4] = (byte) i5;
        }
        return new String(bArrCopyOfRange);
    }

    private ByteBuffer A0a(int i) {
        if (C1078Hx.A02 >= 21) {
            return this.A06.getInputBuffer(i);
        }
        ByteBuffer byteBuffer = this.A0S[i];
        String[] strArr = A0e;
        if (strArr[4].length() == strArr[6].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0e;
        strArr2[7] = "akmimywpCQzy2zgGqC6e1Zi0HtFx9MqZ";
        strArr2[3] = "4g16x1WFaX1F1Ai56lyJAgpz1Kjl0dDQ";
        return byteBuffer;
    }

    private ByteBuffer A0b(int i) {
        return C1078Hx.A02 >= 21 ? this.A06.getOutputBuffer(i) : this.A0T[i];
    }

    private void A0c() {
        if (C1078Hx.A02 < 21) {
            this.A0S = this.A06.getInputBuffers();
            MediaCodec mediaCodec = this.A06;
            if (A0e[5].length() == 20) {
                throw new RuntimeException();
            }
            A0e[2] = "BQUwUvW99pDNY9ExELsrhPAvhUrne6";
            this.A0T = mediaCodec.getOutputBuffers();
        }
    }

    private void A0d() throws C9K {
        if (this.A02 == 2) {
            A1G();
            A1I();
        } else {
            this.A0N = true;
            A1H();
        }
    }

    private void A0e() {
        if (C1078Hx.A02 < 21) {
            this.A0T = this.A06.getOutputBuffers();
        }
    }

    private void A0f() throws C9K {
        MediaFormat outputFormat = this.A06.getOutputFormat();
        if (this.A00 != 0 && outputFormat.getInteger(A0Z(739, 5, 125)) == 32 && outputFormat.getInteger(A0Z(716, 6, 111)) == 32) {
            this.A0O = true;
            return;
        }
        if (this.A0I) {
            outputFormat.setInteger(A0Z(632, 13, 81), 1);
        }
        A1K(this.A06, outputFormat);
    }

    private void A0g() {
        if (C1078Hx.A02 < 21) {
            this.A0S = null;
            this.A0T = null;
        }
    }

    private void A0h() {
        this.A03 = -1;
        this.A0X.A01 = null;
    }

    private void A0i() {
        this.A04 = -1;
        this.A0B = null;
    }

    public static void A0j() {
        A0d = new byte[]{85, 89, Ascii.ESC, Ascii.FF, Ascii.CR, 89, Ascii.ETB, Ascii.SYN, 89, 10, Ascii.FS, Ascii.SUB, Ascii.FF, Ascii.VT, Ascii.FS, 89, Ascii.GS, Ascii.FS, Ascii.SUB, Ascii.SYN, Ascii.GS, Ascii.FS, Ascii.VT, 89, Ascii.CAN, Ascii.SI, Ascii.CAN, Ascii.DLE, Ascii.NAK, Ascii.CAN, Ascii.ESC, Ascii.NAK, Ascii.FS, 87, 89, 45, Ascii.VT, 0, Ascii.DLE, Ascii.ETB, Ascii.RS, 89, Ascii.CR, Ascii.SYN, 89, 9, Ascii.VT, Ascii.SYN, Ascii.SUB, Ascii.FS, Ascii.FS, Ascii.GS, 89, Ascii.SO, Ascii.DLE, Ascii.CR, 17, 89, 19, 106, 106, 106, 106, 106, 107, 108, 109, 110, 104, Ascii.EM, 106, 106, Ascii.CAN, Ascii.RS, Ascii.ESC, 104, 111, 99, 106, 106, 106, 106, 106, 106, 107, 108, 98, Ascii.EM, Ascii.US, 106, Ascii.FS, 107, 105, 104, 106, 106, 106, 106, 106, 106, 107, 108, 111, 98, 98, 98, 110, 106, Ascii.RS, Ascii.EM, Ascii.US, 109, 107, 107, 98, Ascii.ESC, 106, 106, 106, 104, Ascii.FS, Ascii.CAN, Ascii.FS, 107, Ascii.EM, 105, 107, Ascii.EM, 105, 104, 109, 111, Ascii.RS, 109, 98, 107, 108, 126, 104, 3, 4, Ascii.SYN, Ascii.SI, 88, 95, 77, 74, Ascii.ETB, 59, 55, 44, 57, 56, 0, 54, 41, 100, 55, 33, 55, 55, 45, 43, 42, 100, 54, 33, 53, 49, 45, 54, 33, 55, 100, 55, 33, 39, 49, 54, 33, 100, 32, 33, 39, 43, 32, 33, 54, 100, 34, 43, 54, 100, 71, 111, 110, 99, 107, 42, 120, 111, 123, Ascii.DEL, 99, 120, 111, 121, 42, 107, 42, 78, 120, 103, 89, 111, 121, 121, 99, 101, 100, 71, 107, 100, 107, 109, 111, 120, 34, 10, Ascii.VT, 6, Ascii.SO, 44, 0, Ascii.VT, 10, Ascii.FF, 61, 10, 1, Ascii.VT, 10, Ascii.GS, 10, Ascii.GS, 42, 40, 61, 75, 32, Ascii.GS, Ascii.FS, Ascii.VT, 10, Ascii.SYN, 75, 4, 19, 6, 75, 1, 0, 6, 80, 82, 71, 49, 90, 103, 102, 113, 112, 108, 49, 126, 105, 124, 49, 123, 122, 124, 49, 108, 122, 124, 106, 109, 122, 36, 38, 51, 69, 38, 63, 32, 69, 42, 62, 47, 34, 36, 69, 47, 46, 40, 36, 47, 46, 57, 69, 38, 59, 88, 63, 61, 40, 94, 61, 36, 59, 94, 38, 57, 52, 53, 63, 94, 52, 53, 51, 63, 52, 53, 34, 94, 49, 38, 51, Ascii.SO, Ascii.FF, Ascii.EM, 111, Ascii.SI, 55, 40, 37, 40, 32, 111, 41, 115, 119, 117, 111, 37, 36, 34, 46, 37, 36, 4, 6, 19, 101, 5, 61, 34, 47, 34, 42, 101, 35, 121, 125, Ascii.DEL, 101, 47, 46, 40, 36, 47, 46, 101, 56, 46, 40, 62, 57, 46, 4, 6, 19, 101, Ascii.CAN, Ascii.SO, 8, 101, 42, 61, 40, 101, 47, 46, 40, 75, 73, 92, 42, 87, 65, 71, 42, 101, 114, 103, 42, 96, 97, 103, 42, 119, 97, 103, 113, 118, 97, 110, 108, 121, Ascii.SI, 64, 77, 77, 86, 72, 79, 79, 68, 83, Ascii.SI, 87, 72, 69, 68, 78, Ascii.SI, 69, 68, 66, 78, 69, 68, 83, Ascii.SI, 64, 87, 66, 87, 85, 64, 54, 121, 117, 116, 119, Ascii.DEL, 113, 123, 54, 121, 110, 123, 54, 124, 125, 123, 119, 124, 125, 106, 54, 121, 111, 125, 107, 119, 117, 125, 114, 112, 101, 19, 92, 80, 81, 82, 90, 84, 94, 19, 92, 75, 94, 19, 89, 88, 94, 82, 89, 88, 79, 19, 92, 74, 88, 78, 82, 80, 88, 19, 78, 88, 94, 72, 79, 88, 123, 121, 108, Ascii.SUB, 83, 91, 91, 83, 88, 81, Ascii.SUB, 85, 85, 87, Ascii.SUB, 80, 81, 87, 91, 80, 81, 70, 95, 93, 72, 62, 119, Ascii.DEL, Ascii.DEL, 119, 124, 117, 62, 102, Ascii.DEL, 98, 114, 121, 99, 62, 116, 117, 115, Ascii.DEL, 116, 117, 98, 38, 36, 49, 71, Ascii.ESC, 2, 71, Ascii.US, 0, Ascii.CR, Ascii.FF, 6, 54, Ascii.CR, Ascii.FF, 10, 6, Ascii.CR, Ascii.FF, Ascii.ESC, 71, 8, Ascii.US, 10, 57, 39, 71, 43, 95, 91, 90, Ascii.VT, Ascii.NAK, 117, Ascii.EM, 109, 106, 104, 105, 119, Ascii.ETB, 125, 2, 10, 10, 90, 68, 36, 67, 62, 57, 57, 76, 82, 50, 75, 42, 39, 42, Ascii.VT, 0, 9, 6, 6, Ascii.CR, 4, 69, Ascii.VT, 7, Ascii.GS, 6, Ascii.FS, 4, 8, 9, 1, Ascii.SO, 0, Ascii.DC2, Ascii.NAK, 2, 36, 8, 3, 2, 4, 125, 108, 123, Ascii.DEL, 106, 123, 93, 113, 122, 123, 125, 36, Ascii.FS, 10, Ascii.EM, 17, Ascii.SYN, 57, Ascii.SYN, Ascii.FS, 62, Ascii.GS, Ascii.GS, Ascii.FS, 57, 51, 48, 42, 49, 59, 58, 45, 106, 96, 99, 121, 98, 104, 105, 126, 83, 96, 120, 105, 1, Ascii.DC4, 9, 19, Ascii.SYN, 3, Ascii.DC4, 64, 74, Ascii.SUB, Ascii.CAN, Ascii.CAN, Ascii.CAN, 62, 51, 63, 49, 62, 34, 125, 122, 111, 124, 122, 77, 97, 106, 107, 109, 66, 95, 90, 87, 70, 95, 87, 51, 45, 32, 48, 44};
    }

    private void A0k(D0 d0) throws C9K {
        throw C9K.A01(d0, A0y());
    }

    private boolean A0l() {
        if (A0Z(147, 6, 111).equals(C1078Hx.A05)) {
            if (!A0Z(139, 4, 123).equals(C1078Hx.A06)) {
                if (A0Z(135, 4, 19).equals(C1078Hx.A06)) {
                }
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x0139, code lost:
    
        if (r6 == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x013b, code lost:
    
        A0d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x013e, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0146, code lost:
    
        if (r6 == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x014b, code lost:
    
        if (r14.A0G == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x014e, code lost:
    
        r14.A0K = true;
        r14.A06.queueInputBuffer(r14.A03, 0, 0, 0, 4);
        A0h();
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x015f, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0160, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0169, code lost:
    
        throw com.facebook.ads.redexgen.X.C9K.A01(r1, A0y());
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x018a, code lost:
    
        if (r8.A05() == false) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x018c, code lost:
    
        r14.A0X.A07();
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0193, code lost:
    
        if (r14.A01 != 2) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0195, code lost:
    
        r14.A01 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0197, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01a8, code lost:
    
        if (r8.A05() == false) goto L81;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean A0m() throws com.facebook.ads.redexgen.X.C9K {
        /*
            Method dump skipped, instruction units count: 574
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3E.A0m():boolean");
    }

    private boolean A0n() {
        return this.A04 >= 0;
    }

    private boolean A0o(long j) {
        int size = this.A0b.size();
        for (int i = 0; i < size; i++) {
            if (this.A0b.get(i).longValue() == j) {
                this.A0b.remove(i);
                if (A0e[1].charAt(18) != 'w') {
                    throw new RuntimeException();
                }
                A0e[5] = "GAQPkPxILqrNxqRn";
                return true;
            }
        }
        return false;
    }

    private boolean A0p(long j, long j2) throws C9K {
        boolean zA1P;
        int iDequeueOutputBuffer;
        if (!A0n()) {
            if (this.A0F && this.A0K) {
                try {
                    iDequeueOutputBuffer = this.A06.dequeueOutputBuffer(this.A0V, A0X());
                } catch (IllegalStateException unused) {
                    A0d();
                    if (this.A0N) {
                        A1G();
                    }
                    return false;
                }
            } else {
                iDequeueOutputBuffer = this.A06.dequeueOutputBuffer(this.A0V, A0X());
            }
            if (iDequeueOutputBuffer >= 0) {
                if (this.A0O) {
                    this.A0O = false;
                    this.A06.releaseOutputBuffer(iDequeueOutputBuffer, false);
                    return true;
                }
                if (this.A0V.size == 0 && (this.A0V.flags & 4) != 0) {
                    A0d();
                    return false;
                }
                this.A04 = iDequeueOutputBuffer;
                ByteBuffer byteBufferA0b = A0b(iDequeueOutputBuffer);
                this.A0B = byteBufferA0b;
                if (byteBufferA0b != null) {
                    byteBufferA0b.position(this.A0V.offset);
                    ByteBuffer byteBuffer = this.A0B;
                    int i = this.A0V.offset + this.A0V.size;
                    if (A0e[2].length() != 1) {
                        String[] strArr = A0e;
                        strArr[4] = "FaJE2XiArfhYqeNyfkTyaQ";
                        strArr[6] = "HvmGKe0EFE5f200jghUPQNW";
                        byteBuffer.limit(i);
                    }
                }
                this.A0P = A0o(this.A0V.presentationTimeUs);
            } else if (A0e[5].length() != 20) {
                A0e[1] = "HT1pBWWLOYy8PEf8scwcSavywhmMK5P3";
                if (iDequeueOutputBuffer == -2) {
                    A0f();
                    String[] strArr2 = A0e;
                    if (strArr2[4].length() == strArr2[6].length()) {
                        return true;
                    }
                    A0e[5] = "todLl0dSZi0vPTtgICo1ottwNzErViL";
                    return true;
                }
                if (A0e[0].charAt(8) == 's') {
                    throw new RuntimeException();
                }
                A0e[5] = "4PVEqwR";
                if (iDequeueOutputBuffer == -3) {
                    A0e();
                    return true;
                }
                boolean z = this.A0G;
                if (A0e[0].charAt(8) == 's') {
                    throw new RuntimeException();
                }
                A0e[1] = "oPTnjsm2EBoNSW7B2QwBvulptlCCgQiW";
                if (z && (this.A0M || this.A02 == 2)) {
                    A0d();
                }
                return false;
            }
            throw new RuntimeException();
        }
        if (this.A0F && this.A0K) {
            try {
                zA1P = A1P(j, j2, this.A06, this.A0B, this.A04, this.A0V.flags, this.A0V.presentationTimeUs, this.A0P);
            } catch (IllegalStateException unused2) {
                A0d();
                if (this.A0N) {
                    A1G();
                }
                return false;
            }
        } else {
            zA1P = A1P(j, j2, this.A06, this.A0B, this.A04, this.A0V.flags, this.A0V.presentationTimeUs, this.A0P);
        }
        if (zA1P) {
            A1J(this.A0V.presentationTimeUs);
            boolean z2 = (this.A0V.flags & 4) != 0;
            A0i();
            if (!z2) {
                return true;
            }
            A0d();
        }
        return false;
    }

    public static boolean A0q(C0956Cy c0956Cy) {
        String str = c0956Cy.A02;
        if (C1078Hx.A02 > 17 || (!A0Z(573, 24, 80).equals(str) && !A0Z(426, 31, 24).equals(str))) {
            if (A0Z(147, 6, 111).equals(C1078Hx.A05)) {
                String strA0Z = A0Z(143, 4, 32);
                if (A0e[5].length() == 20) {
                    throw new RuntimeException();
                }
                String[] strArr = A0e;
                strArr[4] = "ta8dfTbq5GbSxrQo9R7BCH";
                strArr[6] = "TLzt7USKw6C8aMs6TrECz9n";
                if (!strA0Z.equals(C1078Hx.A06) || !c0956Cy.A05) {
                }
            }
            return false;
        }
        return true;
    }

    public static boolean A0r(String str) {
        if (C1078Hx.A02 > 23 || !A0Z(548, 25, 41).equals(str)) {
            if (C1078Hx.A02 <= 19) {
                if (!A0Z(710, 6, 17).equals(C1078Hx.A03) || (!A0Z(457, 31, 33).equals(str) && !A0Z(488, 38, 4).equals(str))) {
                }
            }
            return false;
        }
        return true;
    }

    public static boolean A0s(String str) {
        return C1078Hx.A02 == 21 && A0Z(IronSourceError.ERROR_CAPPED_PER_SESSION, 22, 13).equals(str);
    }

    public static boolean A0t(String str) {
        return C1078Hx.A02 < 18 || (C1078Hx.A02 == 18 && (A0Z(389, 15, 114).equals(str) || A0Z(TTAdConstant.DEEPLINK_FALLBACK_CODE, 22, 61).equals(str))) || (C1078Hx.A02 == 19 && C1078Hx.A06.startsWith(A0Z(611, 7, 3)) && (A0Z(245, 18, 92).equals(str) || A0Z(263, 25, 38).equals(str)));
    }

    public static boolean A0u(String str, Format format) {
        return C1078Hx.A02 < 21 && format.A0P.isEmpty() && A0Z(313, 25, 73).equals(str);
    }

    public static boolean A0v(String str, Format format) {
        return C1078Hx.A02 <= 18 && format.A05 == 1 && A0Z(288, 25, 82).equals(str);
    }

    private boolean A0w(boolean z) throws C9K {
        BJ<X6> bj = this.A08;
        if (bj == null || (!z && this.A0c)) {
            return false;
        }
        int iA7t = bj.A7t();
        if (iA7t != 1) {
            return iA7t != 4;
        }
        throw C9K.A01(this.A08.A6q(), A0y());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0964Dl
    public void A12() {
        this.A07 = null;
        try {
            A1G();
            try {
                BJ<X6> bj = this.A08;
                if (bj != null) {
                    this.A0Z.AEU(bj);
                }
                try {
                    BJ<X6> bj2 = this.A09;
                    if (bj2 != null && bj2 != this.A08) {
                        this.A0Z.AEU(bj2);
                    }
                } finally {
                }
            } catch (Throwable th) {
                try {
                    BJ<X6> bj3 = this.A09;
                    if (bj3 != null && bj3 != this.A08) {
                        this.A0Z.AEU(bj3);
                    }
                    throw th;
                } finally {
                }
            }
        } catch (Throwable th2) {
            try {
                if (this.A08 != null) {
                    this.A0Z.AEU(this.A08);
                }
                try {
                    BJ<X6> bj4 = this.A09;
                    if (bj4 != null && bj4 != this.A08) {
                        this.A0Z.AEU(bj4);
                    }
                    throw th2;
                } finally {
                }
            } catch (Throwable th3) {
                try {
                    BJ<X6> bj5 = this.A09;
                    if (bj5 != null && bj5 != this.A08) {
                        this.A0Z.AEU(bj5);
                    }
                    throw th3;
                } finally {
                }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0964Dl
    public void A13() {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0964Dl
    public void A14() {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0964Dl
    public void A15(long j, boolean z) throws C9K {
        this.A0M = false;
        this.A0N = false;
        if (this.A06 != null) {
            A1F();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0964Dl
    public void A16(boolean z) throws C9K {
        this.A0U = new C0914Au();
    }

    public int A1A(MediaCodec mediaCodec, C0956Cy c0956Cy, Format format, Format format2) {
        return 0;
    }

    public abstract int A1B(D4 d4, BK<X6> bk, Format format) throws D7;

    public final MediaCodec A1C() {
        return this.A06;
    }

    public final C0956Cy A1D() {
        return this.A0A;
    }

    public C0956Cy A1E(D4 d4, Format format, boolean z) throws D7 {
        return d4.A6f(format.A0O, z);
    }

    public void A1F() throws C9K {
        this.A05 = C.TIME_UNSET;
        A0h();
        A0i();
        this.A0Q = true;
        this.A0R = false;
        this.A0P = false;
        this.A0b.clear();
        this.A0C = false;
        this.A0O = false;
        if (this.A0H || ((this.A0E && this.A0K) || this.A02 != 0)) {
            A1G();
            A1I();
        } else {
            this.A06.flush();
            this.A0J = false;
        }
        if (!this.A0L || this.A07 == null) {
            return;
        }
        this.A01 = 1;
    }

    public void A1G() {
        this.A05 = C.TIME_UNSET;
        A0h();
        A0i();
        this.A0R = false;
        this.A0P = false;
        this.A0b.clear();
        A0g();
        this.A0A = null;
        this.A0L = false;
        this.A0J = false;
        this.A0D = false;
        this.A0H = false;
        this.A00 = 0;
        this.A0G = false;
        this.A0E = false;
        this.A0I = false;
        this.A0C = false;
        this.A0O = false;
        this.A0K = false;
        this.A01 = 0;
        this.A02 = 0;
        if (this.A06 != null) {
            this.A0U.A01++;
            try {
                this.A06.stop();
                try {
                    this.A06.release();
                    this.A06 = null;
                    BJ<X6> bj = this.A08;
                    if (bj == null || this.A09 == bj) {
                        return;
                    }
                    try {
                        this.A0Z.AEU(bj);
                    } finally {
                    }
                } catch (Throwable th) {
                    this.A06 = null;
                    BJ<X6> bj2 = this.A08;
                    if (A0e[1].charAt(18) != 'w') {
                        throw new RuntimeException();
                    }
                    A0e[1] = "xSjaYNEZ4qh1ZPx8xTwjTufaVWwElX5P";
                    if (bj2 != null && this.A09 != bj2) {
                        try {
                            this.A0Z.AEU(bj2);
                        } finally {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    this.A06.release();
                    this.A06 = null;
                    BJ<X6> bj3 = this.A08;
                    if (bj3 != null && this.A09 != bj3) {
                        try {
                            this.A0Z.AEU(bj3);
                        } finally {
                        }
                    }
                    throw th2;
                } catch (Throwable th3) {
                    this.A06 = null;
                    BJ<X6> bj4 = this.A08;
                    if (bj4 != null) {
                        BJ<X6> bj5 = this.A09;
                        if (A0e[1].charAt(18) != 'w') {
                            throw new RuntimeException();
                        }
                        A0e[0] = "vD6SaWSNQpnT2etBhelIXAl4LKAzAMEb";
                        if (bj5 != bj4) {
                            try {
                                this.A0Z.AEU(bj4);
                            } finally {
                            }
                        }
                    }
                    throw th3;
                }
            }
        }
    }

    public void A1H() throws C9K {
    }

    public final void A1I() throws C9K {
        Format format;
        if (this.A06 != null || (format = this.A07) == null) {
            return;
        }
        this.A08 = this.A09;
        String str = format.A0O;
        MediaCrypto mediaCryptoA00 = null;
        String[] strArr = A0e;
        if (strArr[7].charAt(15) == strArr[3].charAt(15)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0e;
        strArr2[7] = "pTVSxclXptnWdkcsOldSnbHbt080oNsP";
        strArr2[3] = "3A2dqVKC7anzB9bdQIqtLGHUlM9PHMrl";
        boolean zA01 = false;
        BJ<X6> bj = this.A08;
        if (bj != null) {
            X6 x6 = (X6) bj.A7G();
            if (x6 != null) {
                mediaCryptoA00 = x6.A00();
                zA01 = x6.A01(str);
            } else if (this.A08.A6q() == null) {
                return;
            }
            if (A0l()) {
                int iA7t = this.A08.A7t();
                if (iA7t == 1) {
                    throw C9K.A01(this.A08.A6q(), A0y());
                }
                if (iA7t != 4) {
                    return;
                }
            }
        }
        C0956Cy c0956Cy = this.A0A;
        String[] strArr3 = A0e;
        if (strArr3[4].length() == strArr3[6].length()) {
            throw new RuntimeException();
        }
        A0e[5] = "oPP6wTkKkwktIyM";
        if (c0956Cy == null) {
            try {
                C0956Cy c0956CyA1E = A1E(this.A0a, this.A07, zA01);
                this.A0A = c0956CyA1E;
                if (c0956CyA1E == null && zA01) {
                    C0956Cy c0956CyA1E2 = A1E(this.A0a, this.A07, false);
                    this.A0A = c0956CyA1E2;
                    if (c0956CyA1E2 != null) {
                        Log.w(A0Z(227, 18, 86), A0Z(153, 40, 125) + str + A0Z(0, 58, 64) + this.A0A.A02 + A0Z(58, 1, 4));
                    }
                }
            } catch (D7 e2) {
                A0k(new D0(this.A07, e2, zA01, -49998));
            }
            if (this.A0A == null) {
                A0k(new D0(this.A07, (Throwable) null, zA01, -49999));
            }
        }
        if (A1Q(this.A0A)) {
            String str2 = this.A0A.A02;
            this.A00 = A0W(str2);
            this.A0D = A0u(str2, this.A07);
            this.A0H = A0t(str2);
            this.A0G = A0q(this.A0A);
            this.A0E = A0r(str2);
            this.A0F = A0s(str2);
            this.A0I = A0v(str2, this.A07);
            try {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                C1075Hu.A02(A0Z(659, 12, 39) + str2);
                this.A06 = MediaCodec.createByCodecName(str2);
                C1075Hu.A00();
                C1075Hu.A02(A0Z(645, 14, 94));
                A1N(this.A0A, this.A06, this.A07, mediaCryptoA00);
                C1075Hu.A00();
                C1075Hu.A02(A0Z(722, 10, 55));
                this.A06.start();
                C1075Hu.A00();
                long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                A1O(str2, jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
                A0c();
            } catch (Exception e3) {
                A0k(new D0(this.A07, e3, zA01, str2));
            }
            this.A05 = A7t() == 2 ? SystemClock.elapsedRealtime() + 1000 : C.TIME_UNSET;
            A0h();
            A0i();
            this.A0Q = true;
            this.A0U.A00++;
        }
    }

    public void A1J(long j) {
    }

    public void A1K(MediaCodec mediaCodec, MediaFormat mediaFormat) throws C9K {
    }

    public void A1L(Format format) throws C9K {
        MediaCodec mediaCodec;
        Format format2 = this.A07;
        this.A07 = format;
        if (!C1078Hx.A0g(format.A0H, format2 == null ? null : format2.A0H)) {
            if (this.A07.A0H != null) {
                BK<X6> bk = this.A0Z;
                if (bk == null) {
                    throw C9K.A01(new IllegalStateException(A0Z(193, 34, 51)), A0y());
                }
                BJ bjA2X = bk.A2X(Looper.myLooper(), this.A07.A0H);
                this.A09 = bjA2X;
                if (bjA2X == this.A08) {
                    this.A0Z.AEU(bjA2X);
                }
            } else {
                this.A09 = null;
            }
        }
        boolean z = false;
        if (this.A09 == this.A08 && (mediaCodec = this.A06) != null) {
            switch (A1A(mediaCodec, this.A0A, format2, this.A07)) {
                case 0:
                    break;
                case 1:
                    z = true;
                    break;
                case 2:
                default:
                    throw new IllegalStateException();
                case 3:
                    z = true;
                    this.A0L = true;
                    this.A01 = 1;
                    int i = this.A00;
                    this.A0C = i == 2 || (i == 1 && this.A07.A0F == format2.A0F && this.A07.A08 == format2.A08);
                    break;
            }
        }
        if (z) {
            return;
        }
        if (this.A0J) {
            this.A02 = 1;
        } else {
            A1G();
            A1I();
        }
    }

    public void A1M(XE xe) {
    }

    public abstract void A1N(C0956Cy c0956Cy, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto) throws D7;

    public void A1O(String str, long j, long j2) {
    }

    public abstract boolean A1P(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws C9K;

    public boolean A1Q(C0956Cy c0956Cy) {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.XS
    public boolean A8q() {
        return this.A0N;
    }

    @Override // com.facebook.ads.redexgen.X.XS
    public boolean A90() {
        return (this.A07 == null || this.A0R || (!A18() && !A0n() && (this.A05 == C.TIME_UNSET || SystemClock.elapsedRealtime() >= this.A05))) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008b  */
    @Override // com.facebook.ads.redexgen.X.XS
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void AEb(long r7, long r9) throws com.facebook.ads.redexgen.X.C9K {
        /*
            Method dump skipped, instruction units count: 218
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3E.AEb(long, long):void");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC08879s
    public final int AFt(Format format) throws C9K {
        try {
            return A1B(this.A0a, this.A0Z, format);
        } catch (D7 e2) {
            throw C9K.A01(e2, A0y());
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0964Dl, com.facebook.ads.redexgen.X.InterfaceC08879s
    public final int AFv() {
        return 8;
    }
}

package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.drm.DrmInitData;
import com.json.mediationsdk.logger.IronSourceError;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Wo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1450Wo implements InterfaceC0920Ba {
    public static byte[] A0p;
    public static String[] A0q = {"WhKu7pkuAeXCsVE8uRhv3EZwgBp9riSc", "wrDeNyGLCWUv14ZggE2zPWUzu5gjoOIg", "xUs1VEgTJlmvEesGlKYim2mGX89Mn6Ap", "W8YnXYO8xf4ClNYvDZVYWX", "B88t6KSt5rHqx0X", "mP1RKkMa67OSAD0gBpbGTYhDs7d4UNMk", "rmkWP1gG3PZnRTV6Vu72xnpKfVt", "q3NSDD9bEbAX3BTi5XmjKvgCV917aeoR"};
    public static final InterfaceC0923Bd A0r;
    public static final UUID A0s;
    public static final byte[] A0t;
    public static final byte[] A0u;
    public static final byte[] A0v;
    public static final byte[] A0w;
    public static final byte[] A0x;
    public byte A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;
    public int A09;
    public int A0A;
    public int A0B;
    public long A0C;
    public long A0D;
    public long A0E;
    public long A0F;
    public long A0G;
    public long A0H;
    public long A0I;
    public long A0J;
    public long A0K;
    public long A0L;
    public long A0M;
    public InterfaceC0922Bc A0N;
    public C0936Bw A0O;
    public HX A0P;
    public HX A0Q;
    public ByteBuffer A0R;
    public boolean A0S;
    public boolean A0T;
    public boolean A0U;
    public boolean A0V;
    public boolean A0W;
    public boolean A0X;
    public boolean A0Y;
    public boolean A0Z;
    public boolean A0a;
    public int[] A0b;
    public final SparseArray<C0936Bw> A0c;
    public final InterfaceC0934Bs A0d;
    public final C0937Bz A0e;
    public final C1062Hh A0f;
    public final C1062Hh A0g;
    public final C1062Hh A0h;
    public final C1062Hh A0i;
    public final C1062Hh A0j;
    public final C1062Hh A0k;
    public final C1062Hh A0l;
    public final C1062Hh A0m;
    public final C1062Hh A0n;
    public final boolean A0o;

    static {
        A06();
        A0r = new C1452Wq();
        A0w = new byte[]{49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
        A0x = new byte[]{32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};
        A0t = C1078Hx.A0i(A03(539, 90, 83));
        A0u = new byte[]{68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
        A0v = new byte[]{32, 32, 32, 32, 32, 32, 32, 32, 32, 32};
        A0s = new UUID(72057594037932032L, -9223371306706625679L);
    }

    public C1450Wo() {
        this(0);
    }

    public C1450Wo(int i) {
        this(new C1453Wr(), i);
    }

    public C1450Wo(InterfaceC0934Bs interfaceC0934Bs, int i) {
        this.A0K = -1L;
        this.A0M = C.TIME_UNSET;
        this.A0G = C.TIME_UNSET;
        this.A0H = C.TIME_UNSET;
        this.A0F = -1L;
        this.A0J = -1L;
        this.A0E = C.TIME_UNSET;
        this.A0d = interfaceC0934Bs;
        interfaceC0934Bs.A8f(new C1451Wp(this, null));
        this.A0o = (i & 1) == 0;
        this.A0e = new C0937Bz();
        this.A0c = new SparseArray<>();
        this.A0k = new C1062Hh(4);
        this.A0n = new C1062Hh(ByteBuffer.allocate(4).putInt(-1).array());
        this.A0l = new C1062Hh(4);
        this.A0i = new C1062Hh(C1058Hd.A03);
        this.A0h = new C1062Hh(4);
        this.A0j = new C1062Hh();
        this.A0m = new C1062Hh();
        this.A0f = new C1062Hh(8);
        this.A0g = new C1062Hh();
    }

    private int A00(InterfaceC0921Bb interfaceC0921Bb, InterfaceC0930Bm interfaceC0930Bm, int i) throws InterruptedException, IOException {
        int iAEq;
        int iA04 = this.A0j.A04();
        if (iA04 > 0) {
            iAEq = Math.min(i, iA04);
            interfaceC0930Bm.AEr(this.A0j, iAEq);
        } else {
            iAEq = interfaceC0930Bm.AEq(interfaceC0921Bb, i, false);
        }
        this.A07 += iAEq;
        this.A08 += iAEq;
        return iAEq;
    }

    private long A01(long j) throws C08729d {
        long j2 = this.A0M;
        if (j2 != C.TIME_UNSET) {
            return C1078Hx.A0F(j, j2, 1000L);
        }
        throw new C08729d(A03(PsExtractor.PRIVATE_STREAM_1, 54, 68));
    }

    private InterfaceC0927Bj A02() {
        HX hx;
        HX hx2;
        if (this.A0K == -1 || this.A0H == C.TIME_UNSET || (hx = this.A0Q) == null || hx.A02() == 0 || (hx2 = this.A0P) == null || hx2.A02() != this.A0Q.A02()) {
            this.A0Q = null;
            this.A0P = null;
            return new X0(this.A0H);
        }
        int iA02 = this.A0Q.A02();
        int[] iArr = new int[iA02];
        long[] jArr = new long[iA02];
        long[] jArr2 = new long[iA02];
        long[] jArr3 = new long[iA02];
        for (int i = 0; i < iA02; i++) {
            jArr3[i] = this.A0Q.A03(i);
            jArr[i] = this.A0K + this.A0P.A03(i);
        }
        for (int i2 = 0; i2 < iA02 - 1; i2++) {
            iArr[i2] = (int) (jArr[i2 + 1] - jArr[i2]);
            jArr2[i2] = jArr3[i2 + 1] - jArr3[i2];
        }
        iArr[iA02 - 1] = (int) ((this.A0K + this.A0L) - jArr[iA02 - 1]);
        jArr2[iA02 - 1] = this.A0H - jArr3[iA02 - 1];
        this.A0Q = null;
        this.A0P = null;
        return new X5(iArr, jArr, jArr2, jArr3);
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0p, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 12);
        }
        return new String(bArrCopyOfRange);
    }

    private void A05() {
        this.A07 = 0;
        this.A08 = 0;
        this.A09 = 0;
        this.A0S = false;
        this.A0X = false;
        this.A0U = false;
        this.A0A = 0;
        this.A00 = (byte) 0;
        this.A0T = false;
        this.A0j.A0V();
    }

    public static void A06() {
        A0p = new byte[]{65, -113, -112, -107, 65, -108, -106, -111, -111, -112, -109, -107, -122, -123, -98, -87, -86, -35, -77, -98, -87, -85, -35, -77, -98, -87, -85, -35, -77, -98, -87, -85, -35, 56, 67, 69, 119, 77, 56, 67, 69, 119, 77, 56, 67, 69, 119, 63, 56, 67, 70, 119, -107, -103, -89, -89, -71, -56, -56, -67, -62, -69, -57, -105, -67, -60, -68, -71, -58, -95, -61, -72, -71, 116, -53, -23, -53, -53, -51, -55, -25, -55, -53, -69, -81, -51, -78, -62, -63, -117, -87, -114, -98, -99, 121, -113, -94, -102, -100, -113, -99, -99, -93, -63, -90, -74, -75, -111, -82, -79, -75, -75, -82, -89, -75, -75, -120, -90, -116, -120, -118, 122, 94, 124, 99, 105, 94, 96, -77, -47, -65, -62, -73, -71, -95, -66, -92, 85, 115, 97, 100, 89, 91, 67, 96, 71, 116, -110, -128, -122, 98, 116, 118, -128, -77, -47, -63, -62, -57, -59, -100, -70, -85, -98, -88, -118, -92, -87, -81, -118, -89, -92, -81, -117, -87, -98, -100, -97, -113, -110, -114, -92, -62, -71, -78, -75, -91, -84, -74, -109, -79, -66, 119, -60, 112, -61, -77, -79, -68, -75, 112, -60, -71, -67, -75, -77, -65, -76, -75, 112, -64, -62, -71, -65, -62, 112, -60, -65, 112, -60, -71, -67, -75, -77, -65, -76, -75, -93, -77, -79, -68, -75, 112, -78, -75, -71, -66, -73, 112, -61, -75, -60, 126, 89, -123, -125, 120, Ascii.DEL, -124, Ascii.DEL, -124, 125, 54, 123, -124, 121, -120, -113, -122, -118, Ascii.DEL, -123, -124, 54, 119, -124, 122, 54, 121, -123, -125, -122, -120, 123, -119, -119, Ascii.DEL, -123, -124, 54, Ascii.DEL, -119, 54, -124, -123, -118, 54, -119, -117, -122, -122, -123, -120, -118, 123, 122, -69, -25, -26, -20, -35, -26, -20, -69, -25, -27, -24, -71, -28, -33, -25, -104, -111, -67, -68, -62, -77, -68, -62, -109, -68, -79, -113, -70, -75, -67, 110, -89, -45, -46, -40, -55, -46, -40, -87, -46, -57, -45, -56, -51, -46, -53, -77, -42, -56, -55, -42, -124, 120, -92, -93, -87, -102, -93, -87, 122, -93, -104, -92, -103, -98, -93, -100, -120, -104, -92, -91, -102, 85, -59, -16, -28, -43, -6, -15, -26, -95, 94, -119, 125, 110, -109, -118, Ascii.DEL, 108, Ascii.DEL, 123, 126, 112, Ascii.DEL, -116, -115, -125, -119, -120, 58, -68, -71, -60, -61, -105, -29, -40, -38, -32, -27, -34, -105, -22, -40, -28, -25, -29, -36, -105, -22, -32, -15, -36, -105, -26, -20, -21, -105, -26, -35, -105, -23, -40, -27, -34, -36, -91, -79, -82, -71, -72, -66, -47, -51, -48, -62, -47, -34, -33, -43, -37, -38, -116, -60, -19, -30, -15, -8, -17, -13, -28, -29, -97, -45, -15, -32, -30, -22, -97, -27, -18, -12, -19, -29, -97, -31, -12, -13, -97, -62, -18, -19, -13, -28, -19, -13, -60, -19, -30, -54, -28, -8, -56, -61, -97, -10, -32, -14, -97, -19, -18, -13, -97, -27, -18, -12, -19, -29, 103, -102, -106, -121, -112, -107, -117, -111, -112, 66, -124, -117, -106, 66, -117, -107, 66, -107, -121, -106, 66, -117, -112, 66, -107, -117, -119, -112, -125, -114, 66, -124, -101, -106, -121, -91, -50, -47, -52, -64, -45, -103, Ascii.DEL, -78, -45, -64, -47, -45, -117, Ascii.DEL, -92, -51, -61, -117, Ascii.DEL, -79, -60, -64, -61, -82, -47, -61, -60, -47, -117, Ascii.DEL, -85, -64, -40, -60, -47, -117, Ascii.DEL, -78, -45, -40, -53, -60, -117, Ascii.DEL, -83, -64, -52, -60, -117, Ascii.DEL, -84, -64, -47, -58, -56, -51, -85, -117, Ascii.DEL, -84, -64, -47, -58, -56, -51, -79, -117, Ascii.DEL, -84, -64, -47, -58, -56, -51, -75, -117, Ascii.DEL, -92, -59, -59, -60, -62, -45, -117, Ascii.DEL, -77, -60, -41, -45, -99, -78, -76, -70, -65, -72, 113, -64, -65, -67, -54, 113, -60, -58, -63, -63, -64, -61, -59, -74, -75, 113, -70, -65, 113, -92, -70, -66, -63, -67, -74, -109, -67, -64, -76, -68, -60, Ascii.DEL, 115, -121, -108, -118, -121, -102, -107, -104, -97, 70, -117, -110, -117, -109, -117, -108, -102, 70, 121, -117, -117, -111, 111, 106, 70, -107, -104, 70, 121, -117, -117, -111, 118, -107, -103, -113, -102, -113, -107, -108, 70, -108, -107, -102, 70, -116, -107, -101, -108, -118, -54, -14, -23, -15, -26, -19, -23, -30, -99, -48, -30, -28, -22, -30, -21, -15, -99, -30, -23, -30, -22, -30, -21, -15, -16, -99, -21, -20, -15, -99, -16, -14, -19, -19, -20, -17, -15, -30, -31, -102, -69, 108, -62, -83, -72, -75, -80, 108, -64, -66, -83, -81, -73, -65, 108, -61, -79, -66, -79, 108, -78, -69, -63, -70, -80, 119, -104, 73, -97, -118, -107, -110, -115, 73, -97, -118, -101, -110, -105, -99, 73, -107, -114, -105, -112, -99, -111, 73, -106, -118, -100, -108, 73, -113, -104, -98, -105, -115, 112, 124, 97, 115, 95, 112, 114, 95, -44, -32, -55, -59, -50, -41, -80, -47, -56, -44, -104, -92, -103, -118, -99, -103, 116, -122, -104, -104, -72, -60, -71, -86, -67, -71, -108, -70, -71, -85, -99, -42, -30, -39, -46, -59, -42, -40, -59, 104, -127, 120, -117, -125, 120, 118, -121, 120, 119, 51, 124, 119, 77, 51, Ascii.DEL, -104, -113, -94, -102, -113, -115, -98, -113, -114, 74, -106, -117, -115, -109, -104, -111, 74, -96, -117, -106, -97, -113, 100, 74, -86, -77, -95, -92, -103, -101, -122, -38, -29, -47, -44, -55, -53, -72, -77, -51, -41, -45, -77, -59, -44, -72, -63, -81, -78, -89, -87, -106, -111, -85, -75, -79, -111, -93, -75, -78, 122, -125, 113, 116, 105, 107, 88, 83, 109, 119, 115, 83, 101, 122, 103, -53, -44, -62, -59, -70, -68, -87, -92, -66, -56, -60, -92, -56, -59, 116, 125, 107, 110, 99, 101, 102, 77, 103, 113, 109, 77, 102, 99, 116, 97, -47, -38, -56, -50, -86, -47, -63, -46, -86, -63, -54, -48, -51, -66, -66, -67, -58, 
        -69, -81, -84, -74, -71, -88, -100, -91, -100, -106, 126, 118, Ascii.DEL, 118, 112, 89, -13, -25, -6, -8, -11, -7, -15, -25, -63, -76, -81, -80, -70, 122, -62, -80, -83, -72, -12, -30, -33, -22};
    }

    private void A07(InterfaceC0921Bb interfaceC0921Bb, int i) throws InterruptedException, IOException {
        if (this.A0k.A07() >= i) {
            return;
        }
        if (this.A0k.A05() < i) {
            C1062Hh c1062Hh = this.A0k;
            c1062Hh.A0b(Arrays.copyOf(c1062Hh.A00, Math.max(this.A0k.A00.length * 2, i)), this.A0k.A07());
        }
        byte[] bArr = this.A0k.A00;
        int iA07 = this.A0k.A07();
        if (A0q[6].length() != 27) {
            throw new RuntimeException();
        }
        String[] strArr = A0q;
        strArr[0] = "ZmQc4cegfKT6TM2j1HdEhTMrEsYvVAK8";
        strArr[2] = "PLs1alOmXmQPSsdSdZUe4T02xUG6CaQT";
        interfaceC0921Bb.readFully(bArr, iA07, i - this.A0k.A07());
        this.A0k.A0X(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:110:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A08(com.facebook.ads.redexgen.X.InterfaceC0921Bb r11, com.facebook.ads.redexgen.X.C0936Bw r12, int r13) throws java.lang.InterruptedException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 699
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1450Wo.A08(com.facebook.ads.redexgen.X.Bb, com.facebook.ads.redexgen.X.Bw, int):void");
    }

    private void A09(InterfaceC0921Bb interfaceC0921Bb, byte[] bArr, int i) throws InterruptedException, IOException {
        int length = bArr.length + i;
        if (this.A0m.A05() < length) {
            this.A0m.A00 = Arrays.copyOf(bArr, length + i);
        } else {
            System.arraycopy(bArr, 0, this.A0m.A00, 0, bArr.length);
        }
        interfaceC0921Bb.readFully(this.A0m.A00, bArr.length, i);
        this.A0m.A0W(length);
    }

    private void A0A(InterfaceC0921Bb interfaceC0921Bb, byte[] bArr, int i, int i2) throws InterruptedException, IOException {
        int iMin = Math.min(i2, this.A0j.A04());
        interfaceC0921Bb.readFully(bArr, i + iMin, i2 - iMin);
        if (iMin > 0) {
            this.A0j.A0c(bArr, i, iMin);
        }
        this.A07 += i2;
    }

    private void A0B(C0936Bw c0936Bw, long j) {
        if (c0936Bw.A0X != null) {
            Bx bx = c0936Bw.A0X;
            if (A0q[6].length() != 27) {
                throw new RuntimeException();
            }
            A0q[6] = "nKrIVrdQs7NkqXN01cL0onp1lFd";
            bx.A03(c0936Bw, j);
        } else {
            if (A03(843, 11, 89).equals(c0936Bw.A0Y)) {
                A0C(c0936Bw, A03(33, 19, 7), 19, 1000L, A0x);
            } else if (A03(833, 10, 57).equals(c0936Bw.A0Y)) {
                A0C(c0936Bw, A03(14, 19, 109), 21, 10000L, A0v);
            }
            c0936Bw.A0W.AEs(j, this.A01, this.A08, 0, c0936Bw.A0V);
        }
        this.A0V = true;
        A05();
    }

    private void A0C(C0936Bw c0936Bw, String str, int i, long j, byte[] bArr) {
        A0D(this.A0m.A00, this.A0C, str, i, j, bArr);
        InterfaceC0930Bm interfaceC0930Bm = c0936Bw.A0W;
        C1062Hh c1062Hh = this.A0m;
        interfaceC0930Bm.AEr(c1062Hh, c1062Hh.A07());
        this.A08 += this.A0m.A07();
    }

    public static void A0D(byte[] bArr, long j, String str, int i, long j2, byte[] bArr2) {
        byte[] bArrA0i;
        if (j == C.TIME_UNSET) {
            bArrA0i = bArr2;
        } else {
            int i2 = (int) (j / 3600000000L);
            long j3 = j - (((long) (i2 * 3600)) * 1000000);
            int i3 = (int) (j3 / 60000000);
            long j4 = j3 - (((long) (i3 * 60)) * 1000000);
            int i4 = (int) (j4 / 1000000);
            bArrA0i = C1078Hx.A0i(String.format(Locale.US, str, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf((int) ((j4 - (((long) i4) * 1000000)) / j2))));
        }
        System.arraycopy(bArrA0i, 0, bArr, i, bArr2.length);
    }

    private boolean A0E(C0925Bh c0925Bh, long j) {
        if (this.A0Y) {
            this.A0J = j;
            c0925Bh.A00 = this.A0F;
            this.A0Y = false;
            return true;
        }
        boolean z = this.A0a;
        String[] strArr = A0q;
        if (strArr[0].charAt(31) == strArr[2].charAt(31)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0q;
        strArr2[1] = "bgcuSmmv9nMD5qNgR1ZnJGCWOsXR4zDF";
        strArr2[5] = "rXrXJdml0w7r8hjghYXvJH5LLiJomjK3";
        if (z) {
            long j2 = this.A0J;
            if (j2 != -1) {
                c0925Bh.A00 = j2;
                this.A0J = -1L;
                return true;
            }
        }
        return false;
    }

    public static boolean A0F(String str) {
        if (!A03(1006, 5, 58).equals(str) && !A03(1011, 5, 20).equals(str) && !A03(TypedValues.Custom.TYPE_COLOR, 7, 72).equals(str)) {
            String strA03 = A03(953, 14, 105);
            String[] strArr = A0q;
            if (strArr[1].charAt(15) == strArr[5].charAt(15)) {
                A0q[7] = "rYhgwmDh4TKBcj4Uwcvshsmah3Wf4ae0";
                if (!strA03.equals(str) && !A03(923, 15, 86).equals(str) && !A03(909, 14, 120).equals(str) && !A03(938, 15, 24).equals(str) && !A03(967, 16, 18).equals(str) && !A03(983, 15, 111).equals(str)) {
                    String[] strArr2 = A0q;
                    if (strArr2[1].charAt(15) != strArr2[5].charAt(15)) {
                        throw new RuntimeException();
                    }
                    A0q[6] = "rlxG2GXYid9bCHwXApke8Gz33sW";
                    if (!A03(998, 8, 91).equals(str) && !A03(154, 6, 102).equals(str) && !A03(181, 8, 87).equals(str) && !A03(74, 5, 126).equals(str) && !A03(128, 9, 102).equals(str) && !A03(137, 9, 8).equals(str) && !A03(79, 5, 124).equals(str) && !A03(116, 6, 59).equals(str) && !A03(173, 8, 62).equals(str) && !A03(84, 5, 98).equals(str) && !A03(89, 13, 62).equals(str) && !A03(102, 14, 86).equals(str) && !A03(122, 6, 17).equals(str) && !A03(146, 8, 39).equals(str) && !A03(160, 13, 79).equals(str)) {
                        boolean zEquals = A03(843, 11, 89).equals(str);
                        String[] strArr3 = A0q;
                        if (strArr3[0].charAt(31) != strArr3[2].charAt(31)) {
                            String[] strArr4 = A0q;
                            strArr4[1] = "DfP1dlVZEdoO22ggDOih4DhJX4h9DttB";
                            strArr4[5] = "iPMsbxRLvFu5COzgJWPWeI2fmUuAHT3S";
                            if (!zEquals && !A03(833, 10, 57).equals(str) && !A03(854, 8, 119).equals(str) && !A03(823, 10, 117).equals(str) && !A03(815, 8, 17).equals(str)) {
                                return false;
                            }
                        }
                    }
                }
            }
            throw new RuntimeException();
        }
        return true;
    }

    public static int[] A0H(int[] iArr, int i) {
        return iArr == null ? new int[i] : iArr.length >= i ? iArr : new int[Math.max(iArr.length * 2, i)];
    }

    public final void A0I(int i) throws C08729d {
        switch (i) {
            case 160:
                if (this.A04 != 2) {
                    return;
                }
                if (!this.A0W) {
                    this.A01 = 1 | this.A01;
                }
                A0B(this.A0c.get(this.A05), this.A0D);
                this.A04 = 0;
                return;
            case 174:
                if (A0F(this.A0O.A0Y)) {
                    C0936Bw c0936Bw = this.A0O;
                    c0936Bw.A09(this.A0N, c0936Bw.A0N);
                    this.A0c.put(this.A0O.A0N, this.A0O);
                }
                this.A0O = null;
                return;
            case 19899:
                int i2 = this.A0B;
                if (i2 != -1) {
                    long j = this.A0I;
                    if (j != -1) {
                        if (i2 == 475249515) {
                            this.A0F = j;
                            return;
                        }
                        return;
                    }
                }
                throw new C08729d(A03(667, 50, 26));
            case 25152:
                if (this.A0O.A0c) {
                    if (this.A0O.A0V == null) {
                        throw new C08729d(A03(449, 55, 115));
                    }
                    this.A0O.A0U = new DrmInitData(new DrmInitData.SchemeData(C9E.A04, A03(1024, 10, 63), this.A0O.A0V.A03));
                    return;
                }
                return;
            case 28032:
                if (this.A0O.A0c && this.A0O.A0f != null) {
                    throw new C08729d(A03(243, 53, 10));
                }
                return;
            case 357149030:
                if (this.A0M == C.TIME_UNSET) {
                    this.A0M = 1000000L;
                }
                long j2 = this.A0G;
                if (j2 != C.TIME_UNSET) {
                    this.A0H = A01(j2);
                    return;
                }
                return;
            case 374648427:
                if (this.A0c.size() == 0) {
                    throw new C08729d(A03(756, 26, 64));
                }
                this.A0N.A5T();
                return;
            case 475249515:
                if (this.A0a) {
                    return;
                }
                this.A0N.AEx(A02());
                this.A0a = true;
                return;
            default:
                return;
        }
    }

    public final void A0J(int i, double d2) {
        switch (i) {
            case 181:
                this.A0O.A0O = (int) d2;
                break;
            case 17545:
                this.A0G = (long) d2;
                break;
            case 21969:
                this.A0O.A06 = (float) d2;
                break;
            case 21970:
                this.A0O.A07 = (float) d2;
                break;
            case 21971:
                this.A0O.A04 = (float) d2;
                break;
            case 21972:
                this.A0O.A05 = (float) d2;
                break;
            case 21973:
                this.A0O.A02 = (float) d2;
                break;
            case 21974:
                this.A0O.A03 = (float) d2;
                break;
            case 21975:
                this.A0O.A08 = (float) d2;
                break;
            case 21976:
                this.A0O.A09 = (float) d2;
                break;
            case 21977:
                this.A0O.A00 = (float) d2;
                break;
            case 21978:
                this.A0O.A01 = (float) d2;
                break;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:132:0x02b9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x017e A[PHI: r3
      0x017e: PHI (r3v18 int[]) = (r3v10 int[]), (r3v19 int[]) binds: [B:55:0x01a0, B:50:0x017c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A0K(int r20, int r21, com.facebook.ads.redexgen.X.InterfaceC0921Bb r22) throws java.lang.InterruptedException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 976
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1450Wo.A0K(int, int, com.facebook.ads.redexgen.X.Bb):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A0L(int r10, long r11) throws com.facebook.ads.redexgen.X.C08729d {
        /*
            Method dump skipped, instruction units count: 992
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1450Wo.A0L(int, long):void");
    }

    public final void A0M(int i, long j, long j2) throws C08729d {
        switch (i) {
            case 160:
                this.A0W = false;
                return;
            case 174:
                this.A0O = new C0936Bw(null);
                return;
            case 187:
                this.A0Z = false;
                return;
            case 19899:
                this.A0B = -1;
                this.A0I = -1L;
                return;
            case 20533:
                this.A0O.A0c = true;
                return;
            case 21968:
                this.A0O.A0b = true;
                return;
            case 25152:
            default:
                return;
            case 408125543:
                long j3 = this.A0K;
                if (j3 != -1 && j3 != j) {
                    throw new C08729d(A03(717, 39, 113));
                }
                this.A0K = j;
                this.A0L = j2;
                return;
            case 475249515:
                this.A0Q = new HX();
                this.A0P = new HX();
                return;
            case 524531317:
                if (this.A0a) {
                    return;
                }
                if (this.A0o && this.A0F != -1) {
                    this.A0Y = true;
                    return;
                } else {
                    this.A0N.AEx(new X0(this.A0H));
                    this.A0a = true;
                    return;
                }
        }
    }

    public final void A0N(int i, String str) throws C08729d {
        switch (i) {
            case 134:
                this.A0O.A0Y = str;
                return;
            case 17026:
                if (!A03(IronSourceError.ERROR_RV_LOAD_UNEXPECTED_CALLBACK, 4, 113).equals(str) && !A03(1016, 8, 122).equals(str)) {
                    throw new C08729d(A03(369, 8, 117) + str + A03(0, 14, 21));
                }
                return;
            case 2274716:
                this.A0O.A0g = str;
                return;
            default:
                return;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final void A8e(InterfaceC0922Bc interfaceC0922Bc) {
        this.A0N = interfaceC0922Bc;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final int AE9(InterfaceC0921Bb interfaceC0921Bb, C0925Bh c0925Bh) throws InterruptedException, IOException {
        this.A0V = false;
        boolean zAEB = true;
        while (zAEB && !this.A0V) {
            zAEB = this.A0d.AEB(interfaceC0921Bb);
            if (zAEB && A0E(c0925Bh, interfaceC0921Bb.A7a())) {
                return 1;
            }
        }
        if (zAEB) {
            return 0;
        }
        int i = 0;
        while (true) {
            SparseArray<C0936Bw> sparseArray = this.A0c;
            String[] strArr = A0q;
            if (strArr[0].charAt(31) == strArr[2].charAt(31)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0q;
            strArr2[3] = "Tajypdz7aNAm7FibYO8x24";
            strArr2[4] = "TBunjD0UUDKaUo7";
            if (i >= sparseArray.size()) {
                return -1;
            }
            this.A0c.valueAt(i).A07();
            i++;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final void AEw(long j, long j2) {
        this.A0E = C.TIME_UNSET;
        this.A04 = 0;
        this.A0d.reset();
        this.A0e.A06();
        A05();
        for (int i = 0; i < this.A0c.size(); i++) {
            this.A0c.valueAt(i).A08();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final boolean AFg(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        return new By().A01(interfaceC0921Bb);
    }
}

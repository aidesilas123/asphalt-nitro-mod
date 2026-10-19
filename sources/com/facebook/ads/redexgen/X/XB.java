package com.facebook.ads.redexgen.X;

import android.media.NotProvisionedException;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import android.util.Pair;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.drm.DrmInitData;
import com.facebook.ads.redexgen.X.BL;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class XB<T extends BL> implements BJ<T> {
    public static byte[] A0K;
    public static String[] A0L = {"uQUfDqzhtv2TEfF5ErUwTUru4TZb3y9r", "Tl0hhVUFPPlUVXrrXAgT1phq5Y1870jG", "HsvEKssxmSZ10qjOSm6w6MmWGLuRxxq7", "RRlXFcbfMO2PvOuBXchDACh7boJ4mCH9", "7xiHj3yO3zbCG5YWXi9fkMnCOt343i", "LdJPi6TRHARXjQG7Ef48CiURnDQxO4BC", "abcggVaWrh85SzZKtbF9Hz68lxkZOGh", "I6iBxKBCu2jt9neSbJF"};
    public int A00;
    public int A01;
    public HandlerThread A02;

    /* JADX WARN: Incorrect inner types in field signature: Lcom/facebook/ads/redexgen/X/XB<TT;>.PostRequestHandler; */
    public HandlerC0919Az A03;
    public BH A04;
    public T A05;
    public Object A06;
    public Object A07;
    public byte[] A08;
    public byte[] A09;

    /* JADX WARN: Incorrect inner types in field signature: Lcom/facebook/ads/redexgen/X/XB<TT;>.PostResponseHandler; */
    public final B0 A0A;
    public final BV A0B;
    public final UUID A0C;
    public final int A0D;
    public final int A0E;
    public final B1<T> A0F;
    public final B7 A0G;
    public final DrmInitData.SchemeData A0H;
    public final BR<T> A0I;
    public final HashMap<String, String> A0J;

    static {
        A04();
    }

    public XB(UUID uuid, BR<T> br, B1<T> b1, DrmInitData.SchemeData schemeData, int i, byte[] bArr, HashMap<String, String> map, BV bv, Looper looper, B7 b7, int i2) {
        this.A0C = uuid;
        this.A0F = b1;
        this.A0I = br;
        this.A0E = i;
        this.A08 = bArr;
        this.A0H = bArr != null ? null : schemeData;
        this.A0J = map;
        this.A0B = bv;
        this.A0D = i2;
        this.A0G = b7;
        this.A01 = 2;
        this.A0A = new B0(this, looper);
        HandlerThread handlerThread = new HandlerThread(A02(17, 17, 50));
        this.A02 = handlerThread;
        handlerThread.start();
        this.A03 = new HandlerC0919Az(this, this.A02.getLooper());
    }

    private long A01() {
        if (!C9E.A05.equals(this.A0C)) {
            return Long.MAX_VALUE;
        }
        Pair<Long, Long> pairA01 = BZ.A01(this);
        long jLongValue = ((Long) pairA01.first).longValue();
        Long l = (Long) pairA01.second;
        String[] strArr = A0L;
        if (strArr[6].length() == strArr[5].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0L;
        strArr2[6] = "kwmCjQVSEE2MSEtk5P0J6XyfUzOepuN";
        strArr2[5] = "iy4DUBbCBKkWs1QdyI1n8wUj9ER6POyN";
        return Math.min(jLongValue, l.longValue());
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0K, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 6);
        }
        return new String(bArrCopyOfRange);
    }

    private void A03() {
        if (this.A01 == 4) {
            this.A01 = 3;
            A08(new BU());
        }
    }

    public static void A04() {
        A0K = new byte[]{41, 8, Ascii.VT, Ascii.FF, Ascii.CAN, 1, Ascii.EM, 41, Ascii.US, 0, 62, 8, Ascii.RS, Ascii.RS, 4, 2, 3, 112, 70, 89, 102, 81, 69, 65, 81, 71, 64, 124, 85, 90, 80, 88, 81, 70, 44, Ascii.ESC, Ascii.ESC, 6, Ascii.ESC, 73, Ascii.GS, Ascii.ESC, Ascii.DLE, 0, 7, Ascii.SO, 73, Ascii.GS, 6, 73, Ascii.ESC, Ascii.FF, Ascii.SUB, Ascii.GS, 6, Ascii.ESC, Ascii.FF, 73, 62, 0, Ascii.CR, Ascii.FF, Ascii.US, 0, 7, Ascii.FF, 73, 2, Ascii.FF, Ascii.DLE, Ascii.SUB, 71, 75, 98, 98, 104, 109, 106, 97, 36, 104, 109, 103, 97, 106, 119, 97, 36, 108, 101, 119, 36, 97, 124, 116, 109, 118, 97, 96, 36, 107, 118, 36, 115, 109, 104, 104, 36, 97, 124, 116, 109, 118, 97, 36, 119, 107, 107, 106, 42, 36, 86, 97, 105, 101, 109, 106, 109, 106, 99, 36, 119, 97, 103, 107, 106, 96, 119, 62, 36};
    }

    private void A05(int i, boolean z) {
        byte[] bArr = i == 3 ? this.A08 : this.A09;
        byte[] bArr2 = null;
        String str = null;
        String str2 = null;
        DrmInitData.SchemeData schemeData = this.A0H;
        if (schemeData != null) {
            bArr2 = schemeData.A04;
            str = this.A0H.A02;
            str2 = this.A0H.A01;
        } else {
            String[] strArr = A0L;
            if (strArr[6].length() == strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0L;
            strArr2[4] = "HiRVbgHs01WUsvKQWWbzdKShVEXCb4";
            strArr2[7] = "rsxdpsdulfr8NHFIQbC";
        }
        try {
            Pair pairCreate = Pair.create(this.A0I.getKeyRequest(bArr, bArr2, str, i, this.A0J), str2);
            this.A06 = pairCreate;
            this.A03.A02(1, pairCreate, z);
        } catch (Exception e2) {
            if (A0L[3].charAt(29) != 'C') {
                A09(e2);
                return;
            }
            String[] strArr3 = A0L;
            strArr3[0] = "yinyKCIX8OHy4tbAh09wDu9TYn4QapKY";
            strArr3[2] = "YH01MZvN3itOxbtS4y7wvPRo5LdL3aoc";
            A09(e2);
        }
    }

    private void A08(Exception exc) {
        this.A04 = new BH(exc);
        this.A0G.A04(exc);
        if (this.A01 != 4) {
            this.A01 = 1;
        }
    }

    private void A09(Exception exc) {
        if (exc instanceof NotProvisionedException) {
            this.A0F.AE4(this);
        } else {
            A08(exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0056, code lost:
    
        if (r4 == 3) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0060, code lost:
    
        if (r4 == 3) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0062, code lost:
    
        r5.A0I.provideKeyResponse(r5.A08, r7);
        r5.A0G.A01();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006f, code lost:
    
        r2 = r5.A0I.provideKeyResponse(r5.A09, r7);
        r1 = r5.A0E;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x007a, code lost:
    
        if (r1 == 2) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007c, code lost:
    
        if (r1 != 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0080, code lost:
    
        if (r5.A08 == null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0082, code lost:
    
        if (r2 == null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0085, code lost:
    
        if (r2.length == 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0087, code lost:
    
        r5.A08 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0089, code lost:
    
        r5.A01 = 4;
        r5.A0G.A00();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void A0A(java.lang.Object r6, java.lang.Object r7) {
        /*
            r5 = this;
            java.lang.Object r0 = r5.A06
            if (r6 != r0) goto La
            boolean r0 = r5.A0D()
            if (r0 != 0) goto Lb
        La:
            return
        Lb:
            r0 = 0
            r5.A06 = r0
            boolean r3 = r7 instanceof java.lang.Exception
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.XB.A0L
            r0 = 6
            r1 = r2[r0]
            r0 = 5
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L97
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.XB.A0L
            java.lang.String r1 = "9JnvKkphvxmLuhmX98tw0qe05owUNTRp"
            r0 = 0
            r2[r0] = r1
            java.lang.String r1 = "ft4SvIUq5otQylphxMLwb1JjgU4mSaGo"
            r0 = 2
            r2[r0] = r1
            if (r3 == 0) goto L36
            java.lang.Exception r7 = (java.lang.Exception) r7
            r5.A09(r7)
            return
        L36:
            byte[] r7 = (byte[]) r7     // Catch: java.lang.Exception -> L92
            int r4 = r5.A0E     // Catch: java.lang.Exception -> L92
            r3 = 3
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.XB.A0L
            r0 = 3
            r1 = r1[r0]
            r0 = 29
            char r1 = r1.charAt(r0)
            r0 = 67
            if (r1 == r0) goto L59
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.XB.A0L
            java.lang.String r1 = "bP0m20ptfIMRFe5YkcUw3xf0jvGpYKsJ"
            r0 = 0
            r2[r0] = r1
            java.lang.String r1 = "kVN8Is4OR8esdUtwldSwhPSVBOCGQMXU"
            r0 = 2
            r2[r0] = r1
            if (r4 != r3) goto L6f
            goto L62
        L59:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.XB.A0L
            java.lang.String r1 = "aqi8N0zhP27f6NVz8lVl4dA11qd5ZCKR"
            r0 = 3
            r2[r0] = r1
            if (r4 != r3) goto L6f
        L62:
            com.facebook.ads.redexgen.X.BR<T extends com.facebook.ads.redexgen.X.BL> r1 = r5.A0I     // Catch: java.lang.Exception -> L92
            byte[] r0 = r5.A08     // Catch: java.lang.Exception -> L92
            r1.provideKeyResponse(r0, r7)     // Catch: java.lang.Exception -> L92
            com.facebook.ads.redexgen.X.B7 r0 = r5.A0G     // Catch: java.lang.Exception -> L92
            r0.A01()     // Catch: java.lang.Exception -> L92
            goto L96
        L6f:
            com.facebook.ads.redexgen.X.BR<T extends com.facebook.ads.redexgen.X.BL> r1 = r5.A0I     // Catch: java.lang.Exception -> L92
            byte[] r0 = r5.A09     // Catch: java.lang.Exception -> L92
            byte[] r2 = r1.provideKeyResponse(r0, r7)     // Catch: java.lang.Exception -> L92
            int r1 = r5.A0E     // Catch: java.lang.Exception -> L92
            r0 = 2
            if (r1 == r0) goto L82
            if (r1 != 0) goto L89
            byte[] r0 = r5.A08     // Catch: java.lang.Exception -> L92
            if (r0 == 0) goto L89
        L82:
            if (r2 == 0) goto L89
            int r0 = r2.length     // Catch: java.lang.Exception -> L92
            if (r0 == 0) goto L89
            r5.A08 = r2     // Catch: java.lang.Exception -> L92
        L89:
            r0 = 4
            r5.A01 = r0     // Catch: java.lang.Exception -> L92
            com.facebook.ads.redexgen.X.B7 r0 = r5.A0G     // Catch: java.lang.Exception -> L92
            r0.A00()     // Catch: java.lang.Exception -> L92
            goto L96
        L92:
            r0 = move-exception
            r5.A09(r0)
        L96:
            return
        L97:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.XB.A0A(java.lang.Object, java.lang.Object):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0B(Object obj, Object obj2) {
        if (obj == this.A07) {
            if (this.A01 != 2) {
                boolean zA0D = A0D();
                String[] strArr = A0L;
                if (strArr[6].length() == strArr[5].length()) {
                    throw new RuntimeException();
                }
                A0L[1] = "7g5olCk59crpyXcTpohub2paBJQfOBC8";
                if (!zA0D) {
                    return;
                }
            }
            this.A07 = null;
            if (!(obj2 instanceof Exception)) {
                try {
                    this.A0I.provideProvisionResponse((byte[]) obj2);
                    this.A0F.ACb();
                    return;
                } catch (Exception e2) {
                    this.A0F.ACc(e2);
                    return;
                }
            }
            B1<T> b1 = this.A0F;
            String[] strArr2 = A0L;
            if (strArr2[0].charAt(19) == strArr2[2].charAt(19)) {
                A0L[1] = "QkoncgzFytlqAAhEJ0Qlx7x4X03bYeDS";
                b1.ACc((Exception) obj2);
            } else {
                String[] strArr3 = A0L;
                strArr3[6] = "avEJwbhwMRn38jmRQBD1FC49w8wW0nz";
                strArr3[5] = "XMN7l9eNtKuFM3Fev0Kexs32ktc0Cq6l";
                b1.ACc((Exception) obj2);
            }
        }
    }

    private void A0C(boolean z) {
        switch (this.A0E) {
            case 0:
            case 1:
                if (this.A08 == null) {
                    A05(1, z);
                    return;
                }
                if (this.A01 == 4 || A0E()) {
                    long jA01 = A01();
                    if (this.A0E == 0 && jA01 <= 60) {
                        String str = A02(72, 68, 2) + jA01;
                        A05(2, z);
                        return;
                    } else if (jA01 <= 0) {
                        A08(new BU());
                        return;
                    } else {
                        this.A01 = 4;
                        this.A0G.A02();
                        return;
                    }
                }
                return;
            case 2:
                if (this.A08 == null) {
                    A05(2, z);
                    return;
                } else {
                    if (A0E()) {
                        A05(2, z);
                        return;
                    }
                    return;
                }
            case 3:
                if (A0E()) {
                    String[] strArr = A0L;
                    if (strArr[0].charAt(19) != strArr[2].charAt(19)) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A0L;
                    strArr2[0] = "tKB853gw0QxIoSbJdPpwjheJWY3E7MZE";
                    strArr2[2] = "oZWJSNTcJkrmOm7J4lVwlLSneItLKulz";
                    A05(3, z);
                    return;
                }
                return;
            default:
                return;
        }
    }

    private boolean A0D() {
        int i = this.A01;
        return i == 3 || i == 4;
    }

    private boolean A0E() {
        try {
            this.A0I.restoreKeys(this.A09, this.A08);
            return true;
        } catch (Exception e2) {
            Log.e(A02(0, 17, 107), A02(34, 38, 111), e2);
            A08(e2);
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003b, code lost:
    
        if (r5 != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
    
        r4.A0F.AE4(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0043, code lost:
    
        if (r5 != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0046, code lost:
    
        A08(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:?, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean A0F(boolean r5) {
        /*
            r4 = this;
            boolean r0 = r4.A0D()
            r2 = 1
            if (r0 == 0) goto L8
            return r2
        L8:
            com.facebook.ads.redexgen.X.BR<T extends com.facebook.ads.redexgen.X.BL> r0 = r4.A0I     // Catch: android.media.NotProvisionedException -> L1c java.lang.Exception -> L4a
            byte[] r1 = r0.openSession()     // Catch: android.media.NotProvisionedException -> L1c java.lang.Exception -> L4a
            r4.A09 = r1     // Catch: android.media.NotProvisionedException -> L1c java.lang.Exception -> L4a
            com.facebook.ads.redexgen.X.BR<T extends com.facebook.ads.redexgen.X.BL> r0 = r4.A0I     // Catch: android.media.NotProvisionedException -> L1c java.lang.Exception -> L4a
            com.facebook.ads.redexgen.X.BL r0 = r0.createMediaCrypto(r1)     // Catch: android.media.NotProvisionedException -> L1c java.lang.Exception -> L4a
            r4.A05 = r0     // Catch: android.media.NotProvisionedException -> L1c java.lang.Exception -> L4a
            r0 = 3
            r4.A01 = r0     // Catch: android.media.NotProvisionedException -> L1c java.lang.Exception -> L4a
            return r2
        L1c:
            r3 = move-exception
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.XB.A0L
            r0 = 4
            r1 = r2[r0]
            r0 = 7
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L43
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.XB.A0L
            java.lang.String r1 = "hcP5iGmUCTCBubOCm4y34akhSFLITz"
            r0 = 4
            r2[r0] = r1
            java.lang.String r1 = "kkACDG4miePlwwqXadR"
            r0 = 7
            r2[r0] = r1
            if (r5 == 0) goto L46
        L3d:
            com.facebook.ads.redexgen.X.B1<T extends com.facebook.ads.redexgen.X.BL> r0 = r4.A0F
            r0.AE4(r4)
            goto L69
        L43:
            if (r5 == 0) goto L46
            goto L3d
        L46:
            r4.A08(r3)
            goto L69
        L4a:
            r3 = move-exception
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.XB.A0L
            r0 = 1
            r1 = r1[r0]
            r0 = 26
            char r1 = r1.charAt(r0)
            r0 = 73
            if (r1 == r0) goto L6b
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.XB.A0L
            java.lang.String r1 = "3MIbmxUKwpHsMOPA0O36aL8zgPm2spB"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "QZdNO4E2RTzuGVfMqJkx34O55UWQfpPY"
            r0 = 5
            r2[r0] = r1
            r4.A08(r3)
        L69:
            r0 = 0
            return r0
        L6b:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.XB.A0F(boolean):boolean");
    }

    public final void A0G() {
        int i = this.A00 + 1;
        this.A00 = i;
        if (i == 1 && this.A01 != 1 && A0F(true)) {
            A0C(true);
        }
    }

    public final void A0H() {
        if (A0F(false)) {
            A0C(true);
        }
    }

    public final void A0I() {
        X7 provisionRequest = this.A0I.getProvisionRequest();
        this.A07 = provisionRequest;
        this.A03.A02(0, provisionRequest, true);
    }

    public final void A0J(int i) {
        if (A0D()) {
            switch (i) {
                case 1:
                    this.A01 = 3;
                    this.A0F.AE4(this);
                    break;
                case 2:
                    A0C(false);
                    break;
                case 3:
                    A03();
                    break;
            }
        }
    }

    public final void A0K(Exception exc) {
        A08(exc);
    }

    public final boolean A0L() {
        int i = this.A00 - 1;
        this.A00 = i;
        if (i != 0) {
            return false;
        }
        this.A01 = 0;
        this.A0A.removeCallbacksAndMessages(null);
        this.A03.removeCallbacksAndMessages(null);
        this.A03 = null;
        this.A02.quit();
        this.A02 = null;
        this.A05 = null;
        this.A04 = null;
        this.A06 = null;
        this.A07 = null;
        byte[] bArr = this.A09;
        if (bArr != null) {
            BR<T> br = this.A0I;
            String[] strArr = A0L;
            if (strArr[4].length() == strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0L;
            strArr2[6] = "deu86LfLTKjM93IlTO01zYKbww8cuOj";
            strArr2[5] = "ojEkjq8yeaej09Uo0dOQA5yJgKQBg80C";
            br.closeSession(bArr);
            this.A09 = null;
        }
        return true;
    }

    public final boolean A0M(byte[] bArr) {
        DrmInitData.SchemeData schemeData = this.A0H;
        return Arrays.equals(schemeData != null ? schemeData.A04 : null, bArr);
    }

    public final boolean A0N(byte[] bArr) {
        return Arrays.equals(this.A09, bArr);
    }

    @Override // com.facebook.ads.redexgen.X.BJ
    public final BH A6q() {
        if (this.A01 == 1) {
            return this.A04;
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.BJ
    public final T A7G() {
        return this.A05;
    }

    @Override // com.facebook.ads.redexgen.X.BJ
    public final int A7t() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.BJ
    public final Map<String, String> AE5() {
        byte[] bArr = this.A09;
        if (bArr == null) {
            return null;
        }
        return this.A0I.queryKeyStatus(bArr);
    }
}

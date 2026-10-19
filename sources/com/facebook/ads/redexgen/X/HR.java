package com.facebook.ads.redexgen.X;

import android.net.TrafficStats;
import android.text.TextUtils;
import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import javax.net.ssl.HttpsURLConnection;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class HR implements InterfaceC1291Qh {
    public static byte[] A07;
    public static String[] A08 = {"Z3ZBH3trhaxMswGoeO0i3WMhBsCqcWgs", "P814sFImmOC", "INcscN3Z5kcfIuBeknVxelrdNm8ANoXs", "RvJjsajerkLdUat3TDI8NPR3DDSWtO", "ZLSXhw", "wxtWSqUF9a7Aw2d1StIocmcoa4QX", "58xAXbC3p", "Zj1UZNXOzFX"};
    public static final String A09;
    public InterfaceC08407w A00;
    public Executor A01;
    public boolean A02;
    public C1296Qm A03;
    public final InterfaceC1301Qr A04 = new C1068Hn();
    public final InterfaceC1306Qw A05;
    public final InterfaceC1307Qx A06;

    static {
        A0A();
        A09 = InterfaceC1291Qh.class.getSimpleName();
    }

    public HR(C1296Qm c1296Qm, InterfaceC08407w interfaceC08407w, Executor executor) {
        A0B();
        this.A03 = c1296Qm;
        final HH hh = new HH(c1296Qm.A04());
        this.A06 = hh;
        this.A05 = new AbstractC1067Hm(hh) { // from class: com.facebook.ads.redexgen.X.4U
        };
        this.A01 = executor;
        this.A00 = interfaceC08407w;
    }

    private final int A00(HttpURLConnection httpURLConnection, byte[] bArr) throws Exception {
        OutputStream outputStreamADg = null;
        try {
            outputStreamADg = this.A05.ADg(httpURLConnection);
            if (outputStreamADg != null) {
                this.A05.AGV(outputStreamADg, bArr);
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (outputStreamADg != null) {
                try {
                    outputStreamADg.close();
                } catch (Exception unused) {
                }
            }
            return responseCode;
        } catch (Throwable th) {
            if (outputStreamADg != null) {
                try {
                    outputStreamADg.close();
                } catch (Exception unused2) {
                }
            }
            throw th;
        }
    }

    private final InterfaceC1290Qg A01(AbstractC1303Qt abstractC1303Qt) throws C1304Qu {
        C1304Qu c1304Qu;
        String strA07 = A07(220, 7, 7);
        HttpURLConnection httpURLConnection = null;
        HT htA05 = null;
        boolean z = false;
        try {
            try {
                this.A02 = false;
                HttpURLConnection httpURLConnectionA08 = A08(abstractC1303Qt.A05(), C1134Ke.A04() ? A09() : null);
                A0H(httpURLConnectionA08, abstractC1303Qt);
                A0G(httpURLConnectionA08, abstractC1303Qt);
                if (this.A06.A8x()) {
                    this.A06.A9c(httpURLConnectionA08, abstractC1303Qt.A06());
                }
                httpURLConnectionA08.connect();
                this.A02 = true;
                Set<String> setA01 = this.A03.A01();
                Set<String> setA02 = this.A03.A02();
                boolean z2 = (setA01 == null || setA01.isEmpty()) ? false : true;
                if (setA02 != null && !setA02.isEmpty()) {
                    z = true;
                }
                if ((httpURLConnectionA08 instanceof HttpsURLConnection) && (z2 || z)) {
                    try {
                        C1308Qy.A03((HttpsURLConnection) httpURLConnectionA08, setA01, setA02);
                    } catch (CertificateException e2) {
                        this.A00.A9g(strA07, C08417x.A1y, new C08427y(e2));
                    } catch (Exception e3) {
                        this.A00.A9g(strA07, C08417x.A1x, new C08427y(e3));
                    }
                }
                if (httpURLConnectionA08.getDoOutput() && abstractC1303Qt.A06() != null) {
                    A00(httpURLConnectionA08, abstractC1303Qt.A06());
                }
                HT htA06 = httpURLConnectionA08.getDoInput() ? A06(httpURLConnectionA08) : new HT(httpURLConnectionA08, null);
                if (this.A06.A8x()) {
                    this.A06.A9d(htA06);
                }
                if (httpURLConnectionA08 != null) {
                    httpURLConnectionA08.disconnect();
                }
                return htA06;
            } catch (Exception e4) {
                try {
                    try {
                        htA05 = A05(null);
                    } catch (Throwable unused) {
                        if (htA05 == null || htA05.A7v() <= 0) {
                            throw new C1304Qu(e4, htA05);
                        }
                        if (this.A06.A8x()) {
                            this.A06.A9d(htA05);
                        }
                        if (0 != 0) {
                            httpURLConnection.disconnect();
                        }
                        return htA05;
                    }
                } catch (Exception unused2) {
                    Log.e(getClass().getSimpleName(), A07(117, 13, 53), e4);
                    if (htA05 != null && htA05.A7v() > 0) {
                        if (this.A06.A8x()) {
                            InterfaceC1307Qx interfaceC1307Qx = this.A06;
                            String[] strArr = A08;
                            if (strArr[0].charAt(28) == strArr[2].charAt(28)) {
                                throw new RuntimeException();
                            }
                            String[] strArr2 = A08;
                            strArr2[0] = "IlkFDbfWlXmKaUvETbHYmdNk6OEHYi1H";
                            strArr2[2] = "BN3YcSqfdOqAJI6hng3gZMbRThXyngdJ";
                            interfaceC1307Qx.A9d(htA05);
                        }
                        if (0 != 0) {
                            httpURLConnection.disconnect();
                        }
                        return htA05;
                    }
                    c1304Qu = new C1304Qu(e4, htA05);
                }
                if (htA05 == null || htA05.A7v() <= 0) {
                    c1304Qu = new C1304Qu(e4, htA05);
                    throw c1304Qu;
                }
                if (this.A06.A8x()) {
                    this.A06.A9d(htA05);
                }
                if (0 != 0) {
                    httpURLConnection.disconnect();
                }
                return htA05;
            }
        } catch (Throwable th) {
            if (this.A06.A8x()) {
                this.A06.A9d(htA05);
            }
            if (0 != 0) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    private final InterfaceC1290Qg A02(AbstractC1303Qt abstractC1303Qt) {
        if (this.A03.A04()) {
            A0C(abstractC1303Qt);
        }
        InterfaceC1290Qg interfaceC1290QgA01 = null;
        try {
            interfaceC1290QgA01 = A01(abstractC1303Qt);
            return interfaceC1290QgA01;
        } catch (C1304Qu e2) {
            this.A05.ABK(e2);
            return interfaceC1290QgA01;
        } catch (Exception e3) {
            this.A05.ABK(new C1304Qu(e3, interfaceC1290QgA01));
            return interfaceC1290QgA01;
        }
    }

    private final InterfaceC1290Qg A03(String str, C1305Qv c1305Qv, C1299Qp c1299Qp) {
        return A02(new C1059He(str, c1305Qv, c1299Qp));
    }

    private final InterfaceC1290Qg A04(String str, String str2, byte[] bArr, C1299Qp c1299Qp) {
        return A02(new HW(str, null, str2, bArr, c1299Qp));
    }

    private final HT A05(HttpURLConnection httpURLConnection) throws Exception {
        InputStream errorStream = null;
        try {
            errorStream = httpURLConnection.getErrorStream();
            HT ht = new HT(httpURLConnection, errorStream != null ? this.A05.AEG(errorStream) : null);
            if (errorStream != null) {
                try {
                    errorStream.close();
                } catch (Exception unused) {
                }
            }
            return ht;
        } catch (Throwable th) {
            if (A08[5].length() != 28) {
                throw new RuntimeException();
            }
            A08[4] = "eS";
            if (errorStream != null) {
                try {
                    errorStream.close();
                } catch (Exception unused2) {
                }
            }
            throw th;
        }
    }

    private final HT A06(HttpURLConnection httpURLConnection) throws Exception {
        InputStream inputStreamADf = null;
        try {
            inputStreamADf = this.A05.ADf(httpURLConnection);
            HT ht = new HT(httpURLConnection, inputStreamADf != null ? this.A05.AEG(inputStreamADf) : null);
            if (inputStreamADf != null) {
                try {
                    inputStreamADf.close();
                } catch (Exception unused) {
                }
            }
            return ht;
        } catch (Throwable th) {
            if (inputStreamADf != null) {
                try {
                    inputStreamADf.close();
                } catch (Exception unused2) {
                }
            }
            throw th;
        }
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 93);
        }
        return new String(bArrCopyOfRange);
    }

    private final HttpURLConnection A08(String str, Proxy proxy) throws IOException {
        try {
            new URL(str);
            TrafficStats.setThreadStatsTag(61453);
            return this.A05.ADe(str, proxy);
        } catch (MalformedURLException e2) {
            throw new IllegalArgumentException(str + A07(18, 19, 115), e2);
        }
    }

    public static Proxy A09() {
        Proxy proxy = Proxy.NO_PROXY;
        String property = System.getProperty(A07(PsExtractor.AUDIO_STREAM, 14, 45));
        String property2 = System.getProperty(A07(206, 14, 74));
        int i = -1;
        if (property2 != null) {
            try {
                i = Integer.parseInt(property2);
            } catch (NumberFormatException unused) {
                return proxy;
            }
        }
        boolean zIsEmpty = TextUtils.isEmpty(property);
        String[] strArr = A08;
        if (strArr[0].charAt(28) == strArr[2].charAt(28)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A08;
        strArr2[3] = "UW2PAxLqNCWQ7bdKo0A7Pw4nSyNkIv";
        strArr2[6] = "26yRDH09B";
        return (zIsEmpty || i <= 0 || i > 65535) ? proxy : new Proxy(Proxy.Type.HTTP, new InetSocketAddress(property, i));
    }

    public static void A0A() {
        A07 = new byte[]{Ascii.DLE, Ascii.DC2, 55, 58, 95, 55, 53, 74, 71, Ascii.SO, 74, 72, Ascii.SI, 76, 90, 93, 67, Ascii.SI, Ascii.SO, 71, 93, Ascii.SO, 64, 65, 90, Ascii.SO, 79, Ascii.SO, 88, 79, 66, 71, 74, Ascii.SO, 123, 124, 98, Ascii.SO, 65, 72, Ascii.SO, 94, 102, 106, 9, Ascii.RS, 106, 119, 106, Ascii.FS, Ascii.DLE, 98, 100, Ascii.DLE, Ascii.CR, Ascii.DLE, 55, 59, 111, 105, 98, 114, 117, 124, 59, 81, 17, 59, 50, 63, 46, 45, 59, 58, 94, 42, 55, 51, 59, 94, 67, 94, 1, 35, 50, 50, 47, 40, 33, 102, 50, 46, 35, 102, 46, 50, 50, 54, 102, 52, 35, 53, 54, 41, 40, 53, 35, 102, 50, 47, 43, 35, 34, 102, 41, 51, 50, 38, Ascii.CR, Ascii.FS, Ascii.US, 7, Ascii.SUB, 3, 72, Ascii.CR, Ascii.SUB, Ascii.SUB, 7, Ascii.SUB, 34, 35, 49, 90, 79, 122, 107, 107, 119, 114, 120, 122, 111, 114, 116, 117, 52, 99, 54, 108, 108, 108, 54, 125, 116, 105, 118, 54, 110, 105, 119, 126, 117, 120, 116, Ascii.DEL, 126, Ascii.DEL, 32, 120, 115, 122, 105, 104, 126, 111, 38, 78, 79, 93, 54, 35, 47, 57, 62, 32, 108, 97, 39, 108, 97, 37, Ascii.CAN, 4, 4, 0, 94, 0, 2, Ascii.US, 8, 9, 56, Ascii.US, 3, 4, Ascii.DEL, 99, 99, 103, 57, 103, 101, 120, 111, 110, 71, 120, 101, 99, 52, 63, 46, 45, 53, 40, 49};
    }

    public static synchronized void A0B() {
        if (CookieHandler.getDefault() == null) {
            CookieHandler.setDefault(new CookieManager());
        }
    }

    private void A0C(AbstractC1303Qt abstractC1303Qt) {
        StringBuilder sb = new StringBuilder(A07(182, 10, 17));
        boolean zEquals = abstractC1303Qt.A03().equals(EnumC1302Qs.A06);
        String strA07 = A07(41, 1, 33);
        if (zEquals && abstractC1303Qt.A06() != null) {
            sb.append(A07(7, 5, 55));
            sb.append(new String(abstractC1303Qt.A06(), Charset.forName(A07(130, 5, 42))));
            sb.append(strA07);
        }
        Map<String, String> mapA06 = abstractC1303Qt.A02().A06();
        String[] strArr = A08;
        if (strArr[1].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A08;
        strArr2[3] = "s0c02ga9sXqOOqZgqzjFkG4II3gfLx";
        strArr2[6] = "iECV1gT3x";
        for (Map.Entry<String, String> entry : mapA06.entrySet()) {
            sb.append(A07(2, 5, 74));
            sb.append(entry.getKey());
            sb.append(A07(66, 1, 118));
            sb.append(entry.getValue());
            sb.append(strA07);
        }
        sb.append(A07(0, 2, 109));
        sb.append(abstractC1303Qt.A05());
        sb.append(strA07);
        String string = sb.toString();
        A0E(string, 1, (string.length() / 4000) + 1);
    }

    private void A0D(AbstractC1303Qt abstractC1303Qt, InterfaceC1292Qi interfaceC1292Qi) {
        this.A04.A5y(this, interfaceC1292Qi, this.A01).A04(abstractC1303Qt);
        if (this.A03.A04()) {
            A0C(abstractC1303Qt);
        }
    }

    private void A0E(String str, int i, int i2) {
        String str2 = A09 + A07(12, 6, 114) + i + A07(65, 1, 35) + i2;
        if (str.length() > 4000) {
            str.substring(0, 4000);
            A0E(str.substring(4000), i + 1, i2);
        }
    }

    private void A0F(String str, String str2, byte[] bArr, InterfaceC1292Qi interfaceC1292Qi, C1299Qp c1299Qp) {
        A0D(new HW(str, null, str2, bArr, c1299Qp), interfaceC1292Qi);
    }

    private void A0G(HttpURLConnection httpURLConnection, AbstractC1303Qt abstractC1303Qt) {
        Map<String, String> mapA06 = abstractC1303Qt.A02().A06();
        InterfaceC1289Qf interfaceC1289QfA05 = abstractC1303Qt.A02().A05();
        for (String str : mapA06.keySet()) {
            httpURLConnection.setRequestProperty(str, mapA06.get(str));
        }
        if (interfaceC1289QfA05 != null) {
            Map<String, String> mapA5k = interfaceC1289QfA05.A5k(this.A03.A03());
            for (String str2 : mapA5k.keySet()) {
                httpURLConnection.setRequestProperty(str2, mapA5k.get(str2));
            }
        }
    }

    private final void A0H(HttpURLConnection httpURLConnection, AbstractC1303Qt abstractC1303Qt) throws IOException {
        C1299Qp c1299QpA02 = abstractC1303Qt.A02();
        httpURLConnection.setConnectTimeout(c1299QpA02.A00());
        httpURLConnection.setReadTimeout(c1299QpA02.A02());
        this.A05.ADw(httpURLConnection, abstractC1303Qt.A03(), abstractC1303Qt.A04());
    }

    private final boolean A0I(Throwable th, long j, AbstractC1303Qt abstractC1303Qt) {
        C1299Qp c1299QpA02 = abstractC1303Qt.A02();
        long jCurrentTimeMillis = (System.currentTimeMillis() - j) + 10;
        if (this.A06.A8x()) {
            String str = A07(67, 15, 35) + jCurrentTimeMillis + A07(42, 7, 23) + c1299QpA02.A00() + A07(49, 7, 109) + c1299QpA02.A02();
        }
        if (this.A02) {
            return jCurrentTimeMillis >= ((long) c1299QpA02.A02());
        }
        long jA00 = c1299QpA02.A00();
        if (A08[5].length() != 28) {
            throw new RuntimeException();
        }
        String[] strArr = A08;
        strArr[3] = "UT6xnSlzbr9JaeC9T1uoRQiwoDXC3Y";
        strArr[6] = "g5URFCrsk";
        return jCurrentTimeMillis >= jA00;
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x017b, code lost:
    
        r7 = r29.A00;
        r10 = java.lang.System.currentTimeMillis() - r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0186, code lost:
    
        if (r30.A04 != null) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0188, code lost:
    
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x018a, code lost:
    
        r7.A9X(r1, r10, 0, r3, 0, new java.util.concurrent.TimeoutException(A07(82, 35, 27)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01a3, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01a4, code lost:
    
        r3 = r30.A04.length;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0135  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.facebook.ads.redexgen.X.InterfaceC1290Qg A0J(com.facebook.ads.redexgen.X.AbstractC1303Qt r30) throws com.facebook.ads.redexgen.X.C1304Qu {
        /*
            Method dump skipped, instruction units count: 425
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.HR.A0J(com.facebook.ads.redexgen.X.Qt):com.facebook.ads.redexgen.X.Qg");
    }

    public final C1296Qm A0K() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1291Qh
    @Deprecated
    public final InterfaceC1290Qg ADo(String str, Map<String, String> map) {
        return A03(str, new C1305Qv(map), this.A03.A00());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1291Qh
    @Deprecated
    public final InterfaceC1290Qg ADp(String str, byte[] bArr) {
        return A04(str, A07(135, 47, 70), bArr, this.A03.A00());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1291Qh
    public final void ADq(String str, byte[] bArr, InterfaceC1292Qi interfaceC1292Qi) {
        A0F(str, A07(135, 47, 70), bArr, interfaceC1292Qi, this.A03.A00());
    }
}

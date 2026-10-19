package com.json.adqualitysdk.sdk.i;

import android.view.KeyEvent;
import android.view.ViewConfiguration;
import com.json.b4;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class it {
    private static char[] a = {'\'', 'Y', 'l', 'd', 'd', 'n', 'j', 'o', 16, 'I', 'l', 'i', 'i', 'f', 'k', 'j', 'C', 'H', 'o', 'q', 's', 'J', 'I', 'k', 'k', 's', 'm', 'l', 's', 'W', '-', '2', '[', 'r', 'p', 'p', 16, '-', 'W', 's', 'l', 'm', 's', 'k', 'k', 'I', 'J', 'l', 'f', 'C', 'C', 'j', 'k', 'f', 'i', 'i', 'l', 'I', 'I', 'p', 'p', 'r', '[', '9', 'q', 'j', 'V', 'O', '4', 'j', 'o', 'n', 'Y', ']', 'r', 'u', 'p', 'm', 'u', 'T', b4.R, ']', 'l', 'm', 131, 258, 263, 262, '\'', 'O', 'R', 'S', '{', 268, 289, 292, 287, 284, 292, 259, 243, 281, 295, 285, 29, 'O', 'k', 's', 'q', 'm', 'i', 'e', 'm', 'q', 'o', 'q', 'Q', 'O', 'q', 't', 'q', 'W', '0', 'D', 'h', 'g', 'l', 'u', 'o', 'o', '[', '\\', 'w', 'p', 'L', 'T', 214};
    private static int[] b = {1276704255, -1070602246, 2072788455, -62931457, -134015027, -964391508, -1138080371, 1700168133, -1806576349, 788109758, -1440853565, -1530066118, -1182121077, 1113791672, 1570582166, -1527269831, -747067976, 1711480232};
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5799d = 1;

    private static String a(JSONObject jSONObject) {
        String string = jSONObject.toString();
        String strM943 = jr.m943(string);
        String strSubstring = string.substring(0, string.lastIndexOf(125));
        StringBuilder sb = new StringBuilder();
        sb.append(strSubstring);
        sb.append(b(new int[]{214356225, -392723757, -1239923098, 1534148383}, 7 - KeyEvent.keyCodeFromString("")).intern());
        sb.append(strM943);
        sb.append(g(false, new int[]{135, 2, 135, 0}, "\u0001\u0001").intern());
        String string2 = sb.toString();
        int i = c + 99;
        f5799d = i % 128;
        int i2 = i % 2;
        return string2;
    }

    private static String b(int[] iArr, int i) {
        String str;
        synchronized (b.f33) {
            char[] cArr = new char[4];
            char[] cArr2 = new char[iArr.length << 1];
            int[] iArr2 = (int[]) b.clone();
            b.f34 = 0;
            while (true) {
                int i2 = b.f34;
                if (i2 < iArr.length) {
                    cArr[0] = (char) (iArr[i2] >> 16);
                    cArr[1] = (char) iArr[i2];
                    cArr[2] = (char) (iArr[i2 + 1] >> 16);
                    cArr[3] = (char) iArr[i2 + 1];
                    b.f31 = (cArr[0] << 16) + cArr[1];
                    b.f32 = (cArr[2] << 16) + cArr[3];
                    b.m390(iArr2);
                    for (int i3 = 0; i3 < 16; i3++) {
                        int i4 = b.f31 ^ iArr2[i3];
                        b.f31 = i4;
                        b.f32 = b.m391(i4) ^ b.f32;
                        int i5 = b.f31;
                        b.f31 = b.f32;
                        b.f32 = i5;
                    }
                    int i6 = b.f31;
                    b.f31 = b.f32;
                    b.f32 = i6;
                    b.f32 = i6 ^ iArr2[16];
                    b.f31 ^= iArr2[17];
                    int i7 = b.f32;
                    int i8 = b.f31;
                    cArr[0] = (char) (i8 >>> 16);
                    cArr[1] = (char) i8;
                    int i9 = b.f32;
                    cArr[2] = (char) (i9 >>> 16);
                    cArr[3] = (char) i9;
                    b.m390(iArr2);
                    int i10 = b.f34;
                    cArr2[i10 << 1] = cArr[0];
                    cArr2[(i10 << 1) + 1] = cArr[1];
                    cArr2[(i10 << 1) + 2] = cArr[2];
                    cArr2[(i10 << 1) + 3] = cArr[3];
                    b.f34 = i10 + 2;
                } else {
                    str = new String(cArr2, 0, i);
                }
            }
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x001f A[Catch: all -> 0x002c, TRY_LEAVE, TryCatch #0 {all -> 0x002c, blocks: (B:15:0x001f, B:10:0x0018), top: B:19:0x0018 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void c(java.io.Closeable r3) {
        /*
            int r0 = com.json.adqualitysdk.sdk.i.it.f5799d
            int r0 = r0 + 75
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.it.c = r1
            int r0 = r0 % 2
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L10
            r0 = 1
            goto L11
        L10:
            r0 = 0
        L11:
            if (r0 == r2) goto L16
            if (r3 == 0) goto L22
            goto L1f
        L16:
            r0 = 23
            int r0 = r0 / r1
            if (r3 == 0) goto L1c
            goto L1d
        L1c:
            r1 = 1
        L1d:
            if (r1 == r2) goto L22
        L1f:
            r3.close()     // Catch: java.lang.Throwable -> L2c
        L22:
            int r3 = com.json.adqualitysdk.sdk.i.it.c
            int r3 = r3 + 15
            int r0 = r3 % 128
            com.json.adqualitysdk.sdk.i.it.f5799d = r0
            int r3 = r3 % 2
        L2c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.it.c(java.io.Closeable):void");
    }

    private static boolean d(String str) {
        int i = c + 47;
        f5799d = i % 128;
        int i2 = i % 2;
        if ((str.length() > 256 ? (char) 11 : (char) 26) != 26) {
            return true;
        }
        int i3 = f5799d + 85;
        c = i3 % 128;
        if (!(i3 % 2 != 0)) {
            return false;
        }
        int i4 = 82 / 0;
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004d A[PHI: r0
      0x004d: PHI (r0v7 byte[]) = (r0v6 byte[]), (r0v13 byte[]) binds: [B:11:0x004b, B:8:0x002f] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static byte[] e(java.net.HttpURLConnection r5, org.json.JSONObject r6) throws java.lang.Throwable {
        /*
            int r0 = com.json.adqualitysdk.sdk.i.it.c
            int r0 = r0 + 97
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.it.f5799d = r1
            int r0 = r0 % 2
            java.lang.String r1 = "\u0000\u0001\u0000\u0001\u0001"
            r2 = 0
            r3 = 1
            r4 = 4
            if (r0 != 0) goto L32
            java.lang.String r6 = a(r6)
            int[] r0 = new int[r4]
            r0 = {x008c: FILL_ARRAY_DATA , data: [63, 5, 29, 0} // fill-array
            java.lang.String r0 = g(r3, r0, r1)
            java.lang.String r0 = r0.intern()
            byte[] r0 = r6.getBytes(r0)
            boolean r6 = d(r6)
            if (r6 == 0) goto L2e
            r6 = 0
            goto L2f
        L2e:
            r6 = 1
        L2f:
            if (r6 == r3) goto L72
            goto L4d
        L32:
            java.lang.String r6 = a(r6)
            int[] r0 = new int[r4]
            r0 = {x0098: FILL_ARRAY_DATA , data: [63, 5, 29, 0} // fill-array
            java.lang.String r0 = g(r2, r0, r1)
            java.lang.String r0 = r0.intern()
            byte[] r0 = r6.getBytes(r0)
            boolean r6 = d(r6)
            if (r6 == 0) goto L72
        L4d:
            int[] r6 = new int[r4]
            r6 = {x00a4: FILL_ARRAY_DATA , data: [68, 16, 4, 4} // fill-array
            java.lang.String r1 = "\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0000"
            java.lang.String r6 = g(r2, r6, r1)
            java.lang.String r6 = r6.intern()
            int[] r1 = new int[r4]
            r1 = {x00b0: FILL_ARRAY_DATA , data: [84, 4, 150, 0} // fill-array
            java.lang.String r2 = "\u0000\u0001\u0001\u0001"
            java.lang.String r1 = g(r3, r1, r2)
            java.lang.String r1 = r1.intern()
            r5.setRequestProperty(r6, r1)
            byte[] r0 = i(r0)
        L72:
            int r5 = com.json.adqualitysdk.sdk.i.it.f5799d
            int r5 = r5 + 45
            int r6 = r5 % 128
            com.json.adqualitysdk.sdk.i.it.c = r6
            int r5 = r5 % 2
            r6 = 30
            if (r5 == 0) goto L83
            r5 = 63
            goto L85
        L83:
            r5 = 30
        L85:
            if (r5 != r6) goto L88
            return r0
        L88:
            r5 = 0
            throw r5     // Catch: java.lang.Throwable -> L8a
        L8a:
            r5 = move-exception
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.it.e(java.net.HttpURLConnection, org.json.JSONObject):byte[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0055 A[Catch: all -> 0x0077, TryCatch #1 {all -> 0x0077, blocks: (B:5:0x0012, B:7:0x0020, B:14:0x0036, B:27:0x005a, B:26:0x0055, B:20:0x0049, B:28:0x005e), top: B:50:0x0012 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String f(java.net.HttpURLConnection r12) {
        /*
            Method dump skipped, instruction units count: 258
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.it.f(java.net.HttpURLConnection):java.lang.String");
    }

    private static String g(boolean z, int[] iArr, String str) throws UnsupportedEncodingException {
        String str2;
        Object bytes = str;
        if (str != null) {
            bytes = str.getBytes("ISO-8859-1");
        }
        byte[] bArr = (byte[]) bytes;
        synchronized (i.f67) {
            int i = iArr[0];
            int i2 = iArr[1];
            int i3 = iArr[2];
            int i4 = iArr[3];
            char[] cArr = new char[i2];
            System.arraycopy(a, i, cArr, 0, i2);
            if (bArr != null) {
                char[] cArr2 = new char[i2];
                i.f68 = 0;
                char c2 = 0;
                while (true) {
                    int i5 = i.f68;
                    if (i5 >= i2) {
                        break;
                    }
                    if (bArr[i5] == 1) {
                        cArr2[i5] = (char) (((cArr[i5] << 1) + 1) - c2);
                    } else {
                        cArr2[i5] = (char) ((cArr[i5] << 1) - c2);
                    }
                    c2 = cArr2[i5];
                    i.f68 = i5 + 1;
                }
                cArr = cArr2;
            }
            if (i4 > 0) {
                char[] cArr3 = new char[i2];
                System.arraycopy(cArr, 0, cArr3, 0, i2);
                int i6 = i2 - i4;
                System.arraycopy(cArr3, 0, cArr, i6, i4);
                System.arraycopy(cArr3, i4, cArr, 0, i6);
            }
            if (z) {
                char[] cArr4 = new char[i2];
                i.f68 = 0;
                while (true) {
                    int i7 = i.f68;
                    if (i7 >= i2) {
                        break;
                    }
                    cArr4[i7] = cArr[(i2 - i7) - 1];
                    i.f68 = i7 + 1;
                }
                cArr = cArr4;
            }
            if (i3 > 0) {
                i.f68 = 0;
                while (true) {
                    int i8 = i.f68;
                    if (i8 >= i2) {
                        break;
                    }
                    cArr[i8] = (char) (cArr[i8] - iArr[2]);
                    i.f68 = i8 + 1;
                }
            }
            str2 = new String(cArr);
        }
        return str2;
    }

    private static HttpURLConnection h(String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod(b(new int[]{-1511865965, -1170860200}, (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 2).intern());
        int i = f5799d + 115;
        c = i % 128;
        int i2 = i % 2;
        return httpURLConnection;
    }

    private static byte[] i(byte[] bArr) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        GZIPOutputStream gZIPOutputStream;
        GZIPOutputStream gZIPOutputStream2 = null;
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.flush();
            gZIPOutputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            int i = f5799d + 23;
            c = i % 128;
            if ((i % 2 != 0 ? (char) 22 : (char) 27) != 22) {
                return byteArray;
            }
            int i2 = 65 / 0;
            return byteArray;
        } catch (Exception e3) {
            e = e3;
            gZIPOutputStream2 = gZIPOutputStream;
            throw new RuntimeException(e);
        } catch (Throwable th2) {
            th = th2;
            gZIPOutputStream2 = gZIPOutputStream;
            if (gZIPOutputStream2 != null) {
                try {
                    gZIPOutputStream2.close();
                } catch (Exception unused) {
                }
            }
            throw th;
        }
    }

    private static void j(HttpURLConnection httpURLConnection, byte[] bArr) throws IOException {
        httpURLConnection.connect();
        DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
        dataOutputStream.write(bArr);
        dataOutputStream.flush();
        c(dataOutputStream);
        int i = f5799d + 117;
        c = i % 128;
        if (i % 2 == 0) {
        } else {
            throw null;
        }
    }

    private static HttpURLConnection k(String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod(g(true, new int[]{88, 4, 0, 2}, "\u0001\u0001\u0000\u0001").intern());
        httpURLConnection.setRequestProperty(g(false, new int[]{92, 12, 179, 0}, "\u0000\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001").intern(), g(false, new int[]{104, 31, 3, 1}, "\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0001").intern());
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setReadTimeout(60000);
        int i = c + 107;
        f5799d = i % 128;
        if ((i % 2 == 0 ? '-' : '4') != '-') {
            return httpURLConnection;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static String m855(ip ipVar) {
        if (ipVar == null) {
            int i = f5799d + 109;
            c = i % 128;
            int i2 = i % 2;
            return null;
        }
        String strM844 = ipVar.m844();
        int i3 = c + 59;
        f5799d = i3 % 128;
        int i4 = i3 % 2;
        return strM844;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static ip m856(JSONObject jSONObject, String str) {
        try {
            HttpURLConnection httpURLConnectionK = k(str);
            byte[] bArrE = e(httpURLConnectionK, jSONObject);
            long jM952 = jt.m952();
            j(httpURLConnectionK, bArrE);
            String strF = f(httpURLConnectionK);
            int responseCode = httpURLConnectionK.getResponseCode();
            String responseMessage = httpURLConnectionK.getResponseMessage();
            if (!(responseCode < 400)) {
                int i = c + 19;
                f5799d = i % 128;
                if (!(i % 2 != 0)) {
                    httpURLConnectionK.disconnect();
                    int i2 = 68 / 0;
                } else {
                    httpURLConnectionK.disconnect();
                }
            }
            ip ipVar = new ip(strF, responseCode, responseMessage, jt.m952() - jM952);
            int i3 = f5799d + 107;
            c = i3 % 128;
            int i4 = i3 % 2;
            return ipVar;
        } catch (Throwable th) {
            String strIntern = g(false, new int[]{0, 8, 0, 0}, "\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001").intern();
            StringBuilder sb = new StringBuilder();
            sb.append(g(false, new int[]{8, 28, 0, 23}, "\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0000\u0000\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0001").intern());
            sb.append(th.getLocalizedMessage());
            m.m1032(strIntern, sb.toString(), th);
            return null;
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static ip m857(String str) {
        try {
            HttpURLConnection httpURLConnectionH = h(str);
            long jM952 = jt.m952();
            String strF = f(httpURLConnectionH);
            int responseCode = httpURLConnectionH.getResponseCode();
            String responseMessage = httpURLConnectionH.getResponseMessage();
            if ((responseCode >= 400 ? ',' : (char) 17) != 17) {
                int i = c + 59;
                f5799d = i % 128;
                int i2 = i % 2;
                httpURLConnectionH.disconnect();
            }
            ip ipVar = new ip(strF, responseCode, responseMessage, jt.m952() - jM952);
            int i3 = c + 3;
            f5799d = i3 % 128;
            int i4 = i3 % 2;
            return ipVar;
        } catch (Throwable th) {
            String strIntern = g(false, new int[]{0, 8, 0, 0}, "\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001").intern();
            StringBuilder sb = new StringBuilder();
            sb.append(g(true, new int[]{36, 27, 0, 0}, "\u0000\u0000\u0000\u0001\u0000\u0000\u0000\u0000\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001").intern());
            sb.append(th.getLocalizedMessage());
            m.m1032(strIntern, sb.toString(), th);
            return null;
        }
    }
}

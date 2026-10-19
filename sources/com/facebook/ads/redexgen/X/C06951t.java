package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.AssetManager;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.dynamicloading.DynamicLoader;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import dalvik.system.InMemoryDexClassLoader;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.1t, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C06951t {
    public static byte[] A00;
    public static final AtomicBoolean A01;

    static {
        A07();
        A01 = new AtomicBoolean();
    }

    public static ByteArrayOutputStream A00(AssetManager assetManager, String str) throws IOException {
        InputStream inputStreamOpen = assetManager.open(str);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i = inputStreamOpen.read(bArr);
            if (i <= 0) {
                inputStreamOpen.close();
                byteArrayOutputStream.flush();
                byteArrayOutputStream.close();
                return byteArrayOutputStream;
            }
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 36);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A02(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return null;
        }
        int i = Build.VERSION.SDK_INT;
        String strA01 = A01(714, 19, 91);
        if (i < 30) {
            return packageManager.getInstallerPackageName(strA01);
        }
        try {
            return packageManager.getInstallSourceInfo(strA01).getInstallingPackageName();
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static String A03(PackageInfo packageInfo) {
        String strA01 = A01(0, 0, 103);
        if (packageInfo == null) {
            return strA01;
        }
        try {
            Signature[] signatureArr = packageInfo.signatures;
            return signatureArr.length == 0 ? strA01 : A04(signatureArr[0].toByteArray());
        } catch (NoSuchAlgorithmException unused) {
            return strA01;
        }
    }

    public static String A04(byte[] bArr) throws NoSuchAlgorithmException {
        return Base64.encodeToString(MessageDigest.getInstance(A01(491, 6, 11)).digest(bArr), 2);
    }

    public static PublicKey A05(String str) throws Exception {
        return KeyFactory.getInstance(A01(488, 3, 3)).generatePublic(new X509EncodedKeySpec(Base64.decode(str.replaceAll(A01(552, 2, 119), A01(0, 0, 103)), 0)));
    }

    public static JSONObject A06(String str) {
        if (str == null) {
            return null;
        }
        try {
            return new JSONObject(str);
        } catch (JSONException unused) {
            return null;
        }
    }

    public static void A07() {
        A00 = new byte[]{69, Ascii.CAN, 2, Ascii.FF, 5, 124, 103, 38, 32, 124, 5, 99, Ascii.DC2, 120, 7, Ascii.RS, 57, 10, Ascii.RS, 61, 37, Ascii.DLE, 33, Ascii.EM, 42, 5, 125, 38, 123, 50, 57, Ascii.GS, 35, 5, 37, 59, 5, 123, Ascii.US, Ascii.DEL, 10, 5, 38, Ascii.DEL, Ascii.EM, 103, 43, Ascii.CR, 117, Ascii.DEL, 104, 116, 113, 121, 72, 111, 119, 96, 109, 104, 101, 33, 98, 100, 115, 117, 59, 33, Ascii.DC2, 53, 45, 58, 55, 50, 63, 123, 40, 50, 60, 53, 52, 48, 48, 59, 48, 19, 56, 55, 59, Ascii.RS, Ascii.DC2, 8, 17, Ascii.DC2, Ascii.DLE, 62, 64, Ascii.SO, 73, 59, 56, 40, 60, 63, 56, 56, 54, 58, 56, 40, 65, 56, 52, 48, 48, 59, 58, Ascii.RS, 50, 58, 56, 40, 60, 56, 10, 33, 19, 72, 35, 64, 49, 61, 54, 3, Ascii.CR, 10, 43, Ascii.DLE, Ascii.DC4, 33, 55, 43, 63, 17, 115, 63, 50, Ascii.GS, Ascii.ESC, 76, 78, 9, 33, 50, Ascii.VT, 76, 55, Ascii.ETB, 42, 49, 3, Ascii.VT, 44, 45, 19, 0, Ascii.DC4, 63, Ascii.ESC, 72, 55, 47, Ascii.DC4, Ascii.CR, Ascii.ESC, Ascii.GS, Ascii.FS, 60, Ascii.DC4, 76, 55, Ascii.SYN, 43, 72, Ascii.SYN, 17, 9, 40, 32, 51, Ascii.DC2, 73, 41, 50, 53, Ascii.SI, 17, 8, 56, 1, Ascii.FS, Ascii.FS, Ascii.FS, 86, Ascii.ESC, 82, 10, 58, Ascii.SYN, 115, 79, 19, 55, 17, 56, 56, 47, 1, 86, 56, 43, 41, 65, 40, Ascii.DC4, Ascii.GS, Ascii.GS, Ascii.ESC, 9, 46, Ascii.US, 51, 56, Ascii.SUB, Ascii.DC4, 60, 47, 40, 64, 19, 64, 62, Ascii.NAK, Ascii.DLE, 76, Ascii.ETB, Ascii.GS, 62, Ascii.CR, 59, 40, 35, 55, 76, 51, 35, 82, 79, Ascii.US, 59, 54, 65, Ascii.DLE, 8, 52, Ascii.DC2, 40, Ascii.SUB, 43, 73, Ascii.DC4, 1, 75, 53, 115, 33, 77, Ascii.SYN, 51, 45, 53, Ascii.CAN, 10, 43, 74, 42, Ascii.NAK, 46, Ascii.SI, 73, Ascii.CAN, 44, 63, 72, 52, Ascii.DC4, 61, Ascii.ESC, Ascii.SYN, 41, Ascii.ESC, 17, 48, 64, 74, 43, 86, Ascii.DC2, 59, 42, 10, 62, Ascii.DC2, 44, 19, 47, 52, 75, 32, Ascii.ESC, Ascii.US, 77, 47, 52, Ascii.FF, Ascii.GS, 53, Ascii.CR, 51, Ascii.FF, 78, 60, 86, 32, Ascii.SI, 1, 19, 76, 47, 115, Ascii.SUB, Ascii.VT, 73, 46, Ascii.VT, 65, Ascii.US, Ascii.DC2, Ascii.FF, Ascii.FF, 43, Ascii.CR, Ascii.NAK, Ascii.FF, Ascii.CAN, 43, 86, 40, 79, Ascii.RS, 8, Ascii.FS, Ascii.DLE, 55, 10, Ascii.ETB, Ascii.VT, 58, 48, 60, 77, 77, 33, 33, 82, 61, 75, 78, 64, 9, 43, 33, 17, 58, 33, 72, Ascii.VT, Ascii.RS, 54, 48, Ascii.SYN, 56, Ascii.DC4, 9, 35, 0, Ascii.CAN, 3, Ascii.RS, 55, 61, Ascii.SI, Ascii.SUB, 43, 115, 19, 73, 45, Ascii.CR, Ascii.SUB, Ascii.FS, Ascii.DC4, 79, 41, 61, 17, 40, Ascii.DLE, 78, 45, 32, 1, 65, 35, 44, Ascii.DC2, 77, 73, 76, 82, Ascii.US, 8, 61, 48, 17, 60, 3, 51, 10, 64, 53, 43, 73, 44, 44, Ascii.VT, 64, Ascii.SUB, Ascii.RS, Ascii.DC4, Ascii.DLE, 8, 74, 56, Ascii.DC2, 45, 53, 78, Ascii.FS, Ascii.DC2, Ascii.FS, Ascii.SI, 44, 50, 41, 35, 61, 55, Ascii.GS, 115, 64, 40, 48, 61, 56, 40, 56, 59, 115, 80, 115, 123, 63, 94, 79, 86, 37, 63, 117, 116, 102, 124, 103, 110, Ascii.GS, Ascii.SUB, Ascii.EM, 63, 36, 45, 94, 89, 90, Ascii.ESC, 5, Ascii.CAN, 4, 62, 63, 45, 69, 126, 99, 101, 96, 96, Ascii.DEL, 98, 100, 117, 116, 48, 121, 126, 99, 100, 113, 124, 124, 117, 98, 71, 124, 97, 103, 98, 98, 125, 96, 102, 119, 118, 50, 100, 119, 96, 97, 123, 125, 124, Ascii.SYN, 100, Ascii.SI, 32, 89, 72, 47, 61, 61, 43, 58, 61, 17, 97, 47, 59, 42, 39, 43, 32, 45, 43, 17, 32, 43, 58, 57, 33, 60, 37, 96, 42, 43, 54, 96, 42, 47, 58, Ascii.SO, 1, 124, 112, 114, 49, 126, 113, 123, 109, 112, 118, 123, 49, 105, 122, 113, 123, 118, 113, 120, Ascii.SO, 2, 0, 67, Ascii.VT, Ascii.FF, Ascii.SO, 8, Ascii.SI, 2, 2, 6, 67, Ascii.FF, 9, Ascii.RS, 67, 4, 3, Ascii.EM, 8, Ascii.US, 3, Ascii.FF, 1, 67, 9, Ascii.DC4, 3, Ascii.FF, 0, 4, Ascii.SO, 1, 2, Ascii.FF, 9, 4, 3, 10, 67, 41, Ascii.DC4, 3, Ascii.FF, 0, 4, Ascii.SO, 33, 2, Ascii.FF, 9, 8, Ascii.US, 36, 0, Ascii.GS, 1, 112, 124, 126, 61, 117, 114, 112, 118, 113, 124, 124, 120, 61, 114, 119, 96, 61, 122, 125, 103, 118, 97, 125, 114, Ascii.DEL, 61, 96, 118, 103, 103, 122, 125, 116, 96, 61, 82, 119, 64, 119, 120, 69, 118, 97, 96, 122, 124, 125, Ascii.FS, Ascii.DLE, Ascii.DC2, 81, Ascii.EM, Ascii.RS, Ascii.FS, Ascii.SUB, Ascii.GS, Ascii.DLE, Ascii.DLE, Ascii.DC4, 81, Ascii.DC4, Ascii.RS, Ascii.VT, Ascii.RS, 17, Ascii.RS, 73, 78, 65, 114, 89, 72, 94, 89, Ascii.SYN, Ascii.RS, 6, 6, Ascii.SUB, 45, 43, 88, 80, 79, 64, 88, 87, 77, 17, 1, 1, Ascii.SI, Ascii.CR, 51, 57, 58, 39, 38, 44, 35, 57, 74, 64, 80, 34, 40, 56, 43, 53, 48, 58, Ascii.SO, Ascii.VT, Ascii.VT, Ascii.CR, 8, 8, Ascii.SI, 89, 90, 84, 75, 83, 84, 1, 2, 1, Ascii.SUB, 112, 101, 112, 107, 51, 63, 69, 77, 90, Ascii.ESC, 7, 7, 90, 87, 79, 77, 84, 4, 77, 67, 116, 116, 100, 108, 99, Ascii.DC2, Ascii.DC2, 2, Ascii.NAK, 43, 43, 54, 110, 110, 118, 126, 69, 69, 66, 82, 83, 83, 81, 68, 104, 123, 108, 81, 83};
    }

    public static void A08(Y9 y9, C8F c8f) {
        String strA08;
        if ((!A01.getAndSet(true) || y9.A04().A8o()) && (strA08 = c8f.A08()) != null) {
            new Thread(new C1546a8(y9, strA08)).start();
        }
    }

    /* JADX WARN: Not initialized variable reg: 5, insn: 0x034f: INVOKE 
      (r5 I:com.facebook.ads.redexgen.X.Y9)
      (r3 I:org.json.JSONObject)
      (r1 I:java.lang.String)
      (r0 I:int)
      (r4 I:org.json.JSONObject)
     STATIC call: com.facebook.ads.redexgen.X.1t.A0A(com.facebook.ads.redexgen.X.Y9, org.json.JSONObject, java.lang.String, int, org.json.JSONObject):void A[MD:(com.facebook.ads.redexgen.X.Y9, org.json.JSONObject, java.lang.String, int, org.json.JSONObject):void (m)], block:B:87:0x0349 */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x035a: INVOKE 
      (r5 I:com.facebook.ads.redexgen.X.Y9)
      (r3 I:org.json.JSONObject)
      (r1 I:java.lang.String)
      (r0 I:int)
      (r4 I:org.json.JSONObject)
     STATIC call: com.facebook.ads.redexgen.X.1t.A0A(com.facebook.ads.redexgen.X.Y9, org.json.JSONObject, java.lang.String, int, org.json.JSONObject):void A[MD:(com.facebook.ads.redexgen.X.Y9, org.json.JSONObject, java.lang.String, int, org.json.JSONObject):void (m)], block:B:89:0x0354 */
    public static void A09(Y9 y9, String str) {
        Y9 y9A0A;
        Y9 y9A0A2;
        String strA01 = A01(752, 3, 26);
        JSONObject jSONObjectA06 = A06(str);
        if (jSONObjectA06 == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            int iOptInt = jSONObjectA06.optInt(A01(791, 4, 72), -1);
            int iOptInt2 = jSONObjectA06.optInt(A01(795, 4, 57), -1);
            String strOptString = jSONObjectA06.optString(A01(554, 2, 28), A01(556, 32, 106));
            boolean z = jSONObjectA06.optBoolean(A01(801, 3, 14), true) && !y9.A04().A8o();
            boolean zOptBoolean = jSONObjectA06.optBoolean(A01(741, 3, 86), true);
            boolean zOptBoolean2 = jSONObjectA06.optBoolean(A01(842, 2, 3), true);
            boolean zOptBoolean3 = jSONObjectA06.optBoolean(A01(757, 3, 76), false);
            boolean zOptBoolean4 = jSONObjectA06.optBoolean(A01(785, 3, 17), false);
            boolean zOptBoolean5 = jSONObjectA06.optBoolean(A01(764, 4, 110), false);
            boolean zOptBoolean6 = jSONObjectA06.optBoolean(A01(760, 4, 123), false);
            boolean zOptBoolean7 = jSONObjectA06.optBoolean(A01(768, 3, 2), false);
            boolean zOptBoolean8 = jSONObjectA06.optBoolean(A01(771, 4, 106), false);
            boolean zOptBoolean9 = jSONObjectA06.optBoolean(A01(781, 4, 69), false);
            boolean zOptBoolean10 = jSONObjectA06.optBoolean(A01(778, 3, 70), false);
            boolean zOptBoolean11 = jSONObjectA06.optBoolean(A01(775, 3, 125), true);
            boolean zOptBoolean12 = jSONObjectA06.optBoolean(A01(788, 3, 3), true);
            int i = Build.VERSION.SDK_INT;
            String strA012 = A01(804, 3, 80);
            if (i < 26) {
                if (zOptBoolean4) {
                    jSONObject.put(strA012, false);
                    A0A(y9, jSONObject, A01(479, 9, 59) + Build.VERSION.SDK_INT, 1005, jSONObjectA06);
                    return;
                }
                return;
            }
            jSONObject.put(strA012, true);
            String strA013 = A01(714, 19, 91);
            if (!zOptBoolean3 && strA013.equals(y9.getPackageName())) {
                A0A(y9, jSONObject, A01(808, 7, 0), 1008, jSONObjectA06);
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            PackageManager packageManager = y9.getPackageManager();
            if (packageManager == null) {
                return;
            }
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(strA013, 64);
                jSONObject.put(strA01, true);
                String str2 = packageInfo != null ? packageInfo.versionName : null;
                if (zOptBoolean7) {
                    jSONObject.put(A01(755, 2, 83), str2);
                }
                if (A0B(iOptInt, iOptInt2, str2)) {
                    if (zOptBoolean8) {
                        A0A(y9, jSONObject, A01(531, 19, 54), 1001, jSONObjectA06);
                        return;
                    }
                    return;
                }
                String strA02 = A02(y9);
                if (zOptBoolean9) {
                    jSONObject.put(A01(750, 2, 13), strA02);
                }
                if (z && !A01(590, 19, 59).equals(strA02)) {
                    if (zOptBoolean10) {
                        A0A(y9, jSONObject, A01(510, 21, 52) + strA02, 1002, jSONObjectA06);
                        return;
                    }
                    return;
                }
                if (zOptBoolean12) {
                    jSONObject.put(A01(824, 3, 123), System.currentTimeMillis() - jCurrentTimeMillis);
                }
                String strA03 = A03(packageInfo);
                if (!A01(5, 44, 108).equals(strA03)) {
                    if (zOptBoolean11) {
                        A0A(y9, jSONObject, A01(54, 14, 37) + strA03, 1003, jSONObjectA06);
                        return;
                    }
                    return;
                }
                if (zOptBoolean12) {
                    jSONObject.put(A01(831, 4, 21), System.currentTimeMillis() - jCurrentTimeMillis);
                }
                Context contextCreatePackageContext = y9.createPackageContext(strA013, 3);
                ByteArrayOutputStream byteArrayOutputStreamA00 = A00(contextCreatePackageContext.getAssets(), strOptString);
                ByteBuffer byteBufferWrap = ByteBuffer.wrap(byteArrayOutputStreamA00.toByteArray());
                if (zOptBoolean12) {
                    jSONObject.put(A01(827, 4, 62), System.currentTimeMillis() - jCurrentTimeMillis);
                }
                if (!A0C(contextCreatePackageContext, byteArrayOutputStreamA00, strOptString)) {
                    A0A(y9, jSONObject, A01(68, 12, 127), 1006, jSONObjectA06);
                    return;
                }
                if (zOptBoolean12) {
                    jSONObject.put(A01(820, 4, 66), System.currentTimeMillis() - jCurrentTimeMillis);
                }
                InMemoryDexClassLoader inMemoryDexClassLoader = new InMemoryDexClassLoader(byteBufferWrap, DynamicLoaderFactory.class.getClassLoader());
                jSONObject.put(A01(744, 2, 70), true);
                if (zOptBoolean) {
                    jSONObject.put(A01(588, 2, 73), inMemoryDexClassLoader.loadClass(A01(609, 58, 73)).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]) instanceof DynamicLoader);
                    if (zOptBoolean12) {
                        jSONObject.put(A01(815, 5, 36), System.currentTimeMillis() - jCurrentTimeMillis);
                    }
                }
                if (zOptBoolean2) {
                    jSONObject.put(A01(839, 3, 58), (String) inMemoryDexClassLoader.loadClass(A01(667, 47, 55)).getField(A01(49, 5, 25)).get(null));
                    if (zOptBoolean12) {
                        jSONObject.put(A01(835, 4, 3), System.currentTimeMillis() - jCurrentTimeMillis);
                    }
                }
                A0A(y9, jSONObject, null, -1, jSONObjectA06);
            } catch (PackageManager.NameNotFoundException e2) {
                if (zOptBoolean5) {
                    jSONObject.put(strA01, false);
                    A0A(y9, jSONObject, zOptBoolean6 ? e2.toString() : null, 1000, jSONObjectA06);
                }
            }
        } catch (FileNotFoundException e3) {
            A0A(y9A0A2, jSONObject, e3.toString(), 1004, jSONObjectA06);
        } catch (Throwable th) {
            A0A(y9A0A, jSONObject, th.toString(), 1007, jSONObjectA06);
        }
    }

    public static void A0A(Y9 y9, JSONObject jSONObject, String str, int i, JSONObject jSONObject2) {
        String strA01 = A01(733, 8, 9);
        try {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(A01(807, 1, 12), jSONObject);
            jSONObject3.put(A01(748, 2, 25), str);
            jSONObject3.put(A01(746, 2, 108), i);
            jSONObject3.put(A01(799, 2, 120), jSONObject2);
            C08427y c08427y = new C08427y(strA01);
            c08427y.A05(jSONObject3);
            c08427y.A03(1);
            y9.A07().A9N(strA01, 3700, c08427y);
        } catch (JSONException unused) {
        }
    }

    public static boolean A0B(int i, int i2, String str) {
        if ((i > 0 || i2 > 0) && !TextUtils.isEmpty(str)) {
            String[] strArrSplit = str.split(A01(550, 2, 110));
            if (strArrSplit.length > 0) {
                try {
                    int i3 = Integer.parseInt(strArrSplit[0]);
                    if (i2 > 0 && i3 > i2) {
                        return true;
                    }
                    if (i > 0 && i3 < i) {
                        return true;
                    }
                } catch (NumberFormatException unused) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean A0C(Context context, ByteArrayOutputStream byteArrayOutputStream, String str) throws Exception {
        PublicKey publicKeyA05 = A05(A01(80, 399, 93));
        java.security.Signature signature = java.security.Signature.getInstance(A01(497, 13, 72));
        signature.initVerify(publicKeyA05);
        signature.update(byteArrayOutputStream.toByteArray());
        return signature.verify(A00(context.getAssets(), str + A01(0, 5, 79)).toByteArray());
    }
}

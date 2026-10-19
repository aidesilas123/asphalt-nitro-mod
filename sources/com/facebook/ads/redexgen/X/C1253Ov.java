package com.facebook.ads.redexgen.X;

import android.util.Log;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import com.applovin.exoplayer2.common.base.Ascii;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLConnection;
import java.util.Arrays;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ov, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1253Ov {
    public static byte[] A00;
    public static String[] A01 = {"qzld4Qy39Azn7KYrj1sXbPZPr2qv6GgB", "1yyYiWnNu", "Zg1voNH89a01plQdKkVOTIE3hJJ00If9", "AO", "oO", "LhD7lTYtuMCYkgD1PnemOg5ERT23PX0", "YB3LukNHUN2DaV56yaS9yy46zwl6QYin", "pfYbPlfLNAe5pcAyURRpn9lPUi7k7Z7a"};
    public static final String A02;

    static {
        A04();
        A02 = C1253Ov.class.getSimpleName();
    }

    public static WebResourceResponse A00(YA ya, C6Q c6q, WebResourceRequest webResourceRequest, C1251Ot c1251Ot, boolean z) {
        String string = webResourceRequest.getUrl().toString();
        if (c1251Ot.A06) {
            return null;
        }
        try {
            HashMap map = new HashMap();
            String strGuessContentTypeFromName = URLConnection.guessContentTypeFromName(string);
            if (c1251Ot.A02.contains(string)) {
                String str = A03(108, 21, 15) + string;
                File fileA0O = c6q.A0O(string);
                if (fileA0O != null) {
                    return (z && (string.equals(c1251Ot.A01) || string.equals(c1251Ot.A00))) ? A02(map, strGuessContentTypeFromName, new C1245On(ya.A01(), new FileInputStream(fileA0O), new SU(ya, string))) : A01(map, strGuessContentTypeFromName, fileA0O);
                }
                String str2 = A03(0, 25, 105) + string;
            }
            if (c1251Ot.A03.contains(string)) {
                String str3 = A03(129, 22, 69) + string;
                File fileA0P = c6q.A0P(string);
                if (fileA0P != null) {
                    return A01(map, strGuessContentTypeFromName, fileA0P);
                }
                String str4 = A03(25, 26, 23) + string;
            }
            if (c1251Ot.A04.contains(string)) {
                String str5 = A03(151, 22, 64) + string;
                return C1242Ok.A00(ya, webResourceRequest, webResourceRequest.getUrl(), strGuessContentTypeFromName, map);
            }
        } catch (IOException e2) {
            Log.e(A03(89, 17, 55), A03(54, 35, 36) + string, e2);
        }
        return null;
    }

    public static WebResourceResponse A01(HashMap<String, String> map, String str, File file) throws FileNotFoundException {
        return A02(map, str, new FileInputStream(file));
    }

    public static WebResourceResponse A02(HashMap<String, String> map, String str, InputStream inputStream) {
        return new WebResourceResponse(str, null, 200, A03(106, 2, 11), map, inputStream);
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 105);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        byte[] bArr = {Ascii.NAK, 51, 53, 58, 55, -14, 63, 59, 69, 69, -14, 56, 65, 68, -14, 56, 59, 62, 55, -14, 71, 68, 62, Ascii.FF, -14, -61, -31, -29, -24, -27, -96, -19, -23, -13, -13, -96, -26, -17, -14, -96, -23, -19, -31, -25, -27, -96, -11, -14, -20, -70, -96, 33, 37, 48, -46, -1, -1, -4, -1, -83, -4, -3, -14, -5, -10, -5, -12, -83, -16, -18, -16, -11, -14, -15, -83, -13, -10, -7, -14, -83, -13, -4, -1, -83, 2, -1, -7, -57, -83, -26, -30, -31, Ascii.NAK, 4, 9, 5, Ascii.SO, 3, 5, -18, 5, Ascii.DC4, Ascii.ETB, Ascii.SI, Ascii.DC2, Ascii.VT, -61, -65, -56, -22, -25, -37, -35, -21, -21, -31, -26, -33, -104, -34, -31, -28, -35, -104, -19, -22, -28, -78, -104, -2, 32, Ascii.GS, 17, 19, 33, 33, Ascii.ETB, Ascii.FS, Ascii.NAK, -50, Ascii.ETB, Ascii.ESC, Ascii.SI, Ascii.NAK, 19, -50, 35, 32, Ascii.SUB, -24, -50, -7, Ascii.ESC, Ascii.CAN, Ascii.FF, Ascii.SO, Ascii.FS, Ascii.FS, Ascii.DC2, Ascii.ETB, Ascii.DLE, -55, Ascii.US, Ascii.DC2, Ascii.CR, Ascii.SO, Ascii.CAN, -55, Ascii.RS, Ascii.ESC, Ascii.NAK, -29, -55, 73, 88, 81, -16, -5, -6, -9, -15};
        String[] strArr = A01;
        if (strArr[7].charAt(12) != strArr[2].charAt(12)) {
            throw new RuntimeException();
        }
        A01[1] = "7l6kM9ADseoG9RLfCJpKjz7J";
        A00 = bArr;
    }

    public static void A05(C7S c7s, String str, String str2) {
        C08427y c08427y = new C08427y(A03(51, 3, 116));
        c08427y.A03(1);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(A03(176, 2, 31), str);
            jSONObject.put(A03(178, 3, 28), str2);
            c08427y.A05(jSONObject);
        } catch (JSONException unused) {
        }
        c7s.A07().A9N(A03(173, 3, 124), C08417x.A12, c08427y);
    }
}

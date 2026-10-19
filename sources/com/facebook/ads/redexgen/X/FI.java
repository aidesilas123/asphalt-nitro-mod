package com.facebook.ads.redexgen.X;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import com.google.android.gms.drive.DriveFile;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class FI extends AbstractC1596aw {
    public static byte[] A03;
    public static String[] A04 = {"eZwrQOnpnpQE2xbRo0zNjy7tlobdqdqH", "SFt7WwZUn", "NjRPf9lXQVcUlHZaPZ2tHyzwDKEOZm5m", "vsw9aGbGyLBdbL44W3z8tEYPUFR7w9", "bZApvv", "GYK1wV", "jBSwIULngy0dc0IzE6SbgF9ev3BAFzHy", "9HFC3JFq8"};
    public static final String A05;
    public final Uri A00;
    public final C1R A01;
    public final Map<String, String> A02;

    static {
        A06();
        A05 = FI.class.getSimpleName();
    }

    public FI(YA ya, InterfaceC1086If interfaceC1086If, String str, Uri uri, Map<String, String> map, C06630n c06630n, boolean z, C1R c1r) {
        super(ya, interfaceC1086If, str, c06630n, z);
        this.A00 = uri;
        this.A02 = map;
        this.A01 = c1r;
    }

    private Intent A00(C06620l c06620l) {
        if (TextUtils.isEmpty(c06620l.A05())) {
            return null;
        }
        String strA03 = c06620l.A03();
        if (!L3.A04(((AbstractC06570g) this).A00, c06620l.A05()) && !A09(((AbstractC06570g) this).A00, strA03)) {
            return null;
        }
        if (!TextUtils.isEmpty(strA03) && (strA03.startsWith(A03(250, 4, 23)) || strA03.startsWith(A03(254, 10, 41)))) {
            return new Intent(A03(62, 26, 24), C1132Kc.A00(strA03));
        }
        PackageManager packageManager = ((AbstractC06570g) this).A00.getPackageManager();
        if (packageManager == null) {
            return null;
        }
        if (TextUtils.isEmpty(c06620l.A04()) && TextUtils.isEmpty(strA03)) {
            return packageManager.getLaunchIntentForPackage(c06620l.A05());
        }
        Intent intentA01 = A01(c06620l);
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intentA01, 65536);
        if (intentA01.getComponent() == null) {
            Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
            while (true) {
                boolean zHasNext = it.hasNext();
                String[] strArr = A04;
                if (strArr[5].length() == strArr[4].length()) {
                    String[] strArr2 = A04;
                    strArr2[7] = "mdy3DwQER";
                    strArr2[1] = "z4eGZXaiq";
                    if (!zHasNext) {
                        break;
                    }
                    ResolveInfo next = it.next();
                    if (next.activityInfo.packageName.equals(c06620l.A05())) {
                        intentA01.setComponent(new ComponentName(next.activityInfo.packageName, next.activityInfo.name));
                        break;
                    }
                } else {
                    throw new RuntimeException();
                }
            }
        }
        if (listQueryIntentActivities.isEmpty() || intentA01.getComponent() == null) {
            if (!A09(((AbstractC06570g) this).A00, strA03)) {
                return null;
            }
            String strA05 = c06620l.A05();
            String[] strArr3 = A04;
            if (strArr3[5].length() != strArr3[4].length()) {
                throw new RuntimeException();
            }
            A04[2] = "8xekkGfEbM0UNtDVsVek4v0mq2iI8UOu";
            intentA01.setPackage(strA05);
        }
        return intentA01;
    }

    private Intent A01(C06620l c06620l) {
        Intent intent = new Intent(A03(88, 26, 38));
        intent.addFlags(DriveFile.MODE_READ_ONLY);
        if (!TextUtils.isEmpty(c06620l.A05()) && !TextUtils.isEmpty(c06620l.A04())) {
            intent.setComponent(new ComponentName(c06620l.A05(), c06620l.A04()));
        }
        if (!TextUtils.isEmpty(c06620l.A03())) {
            intent.setData(C1132Kc.A00(c06620l.A03()));
        }
        return intent;
    }

    private final Uri A02() {
        String queryParameter = this.A00.getQueryParameter(A03(219, 9, 104));
        if (!TextUtils.isEmpty(queryParameter)) {
            return C1132Kc.A00(queryParameter);
        }
        return C1132Kc.A00(String.format(Locale.US, A03(126, 22, 117), this.A00.getQueryParameter(A03(211, 8, 63))));
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = (bArrCopyOfRange[i4] - i3) - 27;
            String[] strArr = A04;
            if (strArr[6].charAt(23) == strArr[0].charAt(23)) {
                throw new RuntimeException();
            }
            A04[3] = "uqLwDcTKX4SWJds2FMBMp5QNw2MnWtU";
            bArrCopyOfRange[i4] = (byte) i5;
        }
        return new String(bArrCopyOfRange);
    }

    private List<C06620l> A04() {
        String queryParameter = this.A00.getQueryParameter(A03(114, 12, 124));
        if (TextUtils.isEmpty(queryParameter) || A03(53, 2, 109).equals(queryParameter)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArrayOptJSONArray = new JSONObject(queryParameter).optJSONArray(A03(55, 7, 127));
            if (jSONArrayOptJSONArray != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    C06620l c06620lA00 = C06620l.A00(jSONArrayOptJSONArray.optJSONObject(i));
                    if (c06620lA00 != null) {
                        arrayList.add(c06620lA00);
                    }
                }
            }
        } catch (JSONException e2) {
            ((AbstractC06570g) this).A00.A07().A9M(A03(204, 7, 47), C08417x.A23, new C08427y(e2));
            Log.w(A05, A03(0, 26, 10), e2);
        }
        return arrayList;
    }

    private final List<Intent> A05() {
        List<C06620l> listA04 = A04();
        ArrayList arrayList = new ArrayList();
        if (listA04 != null) {
            Iterator<C06620l> it = listA04.iterator();
            while (it.hasNext()) {
                Intent intentA00 = A00(it.next());
                if (intentA00 != null) {
                    arrayList.add(intentA00);
                }
            }
        }
        return arrayList;
    }

    public static void A06() {
        A03 = new byte[]{106, -105, -105, -108, -105, 69, -107, -122, -105, -104, -114, -109, -116, 69, -122, -107, -107, -104, -114, -103, -118, -124, -119, -122, -103, -122, -124, -97, -89, -86, -93, -94, 94, -78, -83, 94, -83, -82, -93, -84, 94, -85, -97, -80, -87, -93, -78, 94, -77, -80, -86, 120, 94, -29, -27, -5, 8, -2, Ascii.FF, 9, 3, -2, -108, -95, -105, -91, -94, -100, -105, 97, -100, -95, -89, -104, -95, -89, 97, -108, -106, -89, -100, -94, -95, 97, 119, 124, 116, Ascii.DEL, -94, -81, -91, -77, -80, -86, -91, 111, -86, -81, -75, -90, -81, -75, 111, -94, -92, -75, -86, -80, -81, 111, -105, -118, -122, -104, -8, 7, 7, 10, 0, Ascii.VT, -4, -10, -5, -8, Ascii.VT, -8, -3, -15, 2, -5, -11, 4, -54, -65, -65, -12, -11, 4, -15, -7, -4, 3, -49, -7, -12, -51, -75, 3, -26, -25, -36, -27, -36, -37, -42, -37, -36, -36, -25, -29, -32, -27, -30, -108, -107, -118, -109, -118, -119, -124, -104, -103, -108, -105, -118, -124, -117, -122, -111, -111, -121, -122, -120, -112, -124, -102, -105, -111, -38, -37, -48, -39, -48, -49, -54, -34, -33, -38, -35, -48, -54, -32, -35, -41, -70, -85, -68, -67, -77, -72, -79, -51, -50, -55, -52, -65, -71, -61, -66, -10, -9, -14, -11, -24, -30, -8, -11, -17, -96, -95, -100, -97, -110, -116, -94, -97, -103, -116, -92, -110, -113, -116, -109, -114, -103, -103, -113, -114, -112, -104, -90, -105, -98, 108, -72, -87, -80, -76, -74, -77, -79, -76, -72, 126};
    }

    private boolean A07() {
        List<Intent> listA05 = A05();
        if (listA05 == null) {
            return false;
        }
        Iterator<Intent> it = listA05.iterator();
        while (it.hasNext()) {
            if (KN.A0B(((AbstractC06570g) this).A00, it.next())) {
                return true;
            }
        }
        return false;
    }

    private boolean A08() throws KL {
        KZ kz = new KZ();
        try {
            KZ.A0C(kz, ((AbstractC06570g) this).A00, A02(), ((AbstractC06570g) this).A02);
            return true;
        } catch (Exception unused) {
            String str = A03(26, 27, 35) + this.A00.toString();
            String queryParameter = this.A00.getQueryParameter(A03(228, 22, 18));
            if (queryParameter == null || queryParameter.length() <= 0) {
                return false;
            }
            KZ.A0C(kz, ((AbstractC06570g) this).A00, C1132Kc.A00(queryParameter), ((AbstractC06570g) this).A02);
            return false;
        }
    }

    public static boolean A09(YA ya, String str) {
        if (Build.VERSION.SDK_INT >= 30 && str != null) {
            boolean zA1f = IP.A1f(ya);
            if (A04[3].length() == 13) {
                throw new RuntimeException();
            }
            String[] strArr = A04;
            strArr[7] = "1LqNNd92i";
            strArr[1] = "QkgxMECyk";
            if (zA1f) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC06570g
    public final EnumC06560f A0A() {
        EnumC06560f enumC06560f = null;
        String strA03 = A03(148, 15, 92);
        boolean zA0F = A0F(this.A00);
        if (!zA0F) {
            zA0F = A07();
        }
        if (!zA0F) {
            try {
                strA03 = A08() ? A03(188, 16, 80) : A03(163, 25, 10);
            } catch (Exception unused) {
                enumC06560f = EnumC06560f.A02;
            }
        }
        this.A02.put(strA03, String.valueOf(true));
        return enumC06560f;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1596aw
    public final void A0D() {
        EnumC06560f enumC06560fA0A = null;
        if (((AbstractC1596aw) this).A02) {
            enumC06560fA0A = A0A();
        } else {
            this.A02.put(A03(188, 16, 80), String.valueOf(true));
        }
        Map<String, String> map = this.A02;
        if (A04[3].length() == 13) {
            throw new RuntimeException();
        }
        A04[2] = "sgzsFq3t5RzUzGxHOqvhuB7Tq08HlvIk";
        A0E(map, enumC06560fA0A);
        C1R.A06(this.A01, ((AbstractC06570g) this).A00);
    }
}

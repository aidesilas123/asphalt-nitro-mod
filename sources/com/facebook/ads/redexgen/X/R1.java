package com.facebook.ads.redexgen.X;

import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class R1 extends AsyncTask<String, Void, R2> {
    public static byte[] A05;
    public static String[] A06 = {"iMGBqiSHm2uYyOurEO", "JHkNge3qKUrOixxb", "Efd0ZU7p6XsOViiGEn9FTnCEMV0phXsZ", "Qqux8MYyckh5CceEy", "ksejtLtP", "6qwv67", "yXEFufBpuo", "JuPO8KFa"};
    public static final String A07;
    public static final Set<String> A08;
    public C7S A00;
    public InterfaceC1290Qg A01;
    public R0 A02;
    public Map<String, String> A03;
    public Map<String, String> A04;

    static {
        A04();
        A07 = R1.class.getSimpleName();
        HashSet hashSet = new HashSet();
        A08 = hashSet;
        hashSet.add(A01(0, 1, 73));
        hashSet.add(A01(29, 4, 24));
    }

    public R1(C7S c7s) {
        this(c7s, null, null);
    }

    public R1(C7S c7s, Map<String, String> map) {
        this(c7s, map, null);
    }

    public R1(C7S c7s, Map<String, String> map, Map<String, String> map2) {
        this.A00 = c7s;
        this.A03 = map != null ? new HashMap(map) : null;
        this.A04 = map2 != null ? new HashMap(map2) : null;
    }

    private final R2 A00(String... strArr) throws Throwable {
        if (K0.A02(this)) {
            return null;
        }
        try {
            String str = strArr[0];
            if (!TextUtils.isEmpty(str) && !A08.contains(str)) {
                String strA02 = A02(str);
                Map<String, String> map = this.A03;
                if (map != null && !map.isEmpty()) {
                    for (Map.Entry<String, String> entry : this.A03.entrySet()) {
                        strA02 = A03(strA02, entry.getKey(), entry.getValue());
                    }
                }
                int i = 1;
                while (true) {
                    int i2 = i + 1;
                    if (i > 2) {
                        return null;
                    }
                    if (A06(strA02)) {
                        return new R2(this.A01);
                    }
                    i = i2;
                }
            }
            return null;
        } catch (Throwable th) {
            K0.A00(th, this);
            return null;
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 90);
        }
        return new String(bArrCopyOfRange);
    }

    private String A02(String str) {
        try {
            return A03(str, A01(23, 6, 65), L0.A01(this.A00.A03().A5w()));
        } catch (Exception unused) {
            return str;
        }
    }

    private String A03(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            return str;
        }
        String strA01 = A01(3, 1, 92);
        if (str.contains(strA01)) {
            strA01 = A01(1, 1, 124);
        }
        return str + strA01 + str2 + A01(2, 1, 100) + URLEncoder.encode(str3);
    }

    public static void A04() {
        A05 = new byte[]{48, 0, 3, 57, 33, Ascii.SYN, Ascii.SYN, Ascii.VT, Ascii.SYN, 68, Ascii.VT, Ascii.DC4, 1, 10, Ascii.CR, 10, 3, 68, 17, Ascii.SYN, 8, 94, 68, 122, 117, 122, 119, 116, 124, 44, 55, 46, 46};
    }

    private final void A05(R2 r2) throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            R0 r0 = this.A02;
            if (r0 != null) {
                r0.AE2(r2);
            }
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }

    private boolean A06(String str) {
        InterfaceC1290Qg interfaceC1290QgADo;
        InterfaceC1291Qh interfaceC1291QhA00 = C1309Qz.A00(this.A00);
        try {
            Map<String, String> map = this.A04;
            if (map == null || map.size() == 0) {
                interfaceC1290QgADo = interfaceC1291QhA00.ADo(str, new C1305Qv());
            } else {
                C1305Qv c1305Qv = new C1305Qv();
                c1305Qv.A05(this.A04);
                interfaceC1290QgADo = interfaceC1291QhA00.ADp(str, c1305Qv.A08());
            }
            this.A01 = interfaceC1290QgADo;
        } catch (Exception e2) {
            Log.e(A07, A01(4, 19, 62) + str, e2);
        }
        InterfaceC1290Qg interfaceC1290Qg = this.A01;
        String[] strArr = A06;
        if (strArr[4].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        A06[2] = "iiLT70HajwBiOF9fGWlLisdNhF1wiwwV";
        return interfaceC1290Qg != null && interfaceC1290Qg.A7v() == 200;
    }

    public final void A07(R0 r0) {
        this.A02 = r0;
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ R2 doInBackground(String[] strArr) throws Throwable {
        if (K0.A02(this)) {
            return null;
        }
        try {
            return A00(strArr);
        } catch (Throwable th) {
            K0.A00(th, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public final void onCancelled() {
        R0 r0 = this.A02;
        if (r0 != null) {
            r0.AE0();
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(R2 r2) throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            A05(r2);
        } catch (Throwable th) {
            if (A06[3].length() != 17) {
                throw new RuntimeException();
            }
            A06[2] = "KahWFkeddZk466vYoInqTxrEqXEaISmf";
            K0.A00(th, this);
        }
    }
}

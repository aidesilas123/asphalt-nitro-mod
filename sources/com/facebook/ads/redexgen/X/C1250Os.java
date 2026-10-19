package com.facebook.ads.redexgen.X;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.api.BuildConfigApi;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Os, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1250Os {
    public static byte[] A08;
    public WeakReference<C1239Oh> A00;
    public WeakReference<SV> A01 = new WeakReference<>(null);
    public boolean A02 = false;
    public final YA A03;
    public final OU A04;
    public final String A05;
    public final String A06;
    public final WeakReference<InterfaceC1086If> A07;

    static {
        A09();
    }

    public C1250Os(YA ya, C1239Oh c1239Oh, InterfaceC1086If interfaceC1086If, OU ou, String str, String str2) {
        this.A03 = ya;
        this.A00 = new WeakReference<>(c1239Oh);
        this.A07 = new WeakReference<>(interfaceC1086If);
        this.A04 = ou;
        this.A05 = str;
        this.A06 = str2;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 116);
        }
        return new String(bArrCopyOfRange);
    }

    public static Map<String, String> A03(JSONObject jSONObject) {
        Iterator<String> itKeys = jSONObject.keys();
        HashMap map = new HashMap();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            map.put(next, jSONObject.optString(next));
        }
        return map;
    }

    private void A04() {
        SV sv = this.A01.get();
        if (sv == null) {
            return;
        }
        sv.close();
    }

    private void A05() {
        SV sv = this.A01.get();
        if (sv == null) {
            return;
        }
        sv.A8N();
    }

    private void A06() {
        SV sv = this.A01.get();
        if (sv == null) {
            return;
        }
        sv.A96();
    }

    private void A07() {
        this.A03.A0E().A5A();
        this.A02 = true;
        SV sv = this.A01.get();
        if (sv == null) {
            return;
        }
        sv.AFn();
        if (IP.A1X(this.A03)) {
            this.A03.A0A().AB1();
        }
    }

    private void A08() {
        SV sv = this.A01.get();
        if (sv == null) {
            return;
        }
        sv.ABR();
    }

    public static void A09() {
        A08 = new byte[]{44, 56, 54, 54, 42, 55, 45, 10, Ascii.VT, Ascii.FF, 7, Ascii.ESC, Ascii.DC2, Ascii.SUB, 63, 78, 71, 58, -29, -14, -21, -21, -30, -23, -36, -32, -20, -31, -30, Ascii.FF, Ascii.ESC, Ascii.DC4, Ascii.DC4, Ascii.VT, Ascii.DC2, 5, 19, Ascii.VT, Ascii.EM, Ascii.EM, 7, Ascii.CR, Ascii.VT, -37, -22, -29, -29, -38, -31, -44, -23, -18, -27, -38, -23, -29, -9, 52, 53, 36, 46, 41, 90, 75, 95, 93, 79, 78, 44, 99, 63, 93, 79, 92, 57, 58, 39, 56, 58, 43, 42, 8, 63, Ascii.ESC, 57, 43, 56, 83, 84, 65, 84, 69, 48, 45, 39, 6, 32, 52, -10, -31, -20, -11, -27};
    }

    private void A0A(C1239Oh c1239Oh, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        SharedPreferences sharedPreferencesA00 = C1123Jt.A00(this.A03);
        String strA01 = A01(57, 5, 81);
        String strA012 = A01(0, 0, 21);
        String strOptString = jSONObject.optString(strA01, strA012);
        String string = sharedPreferencesA00.getString(A01(14, 4, 103) + jSONObject.optString(A01(54, 3, 10), A01(7, 7, 50)), strA012);
        if (string != null) {
            strA012 = string;
        }
        c1239Oh.A0g(strOptString, strA012);
    }

    private void A0B(C1239Oh c1239Oh, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        String strA01 = A01(98, 5, 12);
        String strA012 = A01(0, 0, 21);
        String strOptString = jSONObject.optString(strA01, strA012);
        String strOptString2 = jSONObject.optString(A01(57, 5, 81), strA012);
        C1123Jt.A00(this.A03).edit().putString(A01(14, 4, 103) + jSONObject.optString(A01(54, 3, 10), A01(7, 7, 50)), strOptString).apply();
        c1239Oh.A0f(strOptString2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0C(EnumC1248Oq enumC1248Oq, String str) throws JSONException {
        switch (C1247Op.A00[enumC1248Oq.ordinal()]) {
            case 1:
                A0I(new JSONObject(str));
                break;
            case 2:
                A06();
                break;
            case 3:
                A04();
                break;
            case 4:
                A07();
                break;
            case 5:
                A0K(new JSONObject(str));
                break;
            case 6:
                A0L(new JSONObject(str));
                break;
            case 7:
                if (BuildConfigApi.isDebug()) {
                }
                break;
            case 8:
                A05();
            case 9:
                this.A03.A0E().A5M(str);
                break;
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
                A0D(enumC1248Oq, str);
                break;
            case 15:
                A0J(new JSONObject(str));
                break;
            case 16:
                A08();
                break;
            case 17:
                A0M(new JSONObject(str));
                break;
        }
        C1239Oh c1239Oh = this.A00.get();
        if (c1239Oh == null) {
        }
        switch (enumC1248Oq) {
            case A06:
                c1239Oh.A0S();
                break;
            case A05:
                c1239Oh.A0R();
                break;
            case A0P:
                A0B(c1239Oh, str);
                break;
            case A0L:
                A0A(c1239Oh, str);
                break;
            case A0F:
                c1239Oh.A0i(A03(new JSONObject(str)));
                break;
        }
    }

    private void A0D(EnumC1248Oq enumC1248Oq, String str) throws JSONException {
        SV sv = this.A01.get();
        if (sv == null) {
        }
        switch (enumC1248Oq) {
            case A0C:
                sv.ABV();
                break;
            case A0N:
                sv.ACx();
                break;
            case A0K:
                A0G(sv, str);
                break;
            case A0J:
                A0F(sv, str);
                break;
            case A0G:
                A0E(sv, str);
                break;
        }
    }

    private void A0E(SV sv, String str) throws JSONException {
        sv.AC9(new JSONObject(str).optBoolean(A01(87, 5, 108), false));
    }

    private void A0F(SV sv, String str) throws JSONException {
        sv.ADS(new JSONObject(str).optBoolean(A01(62, 12, 118), false));
    }

    private void A0G(SV sv, String str) throws JSONException {
        sv.ADU(new JSONObject(str).optBoolean(A01(74, 13, 82), false));
    }

    private void A0I(JSONObject jSONObject) {
        SV sv = this.A01.get();
        if (sv == null) {
            return;
        }
        String strOptString = jSONObject.optString(A01(0, 7, 85));
        if (TextUtils.isEmpty(strOptString)) {
            sv.A8I();
        } else {
            sv.A8J(strOptString);
        }
    }

    private void A0J(JSONObject jSONObject) {
        if (this.A01.get() == null) {
            return;
        }
        jSONObject.optString(A01(0, 7, 85));
    }

    private void A0K(JSONObject jSONObject) {
        InterfaceC1086If interfaceC1086If = this.A07.get();
        if (interfaceC1086If == null) {
            return;
        }
        String strOptString = jSONObject.optString(A01(43, 11, 1));
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        new C1094In(this.A06, interfaceC1086If).A05(strOptString, A03(jSONObject));
    }

    private void A0L(JSONObject jSONObject) {
        int iOptInt = jSONObject.optInt(A01(18, 11, 9), -1);
        if (iOptInt == -1) {
            return;
        }
        String strOptString = jSONObject.optString(A01(29, 14, 50));
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        this.A03.A0E().A9K(iOptInt, strOptString);
    }

    private void A0M(JSONObject jSONObject) {
        String strOptString;
        SV sv = this.A01.get();
        if (sv == null || (strOptString = jSONObject.optString(A01(92, 6, 71))) == null) {
            return;
        }
        sv.ADh(strOptString);
    }

    public final void A0N(SV sv) {
        this.A01 = new WeakReference<>(sv);
    }

    public final boolean A0O() {
        return this.A02;
    }

    @JavascriptInterface
    public void postMessage(String str) {
        LP.A00(new RunnableC1246Oo(this, str));
    }
}

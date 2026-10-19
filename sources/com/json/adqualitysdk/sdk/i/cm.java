package com.json.adqualitysdk.sdk.i;

import android.app.Activity;
import android.content.Context;
import com.json.adqualitysdk.sdk.ISAdQualityAdType;
import com.json.adqualitysdk.sdk.IronSourceAdQuality;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class cm extends cx {
    private static char[] h = {'~', 270, 278, 287, 295, 290, 294, 298, 306, 290, 263, 259};
    private static int i = 0;
    private static int j = 1;

    final class a implements ii {
        private /* synthetic */ dn a;
        private /* synthetic */ dr b;
        private /* synthetic */ cj c;

        a(dn dnVar, dr drVar, cj cjVar) {
            this.a = dnVar;
            this.b = drVar;
            this.c = cjVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.ii
        /* JADX INFO: renamed from: ﻛ */
        public final JSONObject mo376(String str, JSONObject jSONObject) {
            return (JSONObject) this.a.m667(this.b, this.c, Arrays.asList(str, jSONObject)).m674();
        }
    }

    private static ie d() {
        int i2 = j + 51;
        i = i2 % 128;
        if (!(i2 % 2 != 0)) {
            return ja.m895().m896();
        }
        int i3 = 93 / 0;
        return ja.m895().m896();
    }

    private static String e(boolean z, int[] iArr, String str) throws UnsupportedEncodingException {
        String str2;
        Object bytes = str;
        if (str != null) {
            bytes = str.getBytes("ISO-8859-1");
        }
        byte[] bArr = (byte[]) bytes;
        synchronized (i.f67) {
            int i2 = iArr[0];
            int i3 = iArr[1];
            int i4 = iArr[2];
            int i5 = iArr[3];
            char[] cArr = new char[i3];
            System.arraycopy(h, i2, cArr, 0, i3);
            if (bArr != null) {
                char[] cArr2 = new char[i3];
                i.f68 = 0;
                char c = 0;
                while (true) {
                    int i6 = i.f68;
                    if (i6 >= i3) {
                        break;
                    }
                    if (bArr[i6] == 1) {
                        cArr2[i6] = (char) (((cArr[i6] << 1) + 1) - c);
                    } else {
                        cArr2[i6] = (char) ((cArr[i6] << 1) - c);
                    }
                    c = cArr2[i6];
                    i.f68 = i6 + 1;
                }
                cArr = cArr2;
            }
            if (i5 > 0) {
                char[] cArr3 = new char[i3];
                System.arraycopy(cArr, 0, cArr3, 0, i3);
                int i7 = i3 - i5;
                System.arraycopy(cArr3, 0, cArr, i7, i5);
                System.arraycopy(cArr3, i5, cArr, 0, i7);
            }
            if (z) {
                char[] cArr4 = new char[i3];
                i.f68 = 0;
                while (true) {
                    int i8 = i.f68;
                    if (i8 >= i3) {
                        break;
                    }
                    cArr4[i8] = cArr[(i3 - i8) - 1];
                    i.f68 = i8 + 1;
                }
                cArr = cArr4;
            }
            if (i4 > 0) {
                i.f68 = 0;
                while (true) {
                    int i9 = i.f68;
                    if (i9 >= i3) {
                        break;
                    }
                    cArr[i9] = (char) (cArr[i9] - iArr[2]);
                    i.f68 = i9 + 1;
                }
            }
            str2 = new String(cArr);
        }
        return str2;
    }

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public static boolean m492() {
        int i2 = j + 99;
        i = i2 % 128;
        if (!(i2 % 2 != 0)) {
            return ao.m303().mo317();
        }
        ao.m303().mo317();
        throw null;
    }

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public static boolean m493() {
        int i2 = j + 75;
        i = i2 % 128;
        int i3 = i2 % 2;
        boolean zMo325 = ao.m303().mo325();
        int i4 = j + 73;
        i = i4 % 128;
        int i5 = i4 % 2;
        return zMo325;
    }

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public static double m494() {
        int i2 = j + 57;
        i = i2 % 128;
        int i3 = i2 % 2;
        double dMo316 = ao.m303().mo316();
        int i4 = j + 15;
        i = i4 % 128;
        if ((i4 % 2 != 0 ? '-' : '&') != '-') {
            return dMo316;
        }
        int i5 = 96 / 0;
        return dMo316;
    }

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public static db m495() {
        db dbVar = new db();
        int i2 = i + 89;
        j = i2 % 128;
        if ((i2 % 2 == 0 ? (char) 0 : '\t') == '\t') {
            return dbVar;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public static String m496(cj cjVar) {
        int i2 = j + 1;
        i = i2 % 128;
        int i3 = i2 % 2;
        String strM437 = cjVar.m455().m437();
        int i4 = j + 59;
        i = i4 % 128;
        if ((i4 % 2 != 0 ? 'b' : 'D') == 'D') {
            return strM437;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public static dd m497() {
        dd ddVar = new dd();
        int i2 = j + 113;
        i = i2 % 128;
        int i3 = i2 % 2;
        return ddVar;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static JSONObject m498() {
        int i2 = i + 53;
        j = i2 % 128;
        int i3 = i2 % 2;
        JSONObject jSONObjectM332 = ao.m303().m332();
        int i4 = j + 89;
        i = i4 % 128;
        if (i4 % 2 == 0) {
            return jSONObjectM332;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static dc m499() {
        dc dcVar = new dc();
        int i2 = i + 117;
        j = i2 % 128;
        if (i2 % 2 != 0) {
            return dcVar;
        }
        int i3 = 13 / 0;
        return dcVar;
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static String m500(cj cjVar) {
        int i2 = i + 35;
        j = i2 % 128;
        int i3 = i2 % 2;
        String strM758 = cjVar.m452().m758();
        int i4 = i + 3;
        j = i4 % 128;
        if ((i4 % 2 == 0 ? '*' : 'c') == 'c') {
            return strM758;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static String m501() {
        int i2 = j + 117;
        i = i2 % 128;
        int i3 = i2 % 2;
        String sDKVersion = IronSourceAdQuality.getSDKVersion();
        int i4 = i + 119;
        j = i4 % 128;
        if ((i4 % 2 == 0 ? (char) 25 : (char) 18) == 18) {
            return sDKVersion;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static String m502(cj cjVar) {
        int i2 = j + 117;
        i = i2 % 128;
        boolean z = i2 % 2 != 0;
        String strM438 = cjVar.m455().m438();
        if (z) {
            int i3 = 41 / 0;
        }
        int i4 = i + 41;
        j = i4 % 128;
        int i5 = i4 % 2;
        return strM438;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static Activity m503() {
        int i2 = j + 39;
        i = i2 % 128;
        if (!(i2 % 2 == 0)) {
            jb.m899().mo902();
            throw null;
        }
        Activity activityMo902 = jb.m899().mo902();
        int i3 = j + 95;
        i = i3 % 128;
        if ((i3 % 2 != 0 ? 'I' : (char) 20) != 'I') {
            return activityMo902;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static Object m504(cj cjVar) {
        int i2 = j + 5;
        i = i2 % 128;
        int i3 = i2 % 2;
        Context contextM448 = cjVar.m448();
        int i4 = j + 87;
        i = i4 % 128;
        int i5 = i4 % 2;
        return contextM448;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static Object m505(cj cjVar, List<Object> list) {
        int i2 = i + 109;
        j = i2 % 128;
        int i3 = i2 % 2;
        cjVar.m453((String) cx.m592(list, 0, String.class), (JSONObject) cx.m592(list, 1, JSONObject.class));
        int i4 = i + 19;
        j = i4 % 128;
        int i5 = i4 % 2;
        return null;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static String m506(cj cjVar) {
        int i2 = i + 111;
        j = i2 % 128;
        int i3 = i2 % 2;
        String strM434 = cjVar.m455().m434();
        int i4 = j + 35;
        i = i4 % 128;
        int i5 = i4 % 2;
        return strM434;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static JSONObject m507() {
        int i2 = i + 83;
        j = i2 % 128;
        int i3 = i2 % 2;
        ie ieVarD = d();
        JSONObject jSONObjectM959 = ju.m959(ieVarD.m833(), ieVarD.m834(), ieVarD.m835(), ieVarD.m832());
        int i4 = i + 45;
        j = i4 % 128;
        if (i4 % 2 != 0) {
            return jSONObjectM959;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static df m508() {
        df dfVar = new df();
        int i2 = j + 25;
        i = i2 % 128;
        if (i2 % 2 != 0) {
            throw null;
        }
        return dfVar;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static Object m509(cj cjVar) {
        int i2 = j + 103;
        i = i2 % 128;
        char c = i2 % 2 != 0 ? 'F' : 'I';
        ci ciVarM455 = cjVar.m455();
        if (c != 'I') {
            int i3 = 61 / 0;
        }
        return ciVarM455;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static Object m510(List<Object> list) {
        int i2 = i + 13;
        j = i2 % 128;
        int i3 = i2 % 2;
        m.m1026(e(false, new int[]{0, 12, 188, 0}, "\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001").intern(), (String) cx.m592(list, 0, String.class));
        int i4 = i + 97;
        j = i4 % 128;
        int i5 = i4 % 2;
        return null;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static long m511() {
        int i2 = i + 105;
        j = i2 % 128;
        int i3 = i2 % 2;
        long jM948 = jt.m948();
        int i4 = j + 85;
        i = i4 % 128;
        if ((i4 % 2 != 0 ? 'V' : '`') == '`') {
            return jM948;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static String m512(cj cjVar) {
        int i2 = i + 51;
        j = i2 % 128;
        int i3 = i2 % 2;
        String strM435 = cjVar.m455().m435();
        int i4 = i + 93;
        j = i4 % 128;
        int i5 = i4 % 2;
        return strM435;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static long m513() {
        int i2 = j + 5;
        i = i2 % 128;
        if ((i2 % 2 != 0 ? 'O' : 'M') != 'M') {
            d().m835();
            throw null;
        }
        long jM835 = d().m835();
        int i3 = j + 3;
        i = i3 % 128;
        if ((i3 % 2 != 0 ? '<' : (char) 6) != '<') {
            return jM835;
        }
        int i4 = 21 / 0;
        return jM835;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m514(List<Object> list) {
        int i2 = i + 33;
        j = i2 % 128;
        int i3 = i2 % 2;
        String lowerCase = ISAdQualityAdType.fromInt(((Integer) cx.m592(list, 0, Integer.class)).intValue()).name().toLowerCase();
        int i4 = j + 13;
        i = i4 % 128;
        if ((i4 % 2 != 0 ? '[' : ')') == ')') {
            return lowerCase;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static JSONObject m515(cj cjVar) {
        int i2 = i + 79;
        j = i2 % 128;
        int i3 = i2 % 2;
        JSONObject jSONObjectM444 = cjVar.m444();
        int i4 = j + 79;
        i = i4 % 128;
        int i5 = i4 % 2;
        return jSONObjectM444;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final Object m516(List<Object> list) {
        String str = (String) cx.m592(list, 0, String.class);
        List<Object> listC = cx.c(list, 1);
        ax axVarM1034 = r.m1033().m1034();
        if (!(axVarM1034 == null)) {
            int i2 = j + 105;
            i = i2 % 128;
            int i3 = i2 % 2;
            axVarM1034.m374(str, listC);
        }
        int i4 = j + 109;
        i = i4 % 128;
        if (!(i4 % 2 != 0)) {
            return null;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Object m517(cj cjVar, List<Object> list, dr drVar) {
        int i2 = i + 27;
        j = i2 % 128;
        int i3 = i2 % 2;
        dn dnVar = (dn) cx.m592(list, 0, dn.class);
        if (dnVar != null) {
            cjVar.m449(new a(dnVar, drVar, cjVar));
        }
        int i4 = j + 53;
        i = i4 % 128;
        int i5 = i4 % 2;
        return null;
    }
}

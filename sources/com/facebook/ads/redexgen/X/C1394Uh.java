package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Uh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1394Uh implements InterfaceC1086If {
    public static InterfaceC1086If A03;
    public static byte[] A04;
    public static final String A05;
    public static volatile boolean A06;
    public final Y9 A00;
    public final InterfaceC08488e A01;
    public final InterfaceC1085Ie A02;

    static {
        A03();
        A05 = C1394Uh.class.getSimpleName();
        A06 = false;
    }

    public C1394Uh(Y9 y9) {
        InterfaceC1084Id interfaceC1084IdA01;
        this.A00 = y9;
        if (IR.A0T(y9)) {
            InterfaceC08488e interfaceC08488eA00 = C08468c.A00(y9);
            this.A01 = interfaceC08488eA00;
            interfaceC1084IdA01 = C1091Ik.A00(y9, interfaceC08488eA00);
        } else {
            C0965Dm c0965DmA01 = C08468c.A01(y9);
            interfaceC1084IdA01 = C1091Ik.A01(y9, c0965DmA01);
            this.A01 = c0965DmA01;
        }
        this.A02 = new C1397Uk(y9, interfaceC1084IdA01);
        ExecutorC1154La.A08.execute(new C1396Uj(this));
        A04(y9);
    }

    public static synchronized InterfaceC1086If A01(Y9 y9) {
        if (A03 == null) {
            A03 = new C1394Uh(y9);
        }
        return A03;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 79);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A04 = new byte[]{-90, -21, -4, -21, -12, -6, -76, -88, -37, -37, -52, -44, -41, -37, -48, -43, -50, -121, -37, -42, -121, -45, -42, -50, -121, -56, -43, -121, -48, -43, -35, -56, -45, -48, -53, -121, -43, -13, -30, -28, -26, -24, -26, -17, -26, -13, -22, -28, 46, 51, 42, Ascii.US};
    }

    public static synchronized void A04(Y9 y9) {
        if (A06) {
            return;
        }
        y9.A03().AAO();
        A06 = true;
    }

    private void A05(C1083Ic c1083Ic) {
        if (!c1083Ic.A0A()) {
            Log.e(A05, A02(7, 29, 24) + c1083Ic.A06() + A02(0, 7, 55));
        } else {
            A06(c1083Ic);
            this.A01.AGT(c1083Ic, new C1395Ui(this, c1083Ic));
        }
    }

    private void A06(C1083Ic c1083Ic) {
        switch (C1087Ig.A00[c1083Ic.A06().ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                C08427y c08427y = new C08427y(new Exception(A02(36, 5, 50)));
                c08427y.A03(1);
                try {
                    c08427y.A05(new JSONObject().put(A02(48, 4, 107), c1083Ic.A06().toString()));
                    break;
                } catch (JSONException unused) {
                }
                this.A00.A07().A9N(A02(41, 7, 50), C08417x.A1H, c08427y);
                break;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1086If
    public final void A9F(String str, Map<String, String> map) {
        A05(new C1082Ib().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(map).A01(EnumC1088Ih.A04).A02(EnumC1089Ii.A04).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1086If
    public final void A9H(String str, Map<String, String> map) {
        A05(new C1082Ib().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(map).A01(EnumC1088Ih.A04).A02(EnumC1089Ii.A06).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1086If
    public final void A9I(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C1082Ib().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(map).A01(EnumC1088Ih.A04).A02(EnumC1089Ii.A07).A06(C1096Ip.A0A(str, EnumC1093Im.A0I)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1086If
    public final void A9J(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C1082Ib().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(map).A01(EnumC1088Ih.A04).A02(EnumC1089Ii.A08).A06(C1096Ip.A0A(str, EnumC1093Im.A06)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1086If
    public final void A9L(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C1082Ib().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(map).A01(EnumC1088Ih.A04).A02(EnumC1089Ii.A0B).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1086If
    public final void A9P(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C1082Ib().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(map).A01(EnumC1088Ih.A04).A02(EnumC1089Ii.A0C).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1086If
    public final void A9S(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C1082Ib().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(map).A01(EnumC1088Ih.A05).A02(EnumC1089Ii.A0D).A06(C1096Ip.A0A(str, EnumC1093Im.A0T)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1086If
    public final void A9T(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C1082Ib().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(map).A01(EnumC1088Ih.A05).A02(EnumC1089Ii.A0E).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1086If
    public final void A9U(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C1082Ib().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(map).A01(EnumC1088Ih.A05).A02(EnumC1089Ii.A0F).A06(C1096Ip.A0A(str, EnumC1093Im.A0V)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1086If
    public final void A9V(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C1082Ib().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(map).A01(EnumC1088Ih.A05).A02(EnumC1089Ii.A0K).A06(C1096Ip.A0A(str, EnumC1093Im.A0W)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1086If
    public final void A9W(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C1082Ib().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(map).A01(EnumC1088Ih.A05).A02(EnumC1089Ii.A0H).A06(C1096Ip.A0A(str, EnumC1093Im.A0X)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1086If
    public final void A9Y(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C1082Ib().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(map).A01(EnumC1088Ih.A04).A02(EnumC1089Ii.A0J).A06(C1096Ip.A0A(str, EnumC1093Im.A0Y)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1086If
    public final void A9Z(String str, Map<String, String> map, String str2, EnumC1088Ih enumC1088Ih) {
        A05(new C1082Ib().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(map).A01(enumC1088Ih).A02(EnumC1089Ii.A00(str2)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1086If
    public final void A9a(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C1082Ib().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(map).A01(EnumC1088Ih.A04).A02(EnumC1089Ii.A0L).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1086If
    public final void A9e(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C1082Ib().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(map).A01(EnumC1088Ih.A05).A02(EnumC1089Ii.A0N).A06(C1096Ip.A0A(str, EnumC1093Im.A0a)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1086If
    public final void A9f(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C1082Ib().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(map).A01(EnumC1088Ih.A05).A02(EnumC1089Ii.A0O).A06(C1096Ip.A0A(str, EnumC1093Im.A0b)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1086If
    public final void A9h(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C1082Ib().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A01(EnumC1088Ih.A04).A02(EnumC1089Ii.A0P).A06(C1096Ip.A0A(str, EnumC1093Im.A0c)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1086If
    public final void A9i(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C1082Ib().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(map).A01(EnumC1088Ih.A04).A02(EnumC1089Ii.A0G).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1086If
    public final void A9m(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C1082Ib().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(map).A01(EnumC1088Ih.A05).A02(EnumC1089Ii.A0Q).A06(C1096Ip.A0A(str, EnumC1093Im.A0g)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1086If
    public final void A9n(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C1082Ib().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(map).A01(EnumC1088Ih.A04).A02(EnumC1089Ii.A0U).A06(C1096Ip.A0A(str, EnumC1093Im.A0i)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1086If
    public final void A9o(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C1082Ib().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(map).A01(EnumC1088Ih.A04).A02(EnumC1089Ii.A0T).A06(C1096Ip.A0A(str, EnumC1093Im.A0j)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1086If
    public final void A9p(String str, Map<String, String> map) {
        A05(new C1082Ib().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(map).A01(EnumC1088Ih.A05).A02(EnumC1089Ii.A0V).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1086If
    public final void A9r(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C1082Ib().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(map).A01(EnumC1088Ih.A05).A02(EnumC1089Ii.A0W).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1086If
    public final void ADr(String str) {
        new R1(this.A00).execute(str);
    }
}

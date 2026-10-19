package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class Y1 extends K8 {
    public static byte[] A05;
    public final /* synthetic */ int A00;
    public final /* synthetic */ C7S A01;
    public final /* synthetic */ InterfaceC08347q A02;
    public final /* synthetic */ C08427y A03;
    public final /* synthetic */ String A04;

    static {
        A02();
    }

    public Y1(C7S c7s, String str, int i, C08427y c08427y, InterfaceC08347q interfaceC08347q) {
        this.A01 = c7s;
        this.A04 = str;
        this.A00 = i;
        this.A03 = c08427y;
        this.A02 = interfaceC08347q;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 120);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A05 = new byte[]{-37, -3, Ascii.RS, Ascii.ESC, 46, 32, -39, Ascii.FS, 43, Ascii.SUB, 44, 33, -39, Ascii.ESC, Ascii.RS, Ascii.FS, Ascii.SUB, 46, 44, Ascii.RS, -39, 44, -2, 39, 47, 34, 43, 40, 39, 38, Ascii.RS, 39, 45, -3, Ascii.SUB, 45, Ascii.SUB, 9, 43, 40, 47, 34, Ascii.GS, Ascii.RS, 43, -39, 39, 40, 45, -39, 34, 39, 35, Ascii.RS, Ascii.FS, 45, Ascii.RS, Ascii.GS, -46, -24, -19, -22, -97, -24, -14, -97, -19, -12, -21, -21, -96, Ascii.RS, 33, 33, 38, 49, 38, 44, 43, Ascii.RS, 41, Ascii.FS, 38, 43, 35, 44, 45, 66, 45, 53, 56, 45, 46, 56, 49, 43, 48, 53, 63, 55, 43, 63, 60, 45, 47, 49, 62, 60, 62, 67, 64, 104, 91, 89, 101, 104, 90, 85, 90, 87, 106, 87, 88, 87, 105, 91, -18, -31, -19, -15, -31, -17, -16, -37, -27, -32, 44, 46, Ascii.ESC, 45, 50, 41, Ascii.RS, 49, 51, 32, 50, 55, 46, 35, Ascii.GS, 33, 45, 34, 35};
    }

    @Override // com.facebook.ads.redexgen.X.K8
    public final void A06() {
        Map<String, String> mapA4j;
        String strA78;
        try {
            if (C08357r.A0J(this.A01, this.A04, this.A00, this.A03)) {
                return;
            }
            C1097Iq.A08(this.A01, EnumC1089Ii.A0A.toString() + A00(0, 1, 41) + this.A04);
            Throwable cause = this.A03.getCause();
            String strA03 = cause != null ? LD.A03(this.A01, cause) : IR.A0R(this.A01) ? LD.A03(this.A01, this.A03) : A00(0, 0, 106) + this.A03.getMessage();
            if (IR.A0V(this.A01)) {
                mapA4j = this.A01.A03().A4j();
            } else {
                InterfaceC08347q interfaceC08347q = this.A02;
                if (interfaceC08347q != null) {
                    mapA4j = interfaceC08347q.A6p();
                } else if (C08357r.A02) {
                    C08357r.A0F(new RuntimeException(A00(1, 57, 65), this.A03));
                    mapA4j = new HashMap<>();
                } else {
                    mapA4j = this.A01.A03().A4j();
                }
            }
            mapA4j.put(A00(136, 7, 65), this.A04);
            mapA4j.put(A00(143, 12, 70), String.valueOf(this.A00));
            JSONObject jSONObjectA02 = this.A03.A02();
            if (jSONObjectA02 != null) {
                mapA4j.put(A00(71, 15, 69), jSONObjectA02.toString());
            }
            if ((A00(106, 5, 99).equals(this.A04) || A00(111, 15, 126).equals(this.A04)) && (strA78 = this.A01.A03().A78()) != null) {
                mapA4j.put(A00(86, 20, 84), strA78);
            }
            String strA0B = this.A01.A0B();
            if (strA0B != null && !TextUtils.isEmpty(strA0B)) {
                mapA4j.put(A00(126, 10, 4), strA0B);
            }
            InterfaceC08337p interfaceC08337p = (InterfaceC08337p) C08357r.A0A.get();
            if (interfaceC08337p != null) {
                interfaceC08337p.AGS(strA03, mapA4j, this.A01);
            } else {
                C08357r.A0F(new RuntimeException(A00(58, 13, 7)));
            }
        } catch (Throwable th) {
            C08357r.A0F(th);
        }
    }
}

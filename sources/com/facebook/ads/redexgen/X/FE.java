package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.util.Log;
import java.util.Arrays;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class FE extends TD {
    public static byte[] A02;
    public static String[] A03 = {"RkD1OJxt7Cm", "85G", "rOg3VWXB3SEY3xQpEJ0sm9sa", "k8A4i4hEDbRwTbJ7ZqirbVmRMdyhqYao", "w8o7PtZgo3USKQqv4zP9Jz4sqmraE2my", "KkDuTncCOt8", "W5AvxWS2W", "p0drNpcb1k1QxXuNf36gE6"};
    public final /* synthetic */ C1584ak A00;
    public final /* synthetic */ C1574aa A01;

    static {
        A01();
    }

    public FE(C1584ak c1584ak, C1574aa c1574aa) {
        this.A00 = c1584ak;
        this.A01 = c1574aa;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 74);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-113, -68, -68, -71, -68, 106, -81, -62, -81, -83, -65, -66, -77, -72, -79, 106, -85, -83, -66, -77, -71, -72, 2, -2, -3, 0};
    }

    @Override // com.facebook.ads.redexgen.X.NE
    public final void AAY() {
        this.A00.A0E = true;
        if (this.A00.A0F) {
            this.A00.A09();
        }
    }

    @Override // com.facebook.ads.redexgen.X.TD, com.facebook.ads.redexgen.X.NE
    public final void AAp(String str, Map<String, String> map) {
        this.A00.A03.A0E().A3f();
        Uri uriA00 = C1132Kc.A00(str);
        if (A00(22, 4, 82).equals(uriA00.getScheme()) && C06580h.A04(uriA00.getAuthority()) && this.A00.A00 != null) {
            this.A00.A00.AAi(this.A00);
        }
        AbstractC06570g abstractC06570gA00 = C06580h.A00(this.A00.A03, this.A00.A04, this.A01.A6N(), uriA00, map, this.A00.A02 == null ? null : this.A00.A02.A0x());
        if (abstractC06570gA00 != null) {
            try {
                this.A00.A03.A0E().A3c();
                abstractC06570gA00.A0C();
            } catch (Exception e2) {
                String str2 = C1584ak.A0I;
                String[] strArr = A03;
                if (strArr[0].length() != strArr[5].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A03;
                strArr2[1] = "yKt";
                strArr2[2] = "O3cmN93hsB9jwoMarcV7SE5e";
                Log.e(str2, A00(0, 22, 0), e2);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.TD, com.facebook.ads.redexgen.X.NE
    public final void ABZ() {
        this.A00.A03.A0E().A3g(this.A00.A01 != null);
        if (this.A00.A01 != null) {
            this.A00.A01.A02();
        }
    }

    @Override // com.facebook.ads.redexgen.X.TD, com.facebook.ads.redexgen.X.NE
    public final void ACH() {
        this.A00.A03.A0E().A3i();
        this.A00.A01.A07();
    }

    @Override // com.facebook.ads.redexgen.X.NE
    public final void ADZ() {
    }
}

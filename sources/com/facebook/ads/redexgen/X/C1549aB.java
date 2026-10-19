package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.aB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1549aB implements InterfaceC06720w {
    public static byte[] A02;
    public static String[] A03 = {"7FIKHU9lgq27", "AgQqvAltXhi1bYF8zppFCZ", "CRAmwsbXNtyv0vmCJJ9qOPCwxUiND3E6", "ItQqdqoRYHMWKQzbVRTeHzNwEAi", "W2szVhKnaW", "HNVKE5hkEvipBMdeuLWXlSQ07SgK2Jmi", "9NOG2BA2dnlUEqMWgY53wMXC47FXKBrl", "EneshuO9jiHnlHF2bjWwp7WA0EKVaMOF"};
    public final /* synthetic */ C1002Ex A00;
    public final /* synthetic */ Runnable A01;

    static {
        A01();
    }

    public C1549aB(C1002Ex c1002Ex, Runnable runnable) {
        this.A00 = c1002Ex;
        this.A01 = runnable;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] - i3) - 16);
            if (A03[2].charAt(4) == 'y') {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[5] = "2VG06oAYTcRzKBDE7gWFCU36hzL5px1b";
            strArr[7] = "j1xG2z3v9jq0UO66H2WqYNbpklLAu6IG";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{116, 118, 118, -95, 119, -97, -97, 116, -124, -93, -80, -80, -89, -76, 98, -85, -81, -78, -76, -89, -75, -75, -85, -79, -80, 98, -88, -85, -76, -89, -90, -118, -119, 93, 124, -119, -119, -128, -115, 103, -118, -126, -126, -124, -119, -126, 100, -120, -117, -115, -128, -114, -114, -124, -118, -119};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06720w
    public final void AAi(C1584ak c1584ak) {
        this.A00.A01.A0E().A3q();
        this.A00.A06.A0C();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06720w
    public final void AAj(C1584ak c1584ak, View view) {
        this.A00.A01.A0E().A3p(c1584ak == ((AbstractC1547a9) this.A00).A00);
        if (c1584ak != ((AbstractC1547a9) this.A00).A00) {
            return;
        }
        this.A00.A0E().removeCallbacks(this.A01);
        InterfaceC06640o interfaceC06640o = ((AbstractC1547a9) this.A00).A01;
        ((AbstractC1547a9) this.A00).A01 = c1584ak;
        this.A00.A00 = view;
        if (!this.A00.A0C) {
            this.A00.A06.A0F(c1584ak);
        } else {
            this.A00.A06.A0E(view);
            this.A00.A0M(interfaceC06640o);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06720w
    public final void AAk(C1584ak c1584ak) {
        JU.A05(A00(31, 25, 11), A00(8, 23, 50), A00(0, 8, 46));
        this.A00.A01.A0E().A3s();
        this.A00.A06.A0D();
        this.A00.A0K();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06720w
    public final void ABm(C1584ak c1584ak, JG jg) {
        this.A00.A01.A0E().A3r(c1584ak == ((AbstractC1547a9) this.A00).A00, jg.A03().getErrorCode());
        if (c1584ak != ((AbstractC1547a9) this.A00).A00) {
            return;
        }
        this.A00.A0E().removeCallbacks(this.A01);
        this.A00.A0M(c1584ak);
        this.A00.ABH(jg);
    }
}

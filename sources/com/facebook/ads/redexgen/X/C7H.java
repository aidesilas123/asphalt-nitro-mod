package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7H, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class C7H extends AbstractC1365Td {
    public static byte[] A0F;
    public static String[] A0G = {"hEO5MspmmQwWZDjfO9hYkGtE8t8ljCUN", "895GOd6GqHS2SDNwtQvAqIE", "zBXblOu1CdgXx49mdyV8flA", "GxqIbNjcrUQMSJiuMkyJv1mwkudVYaGP", "be3ZgXhlaup3yXbKLr41yKjcTusIQNjx", "HLi8FTj59ZkYUe8FmXrpO0CEflvtIm0o", "7bereGXxKpIS6kk2UNHV0kt11i4QSfeP", "LRvrjmvhZNKPrr4qRukG9JYrfPQqD7wd"};
    public static final int A0H;
    public static final int A0I;
    public static final int A0J;
    public static final int A0K;
    public static final int A0L;
    public int A00;
    public int A01;
    public LinearLayout A02;
    public AbstractC1566aS A03;
    public C6Q A04;
    public C2O A05;
    public C1213Nh A06;
    public S0 A07;
    public AbstractC1284Qa A08;
    public C1285Qb A09;
    public String A0A;
    public List<PC> A0B;
    public boolean A0C;
    public final YA A0D;
    public final LN A0E;

    static {
        A0B();
        A0H = (int) (C1148Ku.A02 * 48.0f);
        A0I = (int) (C1148Ku.A02 * 8.0f);
        A0J = (int) (C1148Ku.A02 * 8.0f);
        A0L = (int) (C1148Ku.A02 * 56.0f);
        A0K = (int) (C1148Ku.A02 * 12.0f);
    }

    public C7H(YA ya, InterfaceC1086If interfaceC1086If, C6Q c6q, InterfaceC1173Lt interfaceC1173Lt, C1003Ey c1003Ey) {
        super(ya, interfaceC1086If, interfaceC1173Lt, c1003Ey);
        this.A0E = new LN();
        this.A0C = false;
        super.A07 = true;
        super.A06 = new PU(ya, new TQ(), super.A0A.A0S(), interfaceC1173Lt);
        this.A04 = c6q;
        this.A0D = ya;
    }

    public C7H(YA ya, InterfaceC1086If interfaceC1086If, C6Q c6q, InterfaceC1173Lt interfaceC1173Lt, F0 f0) {
        super(ya, interfaceC1086If, interfaceC1173Lt, f0);
        this.A0E = new LN();
        this.A0C = false;
        this.A04 = c6q;
        this.A0D = ya;
    }

    private AbstractC1566aS A00(Intent intent) {
        return super.A07 ? (AbstractC1566aS) intent.getSerializableExtra(A09(14, 25, 77)) : (AbstractC1566aS) intent.getSerializableExtra(A09(0, 14, 93));
    }

    public static String A09(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A0G;
            if (strArr[0].charAt(22) != strArr[6].charAt(22)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0G;
            strArr2[5] = "I427OJiZERIl1pgFYs7VIJxgJMuHqTWY";
            strArr2[4] = "m1VK8a3APoHjuOOKlTc7gi9yCeUy6Tbh";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 74);
            i4++;
        }
    }

    public static void A0B() {
        A0F = new byte[]{118, 115, 72, 115, 118, 99, 118, 72, 117, 98, 121, 115, 123, 114, 117, 98, 112, 102, 117, 99, 98, 99, 81, 110, 99, 98, 104, 70, 99, 67, 102, 115, 102, 69, 114, 105, 99, 107, 98};
    }

    private final void A0C() {
        LinearLayout linearLayout = this.A02;
        if (linearLayout != null) {
            linearLayout.removeAllViews();
            this.A02 = null;
        }
        C2O c2o = this.A05;
        if (c2o != null) {
            c2o.removeAllViews();
            this.A05.A1R();
            this.A05 = null;
        }
        C1213Nh c1213Nh = this.A06;
        if (c1213Nh != null) {
            c1213Nh.removeAllViews();
            this.A06 = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0130  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void A0D(int r25, android.os.Bundle r26) {
        /*
            Method dump skipped, instruction units count: 373
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C7H.A0D(int, android.os.Bundle):void");
    }

    private void A0E(AbstractC1566aS abstractC1566aS) {
        this.A03 = abstractC1566aS;
        this.A0A = abstractC1566aS.A11();
        this.A00 = this.A03.A0C();
        this.A01 = this.A03.A0D();
        List<C1D> listA13 = this.A03.A13();
        this.A0B = new ArrayList(listA13.size());
        int i = 0;
        while (true) {
            int size = listA13.size();
            String[] strArr = A0G;
            if (strArr[5].charAt(16) == strArr[4].charAt(16)) {
                throw new RuntimeException();
            }
            A0G[3] = "1AHb04hcylshFNuVFPVd0IA840Fx90m0";
            if (i >= size) {
                return;
            }
            this.A0B.add(new PC(i, listA13.size(), listA13.get(i)));
            i++;
        }
    }

    private void A0F(S0 s0) {
        new EE().A0G(this.A05);
        s0.A0Z(new C1323Rn(this));
        this.A06 = new C1213Nh(this.A0D, super.A05.A01(), this.A0B.size());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, A0J);
        layoutParams.setMargins(0, A0K, 0, 0);
        this.A06.setLayoutParams(layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1365Td
    public final boolean A0c() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void A9C(Intent intent, Bundle bundle, C5J c5j) {
        AbstractC1566aS abstractC1566aSA00 = A00(intent);
        A0X(c5j);
        A0E(abstractC1566aSA00);
        A0D(c5j.A0J().getResources().getConfiguration().orientation, bundle);
        c5j.A0N(new C1322Rm(this, c5j));
        int iA03 = super.A0A.A0v().A0D().A03();
        if (super.A07) {
            iA03 = super.A0A.A0v().A0D().A02();
        }
        if (iA03 > 0) {
            A0V(iA03);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1365Td, com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void ACJ(boolean z) {
        super.ACJ(z);
        S0 s0 = this.A07;
        if (s0 != null) {
            s0.A0Q();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1365Td, com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void ACj(boolean z) {
        super.ACj(z);
        this.A07.A0R();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void AEt(Bundle bundle) {
        S0 s0 = this.A07;
        if (s0 != null) {
            s0.A0X(bundle);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1365Td
    public int getCloseButtonStyle() {
        return 0;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        Bundle bundle = new Bundle();
        AEt(bundle);
        A0C();
        A0D(configuration.orientation, bundle);
        super.onConfigurationChanged(configuration);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1365Td, com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void onDestroy() {
        super.onDestroy();
        if (IP.A1X(this.A0D)) {
            this.A0D.A0A().AFz(this.A05);
        }
        if (!TextUtils.isEmpty(this.A0A)) {
            super.A0C.A9J(this.A0A, new NL().A03(this.A09).A02(this.A0E).A05());
        }
        A0C();
        this.A09.A0V();
        this.A09 = null;
        this.A08 = null;
        this.A0B = null;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.A0E.A06(this.A0D, motionEvent, this, this);
        return super.onInterceptTouchEvent(motionEvent);
    }
}

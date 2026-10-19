package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.widget.LinearLayout;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class PS {
    public T3 A00;
    public final AnonymousClass19 A01;
    public final C1K A02;
    public final C1O A03;
    public final C1X A04;
    public final YA A05;
    public final C1094In A06;
    public static String[] A07 = {"67PC1vS7qkP", "IjFo3BG6VwtzNtFBLMxB3hm7uxcMitzp", "CicRHWg02u8tYTVNboa", "Lc1HqPOOGgkkm0o4iF185HVfJQb2Oy4J", "rfUiy7qGv2cTTJD", "veTQu7RBhk0w6DuY7Y8JViB1PkIKs", "nFnk8VxBkehLa6QhTm5QccOE2IAl", "l0nPd7gOfqjUiTZVoVDHfvPfOU4VPF8e"};
    public static final int A0A = (int) (C1148Ku.A02 * 4.0f);
    public static final int A08 = (int) (C1148Ku.A02 * 72.0f);
    public static final int A09 = (int) (C1148Ku.A02 * 8.0f);

    public PS(YA ya, InterfaceC1086If interfaceC1086If, AbstractC1566aS abstractC1566aS) {
        this.A05 = ya;
        this.A06 = new C1094In(abstractC1566aS.A11(), interfaceC1086If);
        this.A01 = abstractC1566aS.A0u();
        this.A02 = abstractC1566aS.A0v().A0E();
        this.A04 = abstractC1566aS.A0z();
        this.A03 = abstractC1566aS.A0v().A0G();
    }

    private View A00(T3 t3) {
        C1220No c1220No = new C1220No(this.A05, this.A01.A01(), true, false, false);
        c1220No.A03(this.A02.A06(), this.A02.A01(), null, false, true);
        c1220No.setAlignment(17);
        C1214Ni c1214Ni = new C1214Ni(this.A05);
        LV.A0M(c1214Ni, 0);
        c1214Ni.setRadius(50);
        new T8(c1214Ni, this.A05).A04().A07(this.A04.A01());
        LinearLayout linearLayout = new LinearLayout(this.A05);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        int i = A08;
        linearLayout.addView(c1214Ni, new LinearLayout.LayoutParams(i, i));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        int i2 = A09;
        layoutParams.setMargins(0, i2, 0, i2);
        linearLayout.addView(c1220No, layoutParams);
        if (t3 != null) {
            LV.A0J(t3);
            linearLayout.addView(t3, layoutParams);
            if (TextUtils.isEmpty(t3.getText())) {
                LV.A0H(t3);
            }
        }
        return linearLayout;
    }

    private ED A01() {
        ED ed = new ED(this.A05);
        ed.setLayoutManager(new ZC(this.A05, 0, false));
        ed.setAdapter(new C1318Ri(this.A05, this.A03.A01(), A0A, this.A00));
        return ed;
    }

    private final PR A02() {
        if (!this.A03.A01().isEmpty()) {
            return PR.A04;
        }
        PR pr = PR.A03;
        String[] strArr = A07;
        if (strArr[3].charAt(8) == strArr[7].charAt(8)) {
            throw new RuntimeException();
        }
        A07[4] = "qwlEjiYhEcV8j1J";
        return pr;
    }

    public final Pair<PR, View> A03(T3 t3) {
        View viewA01;
        this.A00 = t3;
        PR prA02 = A02();
        switch (PQ.A00[prA02.ordinal()]) {
            case 1:
                viewA01 = A01();
                break;
            default:
                T3 t32 = this.A00;
                if (A07[4].length() != 15) {
                    throw new RuntimeException();
                }
                String[] strArr = A07;
                strArr[3] = "Oe6IO8Uak3tx5GvHWoKp5mKUb4E2rtDt";
                strArr[7] = "t7tx5cDm578ghKblxCWBuUm65hKnqcQl";
                viewA01 = A00(t32);
                break;
        }
        C1096Ip.A04(viewA01, this.A06, EnumC1093Im.A0S);
        return new Pair<>(prA02, viewA01);
    }
}

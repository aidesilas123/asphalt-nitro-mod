package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class NZ extends RelativeLayout {
    public static String[] A06 = {"GfXFZtEZk1NZfob7Kzf1xTq0EESlD7si", "ewzI1iE8tF5Z2B86REyPWWZDw7DKLBH9", "kOyZSgqEibXIKTIW7tLvn8rBuxcmsyDd", "XpDxTY", "v6DhXkGtrQWw75h", "XA27k4WXBENWs2k6KViFhCSGxV0pMN8g", "cLUj8uWE8C4NOcjwK2waVMiWyPuWQVsm", ""};
    public final int A00;
    public final LinearLayout A01;
    public final C1564aQ A02;
    public final YA A03;
    public final InterfaceC1086If A04;
    public final InterfaceC1173Lt A05;

    public NZ(YA ya, C1564aQ c1564aQ, InterfaceC1086If interfaceC1086If, InterfaceC1173Lt interfaceC1173Lt, int i, int i2) {
        super(ya);
        this.A03 = ya;
        this.A02 = c1564aQ;
        this.A04 = interfaceC1086If;
        this.A05 = interfaceC1173Lt;
        this.A00 = i;
        LinearLayout linearLayout = new LinearLayout(ya);
        this.A01 = linearLayout;
        A00();
        addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
        setLayoutOrientation(i2);
    }

    private void A00() {
        int i = 0;
        while (true) {
            C1564aQ c1564aQ = this.A02;
            if (A06[4].length() != 15) {
                throw new RuntimeException();
            }
            String[] strArr = A06;
            strArr[6] = "6kBjYVyQvbEVjVKJKeawSG2VEKMXDcJL";
            strArr[5] = "aQimcOJmMOk7TFcbK4Cqi1kaRliNN4Qj";
            if (i >= c1564aQ.A0q()) {
                return;
            }
            T7 t7 = new T7(this.A03, this.A02.A0t(i), this.A04, this.A05);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
            layoutParams.weight = 1.0f;
            layoutParams.setMargins(T7.A0B, T7.A0B, T7.A0B, T7.A0B);
            t7.setLayoutParams(layoutParams);
            this.A01.addView(t7);
            i++;
        }
    }

    private void setLayoutOrientation(int i) {
        if (i == 1) {
            this.A01.setOrientation(1);
            LinearLayout linearLayout = this.A01;
            int i2 = this.A00;
            linearLayout.setPadding(0, (int) (((double) i2) * 1.5d), 0, i2);
            return;
        }
        this.A01.setOrientation(0);
        LinearLayout linearLayout2 = this.A01;
        int i3 = this.A00;
        linearLayout2.setPadding(0, i3, 0, (int) (((double) i3) * 0.25d));
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        setLayoutOrientation(configuration.orientation);
    }
}

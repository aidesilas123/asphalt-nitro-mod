package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Pg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1264Pg extends RelativeLayout {
    public static String[] A03 = {"Z7YDROQZDOzGgLZ6JRzm0VB6SZj4zDor", "PEDxZ1hmcJv2HtokqPZuboN03zqPqfuu", "ZN3aiXgGzfL", "UoQOzdqMFdmvRVk6jZTbQbhJ01APWmUd", "BWydKlRDXGFiivyHlYlBLR13h8bygoZy", "calSGpe10AH6YV6oPZJsWkhcYoOFDSm8", "CqyCvSup05V", "6oqVw1T1HmkJfSZKyFG8rr7XXeYSScI0"};
    public C08086j A00;
    public WeakReference<InterfaceC1263Pf> A01;
    public final QW A02;

    /* JADX WARN: Multi-variable type inference failed */
    public C1264Pg(YA ya, QW qw) {
        super(ya);
        this.A02 = qw;
        LV.A0J((View) qw);
        addView(qw.getView(), new RelativeLayout.LayoutParams(-1, -1));
    }

    public final void A00(PX px) {
        addView(px, new RelativeLayout.LayoutParams(-1, -1));
        this.A00 = (C08086j) px;
    }

    public final void A01(PX px) {
        LV.A0J(px);
        this.A00 = null;
    }

    public final boolean A02() {
        return this.A02.A8S();
    }

    public int getCurrentPosition() {
        return this.A02.getCurrentPosition();
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        ((View) this.A02).layout(0, 0, getWidth(), getHeight());
        C08086j c08086j = this.A00;
        if (c08086j != null) {
            c08086j.layout(0, 0, getWidth(), getHeight());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e2  */
    @Override // android.widget.RelativeLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onMeasure(int r12, int r13) {
        /*
            Method dump skipped, instruction units count: 260
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1264Pg.onMeasure(int, int):void");
    }

    public void setViewImplInflationListener(InterfaceC1263Pf interfaceC1263Pf) {
        this.A01 = new WeakReference<>(interfaceC1263Pf);
    }
}

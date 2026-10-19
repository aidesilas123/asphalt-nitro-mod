package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeBannerAd;
import java.util.ArrayList;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Re, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1314Re extends LinearLayout implements PY {
    public final NativeBannerAd A00;
    public final YA A01;
    public final ArrayList<View> A02;
    public static final int A04 = (int) (C1148Ku.A02 * 42.0f);
    public static final int A03 = (int) (C1148Ku.A02 * 48.0f);
    public static final int A05 = (int) (C1148Ku.A02 * 54.0f);
    public static final int A07 = (int) (C1148Ku.A02 * 4.0f);
    public static final int A06 = (int) (C1148Ku.A02 * 8.0f);

    public C1314Re(YA ya, NativeBannerAd nativeBannerAd, J6 j6, J7 j7, MediaView mediaView, AdOptionsView adOptionsView) {
        LinearLayout.LayoutParams layoutParams;
        ViewGroup.LayoutParams layoutParams2;
        super(ya);
        ArrayList<View> arrayList = new ArrayList<>();
        this.A02 = arrayList;
        this.A00 = nativeBannerAd;
        this.A01 = ya;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        int iA00 = A00(j7);
        C1215Nj c1215Nj = new C1215Nj(ya);
        c1215Nj.setFullCircleCorners(true);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(iA00, iA00);
        layoutParams3.gravity = 16;
        c1215Nj.addView(mediaView, new LinearLayout.LayoutParams(-1, -1));
        linearLayout.addView(c1215Nj, layoutParams3);
        PV pv = new PV(ya, nativeBannerAd, j7, j6, adOptionsView);
        int i = A06;
        pv.setPadding(i, 0, 0, 0);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, -2);
        layoutParams4.weight = 1.0f;
        layoutParams4.gravity = 16;
        linearLayout.addView(pv, layoutParams4);
        if (j7 == J7.A0A) {
            int i2 = A07;
            setPadding(i2, i2, i2, i2);
            setOrientation(0);
            layoutParams = new LinearLayout.LayoutParams(0, -1);
            layoutParams2 = new LinearLayout.LayoutParams(-2, -1);
            linearLayout.setPadding(0, 0, i2, 0);
        } else {
            setPadding(i, i, i, i);
            setOrientation(1);
            layoutParams = new LinearLayout.LayoutParams(-1, 0);
            layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
            linearLayout.setPadding(0, 0, 0, i);
        }
        layoutParams.weight = 1.0f;
        addView(linearLayout, layoutParams);
        TextView textView = new TextView(getContext());
        int i3 = A07;
        textView.setPadding(i, i3, i, i3);
        j6.A05(textView);
        textView.setText(nativeBannerAd.getAdCallToAction());
        addView(textView, layoutParams2);
        arrayList.add(mediaView);
        arrayList.add(textView);
    }

    public static int A00(J7 j7) {
        switch (PW.A00[j7.ordinal()]) {
            case 1:
                return A04;
            case 2:
                return A03;
            default:
                return A05;
        }
    }

    @Override // com.facebook.ads.redexgen.X.PY
    public View getView() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.PY
    public ArrayList<View> getViewsForInteraction() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.PY
    public final void unregisterView() {
        this.A00.unregisterView();
    }
}

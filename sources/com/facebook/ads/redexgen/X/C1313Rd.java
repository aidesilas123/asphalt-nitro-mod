package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import java.util.ArrayList;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Rd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1313Rd extends FrameLayout implements PY {
    public TextView A00;
    public TextView A01;
    public TextView A02;
    public TextView A03;
    public final MediaView A04;
    public final NativeAd A05;
    public final PZ A06;
    public final ArrayList<View> A07;
    public static String[] A08 = {"LrUXeZd5oXG5wJ7", "S6ePTdxfK6c7yhvbHMQjZqIgQsLDz3QO", "YqVXoEdDoNpK3nL0El5", "Exhg7LXIw6HgSAmcccR052cOKtX3WF", "LN", "59F20xOEewuTmZzPatOKMeF6XI6ZvB1j", "IRBrDKvf2o0dBHWjf99N02m12yrR0Bg7", "KZ90h8EmVWfLUNKv0pT"};
    public static final int A0E = (int) (C1148Ku.A02 * 6.0f);
    public static final int A0D = (int) (C1148Ku.A02 * 8.0f);
    public static final int A0C = (int) (C1148Ku.A02 * 12.0f);
    public static final int A0A = (int) (C1148Ku.A02 * 350.0f);
    public static final int A09 = (int) (C1148Ku.A02 * 250.0f);
    public static final int A0B = (int) (C1148Ku.A02 * 175.0f);

    public C1313Rd(YA ya, NativeAd nativeAd, J6 j6, J7 j7, C1214Ni c1214Ni, MediaView mediaView, AdOptionsView adOptionsView) {
        super(ya);
        ArrayList<View> arrayList = new ArrayList<>();
        this.A07 = arrayList;
        this.A05 = nativeAd;
        this.A04 = mediaView;
        PZ pz = new PZ(ya, nativeAd, j6, c1214Ni, adOptionsView);
        this.A06 = pz;
        int i = A0C;
        pz.setPadding(i, i, i, A0E);
        addView(pz, new FrameLayout.LayoutParams(-1, -2));
        if (j7 == J7.A09 || j7 == J7.A0B) {
            A07(j6);
        }
        addView(mediaView, new FrameLayout.LayoutParams(-1, -2));
        if (j7 != J7.A0B || nativeAd.getAdCreativeType() != NativeAd.AdCreativeType.CAROUSEL) {
            A06(j6);
            A04(j6);
            A05(j6);
        }
        arrayList.add(c1214Ni);
        arrayList.add(mediaView);
    }

    private int A00() {
        TextView textView = this.A03;
        int measuredHeight = 0;
        int measuredHeight2 = (textView == null || textView.getVisibility() != 0) ? 0 : this.A03.getMeasuredHeight();
        TextView textView2 = this.A02;
        if (A08[1].charAt(0) == 'k') {
            throw new RuntimeException();
        }
        String[] strArr = A08;
        strArr[6] = "SrhbzBCrZmwJCsE1GN19GBhRpshhKBl4";
        strArr[5] = "lZXGEU0s5y97LRskCQS4IC0Q6rEMlB8o";
        int measuredHeight3 = (textView2 == null || textView2.getVisibility() != 0) ? 0 : this.A02.getMeasuredHeight();
        TextView textView3 = this.A00;
        int measuredHeight4 = (textView3 == null || textView3.getVisibility() != 0) ? 0 : this.A00.getMeasuredHeight();
        TextView textView4 = this.A01;
        if (A08[1].charAt(0) == 'k') {
            throw new RuntimeException();
        }
        String[] strArr2 = A08;
        strArr2[6] = "nRuc5lutSXPKh9f7kKzdW2kIhLu3nB9m";
        strArr2[5] = "FuxAmHJZMOFMUG38wB3yXnFuBZuRMBRE";
        if (textView4 != null && textView4.getVisibility() == 0) {
            measuredHeight = this.A01.getMeasuredHeight() + A0C + A0D;
        }
        return ((((getMeasuredHeight() - this.A06.getMeasuredHeight()) - measuredHeight2) - measuredHeight3) - measuredHeight4) - measuredHeight;
    }

    private void A01() {
        TextView textView = this.A03;
        if (textView != null) {
            textView.setLines(1);
        }
        TextView textView2 = this.A02;
        if (textView2 != null) {
            textView2.setLines(1);
        }
        TextView textView3 = this.A00;
        if (textView3 != null) {
            textView3.setLines(1);
        }
    }

    private void A02(int i) {
        LV.A0N(this.A04, i > A0B ? 0 : 8);
        LV.A0N(this.A03, i > A0A ? 0 : 8);
        LV.A0N(this.A00, i <= A09 ? 8 : 0);
    }

    public static void A03(int i, int i2, TextView... textViewArr) {
        for (TextView textView : textViewArr) {
            if (textView != null && textView.getVisibility() == 0) {
                int iA04 = LV.A04(textView, i2);
                textView.setLines(iA04 + 1);
                textView.measure(i, View.MeasureSpec.makeMeasureSpec(textView.getMeasuredHeight() + (textView.getLineHeight() * iA04), 1073741824));
                i2 -= textView.getLineHeight() * iA04;
            }
        }
    }

    private void A04(J6 j6) {
        if (this.A05.getAdBodyText() == null || this.A05.getAdBodyText().trim().isEmpty()) {
            return;
        }
        TextView textView = new TextView(getContext());
        this.A00 = textView;
        j6.A06(textView);
        this.A00.setText(this.A05.getAdBodyText());
        TextView textView2 = this.A00;
        int i = A0C;
        textView2.setPadding(i, 0, i, 0);
        addView(this.A00, new FrameLayout.LayoutParams(-1, -2));
    }

    private void A05(J6 j6) {
        if (this.A05.hasCallToAction()) {
            TextView textView = new TextView(getContext());
            this.A01 = textView;
            LV.A0K(textView);
            j6.A05(this.A01);
            this.A01.setText(this.A05.getAdCallToAction());
            TextView textView2 = this.A01;
            int i = A0D;
            textView2.setPadding(i, i, i, i);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(i, 0, i, 0);
            addView(this.A01, layoutParams);
            this.A07.add(this.A01);
        }
    }

    private void A06(J6 j6) {
        if (this.A05.getAdHeadline() == null || this.A05.getAdHeadline().trim().isEmpty()) {
            return;
        }
        TextView textView = new TextView(getContext());
        this.A02 = textView;
        j6.A07(textView);
        this.A02.setText(this.A05.getAdHeadline());
        TextView textView2 = this.A02;
        int i = A0C;
        textView2.setPadding(i, A0D, i, 0);
        addView(this.A02, new FrameLayout.LayoutParams(-1, -2));
    }

    private void A07(J6 j6) {
        if (this.A05.getAdLinkDescription() == null || this.A05.getAdLinkDescription().trim().isEmpty()) {
            return;
        }
        TextView textView = new TextView(getContext());
        this.A03 = textView;
        j6.A06(textView);
        this.A03.setText(this.A05.getAdLinkDescription());
        TextView textView2 = this.A03;
        int i = A0C;
        textView2.setPadding(i, 0, i, A0D);
        addView(this.A03, new FrameLayout.LayoutParams(-1, -2));
    }

    @Override // com.facebook.ads.redexgen.X.PY
    public View getView() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.PY
    public ArrayList<View> getViewsForInteraction() {
        return this.A07;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        PZ pz = this.A06;
        pz.layout(i, i2, i3, pz.getMeasuredHeight() + i2);
        int measuredHeight = i2 + this.A06.getMeasuredHeight();
        TextView textView = this.A03;
        if (textView != null && textView.getVisibility() == 0) {
            int measuredHeight2 = this.A03.getMeasuredHeight();
            this.A03.layout(i, measuredHeight, i3, measuredHeight + measuredHeight2);
            measuredHeight += measuredHeight2;
        }
        MediaView mediaView = this.A04;
        mediaView.layout(i, measuredHeight, i3, mediaView.getMeasuredHeight() + measuredHeight);
        int measuredHeight3 = measuredHeight + this.A04.getMeasuredHeight();
        TextView textView2 = this.A02;
        if (textView2 != null) {
            textView2.layout(i, measuredHeight3, i3, textView2.getMeasuredHeight() + measuredHeight3);
            measuredHeight3 += this.A02.getMeasuredHeight();
        }
        TextView textView3 = this.A00;
        if (textView3 != null && textView3.getVisibility() == 0) {
            TextView textView4 = this.A00;
            if (A08[1].charAt(0) == 'k') {
                throw new RuntimeException();
            }
            A08[3] = "gjv6mmFqHT0";
            textView4.layout(i, measuredHeight3, i3, textView4.getMeasuredHeight() + measuredHeight3);
        }
        TextView textView5 = this.A01;
        if (textView5 != null) {
            int i5 = A0C;
            textView5.layout(i + i5, (i4 - textView5.getMeasuredHeight()) - i5, i3 - i5, i4 - i5);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        A02(View.MeasureSpec.getSize(i2));
        A01();
        super.onMeasure(i, i2);
        int iA00 = A00();
        int iMin = (this.A04.getMediaWidth() == 0 || this.A04.getMediaHeight() == 0 || ((C1492Ye) this.A04.getMediaViewApi()).A0N()) ? iA00 : Math.min((int) (this.A04.getMeasuredWidth() * (this.A04.getMediaHeight() / this.A04.getMediaWidth())), iA00);
        this.A04.measure(i, View.MeasureSpec.makeMeasureSpec(iMin, 1073741824));
        if (iMin < iA00) {
            A03(i, iA00 - iMin, this.A02, this.A00, this.A03);
        }
    }

    @Override // com.facebook.ads.redexgen.X.PY
    public final void unregisterView() {
        this.A05.unregisterView();
    }
}

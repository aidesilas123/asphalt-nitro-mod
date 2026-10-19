package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.GravityCompat;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: loaded from: classes2.dex */
public class TTRatingBar2 extends PAGFrameLayout {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f1728f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f1729g;
    private static int h;
    private static int i;
    private float a;
    private float b;
    private Drawable c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Drawable f1730d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private double f1731e;
    private LinearLayout j;
    private LinearLayout k;

    public TTRatingBar2(Context context) {
        super(context);
        a();
    }

    public TTRatingBar2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    private void a() {
        Context context = getContext();
        this.j = new LinearLayout(context);
        this.k = new LinearLayout(context);
        this.j.setOrientation(0);
        this.j.setGravity(GravityCompat.START);
        this.k.setOrientation(0);
        this.k.setGravity(GravityCompat.START);
        if (f1728f < 0) {
            int iA = (int) ad.a(context, 1.0f, false);
            f1728f = iA;
            h = iA;
            i = (int) ad.a(context, 3.0f, false);
        }
        this.c = s.c(context, "tt_star_thick");
        this.f1730d = s.c(context, "tt_star");
    }

    private ImageView getStarImageView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setLayoutParams(new ViewGroup.LayoutParams((int) this.a, (int) this.b));
        imageView.setPadding(f1728f, f1729g, h, i);
        return imageView;
    }

    public void a(double d2, int i2, int i3) {
        float f2 = i3;
        this.a = (int) ad.a(getContext(), f2, false);
        this.b = (int) ad.a(getContext(), f2, false);
        this.f1731e = d2;
        this.j.removeAllViews();
        this.k.removeAllViews();
        removeAllViews();
        for (int i4 = 0; i4 < 5; i4++) {
            ImageView starImageView = getStarImageView();
            starImageView.setScaleType(ImageView.ScaleType.FIT_XY);
            starImageView.setColorFilter(i2);
            starImageView.setImageDrawable(getStarFillDrawable());
            this.k.addView(starImageView);
        }
        for (int i5 = 0; i5 < 5; i5++) {
            ImageView starImageView2 = getStarImageView();
            starImageView2.setScaleType(ImageView.ScaleType.FIT_XY);
            starImageView2.setImageDrawable(getStarEmptyDrawable());
            this.j.addView(starImageView2);
        }
        addView(this.j);
        addView(this.k);
        requestLayout();
    }

    public Drawable getStarEmptyDrawable() {
        return this.c;
    }

    public Drawable getStarFillDrawable() {
        return this.f1730d;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        this.j.measure(i2, i3);
        double d2 = this.f1731e;
        float f2 = this.a;
        this.k.measure(View.MeasureSpec.makeMeasureSpec((int) (((double) ((((int) d2) * f2) + f1728f)) + (((double) (f2 - (r2 + h))) * (d2 - ((double) ((int) d2))))), 1073741824), View.MeasureSpec.makeMeasureSpec(this.j.getMeasuredHeight(), 1073741824));
    }
}

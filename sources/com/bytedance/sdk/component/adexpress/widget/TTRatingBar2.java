package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.GravityCompat;
import com.bytedance.sdk.component.adexpress.c.e;
import com.bytedance.sdk.component.adexpress.dynamic.c.j;
import com.bytedance.sdk.component.utils.s;

/* JADX INFO: loaded from: classes.dex */
public class TTRatingBar2 extends FrameLayout {
    private static final int i = (j.b("", 0.0f, true)[1] / 2) + 1;
    private static final int j = (j.b("", 0.0f, true)[1] / 2) + 3;
    LinearLayout a;
    LinearLayout b;
    private float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f874d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Drawable f875e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Drawable f876f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private double f877g;
    private float h;

    public TTRatingBar2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new LinearLayout(getContext());
        this.b = new LinearLayout(getContext());
        this.a.setOrientation(0);
        this.a.setGravity(GravityCompat.START);
        this.b.setOrientation(0);
        this.b.setGravity(GravityCompat.START);
        this.f875e = s.c(context, "tt_star_thick");
        this.f876f = s.c(context, "tt_star");
    }

    private ImageView getStarImageView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setLayoutParams(new ViewGroup.LayoutParams((int) this.c, (int) this.f874d));
        imageView.setPadding(1, i, 1, j);
        return imageView;
    }

    public void a(double d2, int i2, int i3, int i4) {
        float f2 = i3;
        this.c = (int) e.c(getContext(), f2);
        this.f874d = (int) e.c(getContext(), f2);
        this.f877g = d2;
        this.h = i4;
        removeAllViews();
        for (int i5 = 0; i5 < 5; i5++) {
            ImageView starImageView = getStarImageView();
            starImageView.setScaleType(ImageView.ScaleType.FIT_XY);
            starImageView.setColorFilter(i2, PorterDuff.Mode.SRC_IN);
            starImageView.setImageDrawable(getStarFillDrawable());
            this.b.addView(starImageView);
        }
        for (int i6 = 0; i6 < 5; i6++) {
            ImageView starImageView2 = getStarImageView();
            starImageView2.setScaleType(ImageView.ScaleType.FIT_XY);
            starImageView2.setImageDrawable(getStarEmptyDrawable());
            this.a.addView(starImageView2);
        }
        addView(this.a);
        addView(this.b);
        requestLayout();
    }

    public Drawable getStarEmptyDrawable() {
        return this.f875e;
    }

    public Drawable getStarFillDrawable() {
        return this.f876f;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        this.a.measure(i2, i3);
        double d2 = this.f877g;
        float f2 = this.c;
        this.b.measure(View.MeasureSpec.makeMeasureSpec((int) (((double) ((((int) d2) * f2) + 1.0f)) + (((double) (f2 - 2.0f)) * (d2 - ((double) ((int) d2))))), 1073741824), View.MeasureSpec.makeMeasureSpec(this.a.getMeasuredHeight(), 1073741824));
        if (this.h > 0.0f) {
            this.a.setPadding(0, ((int) (r7.getMeasuredHeight() - this.h)) / 2, 0, 0);
            this.b.setPadding(0, ((int) (this.a.getMeasuredHeight() - this.h)) / 2, 0, 0);
        }
    }
}

package com.kidoz.sdk.api.ui_views;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Point;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.kidoz.sdk.api.general.utils.SdkDeviceUtils;
import com.kidoz.sdk.api.ui_views.custom_drawables.XViewDrawable;

/* JADX INFO: loaded from: classes4.dex */
public class CloseButtonView extends RelativeLayout {
    private int mColor;

    public CloseButtonView(Context context, int i) {
        super(context);
        this.mColor = Color.parseColor("#ffffff");
        this.mColor = i;
        initView(context, -1, -1);
    }

    public CloseButtonView(Context context, int i, int i2, int i3) {
        super(context);
        this.mColor = Color.parseColor("#ffffff");
        this.mColor = i3;
        initView(context, i, i2);
    }

    public CloseButtonView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mColor = Color.parseColor("#ffffff");
        initView(context, -1, -1);
    }

    public CloseButtonView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mColor = Color.parseColor("#ffffff");
        initView(context, -1, -1);
    }

    private void initView(Context context, int i, int i2) {
        if (i == -1 || i2 == -1) {
            Point screenSize = SdkDeviceUtils.getScreenSize(context);
            i = (int) (((double) Math.min(screenSize.x, screenSize.y)) * 0.058d);
            i2 = i;
        }
        XViewDrawable xViewDrawable = new XViewDrawable(getContext(), this.mColor);
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setImageDrawable(xViewDrawable);
        addView(imageView, new RelativeLayout.LayoutParams(i, i2));
    }
}

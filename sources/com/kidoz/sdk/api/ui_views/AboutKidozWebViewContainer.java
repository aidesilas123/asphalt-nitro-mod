package com.kidoz.sdk.api.ui_views;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.view.View;
import android.widget.RelativeLayout;
import com.kidoz.sdk.api.general.utils.ScreenUtils;
import com.kidoz.sdk.api.general.utils.Utils;

/* JADX INFO: loaded from: classes4.dex */
public class AboutKidozWebViewContainer extends RelativeLayout {
    private final String TAG;
    private int mHeight;
    private Paint mPaint;
    private int mWidth;

    public AboutKidozWebViewContainer(Context context) {
        super(context);
        this.TAG = AboutKidozWebViewContainer.class.getSimpleName();
        initView();
    }

    private void initImageParameters() {
        this.mHeight = (int) (ScreenUtils.getScreenSize(getContext(), false) * 0.75f);
    }

    private void initView() {
        setWillNotDraw(false);
        Paint paint = new Paint(1);
        this.mPaint = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.mPaint.setColor(Color.parseColor("#ffffff"));
        initImageParameters();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        initImageParameters();
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawRect(0.0f, 0.0f, this.mWidth, this.mHeight, this.mPaint);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        getChildAt(0).layout(0, 0, this.mWidth, this.mHeight);
        int iDpTOpx = Utils.dpTOpx(getContext(), 10.0f);
        int i5 = this.mWidth - (iDpTOpx * 3);
        int i6 = iDpTOpx * 2;
        getChildAt(1).layout(i5, iDpTOpx, i5 + i6, i6 + iDpTOpx);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        this.mWidth = size;
        setMeasuredDimension(size, this.mHeight);
    }
}

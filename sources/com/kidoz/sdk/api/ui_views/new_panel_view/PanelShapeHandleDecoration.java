package com.kidoz.sdk.api.ui_views.new_panel_view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public class PanelShapeHandleDecoration extends View {
    private Path mMainShapePath;
    private Paint mPaint;
    private int mPanelColor;
    private int mViewHeight;
    private int mViewWidth;

    public PanelShapeHandleDecoration(Context context, int i) {
        super(context);
        this.mPanelColor = i;
        init();
    }

    public PanelShapeHandleDecoration(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public PanelShapeHandleDecoration(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    public PanelShapeHandleDecoration(Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init();
    }

    private void init() {
        setWillNotDraw(false);
        setLayerType(2, null);
    }

    private void initMainShapePath() {
        RectF rectF = new RectF(0.0f, 0.0f, this.mViewWidth, this.mViewHeight);
        Path path = new Path();
        this.mMainShapePath = path;
        path.moveTo(0.0f, this.mViewHeight / 2);
        this.mMainShapePath.arcTo(rectF, -180.0f, -90.0f);
        this.mMainShapePath.lineTo(0.0f, this.mViewHeight);
        this.mMainShapePath.lineTo(0.0f, this.mViewHeight / 2);
        this.mMainShapePath.close();
    }

    private void initShapePaint() {
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setColor(this.mPanelColor);
    }

    private void layout() {
        initShapePaint();
        initMainShapePath();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawPath(this.mMainShapePath, this.mPaint);
        super.onDraw(canvas);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.mViewWidth = getWidth();
        this.mViewHeight = getHeight();
        layout();
    }
}

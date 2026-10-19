package com.kidoz.sdk.api.ui_views.new_panel_view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public class PanelShape extends View {
    private static final int HOLLOW_PAINT_COLOR = 268435456;
    private static final float TOP_CORNER_RADIUS = 140.0f;
    private static final float TOP_MARGIN_PERCENT = 0.2f;
    private Paint mInnerHollowPaint;
    private Path mInnerHollowPath;
    private Path mMainShapePath;
    private Paint mPaint;
    private int mPanelColor;
    private Path mPointyCapPath;
    private int mViewHeight;
    private int mViewWidth;

    public PanelShape(Context context, int i) {
        super(context);
        this.mPanelColor = i;
        init();
    }

    public PanelShape(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public PanelShape(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    public PanelShape(Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init();
    }

    private void hollowShape(float f2) {
        int i = this.mViewWidth;
        float f3 = (float) (((double) i) * 0.04d);
        double d2 = f2;
        int i2 = this.mViewHeight;
        float f4 = (float) (d2 + (((double) i2) * 0.1d));
        float f5 = (float) (((double) i2) * 0.95d);
        float f6 = (float) (((double) i2) * 0.8d);
        float f7 = i - (1.25f * f3);
        float f8 = i - (3.5f * f3);
        float f9 = i2 * 0.9f;
        RectF rectF = new RectF(f8, f6, f7, f9);
        int i3 = this.mViewHeight;
        RectF rectF2 = new RectF(f8 - (4.0f * f3), i3 - ((i3 - f9) * 2.0f), f8, f5);
        Path path = new Path();
        this.mInnerHollowPath = path;
        path.moveTo(f3, f4);
        this.mInnerHollowPath.lineTo(this.mViewWidth - f3, f4);
        this.mInnerHollowPath.lineTo(this.mViewWidth - f3, f6);
        this.mInnerHollowPath.lineTo(f7, f6);
        this.mInnerHollowPath.arcTo(rectF, -90.0f, -90.0f);
        this.mInnerHollowPath.arcTo(rectF2, 0.0f, 90.0f);
        this.mInnerHollowPath.lineTo(f3, f5);
        this.mInnerHollowPath.close();
    }

    private void init() {
        setWillNotDraw(false);
        setLayerType(2, null);
    }

    private void initMainShapePath(float f2) {
        int i = this.mViewWidth;
        float f3 = f2 + TOP_CORNER_RADIUS;
        RectF rectF = new RectF(i - TOP_CORNER_RADIUS, f2, i, f3);
        Path path = new Path();
        this.mMainShapePath = path;
        path.moveTo(this.mViewWidth, this.mViewHeight);
        this.mMainShapePath.lineTo(this.mViewWidth, f3);
        this.mMainShapePath.arcTo(rectF, 0.0f, -90.0f);
        Point point = new Point(70, (int) f2);
        Point point2 = new Point(-260, -60);
        Point point3 = new Point(0, (int) ((f2 * 5.0f) + TOP_CORNER_RADIUS));
        this.mMainShapePath.cubicTo(point.x, point.y, point2.x, point2.y, point3.x, point3.y);
        this.mMainShapePath.lineTo(0.0f, this.mViewHeight);
        this.mMainShapePath.lineTo(this.mViewWidth, this.mViewHeight);
        this.mMainShapePath.close();
    }

    private void initPointyCapShapePath(float f2) {
        int i = (int) f2;
        Point point = new Point(this.mViewWidth, i);
        Point point2 = new Point((int) (((double) this.mViewWidth) * 0.3d), i);
        Point point3 = new Point((int) (((double) this.mViewWidth) * 0.15d), 0);
        Point point4 = new Point(47, i);
        Path path = new Path();
        this.mPointyCapPath = path;
        path.moveTo(point.x, point.y);
        this.mPointyCapPath.cubicTo(point2.x, point2.y, point3.x, point3.y, point4.x, point4.y);
        this.mPointyCapPath.close();
    }

    private void initShapePaint() {
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setColor(this.mPanelColor);
        Paint paint2 = new Paint();
        this.mInnerHollowPaint = paint2;
        paint2.setColor(268435456);
        this.mInnerHollowPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
    }

    private void layout() {
        initShapePaint();
        float f2 = this.mViewHeight * 0.2f;
        initMainShapePath(f2);
        initPointyCapShapePath(f2);
        hollowShape(f2);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawPath(this.mMainShapePath, this.mPaint);
        canvas.drawPath(this.mInnerHollowPath, this.mInnerHollowPaint);
        this.mInnerHollowPaint.setColor(-1127546934);
        this.mInnerHollowPaint.setStyle(Paint.Style.STROKE);
        this.mInnerHollowPaint.setStrokeWidth(5.0f);
        canvas.drawPath(this.mInnerHollowPath, this.mInnerHollowPaint);
        super.onDraw(canvas);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.mViewWidth = getWidth();
        this.mViewHeight = getHeight();
        layout();
    }

    public void setPanelColor(int i) {
        Paint paint = this.mPaint;
        if (paint != null) {
            paint.setColor(i);
            postInvalidate();
        }
    }
}

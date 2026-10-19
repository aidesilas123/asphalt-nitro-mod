package com.kidoz.sdk.api.ui_views.custom_drawables;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.kidoz.sdk.api.general.utils.ScreenUtils;
import com.kidoz.sdk.api.ui_views.panel_view.PANEL_TYPE;

/* JADX INFO: loaded from: classes4.dex */
public class DefaultPanelDrawable extends Drawable {
    private static final float CLOSE_BUTTON_SIZE_RATIO_RELATIVE_TO_OPEN = 0.6f;
    private static final float LINE_WIDTH = 0.258f;
    private static final float SIZE_RATIO = 0.54f;
    private int mBaseColor;
    private Paint mBgPaint;
    private RectF mCloseBackgroundRectF;
    private RectF mCloseBackgroundRoundedRectF;
    private PanelDrawableType mDrawableType;
    private int mHeight;
    private RectF mOpenBackgroundRectF;
    private RectF mOpenBackgroundRoundedRectF;
    private PANEL_TYPE mPanelType;
    private int mWidth;
    private Paint mXPaint;
    private int mXcolor;
    private Path mPlus = new Path();
    private Path mMinus = new Path();
    private boolean mDrawSign = true;

    /* JADX INFO: renamed from: com.kidoz.sdk.api.ui_views.custom_drawables.DefaultPanelDrawable$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$ui_views$custom_drawables$DefaultPanelDrawable$PanelDrawableType;
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE;

        static {
            int[] iArr = new int[PanelDrawableType.values().length];
            $SwitchMap$com$kidoz$sdk$api$ui_views$custom_drawables$DefaultPanelDrawable$PanelDrawableType = iArr;
            try {
                iArr[PanelDrawableType.OPEN_VIEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$ui_views$custom_drawables$DefaultPanelDrawable$PanelDrawableType[PanelDrawableType.CLOSE_VIEW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[PANEL_TYPE.values().length];
            $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE = iArr2;
            try {
                iArr2[PANEL_TYPE.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE[PANEL_TYPE.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum PanelDrawableType {
        OPEN_VIEW,
        CLOSE_VIEW
    }

    public DefaultPanelDrawable(Context context, PANEL_TYPE panel_type, PanelDrawableType panelDrawableType) {
        float scaleFactor = ScreenUtils.getScaleFactor(context);
        this.mWidth = (int) (this.mWidth * scaleFactor);
        this.mHeight = (int) (this.mHeight * scaleFactor);
        this.mBaseColor = Color.parseColor("#ffffff");
        this.mXcolor = Color.parseColor("#cdffffff");
        Paint paint = new Paint(1);
        this.mXPaint = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.mXPaint.setStrokeJoin(Paint.Join.ROUND);
        this.mXPaint.setStrokeCap(Paint.Cap.ROUND);
        this.mXPaint.setPathEffect(new CornerPathEffect(15.0f));
        this.mXPaint.setColor(this.mXcolor);
        this.mXPaint.setShadowLayer(4.5f, 0.0f, 1.5f, 1157627904);
        this.mXPaint.setDither(true);
        Paint paint2 = new Paint(1);
        this.mBgPaint = paint2;
        paint2.setStyle(Paint.Style.FILL_AND_STROKE);
        this.mBgPaint.setColor(this.mBaseColor);
        this.mBgPaint.setDither(true);
        this.mPanelType = panel_type;
        this.mDrawableType = panelDrawableType;
        initRectF();
    }

    private void generateMinusButtonPath(float f2, float f3) {
        int i = this.mWidth;
        float f4 = i * SIZE_RATIO;
        float f5 = i * LINE_WIDTH;
        float f6 = (f4 / 2.0f) - (f5 / 2.6f);
        this.mMinus.reset();
        float f7 = (f5 / 2.0f) / 2.0f;
        float f8 = (f2 - f6) - f7;
        float f9 = f3 + f7;
        this.mMinus.moveTo(f8, f9);
        float f10 = f3 - f7;
        this.mMinus.lineTo(f8, f10);
        float f11 = f2 + f6 + f7;
        this.mMinus.lineTo(f11, f10);
        this.mMinus.lineTo(f11, f9);
        this.mMinus.lineTo(f8, f9);
        this.mMinus.lineTo(f8, f10);
    }

    private void generatePlusButtonPath(float f2, float f3) {
        int i = this.mWidth;
        float f4 = i * SIZE_RATIO;
        float f5 = i * LINE_WIDTH;
        float f6 = (f4 / 2.0f) - (f5 / 3.5f);
        this.mPlus.reset();
        float f7 = (f5 / 2.0f) / 2.0f;
        float f8 = f2 - f7;
        float f9 = f3 + f7;
        this.mPlus.moveTo(f8, f9);
        float f10 = (f2 - f6) - f7;
        this.mPlus.lineTo(f10, f9);
        float f11 = f3 - f7;
        this.mPlus.lineTo(f10, f11);
        this.mPlus.lineTo(f8, f11);
        float f12 = f11 - f6;
        this.mPlus.lineTo(f8, f12);
        float f13 = f2 + f7;
        this.mPlus.lineTo(f13, f12);
        this.mPlus.lineTo(f13, f11);
        float f14 = f13 + f6;
        this.mPlus.lineTo(f14, f11);
        this.mPlus.lineTo(f14, f9);
        this.mPlus.lineTo(f13, f9);
        float f15 = f6 + f9;
        this.mPlus.lineTo(f13, f15);
        this.mPlus.lineTo(f8, f15);
        this.mPlus.lineTo(f8, f9);
        this.mPlus.lineTo(f10, f9);
    }

    private void initRectF() {
        int i = AnonymousClass1.$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE[this.mPanelType.ordinal()];
        if (i == 1) {
            if (this.mDrawableType == PanelDrawableType.OPEN_VIEW) {
                this.mOpenBackgroundRectF = new RectF(0.0f, 0.0f, this.mWidth, this.mHeight / 2.0f);
                this.mOpenBackgroundRoundedRectF = new RectF(0.0f, 0.0f, this.mWidth, this.mHeight);
                generatePlusButtonPath(this.mWidth / 2.0f, this.mHeight / 2.0f);
                return;
            }
            float f2 = this.mWidth;
            int i2 = this.mHeight;
            this.mCloseBackgroundRectF = new RectF(0.0f, 0.0f, f2, (i2 - (i2 * CLOSE_BUTTON_SIZE_RATIO_RELATIVE_TO_OPEN)) / 1.3f);
            float f3 = this.mWidth;
            int i3 = this.mHeight;
            this.mCloseBackgroundRoundedRectF = new RectF(0.0f, 0.0f, f3, i3 - (i3 * CLOSE_BUTTON_SIZE_RATIO_RELATIVE_TO_OPEN));
            int i4 = this.mHeight;
            generateMinusButtonPath(this.mWidth / 2.0f, (i4 - (i4 * CLOSE_BUTTON_SIZE_RATIO_RELATIVE_TO_OPEN)) / 2.0f);
            return;
        }
        if (i != 2) {
            return;
        }
        if (this.mDrawableType == PanelDrawableType.OPEN_VIEW) {
            int i5 = this.mHeight;
            this.mOpenBackgroundRectF = new RectF(0.0f, i5 / 2.0f, this.mWidth, i5);
            this.mOpenBackgroundRoundedRectF = new RectF(0.0f, 0.0f, this.mWidth, this.mHeight);
            generatePlusButtonPath(this.mWidth / 2.0f, this.mHeight / 2.0f);
            return;
        }
        int i6 = this.mHeight;
        this.mCloseBackgroundRectF = new RectF(0.0f, i6 * CLOSE_BUTTON_SIZE_RATIO_RELATIVE_TO_OPEN * 1.3f, this.mWidth, i6);
        int i7 = this.mHeight;
        this.mCloseBackgroundRoundedRectF = new RectF(0.0f, i7 * CLOSE_BUTTON_SIZE_RATIO_RELATIVE_TO_OPEN, this.mWidth, i7);
        int i8 = this.mHeight;
        float f4 = i8 * CLOSE_BUTTON_SIZE_RATIO_RELATIVE_TO_OPEN;
        generateMinusButtonPath(this.mWidth / 2.0f, f4 + ((i8 - f4) / 2.0f));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.mBgPaint.setColor(this.mBaseColor);
        this.mXPaint.setColor(this.mXcolor);
        float f2 = this.mWidth * 0.14084508f;
        int i = AnonymousClass1.$SwitchMap$com$kidoz$sdk$api$ui_views$custom_drawables$DefaultPanelDrawable$PanelDrawableType[this.mDrawableType.ordinal()];
        if (i == 1) {
            canvas.drawRect(this.mOpenBackgroundRectF, this.mBgPaint);
            canvas.drawRoundRect(this.mOpenBackgroundRoundedRectF, f2, f2, this.mBgPaint);
            if (this.mDrawSign) {
                canvas.drawPath(this.mPlus, this.mXPaint);
                return;
            }
            return;
        }
        if (i != 2) {
            return;
        }
        canvas.drawRect(this.mCloseBackgroundRectF, this.mBgPaint);
        canvas.drawRoundRect(this.mCloseBackgroundRoundedRectF, f2, f2, this.mBgPaint);
        if (this.mDrawSign) {
            canvas.drawPath(this.mMinus, this.mXPaint);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.mWidth = rect.width();
        this.mHeight = rect.height();
        initRectF();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mBgPaint.setAlpha(i);
        this.mXPaint.setAlpha(i);
    }

    public void setBaseColor(int i) {
        this.mBaseColor = i;
        this.mBgPaint.setColor(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mBgPaint.setColorFilter(colorFilter);
        this.mXPaint.setColorFilter(colorFilter);
    }

    public void setDrawSign(boolean z) {
        this.mDrawSign = z;
        invalidateSelf();
    }

    public void setPanelType(PANEL_TYPE panel_type) {
        this.mPanelType = panel_type;
        initRectF();
        invalidateSelf();
    }
}

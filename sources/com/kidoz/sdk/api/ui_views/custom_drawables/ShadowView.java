package com.kidoz.sdk.api.ui_views.custom_drawables;

import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import com.kidoz.sdk.api.general.utils.Utils;
import com.kidoz.sdk.api.ui_views.panel_view.HANDLE_POSITION;
import com.kidoz.sdk.api.ui_views.panel_view.PANEL_TYPE;

/* JADX INFO: loaded from: classes4.dex */
public class ShadowView extends View {
    private float mCornerRadius;
    private HANDLE_POSITION mHandePosition;
    private Paint mPaint;
    private PANEL_TYPE mPanelType;
    private RectF mRectF;

    /* JADX INFO: renamed from: com.kidoz.sdk.api.ui_views.custom_drawables.ShadowView$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$HANDLE_POSITION;
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE;

        static {
            int[] iArr = new int[PANEL_TYPE.values().length];
            $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE = iArr;
            try {
                iArr[PANEL_TYPE.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            int[] iArr2 = new int[HANDLE_POSITION.values().length];
            $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$HANDLE_POSITION = iArr2;
            try {
                iArr2[HANDLE_POSITION.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$HANDLE_POSITION[HANDLE_POSITION.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public ShadowView(Context context) {
        super(context);
        initView();
    }

    private void initView() {
        int iDpTOpx = Utils.dpTOpx(getContext(), 3.0f);
        Paint paint = new Paint(1);
        this.mPaint = paint;
        paint.setStyle(Paint.Style.FILL);
        this.mPaint.setColor(Color.parseColor("#000000"));
        this.mPaint.setMaskFilter(new BlurMaskFilter(iDpTOpx, BlurMaskFilter.Blur.NORMAL));
        this.mCornerRadius = Utils.dpTOpx(getContext(), 4.0f);
        setLayerType(1, this.mPaint);
    }

    private void prepareView() {
        int iDpTOpx = Utils.dpTOpx(getContext(), 13.0f);
        int iDpTOpx2 = Utils.dpTOpx(getContext(), 11.0f);
        this.mRectF = new RectF();
        if (AnonymousClass1.$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE[this.mPanelType.ordinal()] != 1) {
            int i = AnonymousClass1.$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$HANDLE_POSITION[this.mHandePosition.ordinal()];
            if (i == 1) {
                this.mRectF.set(iDpTOpx, iDpTOpx2, getWidth() - iDpTOpx, getHeight() + iDpTOpx2);
            } else if (i != 2) {
                this.mRectF.set(-iDpTOpx, iDpTOpx2, getWidth() - iDpTOpx, getHeight() + iDpTOpx2);
            } else {
                this.mRectF.set(iDpTOpx, iDpTOpx2, getWidth() + iDpTOpx, getHeight() + iDpTOpx2);
            }
        } else {
            int i2 = AnonymousClass1.$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$HANDLE_POSITION[this.mHandePosition.ordinal()];
            if (i2 == 1) {
                this.mRectF.set(iDpTOpx, -iDpTOpx2, getWidth() - iDpTOpx, getHeight() - iDpTOpx2);
            } else if (i2 != 2) {
                this.mRectF.set(-iDpTOpx, -iDpTOpx2, getWidth() - iDpTOpx, getHeight() - iDpTOpx2);
            } else {
                this.mRectF.set(iDpTOpx, -iDpTOpx2, getWidth() + iDpTOpx, getHeight() - iDpTOpx2);
            }
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        RectF rectF = this.mRectF;
        float f2 = this.mCornerRadius;
        canvas.drawRoundRect(rectF, f2, f2, this.mPaint);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        prepareView();
    }

    public void setConfiguration(PANEL_TYPE panel_type, HANDLE_POSITION handle_position) {
        this.mPanelType = panel_type;
        this.mHandePosition = handle_position;
        prepareView();
        postInvalidate();
    }
}

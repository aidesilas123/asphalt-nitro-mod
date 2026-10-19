package com.mbridge.msdk.videocommon.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.widget.MBImageView;

/* JADX INFO: loaded from: classes4.dex */
public class RoundImageView extends MBImageView {
    private int a;
    private int b;
    private Paint c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7622d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Matrix f7623e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private BitmapShader f7624f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f7625g;
    private RectF h;

    public RoundImageView(Context context) {
        super(context);
        this.f7623e = new Matrix();
        Paint paint = new Paint();
        this.c = paint;
        paint.setAntiAlias(true);
        this.b = (int) TypedValue.applyDimension(1, 5.0f, getResources().getDisplayMetrics());
        this.a = 1;
    }

    public RoundImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7623e = new Matrix();
        Paint paint = new Paint();
        this.c = paint;
        paint.setAntiAlias(true);
        this.b = (int) TypedValue.applyDimension(1, 5.0f, getResources().getDisplayMetrics());
        this.a = 1;
    }

    public RoundImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7623e = new Matrix();
        Paint paint = new Paint();
        this.c = paint;
        paint.setAntiAlias(true);
        this.b = (int) TypedValue.applyDimension(1, 5.0f, getResources().getDisplayMetrics());
        this.a = 1;
    }

    private Bitmap a(Drawable drawable) {
        try {
            if (drawable instanceof BitmapDrawable) {
                return ((BitmapDrawable) drawable).getBitmap();
            }
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_4444);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            drawable.draw(canvas);
            return bitmapCreateBitmap;
        } catch (Throwable th) {
            aa.d("View", th.getMessage());
            return null;
        }
    }

    @Override // com.mbridge.msdk.widget.MBImageView, android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Bitmap bitmapA;
        try {
            if (getDrawable() == null) {
                return;
            }
            try {
                Drawable drawable = getDrawable();
                if (drawable != null && (bitmapA = a(drawable)) != null && !bitmapA.isRecycled()) {
                    Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                    this.f7624f = new BitmapShader(bitmapA, tileMode, tileMode);
                    int i = this.a;
                    float fMax = 1.0f;
                    if (i == 0) {
                        fMax = (this.f7625g * 1.0f) / Math.min(bitmapA.getWidth(), bitmapA.getHeight());
                    } else if (i == 1) {
                        fMax = Math.max((getWidth() * 1.0f) / bitmapA.getWidth(), (getHeight() * 1.0f) / bitmapA.getHeight());
                    }
                    this.f7623e.setScale(fMax, fMax);
                    this.f7624f.setLocalMatrix(this.f7623e);
                    this.c.setShader(this.f7624f);
                }
            } catch (Throwable th) {
                aa.d("RoundImageView", th.getMessage());
            }
            if (this.a != 1) {
                int i2 = this.f7622d;
                canvas.drawCircle(i2, i2, i2, this.c);
            } else {
                RectF rectF = this.h;
                int i3 = this.b;
                canvas.drawRoundRect(rectF, i3, i3, this.c);
            }
        } catch (Throwable th2) {
            aa.d("RoundImageView", th2.getMessage());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.a == 0) {
            int iMin = Math.min(getMeasuredWidth(), getMeasuredHeight());
            this.f7625g = iMin;
            this.f7622d = iMin / 2;
            setMeasuredDimension(iMin, iMin);
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable("state_instance"));
        this.a = bundle.getInt("state_type");
        this.b = bundle.getInt("state_border_radius");
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("state_instance", super.onSaveInstanceState());
        bundle.putInt("state_type", this.a);
        bundle.putInt("state_border_radius", this.b);
        return bundle;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.a == 1) {
            this.h = new RectF(0.0f, 0.0f, getWidth(), getHeight());
        }
    }

    public void setBorderRadius(int i) {
        int iB = af.b(getContext(), i);
        if (this.b != iB) {
            this.b = iB;
            invalidate();
        }
    }

    public void setType(int i) {
        if (this.a != i) {
            this.a = i;
            if (i != 1 && i != 0) {
                this.a = 0;
            }
            requestLayout();
        }
    }
}

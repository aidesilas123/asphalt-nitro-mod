package com.bytedance.sdk.component.adexpress.widget;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.view.View;
import com.bytedance.component.sdk.annotation.RequiresApi;
import com.bytedance.sdk.component.utils.l;

/* JADX INFO: loaded from: classes.dex */
public class BrushMaskView extends View {
    private static final String a = BrushMaskView.class.getSimpleName();
    private Paint b;
    private Bitmap c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Canvas f816d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Paint f817e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private BitmapDrawable f818f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Paint f819g;
    private Path h;
    private Path i;
    private Paint j;

    public BrushMaskView(Context context) {
        super(context);
        a(context);
    }

    private int a(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            return size;
        }
        if (mode == Integer.MIN_VALUE) {
            return Math.min(0, size);
        }
        return 0;
    }

    private void a(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            this.c = bitmapCreateBitmap;
            Canvas canvas = this.f816d;
            if (canvas == null) {
                this.f816d = new Canvas(this.c);
            } else {
                canvas.setBitmap(bitmapCreateBitmap);
            }
            this.f816d.drawRoundRect(new RectF(0.0f, 0.0f, i, i2), 120.0f, 120.0f, this.b);
            if (this.f818f != null) {
                this.f818f.setBounds(new Rect(0, 0, i, i2));
                this.f818f.draw(this.f816d);
            }
        } catch (Exception e2) {
            l.e(a, e2.getMessage());
        }
    }

    private void a(Context context) {
        Paint paint = new Paint();
        this.b = paint;
        paint.setAntiAlias(true);
        this.b.setDither(true);
        setMaskColor(-1426063361);
        Paint paint2 = new Paint();
        this.f817e = paint2;
        paint2.setAntiAlias(true);
        this.f817e.setDither(true);
        Paint paint3 = new Paint();
        this.j = paint3;
        paint3.setColor(-7829368);
        this.j.setAlpha(100);
        this.j.setAntiAlias(true);
        this.j.setDither(true);
        this.j.setStyle(Paint.Style.STROKE);
        this.j.setStrokeCap(Paint.Cap.ROUND);
        if (Build.VERSION.SDK_INT >= 21) {
            setWatermark(-1);
        } else {
            setMaskColor(-1426063361);
        }
        Paint paint4 = new Paint();
        this.f819g = paint4;
        paint4.setAntiAlias(true);
        this.f819g.setDither(true);
        this.f819g.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.f819g.setStyle(Paint.Style.STROKE);
        this.f819g.setStrokeCap(Paint.Cap.ROUND);
        setEraserSize(60.0f);
        this.h = new Path();
        this.i = new Path();
    }

    private void b(float f2, float f3) {
        this.h.reset();
        this.i.reset();
        this.h.moveTo(f2, f3);
        this.i.moveTo(f2, f3);
    }

    public void a() {
        a(getWidth(), getHeight());
        invalidate();
    }

    public void a(float f2, float f3) {
        b(f2, f3);
        invalidate();
    }

    public void b() {
        c();
    }

    public void c() {
        final int width = getWidth();
        final int height = getHeight();
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setDuration(400L);
        valueAnimator.setIntValues(0, width);
        valueAnimator.setInterpolator(new TimeInterpolator() { // from class: com.bytedance.sdk.component.adexpress.widget.BrushMaskView.1
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f2) {
                int i = (int) (width * f2);
                if (BrushMaskView.this.f816d != null) {
                    Canvas canvas = BrushMaskView.this.f816d;
                    int i2 = height;
                    canvas.drawRect(0.0f, i2 / 2, i - 50, i2 / 2, BrushMaskView.this.f819g);
                    BrushMaskView.this.f816d.drawCircle(i, height / 2, 10.0f, BrushMaskView.this.f819g);
                }
                BrushMaskView.this.postInvalidate();
                return f2;
            }
        });
        valueAnimator.start();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Bitmap bitmap = this.c;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.f817e);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension(a(i), a(i2));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        a(i, i2);
    }

    public void setEraserSize(float f2) {
        this.f819g.setStrokeWidth(f2);
        this.j.setStrokeWidth(f2);
    }

    public void setMaskColor(int i) {
        this.b.setColor(i);
    }

    @RequiresApi(api = 21)
    public void setWatermark(int i) {
        if (i == -1) {
            this.f818f = null;
        } else {
            this.f818f = new BitmapDrawable(BitmapFactory.decodeResource(getResources(), i));
        }
    }
}

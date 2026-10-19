package com.mbridge.msdk.dycreator.baseview.cusview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.mbridge.msdk.foundation.tools.aa;

/* JADX INFO: loaded from: classes4.dex */
public class MBridgeImageView extends ImageView {
    private Xfermode a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6881d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f6882e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f6883f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f6884g;
    private int h;
    private int i;
    private int j;
    private float[] k;
    private float[] l;
    private RectF m;
    private RectF n;
    private boolean o;
    private boolean p;
    private Path q;
    private Paint r;

    public MBridgeImageView(Context context) {
        this(context, null);
    }

    public MBridgeImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MBridgeImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.q = new Path();
        this.r = new Paint();
        this.k = new float[8];
        this.l = new float[8];
        this.n = new RectF();
        this.m = new RectF();
        this.a = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (canvas == null) {
            return;
        }
        try {
            canvas.saveLayer(this.m, null, 31);
            int i = this.b;
            int i2 = this.i;
            int i3 = this.c;
            canvas.scale(((i - (i2 * 2)) * 1.0f) / i, ((i3 - (i2 * 2)) * 1.0f) / i3, i / 2.0f, i3 / 2.0f);
            super.onDraw(canvas);
            Paint paint = this.r;
            if (paint != null) {
                paint.reset();
                this.r.setAntiAlias(true);
                this.r.setStyle(Paint.Style.FILL);
                this.r.setXfermode(this.a);
            }
            Path path = this.q;
            if (path != null) {
                path.reset();
                this.q.addRoundRect(this.m, this.l, Path.Direction.CCW);
            }
            canvas.drawPath(this.q, this.r);
            Paint paint2 = this.r;
            if (paint2 != null) {
                paint2.setXfermode(null);
            }
            canvas.restore();
            if (this.o) {
                int i4 = this.i;
                int i5 = this.j;
                RectF rectF = this.n;
                float[] fArr = this.k;
                try {
                    Path path2 = this.q;
                    if (path2 != null) {
                        path2.reset();
                    }
                    Paint paint3 = this.r;
                    if (paint3 != null) {
                        paint3.setStrokeWidth(i4);
                        this.r.setColor(i5);
                        this.r.setStyle(Paint.Style.STROKE);
                    }
                    Path path3 = this.q;
                    if (path3 != null) {
                        path3.addRoundRect(rectF, fArr, Path.Direction.CCW);
                    }
                    canvas.drawPath(this.q, this.r);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        } catch (Exception e3) {
            aa.a("MBridgeImageView", e3.getMessage());
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        super.onSizeChanged(i, i2, i3, i4);
        this.b = i;
        this.c = i2;
        int i8 = 0;
        if (this.p) {
            try {
                if (this.k != null && this.l != null) {
                    while (true) {
                        i5 = 2;
                        if (i8 >= 2) {
                            break;
                        }
                        float[] fArr = this.k;
                        int i9 = this.f6882e;
                        fArr[i8] = i9;
                        this.l[i8] = i9 - (this.i / 2.0f);
                        i8++;
                    }
                    while (true) {
                        i6 = 4;
                        if (i5 >= 4) {
                            break;
                        }
                        float[] fArr2 = this.k;
                        int i10 = this.f6883f;
                        fArr2[i5] = i10;
                        this.l[i5] = i10 - (this.i / 2.0f);
                        i5++;
                    }
                    while (true) {
                        if (i6 >= 6) {
                            break;
                        }
                        float[] fArr3 = this.k;
                        int i11 = this.f6884g;
                        fArr3[i6] = i11;
                        this.l[i6] = i11 - (this.i / 2.0f);
                        i6++;
                    }
                    for (i7 = 6; i7 < 8; i7++) {
                        float[] fArr4 = this.k;
                        int i12 = this.h;
                        fArr4[i7] = i12;
                        this.l[i7] = i12 - (this.i / 2.0f);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } else if (this.k != null && this.l != null) {
            while (true) {
                try {
                    float[] fArr5 = this.k;
                    if (i8 >= fArr5.length) {
                        break;
                    }
                    int i13 = this.f6881d;
                    fArr5[i8] = i13;
                    this.l[i8] = i13 - (this.i / 2.0f);
                    i8++;
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
        }
        RectF rectF = this.n;
        if (rectF != null) {
            int i14 = this.i;
            rectF.set(i14 / 2.0f, i14 / 2.0f, this.b - (i14 / 2.0f), this.c - (i14 / 2.0f));
        }
        RectF rectF2 = this.m;
        if (rectF2 != null) {
            rectF2.set(0.0f, 0.0f, this.b, this.c);
        }
    }

    public void setBorder(int i, int i2, int i3) {
        this.o = true;
        this.i = i2;
        this.j = i3;
        this.f6881d = i;
    }

    public void setCornerRadius(int i) {
        this.f6881d = i;
    }

    public void setCustomBorder(int i, int i2, int i3, int i4, int i5, int i6) {
        this.o = true;
        this.p = true;
        this.i = i5;
        this.j = i6;
        this.f6882e = i;
        this.f6884g = i3;
        this.f6883f = i2;
        this.h = i4;
    }
}

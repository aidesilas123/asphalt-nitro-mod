package com.mbridge.msdk.video.dynview.g;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;

/* JADX INFO: compiled from: BackgroundDrawable.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a extends ShapeDrawable {
    private int a;
    private float b;
    private float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7519d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7520e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Bitmap f7521f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Bitmap f7522g;
    private boolean h;
    private Paint i;
    private Matrix j;

    /* JADX INFO: renamed from: com.mbridge.msdk.video.dynview.g.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BackgroundDrawable.java */
    public static class C0430a implements b {
        private RectShape a;
        private Bitmap b;
        private Bitmap c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f7523d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f7524e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f7525f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f7526g;
        private float h;
        private float i;

        private C0430a() {
            this.f7525f = 100;
            this.f7526g = 10;
            this.a = new RectShape();
        }

        public final b a(float f2) {
            this.h = f2;
            return this;
        }

        public final b a(int i) {
            this.f7524e = i;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.g.a.b
        public final b a(Bitmap bitmap) {
            this.b = bitmap;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.g.a.b
        public final b a(boolean z) {
            this.f7523d = z;
            return this;
        }

        public final a a() {
            return new a(this);
        }

        @Override // com.mbridge.msdk.video.dynview.g.a.b
        public final b b(float f2) {
            this.i = f2;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.g.a.b
        public final b b(Bitmap bitmap) {
            this.c = bitmap;
            return this;
        }
    }

    /* JADX INFO: compiled from: BackgroundDrawable.java */
    public interface b {
        b a(Bitmap bitmap);

        b a(boolean z);

        b b(float f2);

        b b(Bitmap bitmap);
    }

    private a(C0430a c0430a) {
        super(c0430a.a);
        this.h = false;
        this.f7521f = c0430a.b;
        this.f7522g = c0430a.c;
        this.h = c0430a.f7523d;
        this.a = c0430a.f7524e;
        this.f7519d = c0430a.f7525f;
        this.f7520e = c0430a.f7526g;
        this.b = c0430a.h;
        this.c = c0430a.i;
        Paint paint = new Paint();
        this.i = paint;
        paint.setStyle(Paint.Style.FILL);
        this.i.setAntiAlias(true);
        this.j = new Matrix();
    }

    public static C0430a a() {
        return new C0430a();
    }

    private void a(Canvas canvas, Path path) {
        this.i.setColor(Color.parseColor("#40EAEAEA"));
        canvas.drawPath(path, this.i);
    }

    private void a(Canvas canvas, Path path, Bitmap bitmap) {
        if (canvas == null || path == null || bitmap == null || bitmap.isRecycled()) {
            return;
        }
        if (bitmap.getWidth() != 0 && bitmap.getHeight() != 0) {
            float fMax = Math.max(this.b / bitmap.getWidth(), this.c / bitmap.getHeight());
            if (this.j == null) {
                this.j = new Matrix();
            }
            this.j.reset();
            this.j.preScale(fMax, fMax);
        }
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        bitmapShader.setLocalMatrix(this.j);
        this.i.setShader(bitmapShader);
        canvas.drawPath(path, this.i);
    }

    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.a == 1) {
            float f2 = this.c / 2.0f;
            Path path = new Path();
            path.moveTo(0.0f, 0.0f);
            path.lineTo(0.0f, (this.f7519d + f2) - this.f7520e);
            path.lineTo(this.b, (f2 - this.f7519d) - this.f7520e);
            path.lineTo(this.b, 0.0f);
            if (this.h) {
                try {
                    a(canvas, path);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } else {
                Bitmap bitmap = this.f7521f;
                if (bitmap != null && !bitmap.isRecycled()) {
                    try {
                        a(canvas, path, this.f7521f);
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
            }
            Path path2 = new Path();
            path2.moveTo(0.0f, this.f7519d + f2 + this.f7520e);
            path2.lineTo(0.0f, this.c);
            path2.lineTo(this.b, this.c);
            path2.lineTo(this.b, (f2 - this.f7519d) + this.f7520e);
            if (this.h) {
                try {
                    a(canvas, path2);
                    return;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    return;
                }
            }
            Bitmap bitmap2 = this.f7522g;
            if (bitmap2 == null || bitmap2.isRecycled()) {
                return;
            }
            try {
                a(canvas, path2, this.f7522g);
                return;
            } catch (Exception e5) {
                e5.printStackTrace();
                return;
            }
        }
        float f3 = this.b / 2.0f;
        Path path3 = new Path();
        path3.moveTo(0.0f, 0.0f);
        path3.lineTo(0.0f, this.c);
        path3.lineTo((f3 - this.f7519d) - this.f7520e, this.c);
        path3.lineTo((this.f7519d + f3) - this.f7520e, 0.0f);
        if (this.h) {
            try {
                a(canvas, path3);
            } catch (Exception e6) {
                e6.printStackTrace();
            }
        } else {
            Bitmap bitmap3 = this.f7521f;
            if (bitmap3 != null && !bitmap3.isRecycled()) {
                try {
                    a(canvas, path3, this.f7521f);
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
            }
        }
        Path path4 = new Path();
        path4.moveTo(this.f7519d + f3 + this.f7520e, 0.0f);
        path4.lineTo(this.b, 0.0f);
        path4.lineTo(this.b, this.c);
        path4.lineTo((f3 - this.f7519d) + this.f7520e, this.c);
        if (this.h) {
            try {
                a(canvas, path4);
                return;
            } catch (Exception e8) {
                e8.printStackTrace();
                return;
            }
        }
        Bitmap bitmap4 = this.f7522g;
        if (bitmap4 == null || bitmap4.isRecycled()) {
            return;
        }
        try {
            a(canvas, path4, this.f7522g);
        } catch (Exception e9) {
            e9.printStackTrace();
        }
    }

    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }
}

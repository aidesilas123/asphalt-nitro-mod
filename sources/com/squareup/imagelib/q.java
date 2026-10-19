package com.squareup.imagelib;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.widget.ImageView;
import com.squareup.imagelib.Picasso;

/* JADX INFO: compiled from: PicassoDrawable.java */
/* JADX INFO: loaded from: classes4.dex */
final class q extends BitmapDrawable {
    private static final Paint a = new Paint();
    private final boolean b;
    private final float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Picasso.LoadedFrom f7759d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Drawable f7760e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f7761f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f7762g;
    int h;

    q(Context context, Bitmap bitmap, Drawable drawable, Picasso.LoadedFrom loadedFrom, boolean z, boolean z2) {
        super(context.getResources(), bitmap);
        this.h = 255;
        this.b = z2;
        this.c = context.getResources().getDisplayMetrics().density;
        this.f7759d = loadedFrom;
        if ((loadedFrom == Picasso.LoadedFrom.MEMORY || z) ? false : true) {
            this.f7760e = drawable;
            this.f7762g = true;
            this.f7761f = SystemClock.uptimeMillis();
        }
    }

    private void a(Canvas canvas) {
        Paint paint = a;
        paint.setColor(-1);
        canvas.drawPath(b(new Point(0, 0), (int) (this.c * 16.0f)), paint);
        paint.setColor(this.f7759d.f7734e);
        canvas.drawPath(b(new Point(0, 0), (int) (this.c * 15.0f)), paint);
    }

    private static Path b(Point point, int i) {
        Point point2 = new Point(point.x + i, point.y);
        Point point3 = new Point(point.x, point.y + i);
        Path path = new Path();
        path.moveTo(point.x, point.y);
        path.lineTo(point2.x, point2.y);
        path.lineTo(point3.x, point3.y);
        return path;
    }

    static void c(ImageView imageView, Context context, Bitmap bitmap, Picasso.LoadedFrom loadedFrom, boolean z, boolean z2) {
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof AnimationDrawable) {
            ((AnimationDrawable) drawable).stop();
        }
        imageView.setImageDrawable(new q(context, bitmap, drawable, loadedFrom, z, z2));
    }

    static void d(ImageView imageView, Drawable drawable) {
        imageView.setImageDrawable(drawable);
        if (imageView.getDrawable() instanceof AnimationDrawable) {
            ((AnimationDrawable) imageView.getDrawable()).start();
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f7762g) {
            float fUptimeMillis = (SystemClock.uptimeMillis() - this.f7761f) / 200.0f;
            if (fUptimeMillis >= 1.0f) {
                this.f7762g = false;
                this.f7760e = null;
                super.draw(canvas);
            } else {
                Drawable drawable = this.f7760e;
                if (drawable != null) {
                    drawable.draw(canvas);
                }
                super.setAlpha((int) (this.h * fUptimeMillis));
                super.draw(canvas);
                super.setAlpha(this.h);
                if (Build.VERSION.SDK_INT <= 10) {
                    invalidateSelf();
                }
            }
        } else {
            super.draw(canvas);
        }
        if (this.b) {
            a(canvas);
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f7760e;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.h = i;
        Drawable drawable = this.f7760e;
        if (drawable != null) {
            drawable.setAlpha(i);
        }
        super.setAlpha(i);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f7760e;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
        super.setColorFilter(colorFilter);
    }
}

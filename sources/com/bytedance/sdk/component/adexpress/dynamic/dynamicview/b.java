package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.GradientDrawable;
import com.bytedance.component.sdk.annotation.ColorInt;

/* JADX INFO: compiled from: CoverDrawable.java */
/* JADX INFO: loaded from: classes.dex */
public class b extends GradientDrawable {
    protected Path a;
    private final Paint b;

    public b() {
        this.a = new Path();
        Paint paint = new Paint(1);
        this.b = paint;
        paint.setColor(-1);
    }

    public b(GradientDrawable.Orientation orientation, @ColorInt int[] iArr) {
        super(orientation, iArr);
        this.a = new Path();
        Paint paint = new Paint(1);
        this.b = paint;
        paint.setColor(-1);
    }

    public void a(int i, int i2, int i3, int i4) {
        this.a.addRect(i, i2, i3, i4, Path.Direction.CW);
        invalidateSelf();
    }

    protected void a(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Path path = this.a;
        if (path == null || path.isEmpty()) {
            a(canvas);
            return;
        }
        int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), this.b, 31);
        a(canvas);
        this.b.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        canvas.drawPath(this.a, this.b);
        this.b.setXfermode(null);
        canvas.restoreToCount(iSaveLayer);
    }
}

package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;

/* JADX INFO: compiled from: BitmapCoverDrawable.java */
/* JADX INFO: loaded from: classes.dex */
public class a extends b {
    private final Bitmap c;
    private final Rect b = new Rect();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Paint f758d = new Paint(1);

    public a(Bitmap bitmap, b bVar) {
        this.c = bitmap;
        if (bVar != null) {
            this.a = bVar.a;
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.b
    protected void a(Canvas canvas) {
        canvas.drawBitmap(this.c, this.b, getBounds(), this.f758d);
    }

    @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        int iHeight = rect.height();
        int iWidth = rect.width();
        int width = this.c.getWidth();
        int height = this.c.getHeight();
        this.b.set(0, 0, width, height);
        if (height >= iHeight && width >= iWidth) {
            if (width > iWidth) {
                Rect rect2 = this.b;
                int i = (width - iWidth) / 2;
                rect2.left = i;
                rect2.right = i + iWidth;
            }
            if (height > iHeight) {
                Rect rect3 = this.b;
                int i2 = (height - iHeight) / 2;
                rect3.top = i2;
                rect3.bottom = i2 + iHeight;
                return;
            }
            return;
        }
        float f2 = iHeight;
        float f3 = f2 * 1.0f;
        float f4 = height;
        float f5 = f3 / f4;
        float f6 = iWidth;
        float f7 = 1.0f * f6;
        float f8 = width;
        if (Math.max(f5, f7 / f8) > f5) {
            int i3 = (int) ((f3 / f6) * f8);
            Rect rect4 = this.b;
            int i4 = (height - i3) / 2;
            rect4.top = i4;
            rect4.bottom = i4 + i3;
            return;
        }
        int i5 = (int) ((f7 / f2) * f4);
        Rect rect5 = this.b;
        int i6 = (width - i5) / 2;
        rect5.left = i6;
        rect5.right = i6 + i5;
    }
}

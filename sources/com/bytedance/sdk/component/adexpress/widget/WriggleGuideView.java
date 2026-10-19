package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.bytedance.sdk.component.utils.s;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class WriggleGuideView extends View {
    private int a;
    private int b;
    private Bitmap c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Bitmap f883d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Paint f884e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f885f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<Object> f886g;
    private boolean h;
    private boolean i;
    private a j;

    public interface a {
        void a();
    }

    public WriggleGuideView(Context context) {
        this(context, null);
    }

    public WriggleGuideView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WriggleGuideView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = 0;
        this.b = 0;
        this.f885f = 0;
        ArrayList arrayList = new ArrayList();
        this.f886g = arrayList;
        this.h = true;
        this.i = false;
        setLayerType(1, null);
        this.f884e = new Paint();
        this.f884e = new Paint(1);
        arrayList.clear();
    }

    private Bitmap a(int i, int i2) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getContext().getResources(), s.d(getContext(), "tt_wriggle_union"));
        if (bitmapDecodeResource != null) {
            canvas.drawBitmap(bitmapDecodeResource, (Rect) null, new RectF(0.0f, 0.0f, i, i2), this.f884e);
        }
        return bitmapCreateBitmap;
    }

    private Bitmap b(int i, int i2) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(1);
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getContext().getResources(), s.d(getContext(), "tt_wriggle_union_white"));
        if (bitmapDecodeResource != null) {
            canvas.drawBitmap(bitmapDecodeResource, (Rect) null, new RectF(0.0f, 0.0f, i, i2), paint);
        }
        return bitmapCreateBitmap;
    }

    private Bitmap c(int i, int i2) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(1);
        paint.setColor(-1);
        canvas.drawCircle(i / 2, 10.0f, this.f885f, paint);
        return bitmapCreateBitmap;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.j != null) {
            this.j = null;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.h) {
            this.a = getWidth();
            int height = getHeight();
            this.b = height;
            this.c = a(this.a, height);
            this.f883d = b(this.a, this.b);
            this.h = false;
        }
        canvas.drawBitmap(this.c, 0.0f, 0.0f, this.f884e);
        int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), null, 31);
        canvas.drawBitmap(this.f883d, 0.0f, 0.0f, this.f884e);
        this.f884e.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(c(this.a, this.b), 0.0f, 0.0f, this.f884e);
        this.f884e.setXfermode(null);
        canvas.restoreToCount(iSaveLayer);
        if (this.i) {
            this.f885f += 5;
            invalidate();
            if (this.f885f >= this.a) {
                a aVar = this.j;
                if (aVar != null) {
                    aVar.a();
                }
                this.i = false;
            }
        }
    }
}

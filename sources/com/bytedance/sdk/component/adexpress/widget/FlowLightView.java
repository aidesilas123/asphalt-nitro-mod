package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.Xfermode;
import android.view.View;
import com.bytedance.sdk.component.utils.s;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FlowLightView extends View {
    Rect a;
    Rect b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f839d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f840e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f841f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f842g;
    private int h;
    private int[] i;
    private Bitmap j;
    private Paint k;
    private Xfermode l;
    private PorterDuff.Mode m;
    private LinearGradient n;
    private final List<a> o;

    public static class a {
        private final int a;
        private int b = 0;

        public a(int i) {
            this.a = i;
        }

        public void a() {
            this.b += this.a;
        }
    }

    public FlowLightView(Context context) {
        super(context);
        this.m = PorterDuff.Mode.DST_IN;
        this.o = new ArrayList();
        a();
    }

    private void a() {
        this.c = s.d(getContext(), "tt_splash_unlock_image_arrow");
        this.f839d = Color.parseColor("#00ffffff");
        this.f840e = Color.parseColor("#ffffffff");
        int color = Color.parseColor("#00ffffff");
        this.f841f = color;
        this.f842g = 10;
        this.h = 40;
        this.i = new int[]{this.f839d, this.f840e, color};
        setLayerType(1, null);
        this.k = new Paint(1);
        this.j = BitmapFactory.decodeResource(getResources(), this.c);
        this.l = new PorterDuffXfermode(this.m);
    }

    public void a(int i) {
        this.o.add(new a(i));
        postInvalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawBitmap(this.j, this.a, this.b, this.k);
        canvas.save();
        Iterator<a> it = this.o.iterator();
        while (it.hasNext()) {
            a next = it.next();
            this.n = new LinearGradient(next.b, 0.0f, next.b + this.h, this.f842g, this.i, (float[]) null, Shader.TileMode.CLAMP);
            this.k.setColor(-1);
            this.k.setShader(this.n);
            canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.k);
            this.k.setShader(null);
            next.a();
            if (next.b > getWidth()) {
                it.remove();
            }
        }
        this.k.setXfermode(this.l);
        canvas.drawBitmap(this.j, this.a, this.b, this.k);
        this.k.setXfermode(null);
        canvas.restore();
        invalidate();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.j == null) {
            return;
        }
        this.a = new Rect(0, 0, this.j.getWidth(), this.j.getHeight());
        this.b = new Rect(0, 0, getWidth(), getHeight());
    }
}

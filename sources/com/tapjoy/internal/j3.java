package com.tapjoy.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
public final class j3 extends View {
    public boolean a;
    public Bitmap b;
    public Rect c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Rect f7920d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Rect f7921e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Rect f7922f;

    public j3(Context context) {
        super(context);
        this.a = false;
        this.b = null;
        this.c = null;
        this.f7920d = null;
        this.f7921e = null;
        this.f7922f = new Rect();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.f7921e == null || this.b == null) {
            return;
        }
        getDrawingRect(this.f7922f);
        canvas.drawBitmap(this.b, this.f7921e, this.f7922f, (Paint) null);
    }

    public void setImageBitmap(Bitmap bitmap) {
        this.b = bitmap;
        int width = bitmap.getWidth();
        int height = this.b.getHeight();
        int i = width / 2;
        this.f7920d = new Rect(0, 0, i, height);
        Rect rect = new Rect(i, 0, width, height);
        this.c = rect;
        if (this.a) {
            this.f7921e = rect;
        } else {
            this.f7921e = this.f7920d;
        }
    }
}

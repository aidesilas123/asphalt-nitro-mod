package com.tapjoy.internal;

import android.graphics.drawable.BitmapDrawable;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
public final class f6 implements View.OnTouchListener {
    public final /* synthetic */ o7 a;
    public final /* synthetic */ BitmapDrawable b;
    public final /* synthetic */ o7 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ BitmapDrawable f7900d;

    public f6(o7 o7Var, BitmapDrawable bitmapDrawable, o7 o7Var2, BitmapDrawable bitmapDrawable2) {
        this.a = o7Var;
        this.b = bitmapDrawable;
        this.c = o7Var2;
        this.f7900d = bitmapDrawable2;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        o7 o7Var;
        if (motionEvent.getAction() == 0) {
            if (this.a != null || this.b != null) {
                o7 o7Var2 = this.c;
                if (o7Var2 != null) {
                    o7Var2.b();
                    this.c.setVisibility(4);
                }
                ta.a(view, null);
            }
            BitmapDrawable bitmapDrawable = this.b;
            if (bitmapDrawable != null) {
                ta.a(view, bitmapDrawable);
            } else {
                o7 o7Var3 = this.a;
                if (o7Var3 != null) {
                    o7Var3.setVisibility(0);
                    o7 o7Var4 = this.a;
                    o7Var4.f7949d = true;
                    o7Var4.a();
                }
            }
        } else if (motionEvent.getAction() == 1) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            boolean z = x < 0.0f || x >= ((float) view.getWidth()) || y < 0.0f || y >= ((float) view.getHeight());
            if (z) {
                BitmapDrawable bitmapDrawable2 = this.f7900d;
                if (bitmapDrawable2 != null) {
                    ta.a(view, bitmapDrawable2);
                } else if (this.b != null) {
                    ta.a(view, null);
                }
            }
            o7 o7Var5 = this.a;
            if (o7Var5 != null) {
                o7Var5.b();
                this.a.setVisibility(4);
            }
            if ((this.a != null || this.b != null) && (o7Var = this.c) != null && z) {
                o7Var.setVisibility(0);
                o7 o7Var6 = this.c;
                o7Var6.f7949d = true;
                o7Var6.a();
            }
        }
        return false;
    }
}

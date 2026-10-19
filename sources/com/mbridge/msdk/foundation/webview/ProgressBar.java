package com.mbridge.msdk.foundation.webview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import com.mbridge.msdk.foundation.webview.c;

/* JADX INFO: loaded from: classes4.dex */
public class ProgressBar extends View implements c {
    Runnable a;
    private Rect b;
    private float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f7248d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f7249e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f7250f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f7251g;
    private float h;
    private float i;
    private float j;
    private long k;
    private int l;
    private int m;
    private int n;
    private int o;
    private long p;
    private Drawable q;
    private Drawable r;
    private Drawable s;
    private Drawable t;
    private boolean u;
    private c.a v;
    private Handler w;
    private boolean x;
    private boolean y;

    public ProgressBar(Context context) {
        super(context);
        this.b = new Rect();
        this.f7248d = 0.95f;
        this.p = 25L;
        this.u = false;
        this.w = new Handler(Looper.getMainLooper());
        this.a = new Runnable() { // from class: com.mbridge.msdk.foundation.webview.ProgressBar.1
            @Override // java.lang.Runnable
            public final void run() {
                ProgressBar.this.invalidate();
            }
        };
        this.y = false;
        setWillNotDraw(false);
    }

    public ProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new Rect();
        this.f7248d = 0.95f;
        this.p = 25L;
        this.u = false;
        this.w = new Handler(Looper.getMainLooper());
        this.a = new Runnable() { // from class: com.mbridge.msdk.foundation.webview.ProgressBar.1
            @Override // java.lang.Runnable
            public final void run() {
                ProgressBar.this.invalidate();
            }
        };
        this.y = false;
        setWillNotDraw(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void draw(android.graphics.Canvas r13) {
        /*
            Method dump skipped, instruction units count: 405
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.webview.ProgressBar.draw(android.graphics.Canvas):void");
    }

    @Override // android.view.View
    public Bitmap getDrawingCache(boolean z) {
        return null;
    }

    public float getProgress() {
        return this.i;
    }

    public void initResource(boolean z) {
        if (z || (this.t == null && this.q == null && this.r == null && this.s == null)) {
            Drawable drawable = getResources().getDrawable(getResources().getIdentifier("mbridge_cm_highlight", "drawable", com.mbridge.msdk.foundation.controller.b.d().b()));
            this.t = drawable;
            if (drawable != null) {
                drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), this.t.getIntrinsicHeight());
            }
            Drawable drawable2 = getResources().getDrawable(getResources().getIdentifier("mbridge_cm_head", "drawable", com.mbridge.msdk.foundation.controller.b.d().b()));
            this.q = drawable2;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), this.q.getIntrinsicHeight());
            }
            this.r = getResources().getDrawable(getResources().getIdentifier("mbridge_cm_tail", "drawable", com.mbridge.msdk.foundation.controller.b.d().b()));
            this.s = getResources().getDrawable(getResources().getIdentifier("mbridge_cm_end_animation", "drawable", com.mbridge.msdk.foundation.controller.b.d().b()));
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.c = getMeasuredWidth();
    }

    public void onThemeChange() {
        if (this.u) {
            initResource(true);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        Drawable drawable = this.t;
        if (drawable != null) {
            drawable.setBounds(0, 0, (int) (((double) drawable.getIntrinsicWidth()) * 1.5d), getHeight());
        }
        Drawable drawable2 = this.q;
        if (drawable2 != null) {
            drawable2.setBounds(0, 0, getWidth(), getHeight());
        }
    }

    public void setPaused(boolean z) {
        this.y = z;
        if (z) {
            return;
        }
        this.f7249e = System.currentTimeMillis();
    }

    public void setProgress(float f2, boolean z) {
        if (!z || f2 < 1.0f) {
            return;
        }
        startEndAnimation();
    }

    public void setProgressBarListener(c.a aVar) {
        this.v = aVar;
    }

    public void setProgressState(int i) {
        if (i == 5) {
            this.m = 1;
            this.n = 0;
            this.o = 0;
            this.k = 0L;
            return;
        }
        if (i == 6) {
            this.n = 1;
            if (this.o == 1) {
                startEndAnimation();
            }
            this.k = 0L;
            return;
        }
        if (i == 7) {
            startEndAnimation();
        } else {
            if (i != 8) {
                return;
            }
            this.o = 1;
            if (this.n == 1) {
                startEndAnimation();
            }
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 0) {
            c.a aVar = this.v;
            if (aVar != null) {
                aVar.a(true);
                return;
            }
            return;
        }
        c.a aVar2 = this.v;
        if (aVar2 != null) {
            aVar2.a(false);
        }
    }

    public void setVisible(boolean z) {
        if (!z) {
            setVisibility(4);
            return;
        }
        this.x = true;
        this.f7249e = System.currentTimeMillis();
        this.f7250f = 0.0f;
        this.k = 0L;
        this.f7251g = false;
        this.h = 0.0f;
        this.i = 0.0f;
        this.c = getMeasuredWidth();
        this.y = false;
        this.m = 0;
        this.n = 0;
        this.o = 0;
        Drawable drawable = this.t;
        if (drawable != null) {
            this.l = -drawable.getIntrinsicWidth();
        } else {
            this.l = 0;
        }
        Drawable drawable2 = this.r;
        if (drawable2 != null) {
            drawable2.setAlpha(255);
        }
        Drawable drawable3 = this.s;
        if (drawable3 != null) {
            drawable3.setAlpha(255);
        }
        Drawable drawable4 = this.q;
        if (drawable4 != null) {
            drawable4.setAlpha(255);
        }
        setVisibility(0);
        invalidate();
    }

    public void startEndAnimation() {
        if (this.f7251g) {
            return;
        }
        this.f7251g = true;
        this.h = 0.0f;
    }
}

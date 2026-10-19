package com.json.sdk.controller;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.json.e5;
import com.json.e9;
import com.json.g1;
import com.json.ha;
import com.json.o2;
import com.json.sdk.controller.t;

/* JADX INFO: loaded from: classes4.dex */
public class h extends FrameLayout implements ha {
    private Context a;
    private t b;
    private final e5 c;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewGroup windowDecorViewGroup = h.this.getWindowDecorViewGroup();
            if (windowDecorViewGroup != null) {
                windowDecorViewGroup.addView(h.this);
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewGroup windowDecorViewGroup = h.this.getWindowDecorViewGroup();
            if (windowDecorViewGroup != null) {
                windowDecorViewGroup.removeView(h.this);
            }
        }
    }

    public h(Context context) {
        super(context);
        this.c = e9.h().c();
        this.a = context;
        setClickable(true);
    }

    private void b() {
        ((Activity) this.a).runOnUiThread(new a());
    }

    private void c(int i, int i2) {
        try {
            Context context = this.a;
            if (context != null) {
                int iE = this.c.E(context);
                if (iE == 1) {
                    setPadding(0, i, 0, i2);
                } else if (iE == 2) {
                    setPadding(0, i, i2, 0);
                }
            }
        } catch (Exception unused) {
        }
    }

    private void d() {
        ((Activity) this.a).runOnUiThread(new b());
    }

    private int getNavigationBarPadding() {
        Activity activity = (Activity) this.a;
        try {
            if (Build.VERSION.SDK_INT <= 9) {
                return 0;
            }
            Rect rect = new Rect();
            activity.getWindow().getDecorView().getDrawingRect(rect);
            Rect rect2 = new Rect();
            activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect2);
            if (this.c.E(activity) == 1) {
                int i = rect.bottom - rect2.bottom;
                if (i > 0) {
                    return i;
                }
                return 0;
            }
            int i2 = rect.right - rect2.right;
            if (i2 > 0) {
                return i2;
            }
            return 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    private int getStatusBarHeight() {
        int identifier;
        try {
            Context context = this.a;
            if (context != null && (identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android")) > 0) {
                return this.a.getResources().getDimensionPixelSize(identifier);
            }
        } catch (Exception unused) {
        }
        return 0;
    }

    private int getStatusBarPadding() {
        int statusBarHeight;
        if (!((((Activity) this.a).getWindow().getAttributes().flags & 1024) != 0) && (statusBarHeight = getStatusBarHeight()) > 0) {
            return statusBarHeight;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ViewGroup getWindowDecorViewGroup() {
        Activity activity = (Activity) this.a;
        if (activity != null) {
            return (ViewGroup) activity.getWindow().getDecorView();
        }
        return null;
    }

    public void a(t tVar) {
        this.b = tVar;
        tVar.a(this);
        this.b.x();
        this.a = this.b.j();
        c(getStatusBarPadding(), getNavigationBarPadding());
        b();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.b.y();
        this.b.a(true, o2.h.Z);
    }

    @Override // com.json.ha
    public boolean onBackButtonPressed() {
        return g1.a().a((Activity) this.a);
    }

    @Override // com.json.ha
    public void onCloseRequested() {
        d();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.b.u();
        this.b.a(false, o2.h.Z);
        t tVar = this.b;
        if (tVar != null) {
            tVar.a(t.x.Gone);
            this.b.v();
            this.b.w();
        }
        removeAllViews();
    }

    @Override // com.json.ha
    public void onOrientationChanged(String str, int i) {
    }
}

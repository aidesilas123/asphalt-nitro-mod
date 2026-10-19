package com.fyber.inneractive.sdk.web;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.k0;
import com.fyber.inneractive.sdk.web.w;

/* JADX INFO: loaded from: classes2.dex */
public class g extends WebView {
    public boolean a;
    public boolean b;
    public a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public w f2759d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final k0 f2760e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2761f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2762g;

    public interface a {
        void a();

        void a(boolean z);

        void b();
    }

    public g() {
        super(null);
        this.a = false;
        this.f2760e = k0.a();
    }

    public g(Context context) {
        super(IAConfigManager.b().a());
        this.a = false;
        this.f2760e = k0.a();
    }

    public void a(String str) {
        IAlog.a("injecting JS: %s", str);
        if (str != null) {
            try {
                loadUrl("javascript:" + str);
            } catch (Exception unused) {
                IAlog.a("Failed to inject JS", new Object[0]);
            }
        }
    }

    public boolean a() {
        isShown();
        hasWindowFocus();
        getWindowToken();
        getApplicationWindowToken();
        if (getWindowToken() != getApplicationWindowToken()) {
            return a(getWindowVisibility() != 8 && isShown() && this.a);
        }
        return a(isShown() && hasWindowFocus() && this.a);
    }

    public final boolean a(boolean z) {
        ViewGroup viewGroup;
        if (z && (viewGroup = (ViewGroup) getParent()) != null) {
            Rect rect = new Rect();
            viewGroup.getHitRect(rect);
            if (!getLocalVisibleRect(rect) && getWindowToken() == getApplicationWindowToken()) {
                z = false;
            }
        }
        if (this.b == z) {
            return false;
        }
        this.b = z;
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(z);
        }
        return true;
    }

    @Override // android.webkit.WebView
    public void destroy() {
        try {
            super.destroy();
        } catch (Throwable unused) {
        }
        this.c = null;
    }

    public int getHeightDp() {
        return this.f2762g;
    }

    public boolean getIsVisible() {
        return this.b;
    }

    public k0 getLastClickedLocation() {
        return this.f2760e;
    }

    public int getWidthDp() {
        return this.f2761f;
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.a) {
            return;
        }
        this.a = true;
        a aVar = this.c;
        if (aVar != null) {
            aVar.a();
        }
        a();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.b = false;
        if (this.a) {
            this.a = false;
            a aVar = this.c;
            if (aVar != null) {
                aVar.b();
            }
            a();
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        a();
    }

    @Override // android.webkit.WebView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 1 && motionEvent.getEventTime() - motionEvent.getDownTime() >= ViewConfiguration.getLongPressTimeout()) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            dispatchTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 0, x, y, 0));
            dispatchTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 1, x, y, 0));
        }
        w wVar = this.f2759d;
        if (wVar != null) {
            wVar.onTouch(this, motionEvent);
        }
        if (motionEvent.getAction() == 0) {
            k0 k0Var = this.f2760e;
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            k0Var.a = x2;
            k0Var.b = y2;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.webkit.WebView, android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        a();
    }

    @Override // android.webkit.WebView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        a();
    }

    @Override // android.webkit.WebView, android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (i == 8) {
            a(false);
        } else {
            a();
        }
    }

    public void setHeightDp(int i) {
        this.f2762g = i;
    }

    public void setListener(a aVar) {
        this.c = aVar;
    }

    public void setTapListener(w.a aVar) {
        this.f2759d = new w(aVar, IAConfigManager.M.v.a());
    }

    public void setWidthDp(int i) {
        this.f2761f = i;
    }
}

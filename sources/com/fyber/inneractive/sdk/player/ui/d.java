package com.fyber.inneractive.sdk.player.ui;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.fyber.inneractive.sdk.config.a0;
import com.fyber.inneractive.sdk.config.b0;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.k0;
import com.fyber.inneractive.sdk.util.l0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d extends RelativeLayout implements h {
    public final k0 a;
    public int b;
    public b0 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public UnitDisplayType f2649d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2650e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2651f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public i f2652g;
    public boolean h;

    public class a implements Runnable {
        public final boolean a;

        public a(boolean z) {
            this.a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.a == d.this.hasWindowFocus()) {
                d.this.b();
            }
        }
    }

    public d(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = k0.a();
        this.b = 0;
        this.f2650e = false;
        this.f2651f = false;
        this.h = false;
        this.b = Math.min(com.fyber.inneractive.sdk.util.l.e(), com.fyber.inneractive.sdk.util.l.d());
    }

    public String a() {
        return IAlog.a(this);
    }

    public abstract void a(l0 l0Var, int i, int i2);

    public void b() {
        boolean globalVisibleRect = isShown() && hasWindowFocus() && this.f2651f && !this.h;
        if (globalVisibleRect) {
            globalVisibleRect = getGlobalVisibleRect(new Rect());
        }
        if (globalVisibleRect == this.f2650e || this.f2652g == null) {
            return;
        }
        IAlog.a("%supdateVisibility changing to %s", IAlog.a(this), Boolean.valueOf(globalVisibleRect));
        this.f2650e = globalVisibleRect;
        this.f2652g.a(globalVisibleRect);
    }

    @Override // com.fyber.inneractive.sdk.player.ui.h
    public void destroy() {
        if (this.f2652g != null) {
            this.f2652g = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        IAlog.a("%sGot onAttachedToWindow: mIsAttached = %s", IAlog.a(this), Boolean.valueOf(this.f2651f));
        this.f2651f = true;
        i iVar = this.f2652g;
        if (iVar != null) {
            iVar.b();
        }
        b();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        IAlog.a("%sGot onDetachedFromWindow: mIsAttached = %s", IAlog.a(this), Boolean.valueOf(this.f2651f));
        this.f2651f = false;
        i iVar = this.f2652g;
        if (iVar != null) {
            iVar.f();
        }
        b();
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (equals(view)) {
            IAlog.a("%sgot onVisibilityChanged with %d", IAlog.a(this), Integer.valueOf(i));
            b();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        IAlog.a("%sgot onWindowFocusChanged with: %s", IAlog.a(this), Boolean.valueOf(z));
        com.fyber.inneractive.sdk.util.m.b.postDelayed(new a(z), 500L);
    }

    public void setListener(i iVar) {
        this.f2652g = iVar;
    }

    public void setUnitConfig(b0 b0Var) {
        this.c = b0Var;
        a0 a0Var = (a0) b0Var;
        this.f2649d = a0Var.f1941e == null ? a0Var.f1942f.j : UnitDisplayType.DEFAULT;
    }
}

package com.applovin.impl.adview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.MotionEvent;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ViewConstructor"})
public class i extends WebView {
    private static Boolean ahy;
    private final AtomicReference<MotionEvent> ahz;

    public i(Context context) {
        super(context);
        this.ahz = new AtomicReference<>();
        if (ahy == null) {
            try {
                WebView.class.getDeclaredMethod("onTouchEvent", MotionEvent.class);
                ahy = Boolean.TRUE;
            } catch (NoSuchMethodException unused) {
                com.applovin.impl.sdk.x.H("AppLovinSdk", "WebView.onTouchEvent() not implemented");
                ahy = Boolean.FALSE;
            }
        }
    }

    @Nullable
    public MotionEvent getAndClearLastClickEvent() {
        return this.ahz.getAndSet(null);
    }

    @Nullable
    public MotionEvent getLastClickEvent() {
        return this.ahz.get();
    }

    @Override // android.webkit.WebView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.ahz.set(MotionEvent.obtain(motionEvent));
        if (ahy.booleanValue()) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    public boolean rz() {
        return this.ahz.get() != null;
    }
}

package com.squareup.imagelib;

import android.view.ViewTreeObserver;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: DeferredRequestCreator.java */
/* JADX INFO: loaded from: classes4.dex */
class h implements ViewTreeObserver.OnPreDrawListener {
    final t a;
    final WeakReference<ImageView> b;
    e c;

    h(t tVar, ImageView imageView, e eVar) {
        this.a = tVar;
        this.b = new WeakReference<>(imageView);
        this.c = eVar;
        imageView.getViewTreeObserver().addOnPreDrawListener(this);
    }

    void a() {
        this.a.c();
        this.c = null;
        ImageView imageView = this.b.get();
        if (imageView == null) {
            return;
        }
        ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this);
        }
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        ImageView imageView = this.b.get();
        if (imageView == null) {
            return true;
        }
        ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return true;
        }
        int width = imageView.getWidth();
        int height = imageView.getHeight();
        if (width > 0 && height > 0) {
            viewTreeObserver.removeOnPreDrawListener(this);
            this.a.n().k(width, height).h(imageView, this.c);
        }
        return true;
    }
}

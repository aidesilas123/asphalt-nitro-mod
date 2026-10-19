package com.google.android.material.circularreveal;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.circularreveal.b;

/* JADX INFO: loaded from: classes3.dex */
public class CircularRevealFrameLayout extends FrameLayout implements b {

    @NonNull
    private final a a;

    @Override // com.google.android.material.circularreveal.b
    public void a() {
        throw null;
    }

    @Override // com.google.android.material.circularreveal.b
    public void b() {
        throw null;
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(@NonNull Canvas canvas) {
        if (this.a != null) {
            throw null;
        }
        super.draw(canvas);
    }

    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        throw null;
    }

    @Override // com.google.android.material.circularreveal.b
    public int getCircularRevealScrimColor() {
        throw null;
    }

    @Override // com.google.android.material.circularreveal.b
    @Nullable
    public b.e getRevealInfo() {
        throw null;
    }

    @Override // android.view.View
    public boolean isOpaque() {
        if (this.a == null) {
            return super.isOpaque();
        }
        throw null;
    }

    @Override // com.google.android.material.circularreveal.b
    public void setCircularRevealOverlayDrawable(@Nullable Drawable drawable) {
        throw null;
    }

    @Override // com.google.android.material.circularreveal.b
    public void setCircularRevealScrimColor(@ColorInt int i) {
        throw null;
    }

    @Override // com.google.android.material.circularreveal.b
    public void setRevealInfo(@Nullable b.e eVar) {
        throw null;
    }
}

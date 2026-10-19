package com.google.android.material.circularreveal.cardview;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.circularreveal.a;
import com.google.android.material.circularreveal.b;

/* JADX INFO: loaded from: classes3.dex */
public class CircularRevealCardView extends MaterialCardView implements b {

    @NonNull
    private final a j;

    @Override // com.google.android.material.circularreveal.b
    public void a() {
        throw null;
    }

    @Override // com.google.android.material.circularreveal.b
    public void b() {
        throw null;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.j != null) {
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
        if (this.j == null) {
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

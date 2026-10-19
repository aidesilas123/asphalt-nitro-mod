package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.material.ripple.RippleUtils;
import java.util.ArrayList;

/* JADX INFO: compiled from: FloatingActionButtonImplLollipop.java */
/* JADX INFO: loaded from: classes3.dex */
@RequiresApi(21)
class c extends b {
    c(FloatingActionButton floatingActionButton, com.google.android.material.shadow.b bVar) {
        super(floatingActionButton, bVar);
    }

    @NonNull
    private Animator f0(float f2, float f3) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.D, "elevation", f2).setDuration(0L)).with(ObjectAnimator.ofFloat(this.D, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, f3).setDuration(100L));
        animatorSet.setInterpolator(b.a);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.b
    void A() {
        c0();
    }

    @Override // com.google.android.material.floatingactionbutton.b
    void C(int[] iArr) {
        if (Build.VERSION.SDK_INT == 21) {
            if (!this.D.isEnabled()) {
                this.D.setElevation(0.0f);
                this.D.setTranslationZ(0.0f);
                return;
            }
            this.D.setElevation(this.o);
            if (this.D.isPressed()) {
                this.D.setTranslationZ(this.q);
            } else if (this.D.isFocused() || this.D.isHovered()) {
                this.D.setTranslationZ(this.p);
            } else {
                this.D.setTranslationZ(0.0f);
            }
        }
    }

    @Override // com.google.android.material.floatingactionbutton.b
    void D(float f2, float f3, float f4) {
        int i = Build.VERSION.SDK_INT;
        if (i == 21) {
            this.D.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(b.b, f0(f2, f4));
            stateListAnimator.addState(b.c, f0(f2, f3));
            stateListAnimator.addState(b.f3300d, f0(f2, f3));
            stateListAnimator.addState(b.f3301e, f0(f2, f3));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.D, "elevation", f2).setDuration(0L));
            if (i >= 22 && i <= 24) {
                FloatingActionButton floatingActionButton = this.D;
                arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, floatingActionButton.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.D, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(b.a);
            stateListAnimator.addState(b.f3302f, animatorSet);
            stateListAnimator.addState(b.f3303g, f0(0.0f, 0.0f));
            this.D.setStateListAnimator(stateListAnimator);
        }
        if (W()) {
            c0();
        }
    }

    @Override // com.google.android.material.floatingactionbutton.b
    boolean I() {
        return false;
    }

    @Override // com.google.android.material.floatingactionbutton.b
    void S(@Nullable ColorStateList colorStateList) {
        Drawable drawable = this.j;
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(RippleUtils.sanitizeRippleDrawableColor(colorStateList));
        } else {
            super.S(colorStateList);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.b
    boolean W() {
        return this.E.a() || !Y();
    }

    @Override // com.google.android.material.floatingactionbutton.b
    void a0() {
    }

    @Override // com.google.android.material.floatingactionbutton.b
    public float m() {
        return this.D.getElevation();
    }

    @Override // com.google.android.material.floatingactionbutton.b
    void r(@NonNull Rect rect) {
        if (this.E.a()) {
            super.r(rect);
        } else if (Y()) {
            rect.set(0, 0, 0, 0);
        } else {
            int sizeDimension = (this.r - this.D.getSizeDimension()) / 2;
            rect.set(sizeDimension, sizeDimension, sizeDimension, sizeDimension);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.b
    void y() {
    }
}

package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import androidx.annotation.Nullable;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import java.util.List;

/* JADX INFO: compiled from: MotionStrategy.java */
/* JADX INFO: loaded from: classes3.dex */
interface d {
    void a();

    @Nullable
    MotionSpec b();

    boolean c();

    void d();

    void e(@Nullable MotionSpec motionSpec);

    AnimatorSet f();

    List<Animator.AnimatorListener> g();

    void h(@Nullable ExtendedFloatingActionButton.f fVar);

    void onAnimationEnd();

    void onAnimationStart(Animator animator);
}

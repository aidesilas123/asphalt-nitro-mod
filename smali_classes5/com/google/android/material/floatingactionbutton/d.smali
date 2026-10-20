###### Class com.google.android.material.floatingactionbutton.d (com.google.android.material.floatingactionbutton.d)
.class interface abstract Lcom/google/android/material/floatingactionbutton/d;
.super Ljava/lang/Object;
.source "MotionStrategy.java"


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()Lcom/google/android/material/animation/MotionSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract c()Z
.end method

.method public abstract d()V
.end method

.method public abstract e(Lcom/google/android/material/animation/MotionSpec;)V
    .param p1    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract f()Landroid/animation/AnimatorSet;
.end method

.method public abstract g()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract h(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$f;)V
    .param p1    # Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onAnimationEnd()V
.end method

.method public abstract onAnimationStart(Landroid/animation/Animator;)V
.end method

###### Class com.google.android.material.progressindicator.c.b (com.google.android.material.progressindicator.c$b)
.class Lcom/google/android/material/progressindicator/c$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularIndeterminateAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/progressindicator/c;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/progressindicator/c;


# direct methods
.method constructor <init>(Lcom/google/android/material/progressindicator/c;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/material/progressindicator/c$b;->a:Lcom/google/android/material/progressindicator/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/google/android/material/progressindicator/c$b;->a:Lcom/google/android/material/progressindicator/c;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/c;->a()V

    iget-object p1, p0, Lcom/google/android/material/progressindicator/c$b;->a:Lcom/google/android/material/progressindicator/c;

    iget-object v0, p1, Lcom/google/android/material/progressindicator/c;->p:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    if-eqz v0, :cond_13

    iget-object p1, p1, Lcom/google/android/material/progressindicator/f;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    :cond_13
    return-void
.end method

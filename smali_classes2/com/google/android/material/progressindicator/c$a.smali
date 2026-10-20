###### Class com.google.android.material.progressindicator.c.a (com.google.android.material.progressindicator.c$a)
.class Lcom/google/android/material/progressindicator/c$a;
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

    iput-object p1, p0, Lcom/google/android/material/progressindicator/c$a;->a:Lcom/google/android/material/progressindicator/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/google/android/material/progressindicator/c$a;->a:Lcom/google/android/material/progressindicator/c;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/c;->e(Lcom/google/android/material/progressindicator/c;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/google/android/material/progressindicator/c$a;->a:Lcom/google/android/material/progressindicator/c;

    invoke-static {v1}, Lcom/google/android/material/progressindicator/c;->g(Lcom/google/android/material/progressindicator/c;)Lcom/google/android/material/progressindicator/a;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/material/progressindicator/a;->c:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/google/android/material/progressindicator/c;->f(Lcom/google/android/material/progressindicator/c;I)I

    return-void
.end method

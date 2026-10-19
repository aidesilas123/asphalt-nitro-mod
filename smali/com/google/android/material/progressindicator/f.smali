###### Class com.google.android.material.progressindicator.f (com.google.android.material.progressindicator.f)
.class abstract Lcom/google/android/material/progressindicator/f;
.super Ljava/lang/Object;
.source "IndeterminateAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/animation/Animator;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

.field protected final b:[F

.field protected final c:[I


# direct methods
.method protected constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/material/progressindicator/f;->b:[F

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/material/progressindicator/f;->c:[I

    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method protected b(III)F
    .registers 4

    sub-int/2addr p1, p2

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    return p1
.end method

.method protected c(Lcom/google/android/material/progressindicator/IndeterminateDrawable;)V
    .registers 2
    .param p1    # Lcom/google/android/material/progressindicator/IndeterminateDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/progressindicator/f;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    return-void
.end method

.method abstract d()V
.end method

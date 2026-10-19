###### Class com.google.android.material.progressindicator.a (com.google.android.material.progressindicator.a)
.class public abstract Lcom/google/android/material/progressindicator/a;
.super Ljava/lang/Object;
.source "BaseProgressIndicatorSpec.java"


# instance fields
.field public a:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field public b:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field public c:[I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public d:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public e:I

.field public f:I


# virtual methods
.method public a()Z
    .registers 2

    iget v0, p0, Lcom/google/android/material/progressindicator/a;->f:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public b()Z
    .registers 2

    iget v0, p0, Lcom/google/android/material/progressindicator/a;->e:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method abstract c()V
.end method

###### Class com.google.android.material.circularreveal.CircularRevealFrameLayout (com.google.android.material.circularreveal.CircularRevealFrameLayout)
.class public Lcom/google/android/material/circularreveal/CircularRevealFrameLayout;
.super Landroid/widget/FrameLayout;
.source "CircularRevealFrameLayout.java"

# interfaces
.implements Lcom/google/android/material/circularreveal/b;


# instance fields
.field private final a:Lcom/google/android/material/circularreveal/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealFrameLayout;->a:Lcom/google/android/material/circularreveal/a;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_8
    const/4 p1, 0x0

    throw p1
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method public getCircularRevealScrimColor()I
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public getRevealInfo()Lcom/google/android/material/circularreveal/b$e;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method public isOpaque()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealFrameLayout;->a:Lcom/google/android/material/circularreveal/a;

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/widget/FrameLayout;->isOpaque()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    throw v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    throw p1
.end method

.method public setCircularRevealScrimColor(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const/4 p1, 0x0

    throw p1
.end method

.method public setRevealInfo(Lcom/google/android/material/circularreveal/b$e;)V
    .registers 2
    .param p1    # Lcom/google/android/material/circularreveal/b$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    throw p1
.end method

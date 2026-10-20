###### Class com.google.android.material.internal.VisibilityAwareImageButton (com.google.android.material.internal.VisibilityAwareImageButton)
.class public Lcom/google/android/material/internal/VisibilityAwareImageButton;
.super Landroid/widget/ImageButton;
.source "VisibilityAwareImageButton.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private a:I


# virtual methods
.method public final b(IZ)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz p2, :cond_7

    iput p1, p0, Lcom/google/android/material/internal/VisibilityAwareImageButton;->a:I

    :cond_7
    return-void
.end method

.method public final getUserSetVisibility()I
    .registers 2

    iget v0, p0, Lcom/google/android/material/internal/VisibilityAwareImageButton;->a:I

    return v0
.end method

.method public setVisibility(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->b(IZ)V

    return-void
.end method

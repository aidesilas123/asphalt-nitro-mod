###### Class com.google.android.material.shape.b (com.google.android.material.shape.b)
.class public final Lcom/google/android/material/shape/b;
.super Ljava/lang/Object;
.source "AdjustedCornerSize.java"

# interfaces
.implements Lcom/google/android/material/shape/c;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/shape/c;

.field private final b:F


# direct methods
.method public constructor <init>(FLcom/google/android/material/shape/c;)V
    .registers 4
    .param p2    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :goto_3
    instance-of v0, p2, Lcom/google/android/material/shape/b;

    if-eqz v0, :cond_12

    check-cast p2, Lcom/google/android/material/shape/b;

    iget-object p2, p2, Lcom/google/android/material/shape/b;->a:Lcom/google/android/material/shape/c;

    move-object v0, p2

    check-cast v0, Lcom/google/android/material/shape/b;

    iget v0, v0, Lcom/google/android/material/shape/b;->b:F

    add-float/2addr p1, v0

    goto :goto_3

    :cond_12
    iput-object p2, p0, Lcom/google/android/material/shape/b;->a:Lcom/google/android/material/shape/c;

    iput p1, p0, Lcom/google/android/material/shape/b;->b:F

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;)F
    .registers 3
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/shape/b;->a:Lcom/google/android/material/shape/c;

    invoke-interface {v0, p1}, Lcom/google/android/material/shape/c;->a(Landroid/graphics/RectF;)F

    move-result p1

    iget v0, p0, Lcom/google/android/material/shape/b;->b:F

    add-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/material/shape/b;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/material/shape/b;

    iget-object v1, p0, Lcom/google/android/material/shape/b;->a:Lcom/google/android/material/shape/c;

    iget-object v3, p1, Lcom/google/android/material/shape/b;->a:Lcom/google/android/material/shape/c;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget v1, p0, Lcom/google/android/material/shape/b;->b:F

    iget p1, p1, Lcom/google/android/material/shape/b;->b:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/material/shape/b;->a:Lcom/google/android/material/shape/c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/material/shape/b;->b:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

###### Class com.google.android.material.shape.k.c (com.google.android.material.shape.k$c)
.class Lcom/google/android/material/shape/k$c;
.super Lcom/google/android/material/shape/k$g;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final b:Lcom/google/android/material/shape/k$e;

.field private final c:F

.field private final d:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/k$e;FF)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/material/shape/k$g;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/shape/k$c;->b:Lcom/google/android/material/shape/k$e;

    iput p2, p0, Lcom/google/android/material/shape/k$c;->c:F

    iput p3, p0, Lcom/google/android/material/shape/k$c;->d:F

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/a;ILandroid/graphics/Canvas;)V
    .registers 10
    .param p2    # Lcom/google/android/material/shadow/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/shape/k$c;->b:Lcom/google/android/material/shape/k$e;

    invoke-static {v0}, Lcom/google/android/material/shape/k$e;->d(Lcom/google/android/material/shape/k$e;)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/shape/k$c;->d:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/shape/k$c;->b:Lcom/google/android/material/shape/k$e;

    invoke-static {v1}, Lcom/google/android/material/shape/k$e;->b(Lcom/google/android/material/shape/k$e;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/shape/k$c;->c:F

    sub-float/2addr v1, v2

    new-instance v2, Landroid/graphics/RectF;

    float-to-double v3, v0

    float-to-double v0, v1

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {v2, v1, v1, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iget p1, p0, Lcom/google/android/material/shape/k$c;->c:F

    iget v1, p0, Lcom/google/android/material/shape/k$c;->d:F

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {p0}, Lcom/google/android/material/shape/k$c;->c()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    invoke-virtual {p2, p4, v0, v2, p3}, Lcom/google/android/material/shadow/a;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V

    return-void
.end method

.method c()F
    .registers 4

    iget-object v0, p0, Lcom/google/android/material/shape/k$c;->b:Lcom/google/android/material/shape/k$e;

    invoke-static {v0}, Lcom/google/android/material/shape/k$e;->d(Lcom/google/android/material/shape/k$e;)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/shape/k$c;->d:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/shape/k$c;->b:Lcom/google/android/material/shape/k$e;

    invoke-static {v1}, Lcom/google/android/material/shape/k$e;->b(Lcom/google/android/material/shape/k$e;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/shape/k$c;->c:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

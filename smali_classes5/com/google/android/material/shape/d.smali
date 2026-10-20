###### Class com.google.android.material.shape.d (com.google.android.material.shape.d)
.class public Lcom/google/android/material/shape/d;
.super Ljava/lang/Object;
.source "CornerTreatment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/shape/k;FFF)V
    .registers 5
    .param p1    # Lcom/google/android/material/shape/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const p0, 0x0

    throw p0
.end method

.method public b(Lcom/google/android/material/shape/k;FFLandroid/graphics/RectF;Lcom/google/android/material/shape/c;)V
    .registers 6
    .param p1    # Lcom/google/android/material/shape/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p5, p4}, Lcom/google/android/material/shape/c;->a(Landroid/graphics/RectF;)F

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/shape/d;->a(Lcom/google/android/material/shape/k;FFF)V

    return-void
.end method

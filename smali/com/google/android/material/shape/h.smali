###### Class com.google.android.material.shape.h (com.google.android.material.shape.h)
.class public final Lcom/google/android/material/shape/h;
.super Lcom/google/android/material/shape/f;
.source "OffsetEdgeTreatment.java"


# instance fields
.field private final a:Lcom/google/android/material/shape/f;

.field private final b:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/f;F)V
    .registers 3
    .param p1    # Lcom/google/android/material/shape/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/material/shape/f;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/shape/h;->a:Lcom/google/android/material/shape/f;

    iput p2, p0, Lcom/google/android/material/shape/h;->b:F

    return-void
.end method


# virtual methods
.method b()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/shape/h;->a:Lcom/google/android/material/shape/f;

    invoke-virtual {v0}, Lcom/google/android/material/shape/f;->b()Z

    move-result v0

    return v0
.end method

.method public d(FFFLcom/google/android/material/shape/k;)V
    .registers 7
    .param p4    # Lcom/google/android/material/shape/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/shape/h;->a:Lcom/google/android/material/shape/f;

    iget v1, p0, Lcom/google/android/material/shape/h;->b:F

    sub-float/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/material/shape/f;->d(FFFLcom/google/android/material/shape/k;)V

    return-void
.end method

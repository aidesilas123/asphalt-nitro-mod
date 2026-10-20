###### Class com.google.android.material.shape.f (com.google.android.material.shape.f)
.class public Lcom/google/android/material/shape/f;
.super Ljava/lang/Object;
.source "EdgeTreatment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d(FFFLcom/google/android/material/shape/k;)V
    .registers 5
    .param p4    # Lcom/google/android/material/shape/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p2, 0x0

    invoke-virtual {p4, p1, p2}, Lcom/google/android/material/shape/k;->m(FF)V

    return-void
.end method

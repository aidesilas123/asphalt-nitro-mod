###### Class com.google.android.material.color.c (com.google.android.material.color.c)
.class public final Lcom/google/android/material/color/c;
.super Ljava/lang/Object;
.source "ColorRoles.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(IIII)V
    .registers 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/color/c;->a:I

    iput p2, p0, Lcom/google/android/material/color/c;->b:I

    iput p3, p0, Lcom/google/android/material/color/c;->c:I

    iput p4, p0, Lcom/google/android/material/color/c;->d:I

    return-void
.end method

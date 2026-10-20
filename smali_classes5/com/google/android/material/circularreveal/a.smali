###### Class com.google.android.material.circularreveal.a (com.google.android.material.circularreveal.a)
.class public Lcom/google/android/material/circularreveal/a;
.super Ljava/lang/Object;
.source "CircularRevealHelper.java"


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    const/4 v0, 0x2

    sput v0, Lcom/google/android/material/circularreveal/a;->a:I

    goto :goto_15

    :cond_a
    const/16 v1, 0x12

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    sput v0, Lcom/google/android/material/circularreveal/a;->a:I

    goto :goto_15

    :cond_12
    const/4 v0, 0x0

    sput v0, Lcom/google/android/material/circularreveal/a;->a:I

    :goto_15
    return-void
.end method

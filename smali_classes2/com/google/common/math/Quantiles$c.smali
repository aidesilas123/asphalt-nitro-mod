###### Class com.google.common.math.Quantiles.c (com.google.common.math.Quantiles$c)
.class public final Lcom/google/common/math/Quantiles$c;
.super Ljava/lang/Object;
.source "Quantiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/Quantiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method private constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2, p1}, Lcom/google/common/math/Quantiles;->a(II)V

    iput p1, p0, Lcom/google/common/math/Quantiles$c;->a:I

    iput p2, p0, Lcom/google/common/math/Quantiles$c;->b:I

    return-void
.end method

.method synthetic constructor <init>(IILcom/google/common/math/Quantiles$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/math/Quantiles$c;-><init>(II)V

    return-void
.end method

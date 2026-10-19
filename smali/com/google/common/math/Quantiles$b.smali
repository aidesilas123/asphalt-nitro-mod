###### Class com.google.common.math.Quantiles.b (com.google.common.math.Quantiles$b)
.class public final Lcom/google/common/math/Quantiles$b;
.super Ljava/lang/Object;
.source "Quantiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/Quantiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method private constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Quantile scale must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/common/math/Quantiles$b;->a:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/common/math/Quantiles$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/math/Quantiles$b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/common/math/Quantiles$c;
    .registers 5

    new-instance v0, Lcom/google/common/math/Quantiles$c;

    iget v1, p0, Lcom/google/common/math/Quantiles$b;->a:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/math/Quantiles$c;-><init>(IILcom/google/common/math/Quantiles$a;)V

    return-object v0
.end method

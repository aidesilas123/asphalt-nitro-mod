###### Class com.google.common.math.LinearTransformation (com.google.common.math.LinearTransformation)
.class public abstract Lcom/google/common/math/LinearTransformation;
.super Ljava/lang/Object;
.source "LinearTransformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/LinearTransformation$c;,
        Lcom/google/common/math/LinearTransformation$e;,
        Lcom/google/common/math/LinearTransformation$d;,
        Lcom/google/common/math/LinearTransformation$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forNaN()Lcom/google/common/math/LinearTransformation;
    .registers 1

    sget-object v0, Lcom/google/common/math/LinearTransformation$c;->a:Lcom/google/common/math/LinearTransformation$c;

    return-object v0
.end method

.method public static horizontal(D)Lcom/google/common/math/LinearTransformation;
    .registers 5

    invoke-static {p0, p1}, Lcom/google/common/math/a;->d(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    new-instance v0, Lcom/google/common/math/LinearTransformation$d;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/google/common/math/LinearTransformation$d;-><init>(DD)V

    return-object v0
.end method

.method public static mapping(DD)Lcom/google/common/math/LinearTransformation$b;
    .registers 11

    invoke-static {p0, p1}, Lcom/google/common/math/a;->d(D)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p2, p3}, Lcom/google/common/math/a;->d(D)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    new-instance v0, Lcom/google/common/math/LinearTransformation$b;

    const/4 v6, 0x0

    move-object v1, v0

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/common/math/LinearTransformation$b;-><init>(DDLcom/google/common/math/LinearTransformation$a;)V

    return-object v0
.end method

.method public static vertical(D)Lcom/google/common/math/LinearTransformation;
    .registers 3

    invoke-static {p0, p1}, Lcom/google/common/math/a;->d(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    new-instance v0, Lcom/google/common/math/LinearTransformation$e;

    invoke-direct {v0, p0, p1}, Lcom/google/common/math/LinearTransformation$e;-><init>(D)V

    return-object v0
.end method

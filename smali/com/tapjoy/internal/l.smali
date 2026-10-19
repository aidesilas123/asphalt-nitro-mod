###### Class com.tapjoy.internal.l (com.tapjoy.internal.l)
.class public abstract synthetic Lcom/tapjoy/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(B)I
    .registers 7

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tapjoy/internal/k;->c(I)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_16

    aget v4, v0, v3

    invoke-static {v4}, Lcom/tapjoy/internal/k;->a(I)V

    const/4 v5, 0x2

    if-ne v5, p0, :cond_13

    return v4

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_16
    return v2
.end method

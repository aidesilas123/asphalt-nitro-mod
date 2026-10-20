###### Class com.tapjoy.internal.s1 (com.tapjoy.internal.s1)
.class public abstract synthetic Lcom/tapjoy/internal/s1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(I)Lcom/tapjoy/internal/q7;
    .registers 2

    if-eqz p0, :cond_20

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-eqz p0, :cond_1d

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    const/4 v0, 0x3

    if-ne p0, v0, :cond_11

    sget-object p0, Lcom/tapjoy/internal/q7;->c:Lcom/tapjoy/internal/m5;

    return-object p0

    :cond_11
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_17
    sget-object p0, Lcom/tapjoy/internal/q7;->i:Lcom/tapjoy/internal/m3;

    return-object p0

    :cond_1a
    sget-object p0, Lcom/tapjoy/internal/q7;->f:Lcom/tapjoy/internal/u6;

    return-object p0

    :cond_1d
    sget-object p0, Lcom/tapjoy/internal/q7;->e:Lcom/tapjoy/internal/k6;

    return-object p0

    :cond_20
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic b(I)I
    .registers 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    const/4 v1, 0x2

    if-ne p0, v1, :cond_9

    return v0

    :cond_9
    const/4 v0, 0x3

    if-ne p0, v0, :cond_d

    return v1

    :cond_d
    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    const/4 p0, 0x5

    return p0

    :cond_12
    const/4 p0, 0x0

    throw p0
.end method

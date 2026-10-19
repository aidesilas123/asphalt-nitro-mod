###### Class com.applovin.exoplayer2.d.j (com.applovin.exoplayer2.d.j)
.class public final Lcom/applovin/exoplayer2/d/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/d/j$c;,
        Lcom/applovin/exoplayer2/d/j$b;,
        Lcom/applovin/exoplayer2/d/j$a;
    }
.end annotation


# direct methods
.method public static b(Ljava/lang/Exception;I)I
    .registers 7

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    invoke-static {p0}, Lcom/applovin/exoplayer2/d/j$b;->d(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {p0}, Lcom/applovin/exoplayer2/d/j$b;->e(Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_11
    const/16 v1, 0x17

    const/16 v2, 0x1776

    if-lt v0, v1, :cond_1e

    invoke-static {p0}, Lcom/applovin/exoplayer2/d/j$c;->f(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1e

    return v2

    :cond_1e
    const/16 v1, 0x1772

    const/16 v3, 0x12

    if-lt v0, v3, :cond_2b

    invoke-static {p0}, Lcom/applovin/exoplayer2/d/j$a;->b(Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_2b

    return v1

    :cond_2b
    if-lt v0, v3, :cond_36

    invoke-static {p0}, Lcom/applovin/exoplayer2/d/j$a;->c(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 p0, 0x1777

    return p0

    :cond_36
    instance-of v0, p0, Lcom/applovin/exoplayer2/d/t;

    if-eqz v0, :cond_3d

    const/16 p0, 0x1771

    return p0

    :cond_3d
    instance-of v0, p0, Lcom/applovin/exoplayer2/d/c$d;

    if-eqz v0, :cond_44

    const/16 p0, 0x1773

    return p0

    :cond_44
    instance-of p0, p0, Lcom/applovin/exoplayer2/d/q;

    if-eqz p0, :cond_4b

    const/16 p0, 0x1778

    return p0

    :cond_4b
    const/4 p0, 0x1

    if-ne p1, p0, :cond_4f

    return v2

    :cond_4f
    const/4 p0, 0x2

    if-ne p1, p0, :cond_55

    const/16 p0, 0x1774

    return p0

    :cond_55
    const/4 p0, 0x3

    if-ne p1, p0, :cond_59

    return v1

    :cond_59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

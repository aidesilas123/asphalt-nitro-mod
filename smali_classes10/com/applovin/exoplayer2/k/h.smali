###### Class com.applovin.exoplayer2.k.h (com.applovin.exoplayer2.k.h)
.class public final Lcom/applovin/exoplayer2/k/h;
.super Lcom/applovin/exoplayer2/k/e;
.source "SourceFile"


# instance fields
.field private Nd:I

.field private Zt:I

.field private tf:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private tw:Lcom/applovin/exoplayer2/k/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/k/e;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/k/l;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/k/e;->b(Lcom/applovin/exoplayer2/k/l;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/h;->tw:Lcom/applovin/exoplayer2/k/l;

    iget-object v0, p1, Lcom/applovin/exoplayer2/k/l;->ef:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported scheme: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/applovin/exoplayer2/l/a;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Lcom/applovin/exoplayer2/l/ai;->l(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_a9

    const/4 v0, 0x1

    aget-object v0, v1, v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v4, ";base64"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_60

    :try_start_42
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/exoplayer2/k/h;->tf:[B
    :try_end_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_48} :catch_49

    goto :goto_70

    :catch_49
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while parsing Base64 encoded string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :cond_60
    sget-object v1, Lcom/applovin/exoplayer2/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->bk(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/h;->tf:[B

    :goto_70
    iget-wide v0, p1, Lcom/applovin/exoplayer2/k/l;->uc:J

    iget-object v2, p0, Lcom/applovin/exoplayer2/k/h;->tf:[B

    array-length v4, v2

    int-to-long v4, v4

    cmp-long v6, v0, v4

    if-gtz v6, :cond_9f

    long-to-int v1, v0

    iput v1, p0, Lcom/applovin/exoplayer2/k/h;->Nd:I

    array-length v0, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/applovin/exoplayer2/k/h;->Zt:I

    iget-wide v1, p1, Lcom/applovin/exoplayer2/k/l;->wC:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_91

    int-to-long v5, v0

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/applovin/exoplayer2/k/h;->Zt:I

    :cond_91
    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/k/e;->c(Lcom/applovin/exoplayer2/k/l;)V

    iget-wide v0, p1, Lcom/applovin/exoplayer2/k/l;->wC:J

    cmp-long p1, v0, v3

    if-eqz p1, :cond_9b

    goto :goto_9e

    :cond_9b
    iget p1, p0, Lcom/applovin/exoplayer2/k/h;->Zt:I

    int-to-long v0, p1

    :goto_9e
    return-wide v0

    :cond_9f
    iput-object v3, p0, Lcom/applovin/exoplayer2/k/h;->tf:[B

    new-instance p1, Lcom/applovin/exoplayer2/k/j;

    const/16 v0, 0x7d8

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/k/j;-><init>(I)V

    throw p1

    :cond_a9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected URI format: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1
.end method

.method public close()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/h;->tf:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iput-object v1, p0, Lcom/applovin/exoplayer2/k/h;->tf:[B

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/k/e;->oe()V

    :cond_a
    iput-object v1, p0, Lcom/applovin/exoplayer2/k/h;->tw:Lcom/applovin/exoplayer2/k/l;

    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/h;->tw:Lcom/applovin/exoplayer2/k/l;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/applovin/exoplayer2/k/l;->ef:Landroid/net/Uri;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public read([BII)I
    .registers 6

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget v0, p0, Lcom/applovin/exoplayer2/k/h;->Zt:I

    if-nez v0, :cond_a

    const/4 p1, -0x1

    return p1

    :cond_a
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/h;->tf:[B

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/applovin/exoplayer2/k/h;->Nd:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/applovin/exoplayer2/k/h;->Nd:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/applovin/exoplayer2/k/h;->Nd:I

    iget p1, p0, Lcom/applovin/exoplayer2/k/h;->Zt:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/applovin/exoplayer2/k/h;->Zt:I

    invoke-virtual {p0, p3}, Lcom/applovin/exoplayer2/k/e;->fe(I)V

    return p3
.end method

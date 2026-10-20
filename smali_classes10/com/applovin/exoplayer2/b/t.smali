###### Class com.applovin.exoplayer2.b.t (com.applovin.exoplayer2.b.t)
.class final Lcom/applovin/exoplayer2/b/t;
.super Lcom/applovin/exoplayer2/b/l;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/applovin/exoplayer2/b/f$a;)Lcom/applovin/exoplayer2/b/f$a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/b/f$b;
        }
    .end annotation

    iget v0, p1, Lcom/applovin/exoplayer2/b/f$a;->jQ:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1e

    if-eq v0, v1, :cond_1e

    const/high16 v2, 0x10000000

    if-eq v0, v2, :cond_1e

    const/high16 v2, 0x20000000

    if-eq v0, v2, :cond_1e

    const/high16 v2, 0x30000000

    if-eq v0, v2, :cond_1e

    const/4 v2, 0x4

    if-ne v0, v2, :cond_18

    goto :goto_1e

    :cond_18
    new-instance v0, Lcom/applovin/exoplayer2/b/f$b;

    invoke-direct {v0, p1}, Lcom/applovin/exoplayer2/b/f$b;-><init>(Lcom/applovin/exoplayer2/b/f$a;)V

    throw v0

    :cond_1e
    :goto_1e
    if-eq v0, v1, :cond_2a

    new-instance v0, Lcom/applovin/exoplayer2/b/f$a;

    iget v2, p1, Lcom/applovin/exoplayer2/b/f$a;->dM:I

    iget p1, p1, Lcom/applovin/exoplayer2/b/f$a;->dL:I

    invoke-direct {v0, v2, p1, v1}, Lcom/applovin/exoplayer2/b/f$a;-><init>(III)V

    goto :goto_2c

    :cond_2a
    sget-object v0, Lcom/applovin/exoplayer2/b/f$a;->jP:Lcom/applovin/exoplayer2/b/f$a;

    :goto_2c
    return-object v0
.end method

.method public d(Ljava/nio/ByteBuffer;)V
    .registers 11

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    iget-object v3, p0, Lcom/applovin/exoplayer2/b/l;->kO:Lcom/applovin/exoplayer2/b/f$a;

    iget v3, v3, Lcom/applovin/exoplayer2/b/f$a;->jQ:I

    const/high16 v4, 0x30000000

    const/high16 v5, 0x20000000

    const/high16 v6, 0x10000000

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eq v3, v8, :cond_2d

    if-eq v3, v7, :cond_2a

    if-eq v3, v6, :cond_2f

    if-eq v3, v5, :cond_27

    if-ne v3, v4, :cond_21

    goto :goto_2a

    :cond_21
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_27
    div-int/lit8 v2, v2, 0x3

    goto :goto_2d

    :cond_2a
    :goto_2a
    div-int/lit8 v2, v2, 0x2

    goto :goto_2f

    :cond_2d
    :goto_2d
    mul-int/lit8 v2, v2, 0x2

    :cond_2f
    :goto_2f
    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/b/l;->az(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/exoplayer2/b/l;->kO:Lcom/applovin/exoplayer2/b/f$a;

    iget v3, v3, Lcom/applovin/exoplayer2/b/f$a;->jQ:I

    if-eq v3, v8, :cond_b0

    if-eq v3, v7, :cond_8a

    if-eq v3, v6, :cond_75

    if-eq v3, v5, :cond_5e

    if-ne v3, v4, :cond_58

    :goto_41
    if-ge v0, v1, :cond_c5

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_41

    :cond_58
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_5e
    :goto_5e
    if-ge v0, v1, :cond_c5

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x3

    goto :goto_5e

    :cond_75
    :goto_75
    if-ge v0, v1, :cond_c5

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x2

    goto :goto_75

    :cond_8a
    :goto_8a
    if-ge v0, v1, :cond_c5

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Lcom/applovin/exoplayer2/l/ai;->a(FFF)F

    move-result v3

    const v4, 0x46fffe00    # 32767.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    int-to-short v3, v3

    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_8a

    :cond_b0
    :goto_b0
    if-ge v0, v1, :cond_c5

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x80

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_b0

    :cond_c5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

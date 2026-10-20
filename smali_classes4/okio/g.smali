###### Class okio.g (okio.g)
.class public final Lokio/g;
.super Ljava/lang/Object;
.source "CipherSource.kt"

# interfaces
.implements Lokio/y;


# instance fields
.field private final a:Lokio/e;

.field private final b:Ljavax/crypto/Cipher;

.field private final c:I

.field private final d:Lokio/Buffer;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lokio/e;Ljavax/crypto/Cipher;)V
    .registers 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cipher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/g;->a:Lokio/e;

    iput-object p2, p0, Lokio/g;->b:Ljavax/crypto/Cipher;

    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lokio/g;->c:I

    new-instance p2, Lokio/Buffer;

    invoke-direct {p2}, Lokio/Buffer;-><init>()V

    iput-object p2, p0, Lokio/g;->d:Lokio/Buffer;

    if-lez p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    if-eqz p1, :cond_26

    return-void

    :cond_26
    invoke-virtual {p0}, Lokio/g;->e()Ljavax/crypto/Cipher;

    move-result-object p1

    const-string p2, "Block cipher required "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final d()V
    .registers 8

    iget-object v0, p0, Lokio/g;->b:Ljavax/crypto/Cipher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v1, p0, Lokio/g;->d:Lokio/Buffer;

    invoke-virtual {v1, v0}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v0

    iget-object v1, p0, Lokio/g;->b:Ljavax/crypto/Cipher;

    iget-object v2, v0, Lokio/u;->b:[B

    iget v3, v0, Lokio/u;->c:I

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->doFinal([BI)I

    move-result v1

    iget v2, v0, Lokio/u;->d:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/u;->d:I

    iget-object v2, p0, Lokio/g;->d:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->I()J

    move-result-wide v3

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->x(J)V

    iget v1, v0, Lokio/u;->c:I

    iget v2, v0, Lokio/u;->d:I

    if-ne v1, v2, :cond_3b

    iget-object v1, p0, Lokio/g;->d:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/u;->b()Lokio/u;

    move-result-object v2

    iput-object v2, v1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    :cond_3b
    return-void
.end method

.method private final f()V
    .registers 6

    :goto_0
    iget-object v0, p0, Lokio/g;->d:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1f

    iget-object v0, p0, Lokio/g;->a:Lokio/e;

    invoke-interface {v0}, Lokio/e;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/g;->e:Z

    invoke-direct {p0}, Lokio/g;->d()V

    goto :goto_1f

    :cond_1b
    invoke-direct {p0}, Lokio/g;->g()V

    goto :goto_0

    :cond_1f
    :goto_1f
    return-void
.end method

.method private final g()V
    .registers 10

    iget-object v0, p0, Lokio/g;->a:Lokio/e;

    invoke-interface {v0}, Lokio/e;->y()Lokio/Buffer;

    move-result-object v0

    iget-object v0, v0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v0, Lokio/u;->d:I

    iget v2, v0, Lokio/u;->c:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lokio/g;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v2

    :goto_16
    const/16 v3, 0x2000

    if-le v2, v3, :cond_4e

    iget v3, p0, Lokio/g;->c:I

    if-le v1, v3, :cond_20

    const/4 v4, 0x1

    goto :goto_21

    :cond_20
    const/4 v4, 0x0

    :goto_21
    if-eqz v4, :cond_2b

    sub-int/2addr v1, v3

    iget-object v2, p0, Lokio/g;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v2

    goto :goto_16

    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected output size "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for input size "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4e
    iget-object v3, p0, Lokio/g;->d:Lokio/Buffer;

    invoke-virtual {v3, v2}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v2

    iget-object v3, p0, Lokio/g;->b:Ljavax/crypto/Cipher;

    iget-object v4, v0, Lokio/u;->b:[B

    iget v5, v0, Lokio/u;->c:I

    iget-object v7, v2, Lokio/u;->b:[B

    iget v8, v2, Lokio/u;->c:I

    move v6, v1

    invoke-virtual/range {v3 .. v8}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v0

    iget-object v3, p0, Lokio/g;->a:Lokio/e;

    int-to-long v4, v1

    invoke-interface {v3, v4, v5}, Lokio/e;->skip(J)V

    iget v1, v2, Lokio/u;->d:I

    add-int/2addr v1, v0

    iput v1, v2, Lokio/u;->d:I

    iget-object v1, p0, Lokio/g;->d:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->I()J

    move-result-wide v3

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lokio/Buffer;->x(J)V

    iget v0, v2, Lokio/u;->c:I

    iget v1, v2, Lokio/u;->d:I

    if-ne v0, v1, :cond_8a

    iget-object v0, p0, Lokio/g;->d:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/u;->b()Lokio/u;

    move-result-object v1

    iput-object v1, v0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    :cond_8a
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/g;->f:Z

    iget-object v0, p0, Lokio/g;->a:Lokio/e;

    invoke-interface {v0}, Lokio/y;->close()V

    return-void
.end method

.method public final e()Ljavax/crypto/Cipher;
    .registers 2

    iget-object v0, p0, Lokio/g;->b:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public read(Lokio/Buffer;J)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_e

    const/4 v4, 0x1

    goto :goto_f

    :cond_e
    const/4 v4, 0x0

    :goto_f
    if-eqz v4, :cond_3a

    iget-boolean v4, p0, Lokio/g;->f:Z

    xor-int/2addr v0, v4

    if-eqz v0, :cond_2e

    if-nez v3, :cond_19

    return-wide v1

    :cond_19
    iget-boolean v0, p0, Lokio/g;->e:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lokio/g;->d:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide p1

    return-wide p1

    :cond_24
    invoke-direct {p0}, Lokio/g;->f()V

    iget-object v0, p0, Lokio/g;->d:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide p1

    return-wide p1

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "byteCount < 0: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public timeout()Lokio/z;
    .registers 2

    iget-object v0, p0, Lokio/g;->a:Lokio/e;

    invoke-interface {v0}, Lokio/y;->timeout()Lokio/z;

    move-result-object v0

    return-object v0
.end method

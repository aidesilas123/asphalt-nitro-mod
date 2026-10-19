###### Class okio.f (okio.f)
.class public final Lokio/f;
.super Ljava/lang/Object;
.source "CipherSink.kt"

# interfaces
.implements Lokio/w;


# instance fields
.field private final a:Lokio/d;

.field private final b:Ljavax/crypto/Cipher;

.field private final c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lokio/d;Ljavax/crypto/Cipher;)V
    .registers 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cipher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/f;->a:Lokio/d;

    iput-object p2, p0, Lokio/f;->b:Ljavax/crypto/Cipher;

    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lokio/f;->c:I

    if-lez p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    if-eqz p1, :cond_1f

    return-void

    :cond_1f
    invoke-virtual {p0}, Lokio/f;->e()Ljavax/crypto/Cipher;

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

.method private final d()Ljava/lang/Throwable;
    .registers 9

    iget-object v0, p0, Lokio/f;->b:Ljavax/crypto/Cipher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    iget-object v2, p0, Lokio/f;->a:Lokio/d;

    invoke-interface {v2}, Lokio/d;->y()Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v0

    :try_start_15
    iget-object v3, p0, Lokio/f;->b:Ljavax/crypto/Cipher;

    iget-object v4, v0, Lokio/u;->b:[B

    iget v5, v0, Lokio/u;->d:I

    invoke-virtual {v3, v4, v5}, Ljavax/crypto/Cipher;->doFinal([BI)I

    move-result v3

    iget v4, v0, Lokio/u;->d:I

    add-int/2addr v4, v3

    iput v4, v0, Lokio/u;->d:I

    invoke-virtual {v2}, Lokio/Buffer;->I()J

    move-result-wide v4

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->x(J)V
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_2e

    goto :goto_2f

    :catchall_2e
    move-exception v1

    :goto_2f
    iget v3, v0, Lokio/u;->c:I

    iget v4, v0, Lokio/u;->d:I

    if-ne v3, v4, :cond_3e

    invoke-virtual {v0}, Lokio/u;->b()Lokio/u;

    move-result-object v3

    iput-object v3, v2, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    :cond_3e
    return-object v1
.end method

.method private final f(Lokio/Buffer;J)I
    .registers 12

    iget-object v0, p1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v0, Lokio/u;->d:I

    iget v2, v0, Lokio/u;->c:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p3, p2

    iget-object p2, p0, Lokio/f;->a:Lokio/d;

    invoke-interface {p2}, Lokio/d;->y()Lokio/Buffer;

    move-result-object p2

    iget-object v1, p0, Lokio/f;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p3}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v1

    :goto_1c
    const/16 v2, 0x2000

    if-le v1, v2, :cond_54

    iget v2, p0, Lokio/f;->c:I

    if-le p3, v2, :cond_26

    const/4 v3, 0x1

    goto :goto_27

    :cond_26
    const/4 v3, 0x0

    :goto_27
    if-eqz v3, :cond_31

    sub-int/2addr p3, v2

    iget-object v1, p0, Lokio/f;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p3}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v1

    goto :goto_1c

    :cond_31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected output size "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for input size "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_54
    invoke-virtual {p2, v1}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v1

    iget-object v2, p0, Lokio/f;->b:Ljavax/crypto/Cipher;

    iget-object v3, v0, Lokio/u;->b:[B

    iget v4, v0, Lokio/u;->c:I

    iget-object v6, v1, Lokio/u;->b:[B

    iget v7, v1, Lokio/u;->d:I

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v2

    iget v3, v1, Lokio/u;->d:I

    add-int/2addr v3, v2

    iput v3, v1, Lokio/u;->d:I

    invoke-virtual {p2}, Lokio/Buffer;->I()J

    move-result-wide v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-virtual {p2, v3, v4}, Lokio/Buffer;->x(J)V

    iget v2, v1, Lokio/u;->c:I

    iget v3, v1, Lokio/u;->d:I

    if-ne v2, v3, :cond_84

    invoke-virtual {v1}, Lokio/u;->b()Lokio/u;

    move-result-object v2

    iput-object v2, p2, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    :cond_84
    iget-object p2, p0, Lokio/f;->a:Lokio/d;

    invoke-interface {p2}, Lokio/d;->emitCompleteSegments()Lokio/d;

    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v1

    int-to-long v3, p3

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lokio/Buffer;->x(J)V

    iget p2, v0, Lokio/u;->c:I

    add-int/2addr p2, p3

    iput p2, v0, Lokio/u;->c:I

    iget v1, v0, Lokio/u;->d:I

    if-ne p2, v1, :cond_a4

    invoke-virtual {v0}, Lokio/u;->b()Lokio/u;

    move-result-object p2

    iput-object p2, p1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    :cond_a4
    return p3
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokio/f;->d:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/f;->d:Z

    invoke-direct {p0}, Lokio/f;->d()Ljava/lang/Throwable;

    move-result-object v0

    :try_start_c
    iget-object v1, p0, Lokio/f;->a:Lokio/d;

    invoke-interface {v1}, Lokio/w;->close()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception v1

    if-nez v0, :cond_16

    move-object v0, v1

    :cond_16
    :goto_16
    if-nez v0, :cond_19

    return-void

    :cond_19
    throw v0
.end method

.method public final e()Ljavax/crypto/Cipher;
    .registers 2

    iget-object v0, p0, Lokio/f;->b:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lokio/f;->a:Lokio/d;

    invoke-interface {v0}, Lokio/d;->flush()V

    return-void
.end method

.method public n(Lokio/Buffer;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    iget-boolean v0, p0, Lokio/f;->d:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_23

    :goto_15
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_22

    invoke-direct {p0, p1, p2, p3}, Lokio/f;->f(Lokio/Buffer;J)I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr p2, v0

    goto :goto_15

    :cond_22
    return-void

    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lokio/z;
    .registers 2

    iget-object v0, p0, Lokio/f;->a:Lokio/d;

    invoke-interface {v0}, Lokio/w;->timeout()Lokio/z;

    move-result-object v0

    return-object v0
.end method

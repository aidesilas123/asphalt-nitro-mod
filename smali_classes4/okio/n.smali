###### Class okio.n (okio.n)
.class public final Lokio/n;
.super Ljava/lang/Object;
.source "InflaterSource.kt"

# interfaces
.implements Lokio/y;


# instance fields
.field private final a:Lokio/e;

.field private final b:Ljava/util/zip/Inflater;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lokio/e;Ljava/util/zip/Inflater;)V
    .registers 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/n;->a:Lokio/e;

    iput-object p2, p0, Lokio/n;->b:Ljava/util/zip/Inflater;

    return-void
.end method

.method public constructor <init>(Lokio/y;Ljava/util/zip/Inflater;)V
    .registers 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/y;)Lokio/e;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lokio/n;-><init>(Lokio/e;Ljava/util/zip/Inflater;)V

    return-void
.end method

.method private final e()V
    .registers 5

    iget v0, p0, Lokio/n;->c:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lokio/n;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lokio/n;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Lokio/n;->c:I

    iget-object v1, p0, Lokio/n;->a:Lokio/e;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lokio/e;->skip(J)V

    return-void
.end method


# virtual methods
.method public final a(Lokio/Buffer;J)J
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
    if-eqz v4, :cond_6b

    iget-boolean v4, p0, Lokio/n;->d:Z

    xor-int/2addr v4, v0

    if-eqz v4, :cond_5f

    if-nez v3, :cond_19

    return-wide v1

    :cond_19
    :try_start_19
    invoke-virtual {p1, v0}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v0

    iget v3, v0, Lokio/u;->d:I

    rsub-int v3, v3, 0x2000

    int-to-long v3, v3

    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p3, p2

    invoke-virtual {p0}, Lokio/n;->d()Z

    iget-object p2, p0, Lokio/n;->b:Ljava/util/zip/Inflater;

    iget-object v3, v0, Lokio/u;->b:[B

    iget v4, v0, Lokio/u;->d:I

    invoke-virtual {p2, v3, v4, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result p2

    invoke-direct {p0}, Lokio/n;->e()V

    if-lez p2, :cond_48

    iget p3, v0, Lokio/u;->d:I

    add-int/2addr p3, p2

    iput p3, v0, Lokio/u;->d:I

    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v0

    int-to-long p2, p2

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lokio/Buffer;->x(J)V

    return-wide p2

    :cond_48
    iget p2, v0, Lokio/u;->c:I

    iget p3, v0, Lokio/u;->d:I

    if-ne p2, p3, :cond_57

    invoke-virtual {v0}, Lokio/u;->b()Lokio/u;

    move-result-object p2

    iput-object p2, p1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/u;)V
    :try_end_57
    .catch Ljava/util/zip/DataFormatException; {:try_start_19 .. :try_end_57} :catch_58

    :cond_57
    return-wide v1

    :catch_58
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_5f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6b
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

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokio/n;->d:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lokio/n;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/n;->d:Z

    iget-object v0, p0, Lokio/n;->a:Lokio/e;

    invoke-interface {v0}, Lokio/y;->close()V

    return-void
.end method

.method public final d()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokio/n;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lokio/n;->a:Lokio/e;

    invoke-interface {v0}, Lokio/e;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    iget-object v0, p0, Lokio/n;->a:Lokio/e;

    invoke-interface {v0}, Lokio/e;->y()Lokio/Buffer;

    move-result-object v0

    iget-object v0, v0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v0, Lokio/u;->d:I

    iget v3, v0, Lokio/u;->c:I

    sub-int/2addr v2, v3

    iput v2, p0, Lokio/n;->c:I

    iget-object v4, p0, Lokio/n;->b:Ljava/util/zip/Inflater;

    iget-object v0, v0, Lokio/u;->b:[B

    invoke-virtual {v4, v0, v3, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    return v1
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

    :goto_5
    invoke-virtual {p0, p1, p2, p3}, Lokio/n;->a(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    return-wide v0

    :cond_10
    iget-object v0, p0, Lokio/n;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lokio/n;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_32

    :cond_21
    iget-object v0, p0, Lokio/n;->a:Lokio/e;

    invoke-interface {v0}, Lokio/e;->exhausted()Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_5

    :cond_2a
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "source exhausted prematurely"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_32
    :goto_32
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public timeout()Lokio/z;
    .registers 2

    iget-object v0, p0, Lokio/n;->a:Lokio/e;

    invoke-interface {v0}, Lokio/y;->timeout()Lokio/z;

    move-result-object v0

    return-object v0
.end method

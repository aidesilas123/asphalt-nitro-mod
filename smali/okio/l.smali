###### Class okio.l (okio.l)
.class public final Lokio/l;
.super Ljava/lang/Object;
.source "GzipSink.kt"

# interfaces
.implements Lokio/w;


# instance fields
.field private final a:Lokio/RealBufferedSink;

.field private final b:Ljava/util/zip/Deflater;

.field private final c:Lokio/h;

.field private d:Z

.field private final e:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lokio/w;)V
    .registers 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/RealBufferedSink;

    invoke-direct {v0, p1}, Lokio/RealBufferedSink;-><init>(Lokio/w;)V

    iput-object v0, p0, Lokio/l;->a:Lokio/RealBufferedSink;

    new-instance p1, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object p1, p0, Lokio/l;->b:Ljava/util/zip/Deflater;

    new-instance v1, Lokio/h;

    invoke-direct {v1, v0, p1}, Lokio/h;-><init>(Lokio/d;Ljava/util/zip/Deflater;)V

    iput-object v1, p0, Lokio/l;->c:Lokio/h;

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lokio/l;->e:Ljava/util/zip/CRC32;

    iget-object p1, v0, Lokio/RealBufferedSink;->b:Lokio/Buffer;

    const/16 v0, 0x1f8b

    invoke-virtual {p1, v0}, Lokio/Buffer;->b0(I)Lokio/Buffer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lokio/Buffer;->U(I)Lokio/Buffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lokio/Buffer;->U(I)Lokio/Buffer;

    invoke-virtual {p1, v0}, Lokio/Buffer;->X(I)Lokio/Buffer;

    invoke-virtual {p1, v0}, Lokio/Buffer;->U(I)Lokio/Buffer;

    invoke-virtual {p1, v0}, Lokio/Buffer;->U(I)Lokio/Buffer;

    return-void
.end method

.method private final a(Lokio/Buffer;J)V
    .registers 8

    iget-object p1, p1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_5
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_27

    iget v0, p1, Lokio/u;->d:I

    iget v1, p1, Lokio/u;->c:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lokio/l;->e:Ljava/util/zip/CRC32;

    iget-object v2, p1, Lokio/u;->b:[B

    iget v3, p1, Lokio/u;->c:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v0, v1

    sub-long/2addr p2, v0

    iget-object p1, p1, Lokio/u;->g:Lokio/u;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_5

    :cond_27
    return-void
.end method

.method private final d()V
    .registers 4

    iget-object v0, p0, Lokio/l;->a:Lokio/RealBufferedSink;

    iget-object v1, p0, Lokio/l;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lokio/RealBufferedSink;->a(I)Lokio/d;

    iget-object v0, p0, Lokio/l;->a:Lokio/RealBufferedSink;

    iget-object v1, p0, Lokio/l;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lokio/RealBufferedSink;->a(I)Lokio/d;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokio/l;->d:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lokio/l;->c:Lokio/h;

    invoke-virtual {v1}, Lokio/h;->d()V

    invoke-direct {p0}, Lokio/l;->d()V
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    goto :goto_10

    :catchall_f
    move-exception v0

    :goto_10
    :try_start_10
    iget-object v1, p0, Lokio/l;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v1

    if-nez v0, :cond_1a

    move-object v0, v1

    :cond_1a
    :goto_1a
    :try_start_1a
    iget-object v1, p0, Lokio/l;->a:Lokio/RealBufferedSink;

    invoke-virtual {v1}, Lokio/RealBufferedSink;->close()V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v1

    if-nez v0, :cond_24

    move-object v0, v1

    :cond_24
    :goto_24
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokio/l;->d:Z

    if-nez v0, :cond_2a

    return-void

    :cond_2a
    throw v0
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokio/l;->c:Lokio/h;

    invoke-virtual {v0}, Lokio/h;->flush()V

    return-void
.end method

.method public n(Lokio/Buffer;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_1c

    if-nez v2, :cond_13

    return-void

    :cond_13
    invoke-direct {p0, p1, p2, p3}, Lokio/l;->a(Lokio/Buffer;J)V

    iget-object v0, p0, Lokio/l;->c:Lokio/h;

    invoke-virtual {v0, p1, p2, p3}, Lokio/h;->n(Lokio/Buffer;J)V

    return-void

    :cond_1c
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

    iget-object v0, p0, Lokio/l;->a:Lokio/RealBufferedSink;

    invoke-virtual {v0}, Lokio/RealBufferedSink;->timeout()Lokio/z;

    move-result-object v0

    return-object v0
.end method

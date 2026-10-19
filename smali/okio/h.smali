###### Class okio.h (okio.h)
.class public final Lokio/h;
.super Ljava/lang/Object;
.source "DeflaterSink.kt"

# interfaces
.implements Lokio/w;


# instance fields
.field private final a:Lokio/d;

.field private final b:Ljava/util/zip/Deflater;

.field private c:Z


# direct methods
.method public constructor <init>(Lokio/d;Ljava/util/zip/Deflater;)V
    .registers 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/h;->a:Lokio/d;

    iput-object p2, p0, Lokio/h;->b:Ljava/util/zip/Deflater;

    return-void
.end method

.method public constructor <init>(Lokio/w;Ljava/util/zip/Deflater;)V
    .registers 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/w;)Lokio/d;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lokio/h;-><init>(Lokio/d;Ljava/util/zip/Deflater;)V

    return-void
.end method

.method private final a(Z)V
    .registers 9
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    iget-object v0, p0, Lokio/h;->a:Lokio/d;

    invoke-interface {v0}, Lokio/d;->y()Lokio/Buffer;

    move-result-object v0

    :cond_6
    :goto_6
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v1

    if-eqz p1, :cond_1b

    iget-object v2, p0, Lokio/h;->b:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lokio/u;->b:[B

    iget v4, v1, Lokio/u;->d:I

    rsub-int v5, v4, 0x2000

    const/4 v6, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v2

    goto :goto_27

    :cond_1b
    iget-object v2, p0, Lokio/h;->b:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lokio/u;->b:[B

    iget v4, v1, Lokio/u;->d:I

    rsub-int v5, v4, 0x2000

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    :goto_27
    if-lez v2, :cond_3d

    iget v3, v1, Lokio/u;->d:I

    add-int/2addr v3, v2

    iput v3, v1, Lokio/u;->d:I

    invoke-virtual {v0}, Lokio/Buffer;->I()J

    move-result-wide v3

    int-to-long v1, v2

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lokio/Buffer;->x(J)V

    iget-object v1, p0, Lokio/h;->a:Lokio/d;

    invoke-interface {v1}, Lokio/d;->emitCompleteSegments()Lokio/d;

    goto :goto_6

    :cond_3d
    iget-object v2, p0, Lokio/h;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_6

    iget p1, v1, Lokio/u;->c:I

    iget v2, v1, Lokio/u;->d:I

    if-ne p1, v2, :cond_54

    invoke-virtual {v1}, Lokio/u;->b()Lokio/u;

    move-result-object p1

    iput-object p1, v0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    :cond_54
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

    iget-boolean v0, p0, Lokio/h;->c:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {p0}, Lokio/h;->d()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_a

    goto :goto_b

    :catchall_a
    move-exception v0

    :goto_b
    :try_start_b
    iget-object v1, p0, Lokio/h;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_15

    :catchall_11
    move-exception v1

    if-nez v0, :cond_15

    move-object v0, v1

    :cond_15
    :goto_15
    :try_start_15
    iget-object v1, p0, Lokio/h;->a:Lokio/d;

    invoke-interface {v1}, Lokio/w;->close()V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v1

    if-nez v0, :cond_1f

    move-object v0, v1

    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokio/h;->c:Z

    if-nez v0, :cond_25

    return-void

    :cond_25
    throw v0
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Lokio/h;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokio/h;->a(Z)V

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lokio/h;->a(Z)V

    iget-object v0, p0, Lokio/h;->a:Lokio/d;

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

    :goto_f
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_4f

    iget-object v0, p1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v0, Lokio/u;->d:I

    iget v2, v0, Lokio/u;->c:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    iget-object v1, p0, Lokio/h;->b:Ljava/util/zip/Deflater;

    iget-object v3, v0, Lokio/u;->b:[B

    iget v4, v0, Lokio/u;->c:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/zip/Deflater;->setInput([BII)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lokio/h;->a(Z)V

    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v3

    int-to-long v5, v2

    sub-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Lokio/Buffer;->x(J)V

    iget v1, v0, Lokio/u;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Lokio/u;->c:I

    iget v2, v0, Lokio/u;->d:I

    if-ne v1, v2, :cond_4d

    invoke-virtual {v0}, Lokio/u;->b()Lokio/u;

    move-result-object v1

    iput-object v1, p1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    :cond_4d
    sub-long/2addr p2, v5

    goto :goto_f

    :cond_4f
    return-void
.end method

.method public timeout()Lokio/z;
    .registers 2

    iget-object v0, p0, Lokio/h;->a:Lokio/d;

    invoke-interface {v0}, Lokio/w;->timeout()Lokio/z;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeflaterSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/h;->a:Lokio/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

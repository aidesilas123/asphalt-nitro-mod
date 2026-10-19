###### Class okio.s (okio.s)
.class final Lokio/s;
.super Ljava/lang/Object;
.source "JvmOkio.kt"

# interfaces
.implements Lokio/w;


# instance fields
.field private final a:Ljava/io/OutputStream;

.field private final b:Lokio/z;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lokio/z;)V
    .registers 4

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/s;->a:Ljava/io/OutputStream;

    iput-object p2, p0, Lokio/s;->b:Lokio/z;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lokio/s;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lokio/s;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public n(Lokio/Buffer;J)V
    .registers 11

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    :cond_f
    :goto_f
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_52

    iget-object v0, p0, Lokio/s;->b:Lokio/z;

    invoke-virtual {v0}, Lokio/z;->f()V

    iget-object v0, p1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v0, Lokio/u;->d:I

    iget v2, v0, Lokio/u;->c:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    iget-object v1, p0, Lokio/s;->a:Ljava/io/OutputStream;

    iget-object v3, v0, Lokio/u;->b:[B

    iget v4, v0, Lokio/u;->c:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    iget v1, v0, Lokio/u;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Lokio/u;->c:I

    int-to-long v1, v2

    sub-long/2addr p2, v1

    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Lokio/Buffer;->x(J)V

    iget v1, v0, Lokio/u;->c:I

    iget v2, v0, Lokio/u;->d:I

    if-ne v1, v2, :cond_f

    invoke-virtual {v0}, Lokio/u;->b()Lokio/u;

    move-result-object v1

    iput-object v1, p1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    goto :goto_f

    :cond_52
    return-void
.end method

.method public timeout()Lokio/z;
    .registers 2

    iget-object v0, p0, Lokio/s;->b:Lokio/z;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/s;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

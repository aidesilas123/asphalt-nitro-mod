###### Class com.mbridge.msdk.thrid.okio.Buffer.UnsafeCursor (com.mbridge.msdk.thrid.okio.Buffer$UnsafeCursor)
.class public final Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okio/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsafeCursor"
.end annotation


# instance fields
.field public buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

.field public data:[B

.field public end:I

.field public offset:J

.field public readWrite:Z

.field private segment:Lcom/mbridge/msdk/thrid/okio/Segment;

.field public start:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->offset:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->start:I

    iput v0, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->end:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->segment:Lcom/mbridge/msdk/thrid/okio/Segment;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->offset:J

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->data:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->start:I

    iput v0, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->end:I

    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final expandBuffer(I)J
    .registers 11

    if-lez p1, :cond_57

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_40

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    if-eqz v1, :cond_38

    iget-boolean v2, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v2, :cond_30

    iget-wide v2, v1, Lcom/mbridge/msdk/thrid/okio/Buffer;->size:J

    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/thrid/okio/Buffer;->writableSegment(I)Lcom/mbridge/msdk/thrid/okio/Segment;

    move-result-object p1

    iget v1, p1, Lcom/mbridge/msdk/thrid/okio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    iput v0, p1, Lcom/mbridge/msdk/thrid/okio/Segment;->limit:I

    iget-object v4, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    int-to-long v5, v1

    add-long v7, v2, v5

    iput-wide v7, v4, Lcom/mbridge/msdk/thrid/okio/Buffer;->size:J

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->segment:Lcom/mbridge/msdk/thrid/okio/Segment;

    iput-wide v2, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->offset:J

    iget-object p1, p1, Lcom/mbridge/msdk/thrid/okio/Segment;->data:[B

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->data:[B

    rsub-int p1, v1, 0x2000

    iput p1, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->start:I

    iput v0, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->end:I

    return-wide v5

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "expandBuffer() only permitted for read/write buffers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not attached to a buffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minByteCount > Segment.SIZE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minByteCount <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final next()I
    .registers 6

    iget-wide v0, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->offset:J

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    iget-wide v2, v2, Lcom/mbridge/msdk/thrid/okio/Buffer;->size:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_23

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_17

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    return v0

    :cond_17
    iget v2, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->end:I

    iget v3, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    return v0

    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final resizeBuffer(J)J
    .registers 16

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    if-eqz v0, :cond_9f

    iget-boolean v1, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v1, :cond_97

    iget-wide v0, v0, Lcom/mbridge/msdk/thrid/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v0

    if-gtz v4, :cond_5f

    cmp-long v4, p1, v2

    if-ltz v4, :cond_48

    sub-long v4, v0, p1

    :goto_16
    cmp-long v6, v4, v2

    if-lez v6, :cond_3b

    iget-object v6, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    iget-object v7, v6, Lcom/mbridge/msdk/thrid/okio/Buffer;->head:Lcom/mbridge/msdk/thrid/okio/Segment;

    iget-object v7, v7, Lcom/mbridge/msdk/thrid/okio/Segment;->prev:Lcom/mbridge/msdk/thrid/okio/Segment;

    iget v8, v7, Lcom/mbridge/msdk/thrid/okio/Segment;->limit:I

    iget v9, v7, Lcom/mbridge/msdk/thrid/okio/Segment;->pos:I

    sub-int v9, v8, v9

    int-to-long v9, v9

    cmp-long v11, v9, v4

    if-gtz v11, :cond_36

    invoke-virtual {v7}, Lcom/mbridge/msdk/thrid/okio/Segment;->pop()Lcom/mbridge/msdk/thrid/okio/Segment;

    move-result-object v8

    iput-object v8, v6, Lcom/mbridge/msdk/thrid/okio/Buffer;->head:Lcom/mbridge/msdk/thrid/okio/Segment;

    invoke-static {v7}, Lcom/mbridge/msdk/thrid/okio/SegmentPool;->recycle(Lcom/mbridge/msdk/thrid/okio/Segment;)V

    sub-long/2addr v4, v9

    goto :goto_16

    :cond_36
    int-to-long v2, v8

    sub-long/2addr v2, v4

    long-to-int v3, v2

    iput v3, v7, Lcom/mbridge/msdk/thrid/okio/Segment;->limit:I

    :cond_3b
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->segment:Lcom/mbridge/msdk/thrid/okio/Segment;

    iput-wide p1, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->offset:J

    iput-object v2, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->data:[B

    const/4 v2, -0x1

    iput v2, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->start:I

    iput v2, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->end:I

    goto :goto_92

    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newSize < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    if-lez v4, :cond_92

    sub-long v4, p1, v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    :cond_65
    :goto_65
    cmp-long v8, v4, v2

    if-lez v8, :cond_92

    iget-object v8, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v8, v6}, Lcom/mbridge/msdk/thrid/okio/Buffer;->writableSegment(I)Lcom/mbridge/msdk/thrid/okio/Segment;

    move-result-object v8

    iget v9, v8, Lcom/mbridge/msdk/thrid/okio/Segment;->limit:I

    rsub-int v9, v9, 0x2000

    int-to-long v9, v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v10, v9

    iget v9, v8, Lcom/mbridge/msdk/thrid/okio/Segment;->limit:I

    add-int/2addr v9, v10

    iput v9, v8, Lcom/mbridge/msdk/thrid/okio/Segment;->limit:I

    int-to-long v11, v10

    sub-long/2addr v4, v11

    if-eqz v7, :cond_65

    iput-object v8, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->segment:Lcom/mbridge/msdk/thrid/okio/Segment;

    iput-wide v0, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->offset:J

    iget-object v7, v8, Lcom/mbridge/msdk/thrid/okio/Segment;->data:[B

    iput-object v7, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->data:[B

    sub-int v7, v9, v10

    iput v7, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->start:I

    iput v9, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->end:I

    const/4 v7, 0x0

    goto :goto_65

    :cond_92
    :goto_92
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    iput-wide p1, v2, Lcom/mbridge/msdk/thrid/okio/Buffer;->size:J

    return-wide v0

    :cond_97
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "resizeBuffer() only permitted for read/write buffers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not attached to a buffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final seek(J)I
    .registers 15

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9c

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    iget-wide v3, v0, Lcom/mbridge/msdk/thrid/okio/Buffer;->size:J

    cmp-long v1, p1, v3

    if-gtz v1, :cond_9c

    if-eqz v2, :cond_8f

    cmp-long v1, p1, v3

    if-nez v1, :cond_16

    goto/16 :goto_8f

    :cond_16
    const-wide/16 v1, 0x0

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okio/Buffer;->head:Lcom/mbridge/msdk/thrid/okio/Segment;

    iget-object v5, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->segment:Lcom/mbridge/msdk/thrid/okio/Segment;

    if-eqz v5, :cond_32

    iget-wide v6, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->offset:J

    iget v8, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->start:I

    iget v9, v5, Lcom/mbridge/msdk/thrid/okio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    sub-long/2addr v6, v8

    cmp-long v8, v6, p1

    if-lez v8, :cond_30

    move-wide v3, v6

    move-object v11, v5

    move-object v5, v0

    move-object v0, v11

    goto :goto_33

    :cond_30
    move-wide v1, v6

    goto :goto_33

    :cond_32
    move-object v5, v0

    :goto_33
    sub-long v6, v3, p1

    sub-long v8, p1, v1

    cmp-long v10, v6, v8

    if-lez v10, :cond_4d

    :goto_3b
    iget v0, v5, Lcom/mbridge/msdk/thrid/okio/Segment;->limit:I

    iget v3, v5, Lcom/mbridge/msdk/thrid/okio/Segment;->pos:I

    sub-int v4, v0, v3

    int-to-long v6, v4

    add-long/2addr v6, v1

    cmp-long v4, p1, v6

    if-ltz v4, :cond_5d

    sub-int/2addr v0, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-object v5, v5, Lcom/mbridge/msdk/thrid/okio/Segment;->next:Lcom/mbridge/msdk/thrid/okio/Segment;

    goto :goto_3b

    :cond_4d
    :goto_4d
    cmp-long v1, v3, p1

    if-lez v1, :cond_5b

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okio/Segment;->prev:Lcom/mbridge/msdk/thrid/okio/Segment;

    iget v1, v0, Lcom/mbridge/msdk/thrid/okio/Segment;->limit:I

    iget v2, v0, Lcom/mbridge/msdk/thrid/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr v3, v1

    goto :goto_4d

    :cond_5b
    move-object v5, v0

    move-wide v1, v3

    :cond_5d
    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v0, :cond_7a

    iget-boolean v0, v5, Lcom/mbridge/msdk/thrid/okio/Segment;->shared:Z

    if-eqz v0, :cond_7a

    invoke-virtual {v5}, Lcom/mbridge/msdk/thrid/okio/Segment;->unsharedCopy()Lcom/mbridge/msdk/thrid/okio/Segment;

    move-result-object v0

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    iget-object v4, v3, Lcom/mbridge/msdk/thrid/okio/Buffer;->head:Lcom/mbridge/msdk/thrid/okio/Segment;

    if-ne v4, v5, :cond_71

    iput-object v0, v3, Lcom/mbridge/msdk/thrid/okio/Buffer;->head:Lcom/mbridge/msdk/thrid/okio/Segment;

    :cond_71
    invoke-virtual {v5, v0}, Lcom/mbridge/msdk/thrid/okio/Segment;->push(Lcom/mbridge/msdk/thrid/okio/Segment;)Lcom/mbridge/msdk/thrid/okio/Segment;

    move-result-object v5

    iget-object v0, v5, Lcom/mbridge/msdk/thrid/okio/Segment;->prev:Lcom/mbridge/msdk/thrid/okio/Segment;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/Segment;->pop()Lcom/mbridge/msdk/thrid/okio/Segment;

    :cond_7a
    iput-object v5, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->segment:Lcom/mbridge/msdk/thrid/okio/Segment;

    iput-wide p1, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->offset:J

    iget-object v0, v5, Lcom/mbridge/msdk/thrid/okio/Segment;->data:[B

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->data:[B

    iget v0, v5, Lcom/mbridge/msdk/thrid/okio/Segment;->pos:I

    sub-long/2addr p1, v1

    long-to-int p2, p1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->start:I

    iget p1, v5, Lcom/mbridge/msdk/thrid/okio/Segment;->limit:I

    iput p1, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->end:I

    sub-int/2addr p1, v0

    return p1

    :cond_8f
    :goto_8f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->segment:Lcom/mbridge/msdk/thrid/okio/Segment;

    iput-wide p1, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->offset:J

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->data:[B

    const/4 p1, -0x1

    iput p1, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->start:I

    iput p1, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->end:I

    return p1

    :cond_9c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    iget-wide v2, p2, Lcom/mbridge/msdk/thrid/okio/Buffer;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "offset=%s > size=%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

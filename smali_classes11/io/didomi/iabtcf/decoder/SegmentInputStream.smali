###### Class io.didomi.iabtcf.decoder.SegmentInputStream (io.didomi.iabtcf.decoder.SegmentInputStream)
.class Lio/didomi/iabtcf/decoder/SegmentInputStream;
.super Ljava/io/InputStream;
.source "SegmentInputStream.java"


# instance fields
.field private end:I

.field private rpos:I

.field private final src:Ljava/lang/String;

.field private start:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->end:I

    if-eqz p1, :cond_2d

    if-ltz p2, :cond_17

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->src:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->rpos:I

    return-void

    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "start is invalid %d"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "src"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->rpos:I

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_18

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->src:Ljava/lang/String;

    iget v1, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->rpos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method protected hasNextSegment()Z
    .registers 4

    iget v0, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->rpos:I

    iget v1, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->end:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_8
    iget-object v1, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_21

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->src:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1e

    iput v0, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->end:I

    const/4 v0, 0x1

    return v0

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->rpos:I

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_24

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->src:Ljava/lang/String;

    iget v1, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->rpos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_18

    goto :goto_24

    :cond_18
    iget v1, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->rpos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->rpos:I

    and-int/lit16 v1, v0, 0xff

    if-eq v1, v0, :cond_23

    goto :goto_24

    :cond_23
    move v2, v0

    :cond_24
    :goto_24
    return v2
.end method

.method public declared-synchronized reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->start:I

    iput v0, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->rpos:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected segmentEnd()I
    .registers 3

    iget v0, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->end:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    iget v0, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->rpos:I

    :goto_7
    iput v0, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->end:I

    iget v0, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->end:I

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_24

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->src:Ljava/lang/String;

    iget v1, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_24

    iget v0, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->end:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_24
    iget v0, p0, Lio/didomi/iabtcf/decoder/SegmentInputStream;->end:I

    return v0
.end method

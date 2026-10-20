###### Class com.mbridge.msdk.playercommon.exoplayer2.audio.TrimmingAudioProcessor (com.mbridge.msdk.playercommon.exoplayer2.audio.TrimmingAudioProcessor)
.class final Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;
.super Ljava/lang/Object;
.source "TrimmingAudioProcessor.java"

# interfaces
.implements Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private channelCount:I

.field private endBuffer:[B

.field private endBufferSize:I

.field private inputEnded:Z

.field private isActive:Z

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private pendingTrimStartBytes:I

.field private sampleRateHz:I

.field private trimEndFrames:I

.field private trimStartFrames:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->channelCount:I

    iput v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->sampleRateHz:I

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->endBuffer:[B

    return-void
.end method


# virtual methods
.method public final configure(III)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor$UnhandledFormatException;
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2d

    iput p2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->channelCount:I

    iput p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->sampleRateHz:I

    iget p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->trimEndFrames:I

    mul-int p3, p1, p2

    mul-int/lit8 p3, p3, 0x2

    new-array p3, p3, [B

    iput-object p3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->endBuffer:[B

    const/4 p3, 0x0

    iput p3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    iget v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->trimStartFrames:I

    mul-int p2, p2, v1

    mul-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    iget-boolean p2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->isActive:Z

    const/4 v0, 0x1

    if-nez v1, :cond_26

    if-eqz p1, :cond_24

    goto :goto_26

    :cond_24
    const/4 p1, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 p1, 0x1

    :goto_27
    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->isActive:Z

    if-eq p2, p1, :cond_2c

    const/4 p3, 0x1

    :cond_2c
    return p3

    :cond_2d
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0
.end method

.method public final flush()V
    .registers 2

    sget-object v0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->inputEnded:Z

    iput v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    iput v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    return-void
.end method

.method public final getOutput()Ljava/nio/ByteBuffer;
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getOutputChannelCount()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->channelCount:I

    return v0
.end method

.method public final getOutputEncoding()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public final getOutputSampleRateHz()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->sampleRateHz:I

    return v0
.end method

.method public final isActive()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->isActive:Z

    return v0
.end method

.method public final isEnded()Z
    .registers 3

    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->inputEnded:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final queueEndOfStream()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public final queueInput(Ljava/nio/ByteBuffer;)V
    .registers 9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    iget v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    if-lez v0, :cond_1e

    return-void

    :cond_1e
    sub-int/2addr v2, v3

    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->endBuffer:[B

    array-length v3, v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v0, :cond_3d

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_42

    :cond_3d
    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_42
    iget v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->constrainValue(III)I

    move-result v3

    iget-object v5, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->endBuffer:[B

    invoke-virtual {v5, v6, v4, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v3

    invoke-static {v0, v4, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->constrainValue(III)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v5, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sub-int/2addr v2, v0

    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->endBuffer:[B

    invoke-static {v1, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->endBuffer:[B

    iget v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final reset()V
    .registers 2

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->flush()V

    sget-object v0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->channelCount:I

    iput v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->sampleRateHz:I

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->endBuffer:[B

    return-void
.end method

.method public final setTrimFrameCount(II)V
    .registers 3

    iput p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->trimStartFrames:I

    iput p2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/TrimmingAudioProcessor;->trimEndFrames:I

    return-void
.end method

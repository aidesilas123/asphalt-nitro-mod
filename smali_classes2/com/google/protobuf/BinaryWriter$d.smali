###### Class com.google.protobuf.BinaryWriter.d (com.google.protobuf.BinaryWriter$d)
.class final Lcom/google/protobuf/BinaryWriter$d;
.super Lcom/google/protobuf/BinaryWriter;
.source "BinaryWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/BinaryWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private bufferOffset:J

.field private limitMinusOne:J

.field private pos:J


# direct methods
.method constructor <init>(Lcom/google/protobuf/BufferAllocator;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/protobuf/BinaryWriter;-><init>(Lcom/google/protobuf/BufferAllocator;ILcom/google/protobuf/BinaryWriter$a;)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$d;->nextBuffer()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    invoke-static {}, Lcom/google/protobuf/BinaryWriter$d;->isSupported()Z

    move-result v0

    return v0
.end method

.method private bufferPos()I
    .registers 5

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$d;->bufferOffset:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private bytesWrittenToCurrentBuffer()I
    .registers 5

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->limitMinusOne:J

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private static isSupported()Z
    .registers 1

    invoke-static {}, Lcom/google/protobuf/b2;->hasUnsafeByteBufferOperations()Z

    move-result v0

    return v0
.end method

.method private nextBuffer()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->newDirectBuffer()Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryWriter$d;->nextBuffer(Lcom/google/protobuf/AllocatedBuffer;)V

    return-void
.end method

.method private nextBuffer(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/BinaryWriter;->newDirectBuffer(I)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$d;->nextBuffer(Lcom/google/protobuf/AllocatedBuffer;)V

    return-void
.end method

.method private nextBuffer(Lcom/google/protobuf/AllocatedBuffer;)V
    .registers 6

    invoke-virtual {p1}, Lcom/google/protobuf/AllocatedBuffer;->hasNioBuffer()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p1}, Lcom/google/protobuf/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$d;->finishCurrentBuffer()V

    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/protobuf/BinaryWriter$d;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/google/protobuf/BinaryWriter$d;->buffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/google/protobuf/BinaryWriter$d;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/protobuf/b2;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->bufferOffset:J

    iget-object p1, p0, Lcom/google/protobuf/BinaryWriter$d;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->limitMinusOne:J

    iput-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    return-void

    :cond_3e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Allocator returned non-direct buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_46
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Allocated buffer does not have NIO buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private spaceLeft()I
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$d;->bufferPos()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private writeVarint32FiveBytes(I)V
    .registers 8

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    ushr-int/lit8 v4, p1, 0x1c

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    ushr-int/lit8 v4, p1, 0x15

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    ushr-int/lit8 v4, p1, 0xe

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    ushr-int/lit8 v4, p1, 0x7

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/b2;->putByte(JB)V

    return-void
.end method

.method private writeVarint32FourBytes(I)V
    .registers 8

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    ushr-int/lit8 v4, p1, 0x15

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    ushr-int/lit8 v4, p1, 0xe

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    ushr-int/lit8 v4, p1, 0x7

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/b2;->putByte(JB)V

    return-void
.end method

.method private writeVarint32OneByte(I)V
    .registers 6

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/b2;->putByte(JB)V

    return-void
.end method

.method private writeVarint32ThreeBytes(I)V
    .registers 8

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    ushr-int/lit8 v4, p1, 0xe

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    ushr-int/lit8 v4, p1, 0x7

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/b2;->putByte(JB)V

    return-void
.end method

.method private writeVarint32TwoBytes(I)V
    .registers 8

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    ushr-int/lit8 v4, p1, 0x7

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/b2;->putByte(JB)V

    return-void
.end method

.method private writeVarint64EightBytes(J)V
    .registers 13

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x31

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/b2;->putByte(JB)V

    return-void
.end method

.method private writeVarint64FiveBytes(J)V
    .registers 13

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/b2;->putByte(JB)V

    return-void
.end method

.method private writeVarint64FourBytes(J)V
    .registers 13

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/b2;->putByte(JB)V

    return-void
.end method

.method private writeVarint64NineBytes(J)V
    .registers 13

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x31

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/b2;->putByte(JB)V

    return-void
.end method

.method private writeVarint64OneByte(J)V
    .registers 7

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/b2;->putByte(JB)V

    return-void
.end method

.method private writeVarint64SevenBytes(J)V
    .registers 13

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/b2;->putByte(JB)V

    return-void
.end method

.method private writeVarint64SixBytes(J)V
    .registers 13

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/b2;->putByte(JB)V

    return-void
.end method

.method private writeVarint64TenBytes(J)V
    .registers 13

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x3f

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x31

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/b2;->putByte(JB)V

    return-void
.end method

.method private writeVarint64ThreeBytes(J)V
    .registers 13

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    long-to-int v4, p1

    ushr-int/lit8 v4, v4, 0xe

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/b2;->putByte(JB)V

    return-void
.end method

.method private writeVarint64TwoBytes(J)V
    .registers 9

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/b2;->putByte(JB)V

    return-void
.end method


# virtual methods
.method finishCurrentBuffer()V
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$d;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/google/protobuf/BinaryWriter;->totalDoneBytes:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$d;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/BinaryWriter;->totalDoneBytes:I

    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$d;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$d;->bufferPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/BinaryWriter$d;->buffer:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    iput-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->limitMinusOne:J

    :cond_21
    return-void
.end method

.method public getTotalBytesWritten()I
    .registers 3

    iget v0, p0, Lcom/google/protobuf/BinaryWriter;->totalDoneBytes:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$d;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method requireSpace(I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$d;->spaceLeft()I

    move-result v0

    if-ge v0, p1, :cond_9

    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$d;->nextBuffer(I)V

    :cond_9
    return-void
.end method

.method public write(B)V
    .registers 6

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/b2;->putByte(JB)V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .registers 7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$d;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_d

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryWriter$d;->nextBuffer(I)V

    :cond_d
    iget-wide v1, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$d;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$d;->bufferPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$d;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public write([BII)V
    .registers 8

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$d;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_9

    invoke-direct {p0, p3}, Lcom/google/protobuf/BinaryWriter$d;->nextBuffer(I)V

    :cond_9
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$d;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$d;->bufferPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$d;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeBool(IZ)V
    .registers 4

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$d;->requireSpace(I)V

    int-to-byte p2, p2

    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$d;->write(B)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeTag(II)V

    return-void
.end method

.method writeBool(Z)V
    .registers 2

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/BinaryWriter$d;->write(B)V

    return-void
.end method

.method public writeBytes(ILcom/google/protobuf/ByteString;)V
    .registers 4

    :try_start_0
    invoke-virtual {p2, p0}, Lcom/google/protobuf/ByteString;->writeToReverse(Lcom/google/protobuf/k;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_14

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$d;->requireSpace(I)V

    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->size()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint32(I)V

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeTag(II)V

    return-void

    :catch_14
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeEndGroup(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$d;->writeTag(II)V

    return-void
.end method

.method writeFixed32(I)V
    .registers 8

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    shr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/b2;->putByte(JB)V

    return-void
.end method

.method public writeFixed32(II)V
    .registers 4

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$d;->requireSpace(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeFixed32(I)V

    const/4 p2, 0x5

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeTag(II)V

    return-void
.end method

.method public writeFixed64(IJ)V
    .registers 5

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$d;->requireSpace(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/BinaryWriter$d;->writeFixed64(J)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeTag(II)V

    return-void
.end method

.method writeFixed64(J)V
    .registers 9

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x38

    shr-long v4, p1, v4

    long-to-int v5, v4

    and-int/lit16 v4, v5, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x30

    shr-long v4, p1, v4

    long-to-int v5, v4

    and-int/lit16 v4, v5, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x28

    shr-long v4, p1, v4

    long-to-int v5, v4

    and-int/lit16 v4, v5, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x20

    shr-long v4, p1, v4

    long-to-int v5, v4

    and-int/lit16 v4, v5, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x18

    shr-long v4, p1, v4

    long-to-int v5, v4

    and-int/lit16 v4, v5, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x10

    shr-long v4, p1, v4

    long-to-int v5, v4

    and-int/lit16 v4, v5, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    const/16 v4, 0x8

    shr-long v4, p1, v4

    long-to-int v5, v4

    and-int/lit16 v4, v5, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    long-to-int p2, p1

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/b2;->putByte(JB)V

    return-void
.end method

.method public writeGroup(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$d;->writeTag(II)V

    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeTag(II)V

    return-void
.end method

.method public writeGroup(ILjava/lang/Object;Lcom/google/protobuf/l1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$d;->writeTag(II)V

    invoke-interface {p3, p2, p0}, Lcom/google/protobuf/l1;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeTag(II)V

    return-void
.end method

.method writeInt32(I)V
    .registers 4

    if-ltz p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint32(I)V

    goto :goto_a

    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint64(J)V

    :goto_a
    return-void
.end method

.method public writeInt32(II)V
    .registers 4

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$d;->requireSpace(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeInt32(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeTag(II)V

    return-void
.end method

.method public writeLazy(Ljava/nio/ByteBuffer;)V
    .registers 7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$d;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_1c

    iget v1, p0, Lcom/google/protobuf/BinaryWriter;->totalDoneBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/BinaryWriter;->totalDoneBytes:I

    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lcom/google/protobuf/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$d;->nextBuffer()V

    return-void

    :cond_1c
    iget-wide v1, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$d;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$d;->bufferPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$d;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeLazy([BII)V
    .registers 8

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$d;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_18

    iget v0, p0, Lcom/google/protobuf/BinaryWriter;->totalDoneBytes:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/protobuf/BinaryWriter;->totalDoneBytes:I

    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1, p2, p3}, Lcom/google/protobuf/AllocatedBuffer;->wrap([BII)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$d;->nextBuffer()V

    return-void

    :cond_18
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$d;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$d;->bufferPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$d;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeMessage(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$d;->getTotalBytesWritten()I

    move-result v0

    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Lcom/google/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$d;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, v0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$d;->requireSpace(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint32(I)V

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeTag(II)V

    return-void
.end method

.method public writeMessage(ILjava/lang/Object;Lcom/google/protobuf/l1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$d;->getTotalBytesWritten()I

    move-result v0

    invoke-interface {p3, p2, p0}, Lcom/google/protobuf/l1;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$d;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, v0

    const/16 p3, 0xa

    invoke-virtual {p0, p3}, Lcom/google/protobuf/BinaryWriter$d;->requireSpace(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint32(I)V

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeTag(II)V

    return-void
.end method

.method writeSInt32(I)V
    .registers 2

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint32(I)V

    return-void
.end method

.method public writeSInt32(II)V
    .registers 4

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$d;->requireSpace(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeSInt32(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeTag(II)V

    return-void
.end method

.method public writeSInt64(IJ)V
    .registers 5

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$d;->requireSpace(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/BinaryWriter$d;->writeSInt64(J)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeTag(II)V

    return-void
.end method

.method writeSInt64(J)V
    .registers 3

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint64(J)V

    return-void
.end method

.method public writeStartGroup(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$d;->writeTag(II)V

    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$d;->getTotalBytesWritten()I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$d;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, v0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$d;->requireSpace(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint32(I)V

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeTag(II)V

    return-void
.end method

.method writeString(Ljava/lang/String;)V
    .registers 14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$d;->requireSpace(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    const/16 v1, 0x80

    const-wide/16 v2, 0x1

    if-ltz v0, :cond_26

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v1, :cond_26

    iget-wide v5, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v1, v5, v2

    iput-wide v1, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    int-to-byte v1, v4

    invoke-static {v5, v6, v1}, Lcom/google/protobuf/b2;->putByte(JB)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_26
    const/4 v4, -0x1

    if-ne v0, v4, :cond_2a

    return-void

    :cond_2a
    :goto_2a
    if-ltz v0, :cond_110

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ge v5, v1, :cond_44

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    iget-wide v8, p0, Lcom/google/protobuf/BinaryWriter$d;->bufferOffset:J

    cmp-long v10, v6, v8

    if-ltz v10, :cond_44

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lcom/google/protobuf/b2;->putByte(JB)V

    goto/16 :goto_10d

    :cond_44
    const/16 v6, 0x800

    if-ge v5, v6, :cond_6b

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    iget-wide v8, p0, Lcom/google/protobuf/BinaryWriter$d;->bufferOffset:J

    cmp-long v10, v6, v8

    if-lez v10, :cond_6b

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    and-int/lit8 v8, v5, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    ushr-int/lit8 v5, v5, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lcom/google/protobuf/b2;->putByte(JB)V

    goto/16 :goto_10d

    :cond_6b
    const v6, 0xd800

    if-lt v5, v6, :cond_75

    const v6, 0xdfff

    if-ge v6, v5, :cond_a7

    :cond_75
    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    iget-wide v8, p0, Lcom/google/protobuf/BinaryWriter$d;->bufferOffset:J

    add-long/2addr v8, v2

    cmp-long v10, v6, v8

    if-lez v10, :cond_a7

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    and-int/lit8 v8, v5, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    ushr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    ushr-int/lit8 v5, v5, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lcom/google/protobuf/b2;->putByte(JB)V

    goto :goto_10d

    :cond_a7
    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    iget-wide v8, p0, Lcom/google/protobuf/BinaryWriter$d;->bufferOffset:J

    const-wide/16 v10, 0x2

    add-long/2addr v8, v10

    cmp-long v10, v6, v8

    if-lez v10, :cond_108

    if-eqz v0, :cond_100

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v7

    if-eqz v7, :cond_100

    add-int/lit8 v0, v0, -0x1

    invoke-static {v6, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    and-int/lit8 v8, v5, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    ushr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    ushr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/b2;->putByte(JB)V

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/BinaryWriter$d;->pos:J

    ushr-int/lit8 v5, v5, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lcom/google/protobuf/b2;->putByte(JB)V

    goto :goto_10d

    :cond_100
    new-instance p1, Lcom/google/protobuf/c2$d;

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p1, v1, v0}, Lcom/google/protobuf/c2$d;-><init>(II)V

    throw p1

    :cond_108
    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$d;->requireSpace(I)V

    add-int/lit8 v0, v0, 0x1

    :goto_10d
    add-int/2addr v0, v4

    goto/16 :goto_2a

    :cond_110
    return-void
.end method

.method writeTag(II)V
    .registers 3

    invoke-static {p1, p2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint32(I)V

    return-void
.end method

.method public writeUInt32(II)V
    .registers 4

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$d;->requireSpace(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint32(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeTag(II)V

    return-void
.end method

.method public writeUInt64(IJ)V
    .registers 5

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$d;->requireSpace(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint64(J)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeTag(II)V

    return-void
.end method

.method writeVarint32(I)V
    .registers 3

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8

    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint32OneByte(I)V

    goto :goto_25

    :cond_8
    and-int/lit16 v0, p1, -0x4000

    if-nez v0, :cond_10

    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint32TwoBytes(I)V

    goto :goto_25

    :cond_10
    const/high16 v0, -0x200000

    and-int/2addr v0, p1

    if-nez v0, :cond_19

    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint32ThreeBytes(I)V

    goto :goto_25

    :cond_19
    const/high16 v0, -0x10000000

    and-int/2addr v0, p1

    if-nez v0, :cond_22

    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint32FourBytes(I)V

    goto :goto_25

    :cond_22
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint32FiveBytes(I)V

    :goto_25
    return-void
.end method

.method writeVarint64(J)V
    .registers 4

    invoke-static {p1, p2}, Lcom/google/protobuf/BinaryWriter;->access$200(J)B

    move-result v0

    packed-switch v0, :pswitch_data_30

    goto :goto_2f

    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint64TenBytes(J)V

    goto :goto_2f

    :pswitch_c
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint64NineBytes(J)V

    goto :goto_2f

    :pswitch_10
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint64EightBytes(J)V

    goto :goto_2f

    :pswitch_14
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint64SevenBytes(J)V

    goto :goto_2f

    :pswitch_18
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint64SixBytes(J)V

    goto :goto_2f

    :pswitch_1c
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint64FiveBytes(J)V

    goto :goto_2f

    :pswitch_20
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint64FourBytes(J)V

    goto :goto_2f

    :pswitch_24
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint64ThreeBytes(J)V

    goto :goto_2f

    :pswitch_28
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint64TwoBytes(J)V

    goto :goto_2f

    :pswitch_2c
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$d;->writeVarint64OneByte(J)V

    :goto_2f
    return-void

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

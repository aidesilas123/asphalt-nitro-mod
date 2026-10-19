###### Class io.didomi.iabtcf.decoder.utils.BitReader (io.didomi.iabtcf.decoder.utils.BitReader)
.class public Lio/didomi/iabtcf/decoder/utils/BitReader;
.super Ljava/lang/Object;
.source "BitReader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private buffer:[B

.field final cache:Lio/didomi/iabtcf/decoder/utils/LengthOffsetCache;

.field private final is:Ljava/io/InputStream;

.field private isrpos:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->is:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput p1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->isrpos:I

    new-instance p1, Lio/didomi/iabtcf/decoder/utils/LengthOffsetCache;

    invoke-direct {p1, p0}, Lio/didomi/iabtcf/decoder/utils/LengthOffsetCache;-><init>(Lio/didomi/iabtcf/decoder/utils/BitReader;)V

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->cache:Lio/didomi/iabtcf/decoder/utils/LengthOffsetCache;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    array-length p1, p1

    iput p1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->isrpos:I

    const/4 p1, 0x0

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->is:Ljava/io/InputStream;

    new-instance p1, Lio/didomi/iabtcf/decoder/utils/LengthOffsetCache;

    invoke-direct {p1, p0}, Lio/didomi/iabtcf/decoder/utils/LengthOffsetCache;-><init>(Lio/didomi/iabtcf/decoder/utils/BitReader;)V

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->cache:Lio/didomi/iabtcf/decoder/utils/LengthOffsetCache;

    return-void
.end method

.method private ensureCapacity(I)V
    .registers 5

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    array-length v1, v0

    if-lt v1, p1, :cond_6

    return-void

    :cond_6
    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    return-void
.end method

.method private ensureReadable(II)Z
    .registers 10

    add-int v0, p1, p2

    iget v1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->isrpos:I

    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-gt v0, v1, :cond_a

    return v3

    :cond_a
    iget-object v1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->is:Ljava/io/InputStream;

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_46

    invoke-direct {p0, v0}, Lio/didomi/iabtcf/decoder/utils/BitReader;->ensureCapacity(I)V

    :goto_13
    if-lez v2, :cond_45

    :try_start_15
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->is:Ljava/io/InputStream;

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    iget v6, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->isrpos:I

    invoke-virtual {v0, v1, v6, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_23

    return v5

    :cond_23
    iget v1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->isrpos:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->isrpos:I
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_28} :catch_2a

    sub-int/2addr v2, v0

    goto :goto_13

    :catch_2a
    move-exception v0

    new-instance v1, Lio/didomi/iabtcf/decoder/exceptions/ByteParseException;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "error decoding at offset %d length %d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lio/didomi/iabtcf/decoder/exceptions/ByteParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_45
    return v3

    :cond_46
    new-instance v0, Lio/didomi/iabtcf/decoder/exceptions/ByteParseException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    iget-object p1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "read %d bytes at index %d out of bounds for buffer length %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/didomi/iabtcf/decoder/exceptions/ByteParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readByteBits(II)B
    .registers 6

    ushr-int/lit8 v0, p1, 0x3

    rem-int/lit8 p1, p1, 0x8

    rsub-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    if-ge v1, p2, :cond_23

    const/4 p1, 0x2

    invoke-direct {p0, v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->ensureReadable(II)Z

    iget-object p1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    aget-byte p1, p1, v0

    sub-int/2addr p2, v1

    invoke-direct {p0, p1, p2, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->unsafeReadLsb(BII)B

    move-result p1

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lio/didomi/iabtcf/decoder/utils/BitReader;->unsafeReadMsb(BII)B

    move-result p2

    or-int/2addr p1, p2

    int-to-byte p1, p1

    return p1

    :cond_23
    invoke-direct {p0, v0, v2}, Lio/didomi/iabtcf/decoder/utils/BitReader;->ensureReadable(II)Z

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    aget-byte v0, v1, v0

    invoke-direct {p0, v0, p1, p2}, Lio/didomi/iabtcf/decoder/utils/BitReader;->unsafeReadMsb(BII)B

    move-result p1

    return p1
.end method

.method private unsafeReadLsb(BII)B
    .registers 5

    if-nez p3, :cond_3

    goto :goto_a

    :cond_3
    const/4 v0, 0x1

    shl-int p3, v0, p3

    sub-int/2addr p3, v0

    and-int/2addr p1, p3

    shl-int/2addr p1, p2

    int-to-byte p1, p1

    :goto_a
    return p1
.end method

.method private unsafeReadMsb(BII)B
    .registers 5

    if-nez p3, :cond_4

    const/4 p1, 0x0

    goto :goto_e

    :cond_4
    rsub-int/lit8 v0, p3, 0x8

    sub-int/2addr v0, p2

    ushr-int/2addr p1, v0

    const/4 p2, 0x1

    shl-int p3, p2, p3

    sub-int/2addr p3, p2

    and-int/2addr p1, p3

    int-to-byte p1, p1

    :goto_e
    return p1
.end method


# virtual methods
.method public readBitSet(II)Ljava/util/BitSet;
    .registers 6

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p2}, Ljava/util/BitSet;-><init>(I)V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, p2, :cond_16

    add-int v2, p1, v1

    invoke-virtual {p0, v2}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits1(I)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_16
    return-object v0
.end method

.method public readBits1(I)Z
    .registers 5

    ushr-int/lit8 v0, p1, 0x3

    rem-int/lit8 p1, p1, 0x8

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->ensureReadable(II)Z

    iget-object v2, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    aget-byte v0, v2, v0

    rsub-int/lit8 p1, p1, 0x7

    ushr-int p1, v0, p1

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public readBits1(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Z
    .registers 2

    invoke-virtual {p1, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getOffset(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits1(I)Z

    move-result p1

    return p1
.end method

.method public readBits12(I)I
    .registers 9

    ushr-int/lit8 v0, p1, 0x3

    rem-int/lit8 p1, p1, 0x8

    rsub-int/lit8 v1, p1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-ge v1, v4, :cond_31

    const/4 v5, 0x3

    invoke-direct {p0, v0, v5}, Lio/didomi/iabtcf/decoder/utils/BitReader;->ensureReadable(II)Z

    iget-object v5, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    aget-byte v5, v5, v0

    invoke-direct {p0, v5, p1, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->unsafeReadLsb(BII)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v4

    iget-object v5, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    sub-int/2addr p1, v4

    shl-int v4, v6, p1

    or-int/2addr v1, v4

    add-int/2addr v0, v3

    aget-byte v0, v5, v0

    invoke-direct {p0, v0, v2, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->unsafeReadMsb(BII)B

    move-result p1

    :goto_2d
    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1

    :cond_31
    invoke-direct {p0, v0, v3}, Lio/didomi/iabtcf/decoder/utils/BitReader;->ensureReadable(II)Z

    iget-object v3, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    aget-byte v3, v3, v0

    invoke-direct {p0, v3, p1, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->unsafeReadLsb(BII)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v4

    iget-object v3, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, v3, v0

    add-int/2addr p1, v4

    invoke-direct {p0, v0, v2, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->unsafeReadMsb(BII)B

    move-result p1

    goto :goto_2d
.end method

.method public readBits12(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)I
    .registers 2

    invoke-virtual {p1, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getOffset(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits12(I)I

    move-result p1

    return p1
.end method

.method public readBits16(I)I
    .registers 7

    ushr-int/lit8 v0, p1, 0x3

    const/16 v1, 0x8

    rem-int/2addr p1, v1

    rsub-int/lit8 v2, p1, 0x8

    const/4 v3, 0x2

    if-ge v2, v1, :cond_30

    const/4 v4, 0x3

    invoke-direct {p0, v0, v4}, Lio/didomi/iabtcf/decoder/utils/BitReader;->ensureReadable(II)Z

    iget-object v4, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    aget-byte v4, v4, v0

    invoke-direct {p0, v4, p1, v2}, Lio/didomi/iabtcf/decoder/utils/BitReader;->unsafeReadLsb(BII)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v1, v2, 0x8

    iget-object v2, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, p1

    or-int/2addr v1, v4

    add-int/2addr v0, v3

    aget-byte v0, v2, v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->unsafeReadMsb(BII)B

    move-result p1

    :goto_2c
    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1

    :cond_30
    invoke-direct {p0, v0, v3}, Lio/didomi/iabtcf/decoder/utils/BitReader;->ensureReadable(II)Z

    iget-object p1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v1, v2, 0x8

    add-int/lit8 v0, v0, 0x1

    aget-byte p1, p1, v0

    goto :goto_2c
.end method

.method public readBits16(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)I
    .registers 2

    invoke-virtual {p1, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getOffset(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits16(I)I

    move-result p1

    return p1
.end method

.method public readBits2(I)B
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readByteBits(II)B

    move-result p1

    return p1
.end method

.method public readBits2(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)B
    .registers 2

    invoke-virtual {p1, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getOffset(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits2(I)B

    move-result p1

    return p1
.end method

.method public readBits24(I)I
    .registers 8

    ushr-int/lit8 v0, p1, 0x3

    const/16 v1, 0x8

    rem-int/2addr p1, v1

    rsub-int/lit8 v2, p1, 0x8

    const/4 v3, 0x3

    if-ge v2, v1, :cond_3a

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->ensureReadable(II)Z

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    aget-byte v1, v1, v0

    invoke-direct {p0, v1, p1, v2}, Lio/didomi/iabtcf/decoder/utils/BitReader;->unsafeReadLsb(BII)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    iget-object v2, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, p1, 0x8

    shl-int/2addr v4, v5

    or-int/2addr v1, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, p1

    or-int/2addr v1, v4

    add-int/2addr v0, v3

    aget-byte v0, v2, v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->unsafeReadMsb(BII)B

    move-result p1

    :goto_36
    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1

    :cond_3a
    invoke-direct {p0, v0, v3}, Lio/didomi/iabtcf/decoder/utils/BitReader;->ensureReadable(II)Z

    iget-object p1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x2

    aget-byte p1, p1, v0

    goto :goto_36
.end method

.method public readBits24(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)I
    .registers 2

    invoke-virtual {p1, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getOffset(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits24(I)I

    move-result p1

    return p1
.end method

.method public readBits3(I)B
    .registers 3

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readByteBits(II)B

    move-result p1

    return p1
.end method

.method public readBits3(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)B
    .registers 2

    invoke-virtual {p1, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getOffset(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits3(I)B

    move-result p1

    return p1
.end method

.method public readBits36(I)J
    .registers 14

    ushr-int/lit8 v0, p1, 0x3

    rem-int/lit8 p1, p1, 0x8

    rsub-int/lit8 v1, p1, 0x8

    const/4 v2, 0x0

    const/16 v3, 0x1c

    const/4 v4, 0x5

    const/4 v5, 0x4

    const-wide/16 v6, 0xff

    if-ge v1, v5, :cond_52

    const/4 v8, 0x6

    invoke-direct {p0, v0, v8}, Lio/didomi/iabtcf/decoder/utils/BitReader;->ensureReadable(II)Z

    iget-object v8, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    aget-byte v8, v8, v0

    invoke-direct {p0, v8, p1, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->unsafeReadLsb(BII)B

    move-result v1

    int-to-long v8, v1

    and-long/2addr v8, v6

    shl-long/2addr v8, v3

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    int-to-long v10, v3

    and-long/2addr v10, v6

    add-int/lit8 v3, p1, 0x14

    shl-long/2addr v10, v3

    or-long/2addr v8, v10

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    int-to-long v10, v3

    and-long/2addr v10, v6

    add-int/lit8 v3, p1, 0xc

    shl-long/2addr v10, v3

    or-long/2addr v8, v10

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, v1, v3

    int-to-long v10, v3

    and-long/2addr v10, v6

    add-int/lit8 v3, p1, 0x4

    shl-long/2addr v10, v3

    or-long/2addr v8, v10

    add-int/lit8 v3, v0, 0x4

    aget-byte v3, v1, v3

    int-to-long v10, v3

    and-long/2addr v10, v6

    sub-int/2addr p1, v5

    shl-long/2addr v10, p1

    or-long/2addr v8, v10

    add-int/2addr v0, v4

    aget-byte v0, v1, v0

    invoke-direct {p0, v0, v2, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->unsafeReadMsb(BII)B

    move-result p1

    int-to-long v0, p1

    and-long/2addr v0, v6

    or-long/2addr v0, v8

    return-wide v0

    :cond_52
    invoke-direct {p0, v0, v4}, Lio/didomi/iabtcf/decoder/utils/BitReader;->ensureReadable(II)Z

    iget-object v4, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    aget-byte v4, v4, v0

    invoke-direct {p0, v4, p1, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->unsafeReadLsb(BII)B

    move-result v1

    int-to-long v8, v1

    and-long/2addr v8, v6

    shl-long v3, v8, v3

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    add-int/lit8 v8, v0, 0x1

    aget-byte v8, v1, v8

    int-to-long v8, v8

    and-long/2addr v8, v6

    add-int/lit8 v10, p1, 0x14

    shl-long/2addr v8, v10

    or-long/2addr v3, v8

    add-int/lit8 v8, v0, 0x2

    aget-byte v8, v1, v8

    int-to-long v8, v8

    and-long/2addr v8, v6

    add-int/lit8 v10, p1, 0xc

    shl-long/2addr v8, v10

    or-long/2addr v3, v8

    add-int/lit8 v8, v0, 0x3

    aget-byte v8, v1, v8

    int-to-long v8, v8

    and-long/2addr v8, v6

    add-int/2addr p1, v5

    shl-long/2addr v8, p1

    or-long/2addr v3, v8

    add-int/2addr v0, v5

    aget-byte v0, v1, v0

    invoke-direct {p0, v0, v2, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->unsafeReadMsb(BII)B

    move-result p1

    int-to-long v0, p1

    and-long/2addr v0, v6

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public readBits36(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)J
    .registers 4

    invoke-virtual {p1, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getOffset(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits36(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public readBits6(I)B
    .registers 6

    ushr-int/lit8 v0, p1, 0x3

    rem-int/lit8 p1, p1, 0x8

    rsub-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-ge v1, v3, :cond_25

    const/4 p1, 0x2

    invoke-direct {p0, v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->ensureReadable(II)Z

    iget-object p1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    aget-byte p1, p1, v0

    rsub-int/lit8 v3, v1, 0x6

    invoke-direct {p0, p1, v3, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->unsafeReadLsb(BII)B

    move-result p1

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3}, Lio/didomi/iabtcf/decoder/utils/BitReader;->unsafeReadMsb(BII)B

    move-result v0

    or-int/2addr p1, v0

    int-to-byte p1, p1

    return p1

    :cond_25
    invoke-direct {p0, v0, v2}, Lio/didomi/iabtcf/decoder/utils/BitReader;->ensureReadable(II)Z

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/utils/BitReader;->buffer:[B

    aget-byte v0, v1, v0

    invoke-direct {p0, v0, p1, v3}, Lio/didomi/iabtcf/decoder/utils/BitReader;->unsafeReadMsb(BII)B

    move-result p1

    return p1
.end method

.method public readBits6(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)B
    .registers 2

    invoke-virtual {p1, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getOffset(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits6(I)B

    move-result p1

    return p1
.end method

.method public readStr2(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [C

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits6(I)B

    move-result v1

    add-int/lit8 v1, v1, 0x41

    int-to-char v1, v1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    add-int/lit8 p1, p1, 0x6

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits6(I)B

    move-result p1

    add-int/lit8 p1, p1, 0x41

    int-to-char p1, p1

    const/4 v1, 0x1

    aput-char p1, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readStr2(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p1, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getOffset(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readStr2(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.protobuf.CodedInputStream (com.google.protobuf.CodedInputStream)
.class public abstract Lcom/google/protobuf/CodedInputStream;
.super Ljava/lang/Object;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/CodedInputStream$c;,
        Lcom/google/protobuf/CodedInputStream$d;,
        Lcom/google/protobuf/CodedInputStream$e;,
        Lcom/google/protobuf/CodedInputStream$b;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field private static final DEFAULT_SIZE_LIMIT:I = 0x7fffffff

.field private static volatile defaultRecursionLimit:I = 0x64


# instance fields
.field recursionDepth:I

.field recursionLimit:I

.field private shouldDiscardUnknownFields:Z

.field sizeLimit:I

.field wrapper:Lcom/google/protobuf/CodedInputStreamReader;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/protobuf/CodedInputStream;->defaultRecursionLimit:I

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->sizeLimit:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/CodedInputStream;->shouldDiscardUnknownFields:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream;-><init>()V

    return-void
.end method

.method public static decodeZigZag32(I)I
    .registers 2

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static decodeZigZag64(J)J
    .registers 6

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;
    .registers 2

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;I)Lcom/google/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/io/InputStream;I)Lcom/google/protobuf/CodedInputStream;
    .registers 4

    if-lez p1, :cond_12

    if-nez p0, :cond_b

    sget-object p0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStream;->newInstance([B)Lcom/google/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance v0, Lcom/google/protobuf/CodedInputStream$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/protobuf/CodedInputStream$d;-><init>(Ljava/io/InputStream;ILcom/google/protobuf/CodedInputStream$a;)V

    return-object v0

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bufferSize must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newInstance(Ljava/lang/Iterable;)Lcom/google/protobuf/CodedInputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Lcom/google/protobuf/CodedInputStream;"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/CodedInputStream$e;->isSupported()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Lcom/google/protobuf/e0;

    invoke-direct {v0, p0}, Lcom/google/protobuf/e0;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/lang/Iterable;Z)Lcom/google/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0
.end method

.method static newInstance(Ljava/lang/Iterable;Z)Lcom/google/protobuf/CodedInputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;Z)",
            "Lcom/google/protobuf/CodedInputStream;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_20

    or-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_20
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_29

    or-int/lit8 v1, v1, 0x2

    goto :goto_6

    :cond_29
    or-int/lit8 v1, v1, 0x4

    goto :goto_6

    :cond_2c
    const/4 v0, 0x2

    if-ne v1, v0, :cond_36

    new-instance v0, Lcom/google/protobuf/CodedInputStream$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/google/protobuf/CodedInputStream$c;-><init>(Ljava/lang/Iterable;IZLcom/google/protobuf/CodedInputStream$a;)V

    return-object v0

    :cond_36
    new-instance p1, Lcom/google/protobuf/e0;

    invoke-direct {p1, p0}, Lcom/google/protobuf/e0;-><init>(Ljava/lang/Iterable;)V

    invoke-static {p1}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/CodedInputStream;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/nio/ByteBuffer;Z)Lcom/google/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0
.end method

.method static newInstance(Ljava/nio/ByteBuffer;Z)Lcom/google/protobuf/CodedInputStream;
    .registers 5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lcom/google/protobuf/CodedInputStream;->newInstance([BIIZ)Lcom/google/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0

    :cond_1c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/google/protobuf/CodedInputStream$e;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Lcom/google/protobuf/CodedInputStream$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/protobuf/CodedInputStream$e;-><init>(Ljava/nio/ByteBuffer;ZLcom/google/protobuf/CodedInputStream$a;)V

    return-object v0

    :cond_2f
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    new-array v0, p1, [B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Lcom/google/protobuf/CodedInputStream;->newInstance([BIIZ)Lcom/google/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance([B)Lcom/google/protobuf/CodedInputStream;
    .registers 3

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/CodedInputStream;->newInstance([BII)Lcom/google/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance([BII)Lcom/google/protobuf/CodedInputStream;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/protobuf/CodedInputStream;->newInstance([BIIZ)Lcom/google/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0
.end method

.method static newInstance([BIIZ)Lcom/google/protobuf/CodedInputStream;
    .registers 11

    new-instance v6, Lcom/google/protobuf/CodedInputStream$b;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/CodedInputStream$b;-><init>([BIIZLcom/google/protobuf/CodedInputStream$a;)V

    :try_start_b
    invoke-virtual {v6, p2}, Lcom/google/protobuf/CodedInputStream$b;->pushLimit(I)I
    :try_end_e
    .catch Lcom/google/protobuf/d0; {:try_start_b .. :try_end_e} :catch_f

    return-object v6

    :catch_f
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static readRawVarint32(ILjava/io/InputStream;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_5

    return p0

    :cond_5
    and-int/lit8 p0, p0, 0x7f

    const/4 v0, 0x7

    :goto_8
    const/16 v1, 0x20

    const/4 v2, -0x1

    if-ge v0, v1, :cond_24

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v2, :cond_1f

    and-int/lit8 v2, v1, 0x7f

    shl-int/2addr v2, v0

    or-int/2addr p0, v2

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1c

    return p0

    :cond_1c
    add-int/lit8 v0, v0, 0x7

    goto :goto_8

    :cond_1f
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0

    :cond_24
    :goto_24
    const/16 v1, 0x40

    if-ge v0, v1, :cond_3b

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v2, :cond_36

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_33

    return p0

    :cond_33
    add-int/lit8 v0, v0, 0x7

    goto :goto_24

    :cond_36
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0

    :cond_3b
    invoke-static {}, Lcom/google/protobuf/d0;->malformedVarint()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0
.end method

.method static readRawVarint32(Ljava/io/InputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    invoke-static {v0, p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result p0

    return p0

    :cond_c
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public abstract checkLastTagWas(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation
.end method

.method public checkRecursionLimit()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    if-ge v0, v1, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/google/protobuf/d0;->recursionLimitExceeded()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method final discardUnknownFields()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/CodedInputStream;->shouldDiscardUnknownFields:Z

    return-void
.end method

.method public abstract enableAliasing(Z)V
.end method

.method public abstract getBytesUntilLimit()I
.end method

.method public abstract getLastTag()I
.end method

.method public abstract getTotalBytesRead()I
.end method

.method public abstract isAtEnd()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract popLimit(I)V
.end method

.method public abstract pushLimit(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation
.end method

.method public abstract readBool()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readByteArray()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readByteBuffer()Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readBytes()Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readDouble()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readEnum()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readFixed32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readFixed64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readFloat()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readGroup(ILcom/google/protobuf/g1;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/q0;",
            ">(I",
            "Lcom/google/protobuf/g1<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readGroup(ILcom/google/protobuf/q0$a;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readInt32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readInt64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readMessage(Lcom/google/protobuf/g1;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/q0;",
            ">(",
            "Lcom/google/protobuf/g1<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readMessage(Lcom/google/protobuf/q0$a;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readRawByte()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readRawBytes(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readRawLittleEndian32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readRawLittleEndian64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readRawVarint32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readRawVarint64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract readRawVarint64SlowPath()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readSFixed32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readSFixed64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readSInt32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readSInt64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readString()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readStringRequireUtf8()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readTag()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readUInt32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readUInt64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readUnknownGroup(ILcom/google/protobuf/q0$a;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract resetSizeCounter()V
.end method

.method public final setRecursionLimit(I)I
    .registers 5

    if-ltz p1, :cond_7

    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recursion limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setSizeLimit(I)I
    .registers 5

    if-ltz p1, :cond_7

    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->sizeLimit:I

    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->sizeLimit:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final shouldDiscardUnknownFields()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/protobuf/CodedInputStream;->shouldDiscardUnknownFields:Z

    return v0
.end method

.method public abstract skipField(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract skipField(ILcom/google/protobuf/CodedOutputStream;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract skipMessage()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract skipMessage(Lcom/google/protobuf/CodedOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract skipRawBytes(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final unsetDiscardUnknownFields()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/CodedInputStream;->shouldDiscardUnknownFields:Z

    return-void
.end method

###### Class com.google.protobuf.CodedInputStream.a (com.google.protobuf.CodedInputStream$a)
.class synthetic Lcom/google/protobuf/CodedInputStream$a;
.super Ljava/lang/Object;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.protobuf.CodedInputStream.b (com.google.protobuf.CodedInputStream$b)
.class final Lcom/google/protobuf/CodedInputStream$b;
.super Lcom/google/protobuf/CodedInputStream;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final buffer:[B

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private enableAliasing:Z

.field private final immutable:Z

.field private lastTag:I

.field private limit:I

.field private pos:I

.field private startPos:I


# direct methods
.method private constructor <init>([BIIZ)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream;-><init>(Lcom/google/protobuf/CodedInputStream$a;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$b;->currentLimit:I

    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream$b;->buffer:[B

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/protobuf/CodedInputStream$b;->limit:I

    iput p2, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    iput p2, p0, Lcom/google/protobuf/CodedInputStream$b;->startPos:I

    iput-boolean p4, p0, Lcom/google/protobuf/CodedInputStream$b;->immutable:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLcom/google/protobuf/CodedInputStream$a;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/CodedInputStream$b;-><init>([BIIZ)V

    return-void
.end method

.method private recomputeBufferSizeAfterLimit()V
    .registers 4

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->limit:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$b;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$b;->limit:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$b;->startPos:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$b;->currentLimit:I

    if-le v1, v2, :cond_16

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$b;->bufferSizeAfterLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$b;->limit:I

    goto :goto_19

    :cond_16
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$b;->bufferSizeAfterLimit:I

    :goto_19
    return-void
.end method

.method private skipRawVarint()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->limit:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_d

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->skipRawVarintFastPath()V

    goto :goto_10

    :cond_d
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->skipRawVarintSlowPath()V

    :goto_10
    return-void
.end method

.method private skipRawVarintFastPath()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_15

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$b;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_12

    return-void

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    invoke-static {}, Lcom/google/protobuf/d0;->malformedVarint()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method private skipRawVarintSlowPath()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    invoke-static {}, Lcom/google/protobuf/d0;->malformedVarint()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->lastTag:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/google/protobuf/d0;->invalidEndTag()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method public enableAliasing(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/protobuf/CodedInputStream$b;->enableAliasing:Z

    return-void
.end method

.method public getBytesUntilLimit()I
    .registers 3

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    const/4 v0, -0x1

    return v0

    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->getTotalBytesRead()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLastTag()I
    .registers 2

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->lastTag:I

    return v0
.end method

.method public getTotalBytesRead()I
    .registers 3

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$b;->startPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public isAtEnd()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$b;->limit:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public popLimit(I)V
    .registers 2

    iput p1, p0, Lcom/google/protobuf/CodedInputStream$b;->currentLimit:I

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->recomputeBufferSizeAfterLimit()V

    return-void
.end method

.method public pushLimit(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    if-ltz p1, :cond_1d

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->getTotalBytesRead()I

    move-result v0

    add-int/2addr p1, v0

    if-ltz p1, :cond_18

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->currentLimit:I

    if-gt p1, v0, :cond_13

    iput p1, p0, Lcom/google/protobuf/CodedInputStream$b;->currentLimit:I

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->recomputeBufferSizeAfterLimit()V

    return v0

    :cond_13
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1

    :cond_18
    invoke-static {}, Lcom/google/protobuf/d0;->parseFailure()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1

    :cond_1d
    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method public readBool()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint64()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public readByteArray()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$b;->readRawBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public readByteBuffer()Ljava/nio/ByteBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_32

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$b;->limit:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_32

    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$b;->immutable:Z

    if-nez v1, :cond_20

    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$b;->enableAliasing:Z

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$b;->buffer:[B

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_2c

    :cond_20
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$b;->buffer:[B

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    :goto_2c
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    return-object v1

    :cond_32
    if-nez v0, :cond_37

    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    :cond_37
    if-gez v0, :cond_3e

    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0

    :cond_3e
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readBytes()Lcom/google/protobuf/ByteString;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_28

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$b;->limit:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_28

    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$b;->immutable:Z

    if-eqz v1, :cond_1c

    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$b;->enableAliasing:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$b;->buffer:[B

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/ByteString;->wrap([BII)Lcom/google/protobuf/ByteString;

    move-result-object v1

    goto :goto_22

    :cond_1c
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$b;->buffer:[B

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v1

    :goto_22
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    return-object v1

    :cond_28
    if-nez v0, :cond_2d

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v0

    :cond_2d
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$b;->readRawBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(ILcom/google/protobuf/g1;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/q0;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/q0;",
            ">(I",
            "Lcom/google/protobuf/g1<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->checkRecursionLimit()V

    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/g1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/q0;

    const/4 p3, 0x4

    invoke-static {p1, p3}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$b;->checkLastTagWas(I)V

    iget p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    return-object p2
.end method

.method public readGroup(ILcom/google/protobuf/q0$a;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->checkRecursionLimit()V

    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/q0$a;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/q0$a;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$b;->checkLastTagWas(I)V

    iget p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    return-void
.end method

.method public readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lcom/google/protobuf/g1;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/q0;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/q0;",
            ">(",
            "Lcom/google/protobuf/g1<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->checkRecursionLimit()V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$b;->pushLimit(I)I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/g1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/q0;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedInputStream$b;->checkLastTagWas(I)V

    iget p2, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->getBytesUntilLimit()I

    move-result p2

    if-nez p2, :cond_2b

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$b;->popLimit(I)V

    return-object p1

    :cond_2b
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method public readMessage(Lcom/google/protobuf/q0$a;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->checkRecursionLimit()V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$b;->pushLimit(I)I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/q0$a;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/q0$a;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$b;->checkLastTagWas(I)V

    iget p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->getBytesUntilLimit()I

    move-result p1

    if-nez p1, :cond_28

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$b;->popLimit(I)V

    return-void

    :cond_28
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method public readRawByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$b;->limit:I

    if-eq v0, v1, :cond_f

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$b;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    aget-byte v0, v1, v0

    return v0

    :cond_f
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readRawBytes(I)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_13

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->limit:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_13

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$b;->buffer:[B

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    :cond_13
    if-gtz p1, :cond_1f

    if-nez p1, :cond_1a

    sget-object p1, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object p1

    :cond_1a
    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1

    :cond_1f
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method public readRawLittleEndian32()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$b;->limit:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2e

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$b;->buffer:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    :cond_2e
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readRawLittleEndian64()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$b;->limit:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_5b

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$b;->buffer:[B

    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    :cond_5b
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readRawVarint32()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$b;->limit:I

    if-ne v1, v0, :cond_7

    goto :goto_6a

    :cond_7
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$b;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_12

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    return v0

    :cond_12
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_18

    goto :goto_6a

    :cond_18
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_24

    xor-int/lit8 v0, v0, -0x80

    goto :goto_70

    :cond_24
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_31

    xor-int/lit16 v0, v0, 0x3f80

    :cond_2f
    move v1, v3

    goto :goto_70

    :cond_31
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_3f

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_70

    :cond_3f
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_2f

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_70

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2f

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_70

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2f

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-gez v2, :cond_70

    :goto_6a
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint64SlowPath()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_70
    :goto_70
    iput v1, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    return v0
.end method

.method public readRawVarint64()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$b;->limit:I

    if-ne v1, v0, :cond_8

    goto/16 :goto_b6

    :cond_8
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$b;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_14

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    int-to-long v0, v0

    return-wide v0

    :cond_14
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_1b

    goto/16 :goto_b6

    :cond_1b
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_29

    xor-int/lit8 v0, v0, -0x80

    :goto_26
    int-to-long v2, v0

    goto/16 :goto_bd

    :cond_29
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3a

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_bd

    :cond_3a
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_48

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_26

    :cond_48
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_5f

    const-wide/32 v1, 0xfe03f80

    :goto_5b
    xor-long v2, v3, v1

    move v1, v0

    goto :goto_bd

    :cond_5f
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_74

    const-wide v5, -0x7f01fc080L

    :goto_71
    xor-long v2, v3, v5

    goto :goto_bd

    :cond_74
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_87

    const-wide v1, 0x3f80fe03f80L

    goto :goto_5b

    :cond_87
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_9a

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_71

    :cond_9a
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_bb

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-gez v0, :cond_bc

    :goto_b6
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    :cond_bb
    move v1, v0

    :cond_bc
    move-wide v2, v3

    :goto_bd
    iput v1, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    return-wide v2
.end method

.method readRawVarint64SlowPath()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    :cond_18
    invoke-static {}, Lcom/google/protobuf/d0;->malformedVarint()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readSFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_1e

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$b;->limit:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1e

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$b;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    sget-object v4, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    return-object v1

    :cond_1e
    if-nez v0, :cond_23

    const-string v0, ""

    return-object v0

    :cond_23
    if-gez v0, :cond_2a

    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0

    :cond_2a
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_19

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$b;->limit:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_19

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$b;->buffer:[B

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/c2;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    return-object v1

    :cond_19
    if-nez v0, :cond_1e

    const-string v0, ""

    return-object v0

    :cond_1e
    if-gtz v0, :cond_25

    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0

    :cond_25
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readTag()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$b;->lastTag:I

    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$b;->lastTag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->lastTag:I

    return v0

    :cond_19
    invoke-static {}, Lcom/google/protobuf/d0;->invalidTag()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readUInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnknownGroup(ILcom/google/protobuf/q0$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/CodedInputStream$b;->readGroup(ILcom/google/protobuf/q0$a;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public resetSizeCounter()V
    .registers 2

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$b;->startPos:I

    return-void
.end method

.method public skipField(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    if-eq v0, v1, :cond_37

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2f

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_20

    if-eq v0, v3, :cond_1e

    const/4 p1, 0x5

    if-ne v0, p1, :cond_19

    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedInputStream$b;->skipRawBytes(I)V

    return v1

    :cond_19
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_1e
    const/4 p1, 0x0

    return p1

    :cond_20
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->skipMessage()V

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    invoke-static {p1, v3}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$b;->checkLastTagWas(I)V

    return v1

    :cond_2f
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$b;->skipRawBytes(I)V

    return v1

    :cond_37
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$b;->skipRawBytes(I)V

    return v1

    :cond_3d
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->skipRawVarint()V

    return v1
.end method

.method public skipField(ILcom/google/protobuf/CodedOutputStream;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_52

    if-eq v0, v1, :cond_47

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3c

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_27

    if-eq v0, v3, :cond_25

    const/4 v2, 0x5

    if-ne v0, v2, :cond_20

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawLittleEndian32()I

    move-result v0

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    return v1

    :cond_20
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_25
    const/4 p1, 0x0

    return p1

    :cond_27
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedInputStream$b;->skipMessage(Lcom/google/protobuf/CodedOutputStream;)V

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    invoke-static {p1, v3}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$b;->checkLastTagWas(I)V

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    return v1

    :cond_3c
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    return v1

    :cond_47
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawLittleEndian64()J

    move-result-wide v2

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    return v1

    :cond_52
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    return v1
.end method

.method public skipMessage()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readTag()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$b;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-void
.end method

.method public skipMessage(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readTag()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedInputStream$b;->skipField(ILcom/google/protobuf/CodedOutputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-void
.end method

.method public skipRawBytes(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_d

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->limit:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_d

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$b;->pos:I

    return-void

    :cond_d
    if-gez p1, :cond_14

    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1

    :cond_14
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

###### Class com.google.protobuf.CodedInputStream.c (com.google.protobuf.CodedInputStream$c)
.class final Lcom/google/protobuf/CodedInputStream$c;
.super Lcom/google/protobuf/CodedInputStream;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private bufferSizeAfterCurrentLimit:I

.field private currentAddress:J

.field private currentByteBuffer:Ljava/nio/ByteBuffer;

.field private currentByteBufferLimit:J

.field private currentByteBufferPos:J

.field private currentByteBufferStartPos:J

.field private currentLimit:I

.field private enableAliasing:Z

.field private final immutable:Z

.field private final input:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private lastTag:I

.field private startOffset:I

.field private totalBufferSize:I

.field private totalBytesRead:I


# direct methods
.method private constructor <init>(Ljava/lang/Iterable;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;IZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream;-><init>(Lcom/google/protobuf/CodedInputStream$a;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$c;->currentLimit:I

    iput p2, p0, Lcom/google/protobuf/CodedInputStream$c;->totalBufferSize:I

    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream$c;->input:Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream$c;->iterator:Ljava/util/Iterator;

    iput-boolean p3, p0, Lcom/google/protobuf/CodedInputStream$c;->immutable:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/protobuf/CodedInputStream$c;->totalBytesRead:I

    iput p1, p0, Lcom/google/protobuf/CodedInputStream$c;->startOffset:I

    if-nez p2, :cond_2b

    sget-object p1, Lcom/google/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    iput-wide p1, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferStartPos:J

    iput-wide p1, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferLimit:J

    iput-wide p1, p0, Lcom/google/protobuf/CodedInputStream$c;->currentAddress:J

    goto :goto_2e

    :cond_2b
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->tryGetNextByteBuffer()V

    :goto_2e
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Iterable;IZLcom/google/protobuf/CodedInputStream$a;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/CodedInputStream$c;-><init>(Ljava/lang/Iterable;IZ)V

    return-void
.end method

.method private currentRemaining()J
    .registers 5

    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferLimit:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getNextByteBuffer()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$c;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->tryGetNextByteBuffer()V

    return-void

    :cond_c
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method private readRawBytesTo([BII)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p3, :cond_35

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_35

    move v0, p3

    :goto_9
    if-lez v0, :cond_34

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->currentRemaining()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_18

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->getNextByteBuffer()V

    :cond_18
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->currentRemaining()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    sub-int v4, p3, v0

    add-int/2addr v4, p2

    int-to-long v5, v4

    int-to-long v9, v1

    move-object v4, p1

    move-wide v7, v9

    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/b2;->copyMemory(J[BJJ)V

    sub-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    add-long/2addr v1, v9

    iput-wide v1, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    goto :goto_9

    :cond_34
    return-void

    :cond_35
    if-gtz p3, :cond_3f

    if-nez p3, :cond_3a

    return-void

    :cond_3a
    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1

    :cond_3f
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method private recomputeBufferSizeAfterLimit()V
    .registers 4

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$c;->totalBufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$c;->bufferSizeAfterCurrentLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$c;->totalBufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$c;->startOffset:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentLimit:I

    if-le v1, v2, :cond_16

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$c;->bufferSizeAfterCurrentLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$c;->totalBufferSize:I

    goto :goto_19

    :cond_16
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$c;->bufferSizeAfterCurrentLimit:I

    :goto_19
    return-void
.end method

.method private remaining()I
    .registers 5

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$c;->totalBufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$c;->totalBytesRead:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferStartPos:J

    add-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private skipRawVarint()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    invoke-static {}, Lcom/google/protobuf/d0;->malformedVarint()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method private slice(II)Ljava/nio/ByteBuffer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBuffer:Ljava/nio/ByteBuffer;

    :try_start_e
    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_1a} :catch_23
    .catchall {:try_start_e .. :try_end_1a} :catchall_21

    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-object p1

    :catchall_21
    move-exception p1

    goto :goto_28

    :catch_23
    :try_start_23
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_21

    :goto_28
    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    throw p1
.end method

.method private tryGetNextByteBuffer()V
    .registers 7

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$c;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$c;->totalBytesRead:I

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    iget-wide v4, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferStartPos:J

    sub-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$c;->totalBytesRead:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferStartPos:J

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferLimit:J

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/protobuf/b2;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$c;->currentAddress:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferStartPos:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferStartPos:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferLimit:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferLimit:J

    return-void
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$c;->lastTag:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/google/protobuf/d0;->invalidEndTag()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method public enableAliasing(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/protobuf/CodedInputStream$c;->enableAliasing:Z

    return-void
.end method

.method public getBytesUntilLimit()I
    .registers 3

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$c;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    const/4 v0, -0x1

    return v0

    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->getTotalBytesRead()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLastTag()I
    .registers 2

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$c;->lastTag:I

    return v0
.end method

.method public getTotalBytesRead()I
    .registers 5

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$c;->totalBytesRead:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$c;->startOffset:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferStartPos:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public isAtEnd()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$c;->totalBytesRead:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferStartPos:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$c;->totalBufferSize:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public popLimit(I)V
    .registers 2

    iput p1, p0, Lcom/google/protobuf/CodedInputStream$c;->currentLimit:I

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->recomputeBufferSizeAfterLimit()V

    return-void
.end method

.method public pushLimit(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    if-ltz p1, :cond_16

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->getTotalBytesRead()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$c;->currentLimit:I

    if-gt p1, v0, :cond_11

    iput p1, p0, Lcom/google/protobuf/CodedInputStream$c;->currentLimit:I

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->recomputeBufferSizeAfterLimit()V

    return v0

    :cond_11
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1

    :cond_16
    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method public readBool()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawVarint64()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public readByteArray()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$c;->readRawBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public readByteBuffer()Ljava/nio/ByteBuffer;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_3e

    int-to-long v8, v0

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->currentRemaining()J

    move-result-wide v1

    cmp-long v3, v8, v1

    if-gtz v3, :cond_3e

    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$c;->immutable:Z

    if-nez v1, :cond_29

    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$c;->enableAliasing:Z

    if-eqz v1, :cond_29

    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentAddress:J

    sub-long v4, v0, v2

    sub-long/2addr v4, v8

    long-to-int v5, v4

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-direct {p0, v5, v1}, Lcom/google/protobuf/CodedInputStream$c;->slice(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_29
    new-array v0, v0, [B

    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    const-wide/16 v4, 0x0

    move-object v3, v0

    move-wide v6, v8

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/b2;->copyMemory(J[BJJ)V

    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    add-long/2addr v1, v8

    iput-wide v1, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_3e
    if-lez v0, :cond_51

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_51

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/google/protobuf/CodedInputStream$c;->readRawBytesTo([BII)V

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_51
    if-nez v0, :cond_56

    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    :cond_56
    if-gez v0, :cond_5d

    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0

    :cond_5d
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readBytes()Lcom/google/protobuf/ByteString;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_40

    int-to-long v8, v0

    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferLimit:J

    iget-wide v3, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    sub-long/2addr v1, v3

    cmp-long v5, v8, v1

    if-gtz v5, :cond_40

    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$c;->immutable:Z

    if-eqz v1, :cond_2b

    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$c;->enableAliasing:Z

    if-eqz v1, :cond_2b

    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$c;->currentAddress:J

    sub-long/2addr v3, v1

    long-to-int v1, v3

    add-int/2addr v0, v1

    invoke-direct {p0, v1, v0}, Lcom/google/protobuf/CodedInputStream$c;->slice(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    add-long/2addr v1, v8

    iput-wide v1, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    return-object v0

    :cond_2b
    new-array v0, v0, [B

    const-wide/16 v5, 0x0

    move-wide v1, v3

    move-object v3, v0

    move-wide v4, v5

    move-wide v6, v8

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/b2;->copyMemory(J[BJJ)V

    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    add-long/2addr v1, v8

    iput-wide v1, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_40
    if-lez v0, :cond_98

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_98

    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$c;->immutable:Z

    if-eqz v1, :cond_8d

    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$c;->enableAliasing:Z

    if-eqz v1, :cond_8d

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_55
    if-lez v0, :cond_88

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->currentRemaining()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_64

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->getNextByteBuffer()V

    :cond_64
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->currentRemaining()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-wide v3, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    iget-wide v5, p0, Lcom/google/protobuf/CodedInputStream$c;->currentAddress:J

    sub-long/2addr v3, v5

    long-to-int v4, v3

    add-int v3, v4, v2

    invoke-direct {p0, v4, v3}, Lcom/google/protobuf/CodedInputStream$c;->slice(II)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-int/2addr v0, v2

    iget-wide v3, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    goto :goto_55

    :cond_88
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_8d
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/google/protobuf/CodedInputStream$c;->readRawBytesTo([BII)V

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_98
    if-nez v0, :cond_9d

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v0

    :cond_9d
    if-gez v0, :cond_a4

    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0

    :cond_a4
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(ILcom/google/protobuf/g1;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/q0;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/q0;",
            ">(I",
            "Lcom/google/protobuf/g1<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->checkRecursionLimit()V

    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/g1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/q0;

    const/4 p3, 0x4

    invoke-static {p1, p3}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$c;->checkLastTagWas(I)V

    iget p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    return-object p2
.end method

.method public readGroup(ILcom/google/protobuf/q0$a;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->checkRecursionLimit()V

    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/q0$a;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/q0$a;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$c;->checkLastTagWas(I)V

    iget p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    return-void
.end method

.method public readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lcom/google/protobuf/g1;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/q0;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/q0;",
            ">(",
            "Lcom/google/protobuf/g1<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->checkRecursionLimit()V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$c;->pushLimit(I)I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/g1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/q0;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedInputStream$c;->checkLastTagWas(I)V

    iget p2, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->getBytesUntilLimit()I

    move-result p2

    if-nez p2, :cond_2b

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$c;->popLimit(I)V

    return-object p1

    :cond_2b
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method public readMessage(Lcom/google/protobuf/q0$a;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->checkRecursionLimit()V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$c;->pushLimit(I)I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/q0$a;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/q0$a;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$c;->checkLastTagWas(I)V

    iget p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->getBytesUntilLimit()I

    move-result p1

    if-nez p1, :cond_28

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$c;->popLimit(I)V

    return-void

    :cond_28
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method public readRawByte()B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->currentRemaining()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_d

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->getNextByteBuffer()V

    :cond_d
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v0

    return v0
.end method

.method public readRawBytes(I)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_1c

    int-to-long v7, p1

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->currentRemaining()J

    move-result-wide v0

    cmp-long v2, v7, v0

    if-gtz v2, :cond_1c

    new-array p1, p1, [B

    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    const-wide/16 v3, 0x0

    move-object v2, p1

    move-wide v5, v7

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/b2;->copyMemory(J[BJJ)V

    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    add-long/2addr v0, v7

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    return-object p1

    :cond_1c
    if-ltz p1, :cond_2b

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_2b

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/protobuf/CodedInputStream$c;->readRawBytesTo([BII)V

    return-object v0

    :cond_2b
    if-gtz p1, :cond_37

    if-nez p1, :cond_32

    sget-object p1, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object p1

    :cond_32
    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1

    :cond_37
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method public readRawLittleEndian32()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->currentRemaining()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3a

    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const-wide/16 v3, 0x2

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const-wide/16 v3, 0x3

    add-long/2addr v0, v3

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    :cond_3a
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public readRawLittleEndian64()J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->currentRemaining()J

    move-result-wide v0

    const/16 v2, 0x38

    const/16 v3, 0x30

    const/16 v4, 0x28

    const/16 v5, 0x20

    const/16 v6, 0x18

    const/16 v7, 0x10

    const/16 v8, 0x8

    const-wide/16 v9, 0x8

    const-wide/16 v11, 0xff

    cmp-long v13, v0, v9

    if-ltz v13, :cond_79

    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    add-long/2addr v9, v0

    iput-wide v9, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v9

    int-to-long v9, v9

    and-long/2addr v9, v11

    const-wide/16 v13, 0x1

    add-long/2addr v13, v0

    invoke-static {v13, v14}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v13

    int-to-long v13, v13

    and-long/2addr v13, v11

    shl-long/2addr v13, v8

    or-long v8, v9, v13

    const-wide/16 v13, 0x2

    add-long/2addr v13, v0

    invoke-static {v13, v14}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v10

    int-to-long v13, v10

    and-long/2addr v13, v11

    shl-long/2addr v13, v7

    or-long v7, v8, v13

    const-wide/16 v9, 0x3

    add-long/2addr v9, v0

    invoke-static {v9, v10}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v9

    int-to-long v9, v9

    and-long/2addr v9, v11

    shl-long/2addr v9, v6

    or-long v6, v7, v9

    const-wide/16 v8, 0x4

    add-long/2addr v8, v0

    invoke-static {v8, v9}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v8

    int-to-long v8, v8

    and-long/2addr v8, v11

    shl-long/2addr v8, v5

    or-long v5, v6, v8

    const-wide/16 v7, 0x5

    add-long/2addr v7, v0

    invoke-static {v7, v8}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v11

    shl-long/2addr v7, v4

    or-long v4, v5, v7

    const-wide/16 v6, 0x6

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v11

    shl-long/2addr v6, v3

    or-long v3, v4, v6

    const-wide/16 v5, 0x7

    add-long/2addr v0, v5

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v11

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0

    :cond_79
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawByte()B

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v11

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawByte()B

    move-result v9

    int-to-long v9, v9

    and-long/2addr v9, v11

    shl-long v8, v9, v8

    or-long/2addr v0, v8

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawByte()B

    move-result v8

    int-to-long v8, v8

    and-long/2addr v8, v11

    shl-long v7, v8, v7

    or-long/2addr v0, v7

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawByte()B

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v11

    shl-long v6, v7, v6

    or-long/2addr v0, v6

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawByte()B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v11

    shl-long v5, v6, v5

    or-long/2addr v0, v5

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawByte()B

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v11

    shl-long v4, v5, v4

    or-long/2addr v0, v4

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawByte()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v11

    shl-long v3, v4, v3

    or-long/2addr v0, v3

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawByte()B

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v11

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readRawVarint32()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferLimit:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_a

    goto/16 :goto_8a

    :cond_a
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v0

    if-ltz v0, :cond_1a

    iget-wide v4, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    return v0

    :cond_1a
    iget-wide v6, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferLimit:J

    iget-wide v8, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xa

    cmp-long v1, v6, v8

    if-gez v1, :cond_26

    goto :goto_8a

    :cond_26
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_34

    xor-int/lit8 v0, v0, -0x80

    goto :goto_90

    :cond_34
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_43

    xor-int/lit16 v0, v0, 0x3f80

    :cond_41
    move-wide v6, v4

    goto :goto_90

    :cond_43
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_53

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_90

    :cond_53
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    shl-int/lit8 v6, v1, 0x1c

    xor-int/2addr v0, v6

    const v6, 0xfe03f80

    xor-int/2addr v0, v6

    if-gez v1, :cond_41

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    if-gez v1, :cond_90

    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    if-gez v1, :cond_41

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    if-gez v1, :cond_90

    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    if-gez v1, :cond_41

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    if-gez v1, :cond_90

    :goto_8a
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawVarint64SlowPath()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_90
    :goto_90
    iput-wide v6, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    return v0
.end method

.method public readRawVarint64()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferLimit:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_a

    goto/16 :goto_d0

    :cond_a
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v0

    if-ltz v0, :cond_1b

    iget-wide v4, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    int-to-long v0, v0

    return-wide v0

    :cond_1b
    iget-wide v6, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferLimit:J

    iget-wide v8, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xa

    cmp-long v1, v6, v8

    if-gez v1, :cond_28

    goto/16 :goto_d0

    :cond_28
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_38

    xor-int/lit8 v0, v0, -0x80

    :goto_35
    int-to-long v0, v0

    goto/16 :goto_d6

    :cond_38
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_49

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    :cond_46
    :goto_46
    move-wide v6, v4

    goto/16 :goto_d6

    :cond_49
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_59

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_35

    :cond_59
    int-to-long v0, v0

    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    const/16 v8, 0x1c

    shl-long/2addr v6, v8

    xor-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-ltz v8, :cond_70

    const-wide/32 v2, 0xfe03f80

    :goto_6e
    xor-long/2addr v0, v2

    goto :goto_46

    :cond_70
    add-long v8, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x23

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_87

    const-wide v2, -0x7f01fc080L

    :goto_84
    xor-long/2addr v0, v2

    move-wide v6, v8

    goto :goto_d6

    :cond_87
    add-long v4, v8, v2

    invoke-static {v8, v9}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x2a

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-ltz v8, :cond_9c

    const-wide v2, 0x3f80fe03f80L

    goto :goto_6e

    :cond_9c
    add-long v8, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x31

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_b1

    const-wide v2, -0x1fc07f01fc080L

    goto :goto_84

    :cond_b1
    add-long v4, v8, v2

    invoke-static {v8, v9}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    const-wide v8, 0xfe03f80fe03f80L

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-gez v8, :cond_46

    add-long/2addr v2, v4

    invoke-static {v4, v5}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    cmp-long v8, v4, v6

    if-gez v8, :cond_d5

    :goto_d0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    :cond_d5
    move-wide v6, v2

    :goto_d6
    iput-wide v6, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    return-wide v0
.end method

.method readRawVarint64SlowPath()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    :cond_18
    invoke-static {}, Lcom/google/protobuf/d0;->malformedVarint()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readSFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_28

    int-to-long v8, v0

    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferLimit:J

    iget-wide v3, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    sub-long/2addr v1, v3

    cmp-long v5, v8, v1

    if-gtz v5, :cond_28

    new-array v0, v0, [B

    const-wide/16 v5, 0x0

    move-wide v1, v3

    move-object v3, v0

    move-wide v4, v5

    move-wide v6, v8

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/b2;->copyMemory(J[BJJ)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    return-object v1

    :cond_28
    if-lez v0, :cond_3e

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_3e

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/google/protobuf/CodedInputStream$c;->readRawBytesTo([BII)V

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_3e
    if-nez v0, :cond_43

    const-string v0, ""

    return-object v0

    :cond_43
    if-gez v0, :cond_4a

    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0

    :cond_4a
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_20

    int-to-long v1, v0

    iget-wide v3, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferLimit:J

    iget-wide v5, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    sub-long/2addr v3, v5

    cmp-long v7, v1, v3

    if-gtz v7, :cond_20

    iget-wide v3, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferStartPos:J

    sub-long/2addr v5, v3

    long-to-int v3, v5

    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v4, v3, v0}, Lcom/google/protobuf/c2;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    return-object v0

    :cond_20
    if-ltz v0, :cond_33

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_33

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/google/protobuf/CodedInputStream$c;->readRawBytesTo([BII)V

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/c2;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_33
    if-nez v0, :cond_38

    const-string v0, ""

    return-object v0

    :cond_38
    if-gtz v0, :cond_3f

    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0

    :cond_3f
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readTag()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$c;->lastTag:I

    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$c;->lastTag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$c;->lastTag:I

    return v0

    :cond_19
    invoke-static {}, Lcom/google/protobuf/d0;->invalidTag()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readUInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnknownGroup(ILcom/google/protobuf/q0$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/CodedInputStream$c;->readGroup(ILcom/google/protobuf/q0$a;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public resetSizeCounter()V
    .registers 5

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$c;->totalBytesRead:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferStartPos:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$c;->startOffset:I

    return-void
.end method

.method public skipField(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    if-eq v0, v1, :cond_37

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2f

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_20

    if-eq v0, v3, :cond_1e

    const/4 p1, 0x5

    if-ne v0, p1, :cond_19

    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedInputStream$c;->skipRawBytes(I)V

    return v1

    :cond_19
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_1e
    const/4 p1, 0x0

    return p1

    :cond_20
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->skipMessage()V

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    invoke-static {p1, v3}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$c;->checkLastTagWas(I)V

    return v1

    :cond_2f
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawVarint32()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$c;->skipRawBytes(I)V

    return v1

    :cond_37
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$c;->skipRawBytes(I)V

    return v1

    :cond_3d
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->skipRawVarint()V

    return v1
.end method

.method public skipField(ILcom/google/protobuf/CodedOutputStream;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_52

    if-eq v0, v1, :cond_47

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3c

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_27

    if-eq v0, v3, :cond_25

    const/4 v2, 0x5

    if-ne v0, v2, :cond_20

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawLittleEndian32()I

    move-result v0

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    return v1

    :cond_20
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_25
    const/4 p1, 0x0

    return p1

    :cond_27
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedInputStream$c;->skipMessage(Lcom/google/protobuf/CodedOutputStream;)V

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    invoke-static {p1, v3}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$c;->checkLastTagWas(I)V

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    return v1

    :cond_3c
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    return v1

    :cond_47
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readRawLittleEndian64()J

    move-result-wide v2

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    return v1

    :cond_52
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    return v1
.end method

.method public skipMessage()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readTag()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$c;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-void
.end method

.method public skipMessage(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$c;->readTag()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedInputStream$c;->skipField(ILcom/google/protobuf/CodedOutputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-void
.end method

.method public skipRawBytes(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_34

    int-to-long v0, p1

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$c;->totalBufferSize:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$c;->totalBytesRead:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferStartPos:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gtz v4, :cond_34

    :goto_13
    if-lez p1, :cond_33

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->currentRemaining()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_22

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->getNextByteBuffer()V

    :cond_22
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$c;->currentRemaining()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p1, v0

    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/protobuf/CodedInputStream$c;->currentByteBufferPos:J

    goto :goto_13

    :cond_33
    return-void

    :cond_34
    if-gez p1, :cond_3b

    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1

    :cond_3b
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

###### Class com.google.protobuf.CodedInputStream.d (com.google.protobuf.CodedInputStream$d)
.class final Lcom/google/protobuf/CodedInputStream$d;
.super Lcom/google/protobuf/CodedInputStream;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/CodedInputStream$d$a;
    }
.end annotation


# instance fields
.field private final buffer:[B

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private final input:Ljava/io/InputStream;

.field private lastTag:I

.field private pos:I

.field private refillCallback:Lcom/google/protobuf/CodedInputStream$d$a;

.field private totalBytesRetired:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream;-><init>(Lcom/google/protobuf/CodedInputStream$a;)V

    const v1, 0x7fffffff

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$d;->currentLimit:I

    iput-object v0, p0, Lcom/google/protobuf/CodedInputStream$d;->refillCallback:Lcom/google/protobuf/CodedInputStream$d$a;

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream$d;->input:Ljava/io/InputStream;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream$d;->buffer:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    iput p1, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    iput p1, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;ILcom/google/protobuf/CodedInputStream$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/CodedInputStream$d;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/protobuf/CodedInputStream$d;)I
    .registers 1

    iget p0, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    return p0
.end method

.method static synthetic access$600(Lcom/google/protobuf/CodedInputStream$d;)[B
    .registers 1

    iget-object p0, p0, Lcom/google/protobuf/CodedInputStream$d;->buffer:[B

    return-object p0
.end method

.method private static available(Ljava/io/InputStream;)I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0
    :try_end_4
    .catch Lcom/google/protobuf/d0; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Lcom/google/protobuf/d0;->setThrownFromInputStream()V

    throw p0
.end method

.method private static read(Ljava/io/InputStream;[BII)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0
    :try_end_4
    .catch Lcom/google/protobuf/d0; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Lcom/google/protobuf/d0;->setThrownFromInputStream()V

    throw p0
.end method

.method private readBytesSlowPath(I)Lcom/google/protobuf/ByteString;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStream$d;->readRawBytesSlowPathOneChunk(I)[B

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1

    :cond_b
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    sub-int v2, v1, v0

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    sub-int v3, p1, v2

    invoke-direct {p0, v3}, Lcom/google/protobuf/CodedInputStream$d;->readRawBytesSlowPathRemainingChunks(I)Ljava/util/List;

    move-result-object v3

    new-array p1, p1, [B

    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream$d;->buffer:[B

    invoke-static {v4, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v4, v3

    invoke-static {v3, v1, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_2c

    :cond_3f
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method private readRawBytesSlowPath(IZ)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStream$d;->readRawBytesSlowPathOneChunk(I)[B

    move-result-object v0

    if-eqz v0, :cond_10

    if-eqz p2, :cond_f

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [B

    :cond_f
    return-object v0

    :cond_10
    iget p2, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    sub-int v1, v0, p2

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    sub-int v2, p1, v1

    invoke-direct {p0, v2}, Lcom/google/protobuf/CodedInputStream$d;->readRawBytesSlowPathRemainingChunks(I)Ljava/util/List;

    move-result-object v2

    new-array p1, p1, [B

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$d;->buffer:[B

    invoke-static {v3, p2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_31
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v3, v2

    invoke-static {v2, v0, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_31

    :cond_44
    return-object p1
.end method

.method private readRawBytesSlowPathOneChunk(I)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_5

    sget-object p1, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object p1

    :cond_5
    if-ltz p1, :cond_6a

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->sizeLimit:I

    sub-int v3, v2, v3

    if-gtz v3, :cond_65

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$d;->currentLimit:I

    if-gt v2, v3, :cond_5b

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    sub-int/2addr v0, v1

    sub-int v1, p1, v0

    const/16 v2, 0x1000

    if-lt v1, v2, :cond_2c

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$d;->input:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/google/protobuf/CodedInputStream$d;->available(Ljava/io/InputStream;)I

    move-result v2

    if-gt v1, v2, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p1, 0x0

    return-object p1

    :cond_2c
    :goto_2c
    new-array v1, p1, [B

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$d;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    iput v4, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    iput v4, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    :goto_41
    if-ge v0, p1, :cond_5a

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$d;->input:Ljava/io/InputStream;

    sub-int v3, p1, v0

    invoke-static {v2, v1, v0, v3}, Lcom/google/protobuf/CodedInputStream$d;->read(Ljava/io/InputStream;[BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_55

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    add-int/2addr v0, v2

    goto :goto_41

    :cond_55
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1

    :cond_5a
    return-object v1

    :cond_5b
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedInputStream$d;->skipRawBytes(I)V

    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1

    :cond_65
    invoke-static {}, Lcom/google/protobuf/d0;->sizeLimitExceeded()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1

    :cond_6a
    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method private readRawBytesSlowPathRemainingChunks(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    if-lez p1, :cond_2e

    const/16 v1, 0x1000

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_29

    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream$d;->input:Ljava/io/InputStream;

    sub-int v5, v1, v3

    invoke-virtual {v4, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_24

    iget v5, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    add-int/2addr v3, v4

    goto :goto_10

    :cond_24
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1

    :cond_29
    sub-int/2addr p1, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_2e
    return-object v0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .registers 4

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$d;->currentLimit:I

    if-le v1, v2, :cond_15

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSizeAfterLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    goto :goto_18

    :cond_15
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSizeAfterLimit:I

    :goto_18
    return-void
.end method

.method private refillBuffer(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStream$d;->tryRefillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->sizeLimit:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_15

    invoke-static {}, Lcom/google/protobuf/d0;->sizeLimitExceeded()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1

    :cond_15
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1

    :cond_1a
    return-void
.end method

.method private static skip(Ljava/io/InputStream;J)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0
    :try_end_4
    .catch Lcom/google/protobuf/d0; {:try_start_0 .. :try_end_4} :catch_5

    return-wide p0

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Lcom/google/protobuf/d0;->setThrownFromInputStream()V

    throw p0
.end method

.method private skipRawBytesSlowPath(I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_97

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$d;->currentLimit:I

    if-gt v2, v3, :cond_8d

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$d;->refillCallback:Lcom/google/protobuf/CodedInputStream$d$a;

    const/4 v3, 0x0

    if-nez v2, :cond_6f

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    sub-int/2addr v0, v1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    move v3, v0

    :goto_1d
    if-ge v3, p1, :cond_67

    sub-int v0, p1, v3

    :try_start_21
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$d;->input:Ljava/io/InputStream;

    int-to-long v4, v0

    invoke-static {v1, v4, v5}, Lcom/google/protobuf/CodedInputStream$d;->skip(Ljava/io/InputStream;J)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v2, v0, v6

    if-ltz v2, :cond_38

    cmp-long v6, v0, v4

    if-gtz v6, :cond_38

    if-nez v2, :cond_35

    goto :goto_67

    :cond_35
    long-to-int v1, v0

    add-int/2addr v3, v1

    goto :goto_1d

    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream$d;->input:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "#skip returned invalid result: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5d
    .catchall {:try_start_21 .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception p1

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$d;->recomputeBufferSizeAfterLimit()V

    throw p1

    :cond_67
    :goto_67
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$d;->recomputeBufferSizeAfterLimit()V

    :cond_6f
    if-ge v3, p1, :cond_8c

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    sub-int v1, v0, v1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream$d;->refillBuffer(I)V

    :goto_7d
    sub-int v2, p1, v1

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    if-le v2, v3, :cond_8a

    add-int/2addr v1, v3

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream$d;->refillBuffer(I)V

    goto :goto_7d

    :cond_8a
    iput v2, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    :cond_8c
    return-void

    :cond_8d
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedInputStream$d;->skipRawBytes(I)V

    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1

    :cond_97
    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method private skipRawVarint()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_d

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$d;->skipRawVarintFastPath()V

    goto :goto_10

    :cond_d
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$d;->skipRawVarintSlowPath()V

    :goto_10
    return-void
.end method

.method private skipRawVarintFastPath()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_15

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$d;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_12

    return-void

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    invoke-static {}, Lcom/google/protobuf/d0;->malformedVarint()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method private skipRawVarintSlowPath()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    invoke-static {}, Lcom/google/protobuf/d0;->malformedVarint()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method private tryRefillBuffer(I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    if-le v1, v2, :cond_95

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->sizeLimit:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    const/4 v3, 0x0

    if-le p1, v1, :cond_12

    return v3

    :cond_12
    add-int/2addr v2, v0

    add-int/2addr v2, p1

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->currentLimit:I

    if-le v2, v0, :cond_19

    return v3

    :cond_19
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$d;->refillCallback:Lcom/google/protobuf/CodedInputStream$d$a;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Lcom/google/protobuf/CodedInputStream$d$a;->onRefill()V

    :cond_20
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    if-lez v0, :cond_3a

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    if-le v1, v0, :cond_2e

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$d;->buffer:[B

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2e
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    :cond_3a
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$d;->input:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$d;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    array-length v4, v1

    sub-int/2addr v4, v2

    iget v5, p0, Lcom/google/protobuf/CodedInputStream;->sizeLimit:I

    iget v6, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v1, v2, v4}, Lcom/google/protobuf/CodedInputStream$d;->read(Ljava/io/InputStream;[BII)I

    move-result v0

    if-eqz v0, :cond_70

    const/4 v1, -0x1

    if-lt v0, v1, :cond_70

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$d;->buffer:[B

    array-length v1, v1

    if-gt v0, v1, :cond_70

    if-lez v0, :cond_6f

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$d;->recomputeBufferSizeAfterLimit()V

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    if-lt v0, p1, :cond_6a

    const/4 p1, 0x1

    goto :goto_6e

    :cond_6a
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStream$d;->tryRefillBuffer(I)Z

    move-result p1

    :goto_6e
    return p1

    :cond_6f
    return v3

    :cond_70
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$d;->input:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "#read(byte[]) returned invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_95
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refillBuffer() called when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes were already available in buffer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->lastTag:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/google/protobuf/d0;->invalidEndTag()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method public enableAliasing(Z)V
    .registers 2

    return-void
.end method

.method public getBytesUntilLimit()I
    .registers 4

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    const/4 v0, -0x1

    return v0

    :cond_9
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLastTag()I
    .registers 2

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->lastTag:I

    return v0
.end method

.method public getTotalBytesRead()I
    .registers 3

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isAtEnd()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_e

    invoke-direct {p0, v2}, Lcom/google/protobuf/CodedInputStream$d;->tryRefillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method public popLimit(I)V
    .registers 2

    iput p1, p0, Lcom/google/protobuf/CodedInputStream$d;->currentLimit:I

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$d;->recomputeBufferSizeAfterLimit()V

    return-void
.end method

.method public pushLimit(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    if-ltz p1, :cond_17

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->currentLimit:I

    if-gt p1, v0, :cond_12

    iput p1, p0, Lcom/google/protobuf/CodedInputStream$d;->currentLimit:I

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$d;->recomputeBufferSizeAfterLimit()V

    return v0

    :cond_12
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1

    :cond_17
    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method public readBool()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawVarint64()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public readByteArray()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawVarint32()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1b

    if-lez v0, :cond_1b

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$d;->buffer:[B

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    return-object v1

    :cond_1b
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/CodedInputStream$d;->readRawBytesSlowPath(IZ)[B

    move-result-object v0

    return-object v0
.end method

.method public readByteBuffer()Ljava/nio/ByteBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawVarint32()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1f

    if-lez v0, :cond_1f

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$d;->buffer:[B

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    return-object v1

    :cond_1f
    if-nez v0, :cond_24

    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    :cond_24
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/CodedInputStream$d;->readRawBytesSlowPath(IZ)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public readBytes()Lcom/google/protobuf/ByteString;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawVarint32()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_19

    if-lez v0, :cond_19

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$d;->buffer:[B

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    return-object v1

    :cond_19
    if-nez v0, :cond_1e

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v0

    :cond_1e
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream$d;->readBytesSlowPath(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(ILcom/google/protobuf/g1;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/q0;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/q0;",
            ">(I",
            "Lcom/google/protobuf/g1<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->checkRecursionLimit()V

    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/g1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/q0;

    const/4 p3, 0x4

    invoke-static {p1, p3}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$d;->checkLastTagWas(I)V

    iget p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    return-object p2
.end method

.method public readGroup(ILcom/google/protobuf/q0$a;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->checkRecursionLimit()V

    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/q0$a;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/q0$a;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$d;->checkLastTagWas(I)V

    iget p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    return-void
.end method

.method public readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lcom/google/protobuf/g1;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/q0;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/q0;",
            ">(",
            "Lcom/google/protobuf/g1<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->checkRecursionLimit()V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$d;->pushLimit(I)I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/g1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/q0;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedInputStream$d;->checkLastTagWas(I)V

    iget p2, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->getBytesUntilLimit()I

    move-result p2

    if-nez p2, :cond_2b

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$d;->popLimit(I)V

    return-object p1

    :cond_2b
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method public readMessage(Lcom/google/protobuf/q0$a;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->checkRecursionLimit()V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$d;->pushLimit(I)I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/q0$a;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/q0$a;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$d;->checkLastTagWas(I)V

    iget p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->getBytesUntilLimit()I

    move-result p1

    if-nez p1, :cond_28

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$d;->popLimit(I)V

    return-void

    :cond_28
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method public readRawByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream$d;->refillBuffer(I)V

    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$d;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readRawBytes(I)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_13

    if-lez p1, :cond_13

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$d;->buffer:[B

    invoke-static {v1, v0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    :cond_13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/CodedInputStream$d;->readRawBytesSlowPath(IZ)[B

    move-result-object p1

    return-object p1
.end method

.method public readRawLittleEndian32()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_d

    invoke-direct {p0, v2}, Lcom/google/protobuf/CodedInputStream$d;->refillBuffer(I)V

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    :cond_d
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$d;->buffer:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method public readRawLittleEndian64()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_e

    invoke-direct {p0, v2}, Lcom/google/protobuf/CodedInputStream$d;->refillBuffer(I)V

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    :cond_e
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$d;->buffer:[B

    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readRawVarint32()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    if-ne v1, v0, :cond_7

    goto :goto_6a

    :cond_7
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$d;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_12

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    return v0

    :cond_12
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_18

    goto :goto_6a

    :cond_18
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_24

    xor-int/lit8 v0, v0, -0x80

    goto :goto_70

    :cond_24
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_31

    xor-int/lit16 v0, v0, 0x3f80

    :cond_2f
    move v1, v3

    goto :goto_70

    :cond_31
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_3f

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_70

    :cond_3f
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_2f

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_70

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2f

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_70

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2f

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-gez v2, :cond_70

    :goto_6a
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawVarint64SlowPath()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_70
    :goto_70
    iput v1, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    return v0
.end method

.method public readRawVarint64()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    if-ne v1, v0, :cond_8

    goto/16 :goto_b6

    :cond_8
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$d;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_14

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    int-to-long v0, v0

    return-wide v0

    :cond_14
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_1b

    goto/16 :goto_b6

    :cond_1b
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_29

    xor-int/lit8 v0, v0, -0x80

    :goto_26
    int-to-long v2, v0

    goto/16 :goto_bd

    :cond_29
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3a

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_bd

    :cond_3a
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_48

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_26

    :cond_48
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_5f

    const-wide/32 v1, 0xfe03f80

    :goto_5b
    xor-long v2, v3, v1

    move v1, v0

    goto :goto_bd

    :cond_5f
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_74

    const-wide v5, -0x7f01fc080L

    :goto_71
    xor-long v2, v3, v5

    goto :goto_bd

    :cond_74
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_87

    const-wide v1, 0x3f80fe03f80L

    goto :goto_5b

    :cond_87
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_9a

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_71

    :cond_9a
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_bb

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-gez v0, :cond_bc

    :goto_b6
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    :cond_bb
    move v1, v0

    :cond_bc
    move-wide v2, v3

    :goto_bd
    iput v1, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    return-wide v2
.end method

.method readRawVarint64SlowPath()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    :cond_18
    invoke-static {}, Lcom/google/protobuf/d0;->malformedVarint()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readSFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_1e

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1e

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$d;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    sget-object v4, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    return-object v1

    :cond_1e
    if-nez v0, :cond_23

    const-string v0, ""

    return-object v0

    :cond_23
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    if-gt v0, v1, :cond_3b

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream$d;->refillBuffer(I)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$d;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    sget-object v4, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    return-object v1

    :cond_3b
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/google/protobuf/CodedInputStream$d;->readRawBytesSlowPath(IZ)[B

    move-result-object v0

    sget-object v2, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawVarint32()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    sub-int v3, v2, v1

    const/4 v4, 0x0

    if-gt v0, v3, :cond_16

    if-lez v0, :cond_16

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$d;->buffer:[B

    add-int v3, v1, v0

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    goto :goto_2c

    :cond_16
    if-nez v0, :cond_1b

    const-string v0, ""

    return-object v0

    :cond_1b
    if-gt v0, v2, :cond_27

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream$d;->refillBuffer(I)V

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$d;->buffer:[B

    add-int/lit8 v1, v0, 0x0

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    goto :goto_2b

    :cond_27
    invoke-direct {p0, v0, v4}, Lcom/google/protobuf/CodedInputStream$d;->readRawBytesSlowPath(IZ)[B

    move-result-object v2

    :goto_2b
    const/4 v1, 0x0

    :goto_2c
    invoke-static {v2, v1, v0}, Lcom/google/protobuf/c2;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readTag()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$d;->lastTag:I

    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$d;->lastTag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->lastTag:I

    return v0

    :cond_19
    invoke-static {}, Lcom/google/protobuf/d0;->invalidTag()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readUInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnknownGroup(ILcom/google/protobuf/q0$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/CodedInputStream$d;->readGroup(ILcom/google/protobuf/q0$a;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public resetSizeCounter()V
    .registers 2

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    neg-int v0, v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$d;->totalBytesRetired:I

    return-void
.end method

.method public skipField(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    if-eq v0, v1, :cond_37

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2f

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_20

    if-eq v0, v3, :cond_1e

    const/4 p1, 0x5

    if-ne v0, p1, :cond_19

    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedInputStream$d;->skipRawBytes(I)V

    return v1

    :cond_19
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_1e
    const/4 p1, 0x0

    return p1

    :cond_20
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->skipMessage()V

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    invoke-static {p1, v3}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$d;->checkLastTagWas(I)V

    return v1

    :cond_2f
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawVarint32()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$d;->skipRawBytes(I)V

    return v1

    :cond_37
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$d;->skipRawBytes(I)V

    return v1

    :cond_3d
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$d;->skipRawVarint()V

    return v1
.end method

.method public skipField(ILcom/google/protobuf/CodedOutputStream;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_52

    if-eq v0, v1, :cond_47

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3c

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_27

    if-eq v0, v3, :cond_25

    const/4 v2, 0x5

    if-ne v0, v2, :cond_20

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawLittleEndian32()I

    move-result v0

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    return v1

    :cond_20
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_25
    const/4 p1, 0x0

    return p1

    :cond_27
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedInputStream$d;->skipMessage(Lcom/google/protobuf/CodedOutputStream;)V

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    invoke-static {p1, v3}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$d;->checkLastTagWas(I)V

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    return v1

    :cond_3c
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    return v1

    :cond_47
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readRawLittleEndian64()J

    move-result-wide v2

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    return v1

    :cond_52
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    return v1
.end method

.method public skipMessage()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readTag()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$d;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-void
.end method

.method public skipMessage(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$d;->readTag()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedInputStream$d;->skipField(ILcom/google/protobuf/CodedOutputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-void
.end method

.method public skipRawBytes(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$d;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_d

    if-ltz p1, :cond_d

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$d;->pos:I

    goto :goto_10

    :cond_d
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStream$d;->skipRawBytesSlowPath(I)V

    :goto_10
    return-void
.end method

###### Class com.google.protobuf.CodedInputStream.d.a (com.google.protobuf.CodedInputStream$d$a)
.class interface abstract Lcom/google/protobuf/CodedInputStream$d$a;
.super Ljava/lang/Object;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedInputStream$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "a"
.end annotation


# virtual methods
.method public abstract onRefill()V
.end method

###### Class com.google.protobuf.CodedInputStream.e (com.google.protobuf.CodedInputStream$e)
.class final Lcom/google/protobuf/CodedInputStream$e;
.super Lcom/google/protobuf/CodedInputStream;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final address:J

.field private final buffer:Ljava/nio/ByteBuffer;

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private enableAliasing:Z

.field private final immutable:Z

.field private lastTag:I

.field private limit:J

.field private pos:J

.field private startPos:J


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream;-><init>(Lcom/google/protobuf/CodedInputStream$a;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$e;->currentLimit:I

    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream$e;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/protobuf/b2;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$e;->address:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$e;->limit:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$e;->startPos:J

    iput-boolean p2, p0, Lcom/google/protobuf/CodedInputStream$e;->immutable:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;ZLcom/google/protobuf/CodedInputStream$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/CodedInputStream$e;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method private bufferPos(J)I
    .registers 5

    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$e;->address:J

    sub-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method static isSupported()Z
    .registers 1

    invoke-static {}, Lcom/google/protobuf/b2;->hasUnsafeByteBufferOperations()Z

    move-result v0

    return v0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .registers 5

    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$e;->limit:J

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$e;->bufferSizeAfterLimit:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$e;->limit:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$e;->startPos:J

    sub-long v2, v0, v2

    long-to-int v3, v2

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$e;->currentLimit:I

    if-le v3, v2, :cond_19

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$e;->bufferSizeAfterLimit:I

    int-to-long v2, v3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$e;->limit:J

    goto :goto_1c

    :cond_19
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$e;->bufferSizeAfterLimit:I

    :goto_1c
    return-void
.end method

.method private remaining()I
    .registers 5

    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$e;->limit:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private skipRawVarint()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$e;->remaining()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_c

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$e;->skipRawVarintFastPath()V

    goto :goto_f

    :cond_c
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$e;->skipRawVarintSlowPath()V

    :goto_f
    return-void
.end method

.method private skipRawVarintFastPath()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_16

    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    invoke-static {v1, v2}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    if-ltz v1, :cond_13

    return-void

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    invoke-static {}, Lcom/google/protobuf/d0;->malformedVarint()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method private skipRawVarintSlowPath()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    invoke-static {}, Lcom/google/protobuf/d0;->malformedVarint()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method private slice(JJ)Ljava/nio/ByteBuffer;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$e;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$e;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$e;->buffer:Ljava/nio/ByteBuffer;

    :try_start_e
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/CodedInputStream$e;->bufferPos(J)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-direct {p0, p3, p4}, Lcom/google/protobuf/CodedInputStream$e;->bufferPos(J)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStream$e;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_22} :catch_2b
    .catchall {:try_start_e .. :try_end_22} :catchall_29

    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-object p1

    :catchall_29
    move-exception p1

    goto :goto_34

    :catch_2b
    move-exception p1

    :try_start_2c
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_29

    :goto_34
    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    throw p1
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$e;->lastTag:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/google/protobuf/d0;->invalidEndTag()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method public enableAliasing(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/protobuf/CodedInputStream$e;->enableAliasing:Z

    return-void
.end method

.method public getBytesUntilLimit()I
    .registers 3

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$e;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    const/4 v0, -0x1

    return v0

    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->getTotalBytesRead()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLastTag()I
    .registers 2

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$e;->lastTag:I

    return v0
.end method

.method public getTotalBytesRead()I
    .registers 5

    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$e;->startPos:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public isAtEnd()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$e;->limit:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public popLimit(I)V
    .registers 2

    iput p1, p0, Lcom/google/protobuf/CodedInputStream$e;->currentLimit:I

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$e;->recomputeBufferSizeAfterLimit()V

    return-void
.end method

.method public pushLimit(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    if-ltz p1, :cond_16

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->getTotalBytesRead()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$e;->currentLimit:I

    if-gt p1, v0, :cond_11

    iput p1, p0, Lcom/google/protobuf/CodedInputStream$e;->currentLimit:I

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$e;->recomputeBufferSizeAfterLimit()V

    return v0

    :cond_11
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1

    :cond_16
    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method public readBool()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawVarint64()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public readByteArray()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$e;->readRawBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public readByteBuffer()Ljava/nio/ByteBuffer;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_39

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$e;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_39

    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$e;->immutable:Z

    if-nez v1, :cond_23

    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$e;->enableAliasing:Z

    if-eqz v1, :cond_23

    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    int-to-long v3, v0

    add-long v5, v1, v3

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/google/protobuf/CodedInputStream$e;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    return-object v0

    :cond_23
    new-array v1, v0, [B

    iget-wide v3, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    const-wide/16 v6, 0x0

    int-to-long v10, v0

    move-object v5, v1

    move-wide v8, v10

    invoke-static/range {v3 .. v9}, Lcom/google/protobuf/b2;->copyMemory(J[BJJ)V

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    add-long/2addr v2, v10

    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_39
    if-nez v0, :cond_3e

    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    :cond_3e
    if-gez v0, :cond_45

    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0

    :cond_45
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readBytes()Lcom/google/protobuf/ByteString;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_3d

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$e;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_3d

    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$e;->immutable:Z

    if-eqz v1, :cond_27

    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$e;->enableAliasing:Z

    if-eqz v1, :cond_27

    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    int-to-long v3, v0

    add-long v5, v1, v3

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/google/protobuf/CodedInputStream$e;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_27
    new-array v8, v0, [B

    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    const-wide/16 v4, 0x0

    int-to-long v9, v0

    move-object v3, v8

    move-wide v6, v9

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/b2;->copyMemory(J[BJJ)V

    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    add-long/2addr v0, v9

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    invoke-static {v8}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_3d
    if-nez v0, :cond_42

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v0

    :cond_42
    if-gez v0, :cond_49

    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0

    :cond_49
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(ILcom/google/protobuf/g1;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/q0;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/q0;",
            ">(I",
            "Lcom/google/protobuf/g1<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->checkRecursionLimit()V

    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/g1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/q0;

    const/4 p3, 0x4

    invoke-static {p1, p3}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$e;->checkLastTagWas(I)V

    iget p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    return-object p2
.end method

.method public readGroup(ILcom/google/protobuf/q0$a;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->checkRecursionLimit()V

    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/q0$a;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/q0$a;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$e;->checkLastTagWas(I)V

    iget p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    return-void
.end method

.method public readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lcom/google/protobuf/g1;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/q0;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/q0;",
            ">(",
            "Lcom/google/protobuf/g1<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->checkRecursionLimit()V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$e;->pushLimit(I)I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/g1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/q0;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedInputStream$e;->checkLastTagWas(I)V

    iget p2, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->getBytesUntilLimit()I

    move-result p2

    if-nez p2, :cond_2b

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$e;->popLimit(I)V

    return-object p1

    :cond_2b
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method public readMessage(Lcom/google/protobuf/q0$a;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->checkRecursionLimit()V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$e;->pushLimit(I)I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/q0$a;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/q0$a;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$e;->checkLastTagWas(I)V

    iget p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->getBytesUntilLimit()I

    move-result p1

    if-nez p1, :cond_28

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$e;->popLimit(I)V

    return-void

    :cond_28
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method public readRawByte()B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$e;->limit:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_12

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v0

    return v0

    :cond_12
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readRawBytes(I)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_1c

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$e;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_1c

    new-array v0, p1, [B

    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    int-to-long v3, p1

    add-long v5, v1, v3

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/google/protobuf/CodedInputStream$e;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    return-object v0

    :cond_1c
    if-gtz p1, :cond_28

    if-nez p1, :cond_23

    sget-object p1, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object p1

    :cond_23
    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1

    :cond_28
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method public readRawLittleEndian32()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$e;->limit:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_39

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const-wide/16 v3, 0x2

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const-wide/16 v3, 0x3

    add-long/2addr v0, v3

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    :cond_39
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readRawLittleEndian64()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$e;->limit:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x8

    cmp-long v6, v2, v4

    if-ltz v6, :cond_72

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x2

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x4

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x5

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x6

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x7

    add-long/2addr v0, v6

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    :cond_72
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readRawVarint32()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$e;->limit:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_a

    goto/16 :goto_85

    :cond_a
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v0

    if-ltz v0, :cond_17

    iput-wide v4, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    return v0

    :cond_17
    iget-wide v6, p0, Lcom/google/protobuf/CodedInputStream$e;->limit:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

    cmp-long v1, v6, v8

    if-gez v1, :cond_21

    goto :goto_85

    :cond_21
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_2f

    xor-int/lit8 v0, v0, -0x80

    goto :goto_8b

    :cond_2f
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3e

    xor-int/lit16 v0, v0, 0x3f80

    :cond_3c
    move-wide v6, v4

    goto :goto_8b

    :cond_3e
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_4e

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_8b

    :cond_4e
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    shl-int/lit8 v6, v1, 0x1c

    xor-int/2addr v0, v6

    const v6, 0xfe03f80

    xor-int/2addr v0, v6

    if-gez v1, :cond_3c

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    if-gez v1, :cond_8b

    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    if-gez v1, :cond_3c

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    if-gez v1, :cond_8b

    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    if-gez v1, :cond_3c

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    if-gez v1, :cond_8b

    :goto_85
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawVarint64SlowPath()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_8b
    :goto_8b
    iput-wide v6, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    return v0
.end method

.method public readRawVarint64()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$e;->limit:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_a

    goto/16 :goto_cb

    :cond_a
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v0

    if-ltz v0, :cond_18

    iput-wide v4, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    int-to-long v0, v0

    return-wide v0

    :cond_18
    iget-wide v6, p0, Lcom/google/protobuf/CodedInputStream$e;->limit:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

    cmp-long v1, v6, v8

    if-gez v1, :cond_23

    goto/16 :goto_cb

    :cond_23
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_33

    xor-int/lit8 v0, v0, -0x80

    :goto_30
    int-to-long v0, v0

    goto/16 :goto_d1

    :cond_33
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_44

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    :cond_41
    :goto_41
    move-wide v6, v4

    goto/16 :goto_d1

    :cond_44
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_54

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_30

    :cond_54
    int-to-long v0, v0

    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    const/16 v8, 0x1c

    shl-long/2addr v6, v8

    xor-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-ltz v8, :cond_6b

    const-wide/32 v2, 0xfe03f80

    :goto_69
    xor-long/2addr v0, v2

    goto :goto_41

    :cond_6b
    add-long v8, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x23

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_82

    const-wide v2, -0x7f01fc080L

    :goto_7f
    xor-long/2addr v0, v2

    move-wide v6, v8

    goto :goto_d1

    :cond_82
    add-long v4, v8, v2

    invoke-static {v8, v9}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x2a

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-ltz v8, :cond_97

    const-wide v2, 0x3f80fe03f80L

    goto :goto_69

    :cond_97
    add-long v8, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x31

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_ac

    const-wide v2, -0x1fc07f01fc080L

    goto :goto_7f

    :cond_ac
    add-long v4, v8, v2

    invoke-static {v8, v9}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    const-wide v8, 0xfe03f80fe03f80L

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-gez v8, :cond_41

    add-long/2addr v2, v4

    invoke-static {v4, v5}, Lcom/google/protobuf/b2;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    cmp-long v8, v4, v6

    if-gez v8, :cond_d0

    :goto_cb
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    :cond_d0
    move-wide v6, v2

    :goto_d1
    iput-wide v6, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    return-wide v0
.end method

.method readRawVarint64SlowPath()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    :cond_18
    invoke-static {}, Lcom/google/protobuf/d0;->malformedVarint()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readSFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_25

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$e;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_25

    new-array v1, v0, [B

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    const-wide/16 v5, 0x0

    int-to-long v9, v0

    move-object v4, v1

    move-wide v7, v9

    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/b2;->copyMemory(J[BJJ)V

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    add-long/2addr v1, v9

    iput-wide v1, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    return-object v0

    :cond_25
    if-nez v0, :cond_2a

    const-string v0, ""

    return-object v0

    :cond_2a
    if-gez v0, :cond_31

    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0

    :cond_31
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_1f

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$e;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_1f

    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    invoke-direct {p0, v1, v2}, Lcom/google/protobuf/CodedInputStream$e;->bufferPos(J)I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$e;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/c2;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    return-object v1

    :cond_1f
    if-nez v0, :cond_24

    const-string v0, ""

    return-object v0

    :cond_24
    if-gtz v0, :cond_2b

    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0

    :cond_2b
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readTag()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$e;->lastTag:I

    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$e;->lastTag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$e;->lastTag:I

    return v0

    :cond_19
    invoke-static {}, Lcom/google/protobuf/d0;->invalidTag()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public readUInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnknownGroup(ILcom/google/protobuf/q0$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/CodedInputStream$e;->readGroup(ILcom/google/protobuf/q0$a;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public resetSizeCounter()V
    .registers 3

    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$e;->startPos:J

    return-void
.end method

.method public skipField(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    if-eq v0, v1, :cond_37

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2f

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_20

    if-eq v0, v3, :cond_1e

    const/4 p1, 0x5

    if-ne v0, p1, :cond_19

    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedInputStream$e;->skipRawBytes(I)V

    return v1

    :cond_19
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_1e
    const/4 p1, 0x0

    return p1

    :cond_20
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->skipMessage()V

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    invoke-static {p1, v3}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$e;->checkLastTagWas(I)V

    return v1

    :cond_2f
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawVarint32()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$e;->skipRawBytes(I)V

    return v1

    :cond_37
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$e;->skipRawBytes(I)V

    return v1

    :cond_3d
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$e;->skipRawVarint()V

    return v1
.end method

.method public skipField(ILcom/google/protobuf/CodedOutputStream;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_52

    if-eq v0, v1, :cond_47

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3c

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_27

    if-eq v0, v3, :cond_25

    const/4 v2, 0x5

    if-ne v0, v2, :cond_20

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawLittleEndian32()I

    move-result v0

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    return v1

    :cond_20
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_25
    const/4 p1, 0x0

    return p1

    :cond_27
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedInputStream$e;->skipMessage(Lcom/google/protobuf/CodedOutputStream;)V

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    invoke-static {p1, v3}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$e;->checkLastTagWas(I)V

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    return v1

    :cond_3c
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    return v1

    :cond_47
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readRawLittleEndian64()J

    move-result-wide v2

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    return v1

    :cond_52
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    return v1
.end method

.method public skipMessage()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readTag()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$e;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-void
.end method

.method public skipMessage(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$e;->readTag()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedInputStream$e;->skipField(ILcom/google/protobuf/CodedOutputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-void
.end method

.method public skipRawBytes(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_f

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$e;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_f

    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$e;->pos:J

    return-void

    :cond_f
    if-gez p1, :cond_16

    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1

    :cond_16
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

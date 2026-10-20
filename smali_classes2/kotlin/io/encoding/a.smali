###### Class kotlin.io.encoding.DecodeInputStream (kotlin.io.encoding.a)
.class final Lkotlin/io/encoding/a;
.super Ljava/io/InputStream;
.source "Base64IOStream.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u000f\u0008\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J \u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\tH\u0002J(\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\tH\u0002J\u0010\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\tH\u0002J\u0008\u0010\u001d\u001a\u00020\tH\u0016J \u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\tH\u0016J\u0008\u0010 \u001a\u00020\tH\u0002J\u0008\u0010!\u001a\u00020\u0014H\u0002J\u0008\u0010\"\u001a\u00020\u0014H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lkotlin/io/encoding/DecodeInputStream;",
        "Ljava/io/InputStream;",
        "input",
        "base64",
        "Lkotlin/io/encoding/Base64;",
        "(Ljava/io/InputStream;Lkotlin/io/encoding/Base64;)V",
        "byteBuffer",
        "",
        "byteBufferEndIndex",
        "",
        "byteBufferLength",
        "getByteBufferLength",
        "()I",
        "byteBufferStartIndex",
        "isClosed",
        "",
        "isEOF",
        "singleByteBuffer",
        "symbolBuffer",
        "close",
        "",
        "copyByteBufferInto",
        "dst",
        "dstOffset",
        "length",
        "decodeSymbolBufferInto",
        "dstEndIndex",
        "symbolBufferLength",
        "handlePaddingSymbol",
        "read",
        "destination",
        "offset",
        "readNextSymbol",
        "resetByteBufferIfEmpty",
        "shiftByteBufferToStartIfNeeded",
        "kotlin-stdlib"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Lkotlin/io/encoding/Base64;

.field private c:Z

.field private d:Z

.field private final e:[B

.field private final f:[B

.field private final g:[B

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lkotlin/io/encoding/Base64;)V
    .registers 4

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "base64"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lkotlin/io/encoding/a;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lkotlin/io/encoding/a;->b:Lkotlin/io/encoding/Base64;

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lkotlin/io/encoding/a;->e:[B

    const/16 p1, 0x400

    new-array p2, p1, [B

    iput-object p2, p0, Lkotlin/io/encoding/a;->f:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lkotlin/io/encoding/a;->g:[B

    return-void
.end method

.method private final a([BII)V
    .registers 7

    iget-object v0, p0, Lkotlin/io/encoding/a;->g:[B

    iget v1, p0, Lkotlin/io/encoding/a;->h:I

    add-int v2, v1, p3

    invoke-static {v0, p1, p2, v1, v2}, Lkotlin/collections/k;->copyInto([B[BIII)[B

    iget p1, p0, Lkotlin/io/encoding/a;->h:I

    add-int/2addr p1, p3

    iput p1, p0, Lkotlin/io/encoding/a;->h:I

    invoke-direct {p0}, Lkotlin/io/encoding/a;->g()V

    return-void
.end method

.method private final b([BIII)I
    .registers 12

    iget v6, p0, Lkotlin/io/encoding/a;->i:I

    iget-object v0, p0, Lkotlin/io/encoding/a;->b:Lkotlin/io/encoding/Base64;

    iget-object v1, p0, Lkotlin/io/encoding/a;->f:[B

    iget-object v2, p0, Lkotlin/io/encoding/a;->g:[B

    const/4 v4, 0x0

    move v3, v6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lkotlin/io/encoding/Base64;->h([B[BIII)I

    move-result p4

    add-int/2addr v6, p4

    iput v6, p0, Lkotlin/io/encoding/a;->i:I

    invoke-direct {p0}, Lkotlin/io/encoding/a;->d()I

    move-result p4

    sub-int/2addr p3, p2

    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lkotlin/io/encoding/a;->a([BII)V

    invoke-direct {p0}, Lkotlin/io/encoding/a;->h()V

    return p3
.end method

.method private final d()I
    .registers 3

    iget v0, p0, Lkotlin/io/encoding/a;->i:I

    iget v1, p0, Lkotlin/io/encoding/a;->h:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private final e(I)I
    .registers 6

    iget-object v0, p0, Lkotlin/io/encoding/a;->f:[B

    const/16 v1, 0x3d

    aput-byte v1, v0, p1

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    invoke-direct {p0}, Lkotlin/io/encoding/a;->f()I

    move-result v0

    if-ltz v0, :cond_18

    iget-object v2, p0, Lkotlin/io/encoding/a;->f:[B

    add-int/lit8 v3, p1, 0x1

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    :cond_18
    add-int/2addr p1, v1

    goto :goto_1c

    :cond_1a
    add-int/lit8 p1, p1, 0x1

    :goto_1c
    return p1
.end method

.method private final f()I
    .registers 3

    iget-object v0, p0, Lkotlin/io/encoding/a;->b:Lkotlin/io/encoding/Base64;

    invoke-virtual {v0}, Lkotlin/io/encoding/Base64;->r()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lkotlin/io/encoding/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lkotlin/io/encoding/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    invoke-static {v0}, Lkotlin/io/encoding/Base64Kt;->isInMimeAlphabet(I)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_1e
    return v0
.end method

.method private final g()V
    .registers 3

    iget v0, p0, Lkotlin/io/encoding/a;->h:I

    iget v1, p0, Lkotlin/io/encoding/a;->i:I

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/io/encoding/a;->h:I

    iput v0, p0, Lkotlin/io/encoding/a;->i:I

    :cond_b
    return-void
.end method

.method private final h()V
    .registers 5

    iget-object v0, p0, Lkotlin/io/encoding/a;->g:[B

    array-length v1, v0

    iget v2, p0, Lkotlin/io/encoding/a;->i:I

    sub-int/2addr v1, v2

    iget-object v3, p0, Lkotlin/io/encoding/a;->f:[B

    array-length v3, v3

    div-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x3

    if-le v3, v1, :cond_1e

    iget v1, p0, Lkotlin/io/encoding/a;->h:I

    const/4 v3, 0x0

    invoke-static {v0, v0, v3, v1, v2}, Lkotlin/collections/k;->copyInto([B[BIII)[B

    iget v0, p0, Lkotlin/io/encoding/a;->i:I

    iget v1, p0, Lkotlin/io/encoding/a;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lkotlin/io/encoding/a;->i:I

    iput v3, p0, Lkotlin/io/encoding/a;->h:I

    :cond_1e
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-boolean v0, p0, Lkotlin/io/encoding/a;->c:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/io/encoding/a;->c:Z

    iget-object v0, p0, Lkotlin/io/encoding/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_c
    return-void
.end method

.method public read()I
    .registers 5

    iget v0, p0, Lkotlin/io/encoding/a;->h:I

    iget v1, p0, Lkotlin/io/encoding/a;->i:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lkotlin/io/encoding/a;->g:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v2

    iput v0, p0, Lkotlin/io/encoding/a;->h:I

    invoke-direct {p0}, Lkotlin/io/encoding/a;->g()V

    return v1

    :cond_14
    iget-object v0, p0, Lkotlin/io/encoding/a;->e:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lkotlin/io/encoding/a;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_33

    if-ne v0, v2, :cond_27

    iget-object v0, p0, Lkotlin/io/encoding/a;->e:[B

    aget-byte v0, v0, v1

    and-int/lit16 v3, v0, 0xff

    goto :goto_33

    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    :goto_33
    return v3
.end method

.method public read([BII)I
    .registers 13

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_91

    if-ltz p3, :cond_91

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_91

    iget-boolean v1, p0, Lkotlin/io/encoding/a;->c:Z

    if-nez v1, :cond_89

    iget-boolean v1, p0, Lkotlin/io/encoding/a;->d:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_18

    return v2

    :cond_18
    const/4 v1, 0x0

    if-nez p3, :cond_1c

    return v1

    :cond_1c
    invoke-direct {p0}, Lkotlin/io/encoding/a;->d()I

    move-result v3

    if-lt v3, p3, :cond_26

    invoke-direct {p0, p1, p2, p3}, Lkotlin/io/encoding/a;->a([BII)V

    return p3

    :cond_26
    invoke-direct {p0}, Lkotlin/io/encoding/a;->d()I

    move-result v3

    sub-int/2addr p3, v3

    add-int/lit8 p3, p3, 0x3

    const/4 v3, 0x1

    sub-int/2addr p3, v3

    div-int/lit8 p3, p3, 0x3

    mul-int/lit8 p3, p3, 0x4

    move v4, p2

    :goto_34
    iget-boolean v5, p0, Lkotlin/io/encoding/a;->d:Z

    if-nez v5, :cond_81

    if-lez p3, :cond_81

    iget-object v5, p0, Lkotlin/io/encoding/a;->f:[B

    array-length v5, v5

    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    :goto_42
    iget-boolean v7, p0, Lkotlin/io/encoding/a;->d:Z

    if-nez v7, :cond_64

    if-ge v6, v5, :cond_64

    invoke-direct {p0}, Lkotlin/io/encoding/a;->f()I

    move-result v7

    if-eq v7, v2, :cond_61

    const/16 v8, 0x3d

    if-eq v7, v8, :cond_5a

    iget-object v8, p0, Lkotlin/io/encoding/a;->f:[B

    int-to-byte v7, v7

    aput-byte v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    :cond_5a
    invoke-direct {p0, v6}, Lkotlin/io/encoding/a;->e(I)I

    move-result v6

    iput-boolean v3, p0, Lkotlin/io/encoding/a;->d:Z

    goto :goto_42

    :cond_61
    iput-boolean v3, p0, Lkotlin/io/encoding/a;->d:Z

    goto :goto_42

    :cond_64
    if-nez v7, :cond_6b

    if-ne v6, v5, :cond_69

    goto :goto_6b

    :cond_69
    const/4 v5, 0x0

    goto :goto_6c

    :cond_6b
    :goto_6b
    const/4 v5, 0x1

    :goto_6c
    if-eqz v5, :cond_75

    sub-int/2addr p3, v6

    invoke-direct {p0, p1, v4, v0, v6}, Lkotlin/io/encoding/a;->b([BIII)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_34

    :cond_75
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_81
    if-ne v4, p2, :cond_86

    if-eqz v5, :cond_86

    goto :goto_88

    :cond_86
    sub-int v2, v4, p2

    :goto_88
    return v2

    :cond_89
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The input stream is closed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_91
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", length: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", buffer size: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

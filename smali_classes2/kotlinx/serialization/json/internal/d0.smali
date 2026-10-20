###### Class kotlinx.serialization.json.internal.JsonToJavaStreamWriter (kotlinx.serialization.json.internal.d0)
.class public final Lkotlinx/serialization/json/internal/d0;
.super Ljava/lang/Object;
.source "JvmJsonStreams.kt"

# interfaces
.implements Lkotlinx/serialization/json/internal/l0;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0011\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\nH\u0082\u0008J\u0018\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0002J\u0008\u0010\u0015\u001a\u00020\u000cH\u0002J\u0008\u0010\u0016\u001a\u00020\u000cH\u0016J\t\u0010\u0017\u001a\u00020\nH\u0082\u0008J\u0011\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\nH\u0082\u0008J\u0010\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u000fH\u0016J\u0010\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0010\u0010!\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u000fH\u0016J\u0018\u0010\"\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010#\u001a\u00020\nH\u0002J\u0010\u0010$\u001a\u00020\u000c2\u0006\u0010%\u001a\u00020\nH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;",
        "Lkotlinx/serialization/json/internal/JsonWriter;",
        "stream",
        "Ljava/io/OutputStream;",
        "(Ljava/io/OutputStream;)V",
        "buffer",
        "",
        "charArray",
        "",
        "indexInBuffer",
        "",
        "appendStringSlowPath",
        "",
        "currentSize",
        "string",
        "",
        "ensure",
        "bytesCount",
        "ensureTotalCapacity",
        "oldSize",
        "additional",
        "flush",
        "release",
        "rest",
        "write",
        "byte",
        "text",
        "writeChar",
        "char",
        "",
        "writeLong",
        "value",
        "",
        "writeQuoted",
        "writeUtf8",
        "count",
        "writeUtf8CodePoint",
        "codePoint",
        "kotlinx-serialization-json"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Ljava/io/OutputStream;

.field private final b:[B

.field private c:[C

.field private d:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/d0;->a:Ljava/io/OutputStream;

    sget-object p1, Lkotlinx/serialization/json/internal/g;->a:Lkotlinx/serialization/json/internal/g;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/g;->b()[B

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/d0;->b:[B

    sget-object p1, Lkotlinx/serialization/json/internal/h;->a:Lkotlinx/serialization/json/internal/h;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/h;->b()[C

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/d0;->c:[C

    return-void
.end method

.method private final d(ILjava/lang/String;)V
    .registers 9

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_6
    const/4 v2, 0x1

    if-ge v0, v1, :cond_65

    const/4 v3, 0x2

    invoke-direct {p0, p1, v3}, Lkotlinx/serialization/json/internal/d0;->e(II)I

    move-result p1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_5a

    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    move-result-object v4

    aget-byte v4, v4, v3

    if-nez v4, :cond_29

    iget-object v2, p0, Lkotlinx/serialization/json/internal/d0;->c:[C

    add-int/lit8 v4, p1, 0x1

    int-to-char v3, v3

    aput-char v3, v2, p1

    goto :goto_61

    :cond_29
    if-ne v4, v2, :cond_4c

    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_STRINGS()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lkotlinx/serialization/json/internal/d0;->e(II)I

    move-result p1

    iget-object v3, p0, Lkotlinx/serialization/json/internal/d0;->c:[C

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5, v3, p1}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p1, v2

    goto :goto_62

    :cond_4c
    iget-object v2, p0, Lkotlinx/serialization/json/internal/d0;->c:[C

    const/16 v3, 0x5c

    aput-char v3, v2, p1

    add-int/lit8 v3, p1, 0x1

    int-to-char v4, v4

    aput-char v4, v2, v3

    add-int/lit8 p1, p1, 0x2

    goto :goto_62

    :cond_5a
    iget-object v2, p0, Lkotlinx/serialization/json/internal/d0;->c:[C

    add-int/lit8 v4, p1, 0x1

    int-to-char v3, v3

    aput-char v3, v2, p1

    :goto_61
    move p1, v4

    :goto_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_65
    invoke-direct {p0, p1, v2}, Lkotlinx/serialization/json/internal/d0;->e(II)I

    iget-object p2, p0, Lkotlinx/serialization/json/internal/d0;->c:[C

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x22

    aput-char v1, p2, p1

    invoke-direct {p0, p2, v0}, Lkotlinx/serialization/json/internal/d0;->h([CI)V

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/d0;->f()V

    return-void
.end method

.method private final e(II)I
    .registers 5

    add-int/2addr p2, p1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/d0;->c:[C

    array-length v1, v0

    if-gt v1, p2, :cond_17

    mul-int/lit8 v1, p1, 0x2

    invoke-static {p2, v1}, Lkotlin/ranges/m;->coerceAtLeast(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p2

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/d0;->c:[C

    :cond_17
    return p1
.end method

.method private final f()V
    .registers 5

    iget-object v0, p0, Lkotlinx/serialization/json/internal/d0;->a:Ljava/io/OutputStream;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/d0;->b:[B

    iget v2, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    return-void
.end method

.method private final h([CI)V
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_15c

    array-length v2, p1

    if-gt p2, v2, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    if-eqz v2, :cond_138

    const/4 v2, 0x0

    :cond_12
    :goto_12
    if-ge v2, p2, :cond_137

    aget-char v3, p1, v2

    const/16 v4, 0x80

    if-ge v3, v4, :cond_4d

    iget-object v5, p0, Lkotlinx/serialization/json/internal/d0;->b:[B

    array-length v5, v5

    iget v6, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    sub-int/2addr v5, v6

    if-ge v5, v1, :cond_25

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/d0;->f()V

    :cond_25
    iget-object v5, p0, Lkotlinx/serialization/json/internal/d0;->b:[B

    iget v6, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    add-int/lit8 v2, v2, 0x1

    array-length v3, v5

    sub-int/2addr v3, v7

    add-int/2addr v3, v2

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_39
    if-ge v2, v3, :cond_12

    aget-char v5, p1, v2

    if-ge v5, v4, :cond_12

    iget-object v6, p0, Lkotlinx/serialization/json/internal/d0;->b:[B

    iget v7, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    int-to-byte v5, v5

    aput-byte v5, v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_4d
    const/16 v5, 0x800

    if-ge v3, v5, :cond_79

    iget-object v5, p0, Lkotlinx/serialization/json/internal/d0;->b:[B

    array-length v5, v5

    iget v6, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    sub-int/2addr v5, v6

    const/4 v6, 0x2

    if-ge v5, v6, :cond_5d

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/d0;->f()V

    :cond_5d
    shr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0xc0

    iget-object v6, p0, Lkotlinx/serialization/json/internal/d0;->b:[B

    iget v7, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    int-to-byte v5, v5

    aput-byte v5, v6, v7

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v4

    add-int/lit8 v4, v8, 0x1

    iput v4, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    int-to-byte v3, v3

    aput-byte v3, v6, v8

    :goto_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_79
    const v5, 0xd800

    const/16 v6, 0x3f

    if-lt v3, v5, :cond_105

    const v5, 0xdfff

    if-le v3, v5, :cond_87

    goto/16 :goto_105

    :cond_87
    add-int/lit8 v5, v2, 0x1

    if-ge v5, p2, :cond_8e

    aget-char v7, p1, v5

    goto :goto_8f

    :cond_8e
    const/4 v7, 0x0

    :goto_8f
    const v8, 0xdbff

    if-gt v3, v8, :cond_ec

    const v8, 0xdc00

    if-gt v8, v7, :cond_a0

    const v8, 0xe000

    if-ge v7, v8, :cond_a0

    const/4 v8, 0x1

    goto :goto_a1

    :cond_a0
    const/4 v8, 0x0

    :goto_a1
    if-nez v8, :cond_a4

    goto :goto_ec

    :cond_a4
    const/high16 v5, 0x10000

    and-int/lit16 v3, v3, 0x3ff

    shl-int/lit8 v3, v3, 0xa

    and-int/lit16 v7, v7, 0x3ff

    or-int/2addr v3, v7

    add-int/2addr v3, v5

    const/4 v5, 0x4

    iget-object v7, p0, Lkotlinx/serialization/json/internal/d0;->b:[B

    array-length v7, v7

    iget v8, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    sub-int/2addr v7, v8

    if-ge v7, v5, :cond_ba

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/d0;->f()V

    :cond_ba
    shr-int/lit8 v5, v3, 0x12

    or-int/lit16 v5, v5, 0xf0

    iget-object v7, p0, Lkotlinx/serialization/json/internal/d0;->b:[B

    iget v8, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    int-to-byte v5, v5

    aput-byte v5, v7, v8

    shr-int/lit8 v5, v3, 0xc

    and-int/2addr v5, v6

    or-int/2addr v5, v4

    add-int/lit8 v8, v9, 0x1

    iput v8, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    int-to-byte v5, v5

    aput-byte v5, v7, v9

    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v6

    or-int/2addr v5, v4

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    int-to-byte v5, v5

    aput-byte v5, v7, v8

    and-int/2addr v3, v6

    or-int/2addr v3, v4

    add-int/lit8 v4, v9, 0x1

    iput v4, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    int-to-byte v3, v3

    aput-byte v3, v7, v9

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_12

    :cond_ec
    :goto_ec
    iget-object v2, p0, Lkotlinx/serialization/json/internal/d0;->b:[B

    array-length v2, v2

    iget v3, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    sub-int/2addr v2, v3

    if-ge v2, v1, :cond_f7

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/d0;->f()V

    :cond_f7
    iget-object v2, p0, Lkotlinx/serialization/json/internal/d0;->b:[B

    iget v3, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    int-to-byte v4, v6

    aput-byte v4, v2, v3

    move v2, v5

    goto/16 :goto_12

    :cond_105
    :goto_105
    const/4 v5, 0x3

    iget-object v7, p0, Lkotlinx/serialization/json/internal/d0;->b:[B

    array-length v7, v7

    iget v8, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    sub-int/2addr v7, v8

    if-ge v7, v5, :cond_111

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/d0;->f()V

    :cond_111
    shr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0xe0

    iget-object v7, p0, Lkotlinx/serialization/json/internal/d0;->b:[B

    iget v8, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    int-to-byte v5, v5

    aput-byte v5, v7, v8

    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v6

    or-int/2addr v5, v4

    add-int/lit8 v6, v9, 0x1

    iput v6, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    int-to-byte v5, v5

    aput-byte v5, v7, v9

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v4

    add-int/lit8 v4, v6, 0x1

    iput v4, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    int-to-byte v3, v3

    aput-byte v3, v7, v6

    goto/16 :goto_76

    :cond_137
    return-void

    :cond_138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count > string.length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_15c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "count < 0"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final i(I)V
    .registers 8

    const/16 v0, 0x80

    const/4 v1, 0x1

    if-ge p1, v0, :cond_1d

    iget-object v0, p0, Lkotlinx/serialization/json/internal/d0;->b:[B

    array-length v0, v0

    iget v2, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    sub-int/2addr v0, v2

    if-ge v0, v1, :cond_10

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/d0;->f()V

    :cond_10
    iget-object v0, p0, Lkotlinx/serialization/json/internal/d0;->b:[B

    iget v1, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    goto/16 :goto_e1

    :cond_1d
    const/16 v2, 0x800

    const/16 v3, 0x3f

    if-ge p1, v2, :cond_49

    const/4 v1, 0x2

    iget-object v2, p0, Lkotlinx/serialization/json/internal/d0;->b:[B

    array-length v2, v2

    iget v4, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    sub-int/2addr v2, v4

    if-ge v2, v1, :cond_2f

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/d0;->f()V

    :cond_2f
    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    iget-object v2, p0, Lkotlinx/serialization/json/internal/d0;->b:[B

    iget v4, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    add-int/lit8 v0, v5, 0x1

    iput v0, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    int-to-byte p1, p1

    aput-byte p1, v2, v5

    goto/16 :goto_e1

    :cond_49
    const v2, 0xd800

    const/4 v4, 0x0

    if-gt v2, p1, :cond_55

    const v2, 0xe000

    if-ge p1, v2, :cond_55

    const/4 v4, 0x1

    :cond_55
    if-eqz v4, :cond_6e

    iget-object p1, p0, Lkotlinx/serialization/json/internal/d0;->b:[B

    array-length p1, p1

    iget v0, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    sub-int/2addr p1, v0

    if-ge p1, v1, :cond_62

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/d0;->f()V

    :cond_62
    iget-object p1, p0, Lkotlinx/serialization/json/internal/d0;->b:[B

    iget v0, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    int-to-byte v1, v3

    aput-byte v1, p1, v0

    goto :goto_e1

    :cond_6e
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_a2

    const/4 v1, 0x3

    iget-object v2, p0, Lkotlinx/serialization/json/internal/d0;->b:[B

    array-length v2, v2

    iget v4, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    sub-int/2addr v2, v4

    if-ge v2, v1, :cond_7e

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/d0;->f()V

    :cond_7e
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    iget-object v2, p0, Lkotlinx/serialization/json/internal/d0;->b:[B

    iget v4, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v3

    or-int/2addr v1, v0

    add-int/lit8 v4, v5, 0x1

    iput v4, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    int-to-byte v1, v1

    aput-byte v1, v2, v5

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    int-to-byte p1, p1

    aput-byte p1, v2, v4

    goto :goto_e1

    :cond_a2
    const v1, 0x10ffff

    if-gt p1, v1, :cond_e2

    const/4 v1, 0x4

    iget-object v2, p0, Lkotlinx/serialization/json/internal/d0;->b:[B

    array-length v2, v2

    iget v4, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    sub-int/2addr v2, v4

    if-ge v2, v1, :cond_b3

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/d0;->f()V

    :cond_b3
    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    iget-object v2, p0, Lkotlinx/serialization/json/internal/d0;->b:[B

    iget v4, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    shr-int/lit8 v1, p1, 0xc

    and-int/2addr v1, v3

    or-int/2addr v1, v0

    add-int/lit8 v4, v5, 0x1

    iput v4, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    int-to-byte v1, v1

    aput-byte v1, v2, v5

    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v3

    or-int/2addr v1, v0

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    add-int/lit8 v0, v5, 0x1

    iput v0, p0, Lkotlinx/serialization/json/internal/d0;->d:I

    int-to-byte p1, p1

    aput-byte p1, v2, v5

    :goto_e1
    return-void

    :cond_e2
    new-instance v0, Lkotlinx/serialization/json/internal/w;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlinx/serialization/json/internal/w;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(C)V
    .registers 2

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/d0;->i(I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 9

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/json/internal/d0;->e(II)I

    iget-object v0, p0, Lkotlinx/serialization/json/internal/d0;->c:[C

    const/16 v2, 0x22

    aput-char v2, v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v3, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    add-int/lit8 v1, v3, 0x1

    :goto_1f
    if-ge v4, v1, :cond_39

    aget-char v5, v0, v4

    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_36

    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    move-result-object v6

    aget-byte v5, v6, v5

    if-eqz v5, :cond_36

    invoke-direct {p0, v4, p1}, Lkotlinx/serialization/json/internal/d0;->d(ILjava/lang/String;)V

    return-void

    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_39
    aput-char v2, v0, v1

    add-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v0, v3}, Lkotlinx/serialization/json/internal/d0;->h([CI)V

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/d0;->f()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 5

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/json/internal/d0;->e(II)I

    iget-object v2, p0, Lkotlinx/serialization/json/internal/d0;->c:[C

    invoke-virtual {p1, v1, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/d0;->c:[C

    invoke-direct {p0, p1, v0}, Lkotlinx/serialization/json/internal/d0;->h([CI)V

    return-void
.end method

.method public g()V
    .registers 3

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/d0;->f()V

    sget-object v0, Lkotlinx/serialization/json/internal/h;->a:Lkotlinx/serialization/json/internal/h;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/d0;->c:[C

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/h;->a([C)V

    sget-object v0, Lkotlinx/serialization/json/internal/g;->a:Lkotlinx/serialization/json/internal/g;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/d0;->b:[B

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/g;->a([B)V

    return-void
.end method

.method public writeLong(J)V
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/d0;->c(Ljava/lang/String;)V

    return-void
.end method

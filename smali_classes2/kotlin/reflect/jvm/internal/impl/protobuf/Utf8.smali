###### Class kotlin.reflect.jvm.internal.impl.protobuf.Utf8 (kotlin.reflect.jvm.internal.impl.protobuf.Utf8)
.class final Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# direct methods
.method private static a(I)I
    .registers 2

    const/16 v0, -0xc

    if-le p0, v0, :cond_5

    const/4 p0, -0x1

    :cond_5
    return p0
.end method

.method private static b(II)I
    .registers 3

    const/16 v0, -0xc

    if-gt p0, v0, :cond_d

    const/16 v0, -0x41

    if-le p1, v0, :cond_9

    goto :goto_d

    :cond_9
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, -0x1

    :goto_e
    return p0
.end method

.method private static c(III)I
    .registers 4

    const/16 v0, -0xc

    if-gt p0, v0, :cond_12

    const/16 v0, -0x41

    if-gt p1, v0, :cond_12

    if-le p2, v0, :cond_b

    goto :goto_12

    :cond_b
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x10

    xor-int/2addr p0, p1

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p0, -0x1

    :goto_13
    return p0
.end method

.method private static d([BII)I
    .registers 6

    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p0, v0

    sub-int/2addr p2, p1

    if-eqz p2, :cond_24

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1d

    const/4 v2, 0x2

    if-ne p2, v2, :cond_17

    aget-byte p2, p0, p1

    add-int/2addr p1, v1

    aget-byte p0, p0, p1

    invoke-static {v0, p2, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->c(III)I

    move-result p0

    return p0

    :cond_17
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1d
    aget-byte p0, p0, p1

    invoke-static {v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->b(II)I

    move-result p0

    return p0

    :cond_24
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->a(I)I

    move-result p0

    return p0
.end method

.method private static e([BII)I
    .registers 9

    :cond_0
    :goto_0
    if-lt p1, p2, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-gez p1, :cond_6a

    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge p1, v1, :cond_1f

    if-lt v0, p2, :cond_14

    return p1

    :cond_14
    const/16 v1, -0x3e

    if-lt p1, v1, :cond_1e

    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, v0

    if-le v0, v3, :cond_0

    :cond_1e
    return v2

    :cond_1f
    const/16 v4, -0x10

    if-ge p1, v4, :cond_45

    add-int/lit8 v4, p2, -0x1

    if-lt v0, v4, :cond_2c

    invoke-static {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->d([BII)I

    move-result p0

    return p0

    :cond_2c
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p0, v0

    if-gt v0, v3, :cond_44

    const/16 v5, -0x60

    if-ne p1, v1, :cond_38

    if-lt v0, v5, :cond_44

    :cond_38
    const/16 v1, -0x13

    if-ne p1, v1, :cond_3e

    if-ge v0, v5, :cond_44

    :cond_3e
    add-int/lit8 p1, v4, 0x1

    aget-byte v0, p0, v4

    if-le v0, v3, :cond_0

    :cond_44
    return v2

    :cond_45
    add-int/lit8 v1, p2, -0x2

    if-lt v0, v1, :cond_4e

    invoke-static {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->d([BII)I

    move-result p0

    return p0

    :cond_4e
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    if-gt v0, v3, :cond_69

    shl-int/lit8 p1, p1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_69

    add-int/lit8 p1, v1, 0x1

    aget-byte v0, p0, v1

    if-gt v0, v3, :cond_69

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-le p1, v3, :cond_6a

    :cond_69
    return v2

    :cond_6a
    move p1, v0

    goto :goto_0
.end method

.method public static isValidUtf8([B)Z
    .registers 3

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result p0

    return p0
.end method

.method public static isValidUtf8([BII)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->partialIsValidUtf8([BII)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static partialIsValidUtf8(I[BII)I
    .registers 10

    if-eqz p0, :cond_82

    if-lt p2, p3, :cond_5

    return p0

    :cond_5
    int-to-byte v0, p0

    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v0, v1, :cond_1c

    const/16 p0, -0x3e

    if-lt v0, p0, :cond_1b

    add-int/lit8 p0, p2, 0x1

    aget-byte p2, p1, p2

    if-le p2, v3, :cond_18

    goto :goto_1b

    :cond_18
    move p2, p0

    goto/16 :goto_82

    :cond_1b
    :goto_1b
    return v2

    :cond_1c
    const/16 v4, -0x10

    if-ge v0, v4, :cond_49

    shr-int/lit8 p0, p0, 0x8

    not-int p0, p0

    int-to-byte p0, p0

    if-nez p0, :cond_34

    add-int/lit8 p0, p2, 0x1

    aget-byte p2, p1, p2

    if-lt p0, p3, :cond_31

    invoke-static {v0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->b(II)I

    move-result p0

    return p0

    :cond_31
    move v5, p2

    move p2, p0

    move p0, v5

    :cond_34
    if-gt p0, v3, :cond_48

    const/16 v4, -0x60

    if-ne v0, v1, :cond_3c

    if-lt p0, v4, :cond_48

    :cond_3c
    const/16 v1, -0x13

    if-ne v0, v1, :cond_42

    if-ge p0, v4, :cond_48

    :cond_42
    add-int/lit8 p0, p2, 0x1

    aget-byte p2, p1, p2

    if-le p2, v3, :cond_18

    :cond_48
    return v2

    :cond_49
    shr-int/lit8 v1, p0, 0x8

    not-int v1, v1

    int-to-byte v1, v1

    const/4 v4, 0x0

    if-nez v1, :cond_5d

    add-int/lit8 p0, p2, 0x1

    aget-byte v1, p1, p2

    if-lt p0, p3, :cond_5b

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->b(II)I

    move-result p0

    return p0

    :cond_5b
    move p2, p0

    goto :goto_60

    :cond_5d
    shr-int/lit8 p0, p0, 0x10

    int-to-byte v4, p0

    :goto_60
    if-nez v4, :cond_6e

    add-int/lit8 p0, p2, 0x1

    aget-byte v4, p1, p2

    if-lt p0, p3, :cond_6d

    invoke-static {v0, v1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->c(III)I

    move-result p0

    return p0

    :cond_6d
    move p2, p0

    :cond_6e
    if-gt v1, v3, :cond_81

    shl-int/lit8 p0, v0, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr p0, v1

    shr-int/lit8 p0, p0, 0x1e

    if-nez p0, :cond_81

    if-gt v4, v3, :cond_81

    add-int/lit8 p0, p2, 0x1

    aget-byte p2, p1, p2

    if-le p2, v3, :cond_18

    :cond_81
    return v2

    :cond_82
    :goto_82
    invoke-static {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->partialIsValidUtf8([BII)I

    move-result p0

    return p0
.end method

.method public static partialIsValidUtf8([BII)I
    .registers 4

    :goto_0
    if-ge p1, p2, :cond_9

    aget-byte v0, p0, p1

    if-ltz v0, :cond_9

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_9
    if-lt p1, p2, :cond_d

    const/4 p0, 0x0

    goto :goto_11

    :cond_d
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->e([BII)I

    move-result p0

    :goto_11
    return p0
.end method

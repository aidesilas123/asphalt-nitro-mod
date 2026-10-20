###### Class okio.internal._Utf8Kt (okio.internal._Utf8Kt)
.class public final Lokio/internal/_Utf8Kt;
.super Ljava/lang/Object;
.source "-Utf8.kt"


# direct methods
.method public static final commonAsUtf8ToByteArray(Ljava/lang/String;)[B
    .registers 15

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "java.util.Arrays.copyOf(this, newSize)"

    if-lez v1, :cond_106

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_17
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x80

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v8

    if-ltz v8, :cond_fd

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v5, v4

    :cond_2a
    :goto_2a
    if-ge v4, v1, :cond_f5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v8

    if-gez v8, :cond_57

    int-to-byte v6, v6

    add-int/lit8 v8, v5, 0x1

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    :goto_3d
    move v5, v8

    if-ge v4, v1, :cond_2a

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gez v6, :cond_2a

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    add-int/lit8 v8, v5, 0x1

    aput-byte v4, v0, v5

    move v4, v6

    goto :goto_3d

    :cond_57
    const/16 v8, 0x800

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v8

    if-gez v8, :cond_74

    shr-int/lit8 v8, v6, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    add-int/lit8 v9, v5, 0x1

    aput-byte v8, v0, v5

    and-int/lit8 v5, v6, 0x3f

    or-int/2addr v5, v7

    int-to-byte v5, v5

    add-int/lit8 v6, v9, 0x1

    aput-byte v5, v0, v9

    :goto_70
    add-int/lit8 v4, v4, 0x1

    :goto_72
    move v5, v6

    goto :goto_2a

    :cond_74
    const v8, 0xd800

    const v9, 0xdfff

    const/4 v10, 0x1

    if-gt v8, v6, :cond_81

    if-gt v6, v9, :cond_81

    const/4 v8, 0x1

    goto :goto_82

    :cond_81
    const/4 v8, 0x0

    :goto_82
    const/16 v11, 0x3f

    if-nez v8, :cond_a1

    shr-int/lit8 v8, v6, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    add-int/lit8 v9, v5, 0x1

    aput-byte v8, v0, v5

    shr-int/lit8 v5, v6, 0x6

    and-int/2addr v5, v11

    or-int/2addr v5, v7

    int-to-byte v5, v5

    add-int/lit8 v8, v9, 0x1

    aput-byte v5, v0, v9

    and-int/lit8 v5, v6, 0x3f

    or-int/2addr v5, v7

    int-to-byte v5, v5

    add-int/lit8 v6, v8, 0x1

    aput-byte v5, v0, v8

    goto :goto_70

    :cond_a1
    const v8, 0xdbff

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v8

    if-gtz v8, :cond_ef

    add-int/lit8 v8, v4, 0x1

    if-le v1, v8, :cond_ef

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const v13, 0xdc00

    if-gt v13, v12, :cond_ba

    if-gt v12, v9, :cond_ba

    goto :goto_bb

    :cond_ba
    const/4 v10, 0x0

    :goto_bb
    if-nez v10, :cond_be

    goto :goto_ef

    :cond_be
    shl-int/lit8 v6, v6, 0xa

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/2addr v6, v8

    const v8, -0x35fdc00

    add-int/2addr v6, v8

    shr-int/lit8 v8, v6, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    add-int/lit8 v9, v5, 0x1

    aput-byte v8, v0, v5

    shr-int/lit8 v5, v6, 0xc

    and-int/2addr v5, v11

    or-int/2addr v5, v7

    int-to-byte v5, v5

    add-int/lit8 v8, v9, 0x1

    aput-byte v5, v0, v9

    shr-int/lit8 v5, v6, 0x6

    and-int/2addr v5, v11

    or-int/2addr v5, v7

    int-to-byte v5, v5

    add-int/lit8 v9, v8, 0x1

    aput-byte v5, v0, v8

    and-int/lit8 v5, v6, 0x3f

    or-int/2addr v5, v7

    int-to-byte v5, v5

    add-int/lit8 v6, v9, 0x1

    aput-byte v5, v0, v9

    add-int/lit8 v4, v4, 0x2

    goto :goto_72

    :cond_ef
    :goto_ef
    add-int/lit8 v6, v5, 0x1

    aput-byte v11, v0, v5

    goto/16 :goto_70

    :cond_f5
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_fd
    int-to-byte v6, v6

    aput-byte v6, v0, v4

    if-lt v5, v1, :cond_103

    goto :goto_106

    :cond_103
    move v4, v5

    goto/16 :goto_17

    :cond_106
    :goto_106
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final commonToUtf8String([BII)Ljava/lang/String;
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v1, :cond_1ca

    array-length v3, v0

    if-gt v2, v3, :cond_1ca

    if-gt v1, v2, :cond_1ca

    sub-int v3, v2, v1

    new-array v3, v3, [C

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_18
    :goto_18
    if-ge v1, v2, :cond_1c5

    aget-byte v6, v0, v1

    if-ltz v6, :cond_37

    int-to-char v6, v6

    add-int/lit8 v7, v5, 0x1

    aput-char v6, v3, v5

    add-int/lit8 v1, v1, 0x1

    :goto_25
    move v5, v7

    if-ge v1, v2, :cond_18

    aget-byte v6, v0, v1

    if-ltz v6, :cond_18

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v0, v1

    int-to-char v1, v1

    add-int/lit8 v7, v5, 0x1

    aput-char v1, v3, v5

    move v1, v6

    goto :goto_25

    :cond_37
    shr-int/lit8 v7, v6, 0x5

    const/4 v8, -0x2

    const/16 v10, 0x80

    const v11, 0xfffd

    if-ne v7, v8, :cond_7a

    add-int/lit8 v6, v1, 0x1

    if-gt v2, v6, :cond_4f

    int-to-char v6, v11

    add-int/lit8 v7, v5, 0x1

    aput-char v6, v3, v5

    :goto_4a
    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    :cond_4c
    :goto_4c
    move v5, v7

    :goto_4d
    const/4 v9, 0x1

    goto :goto_78

    :cond_4f
    aget-byte v7, v0, v1

    aget-byte v6, v0, v6

    and-int/lit16 v8, v6, 0xc0

    if-ne v8, v10, :cond_59

    const/4 v8, 0x1

    goto :goto_5a

    :cond_59
    const/4 v8, 0x0

    :goto_5a
    if-nez v8, :cond_62

    int-to-char v6, v11

    add-int/lit8 v7, v5, 0x1

    aput-char v6, v3, v5

    goto :goto_4a

    :cond_62
    xor-int/lit16 v6, v6, 0xf80

    shl-int/lit8 v7, v7, 0x6

    xor-int/2addr v6, v7

    if-ge v6, v10, :cond_6f

    int-to-char v6, v11

    add-int/lit8 v7, v5, 0x1

    aput-char v6, v3, v5

    goto :goto_74

    :cond_6f
    int-to-char v6, v6

    add-int/lit8 v7, v5, 0x1

    aput-char v6, v3, v5

    :goto_74
    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    :cond_76
    :goto_76
    move v5, v7

    :goto_77
    const/4 v9, 0x2

    :goto_78
    add-int/2addr v1, v9

    goto :goto_18

    :cond_7a
    shr-int/lit8 v7, v6, 0x4

    const v13, 0xdfff

    const v14, 0xd800

    const/4 v15, 0x3

    if-ne v7, v8, :cond_f8

    add-int/lit8 v6, v1, 0x2

    if-gt v2, v6, :cond_a0

    int-to-char v6, v11

    add-int/lit8 v7, v5, 0x1

    aput-char v6, v3, v5

    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    add-int/lit8 v5, v1, 0x1

    if-le v2, v5, :cond_4c

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xc0

    if-ne v5, v10, :cond_9c

    const/4 v5, 0x1

    goto :goto_9d

    :cond_9c
    const/4 v5, 0x0

    :goto_9d
    if-nez v5, :cond_76

    goto :goto_4c

    :cond_a0
    aget-byte v7, v0, v1

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, v0, v8

    and-int/lit16 v9, v8, 0xc0

    if-ne v9, v10, :cond_ac

    const/4 v9, 0x1

    goto :goto_ad

    :cond_ac
    const/4 v9, 0x0

    :goto_ad
    if-nez v9, :cond_b7

    int-to-char v6, v11

    add-int/lit8 v7, v5, 0x1

    aput-char v6, v3, v5

    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_4c

    :cond_b7
    aget-byte v6, v0, v6

    and-int/lit16 v9, v6, 0xc0

    if-ne v9, v10, :cond_bf

    const/4 v9, 0x1

    goto :goto_c0

    :cond_bf
    const/4 v9, 0x0

    :goto_c0
    if-nez v9, :cond_ca

    int-to-char v6, v11

    add-int/lit8 v7, v5, 0x1

    aput-char v6, v3, v5

    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_76

    :cond_ca
    const v9, -0x1e080

    xor-int/2addr v6, v9

    shl-int/lit8 v8, v8, 0x6

    xor-int/2addr v6, v8

    shl-int/lit8 v7, v7, 0xc

    xor-int/2addr v6, v7

    const/16 v7, 0x800

    if-ge v6, v7, :cond_e0

    int-to-char v6, v11

    add-int/lit8 v7, v5, 0x1

    aput-char v6, v3, v5

    :goto_dd
    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_f5

    :cond_e0
    if-gt v14, v6, :cond_e6

    if-gt v6, v13, :cond_e6

    const/4 v12, 0x1

    goto :goto_e7

    :cond_e6
    const/4 v12, 0x0

    :goto_e7
    if-eqz v12, :cond_ef

    int-to-char v6, v11

    add-int/lit8 v7, v5, 0x1

    aput-char v6, v3, v5

    goto :goto_dd

    :cond_ef
    int-to-char v6, v6

    add-int/lit8 v7, v5, 0x1

    aput-char v6, v3, v5

    goto :goto_dd

    :goto_f5
    move v5, v7

    :goto_f6
    const/4 v9, 0x3

    goto :goto_78

    :cond_f8
    shr-int/lit8 v6, v6, 0x3

    if-ne v6, v8, :cond_1bc

    add-int/lit8 v6, v1, 0x3

    if-gt v2, v6, :cond_12e

    add-int/lit8 v6, v5, 0x1

    aput-char v11, v3, v5

    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    add-int/lit8 v5, v1, 0x1

    if-le v2, v5, :cond_12b

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xc0

    if-ne v5, v10, :cond_112

    const/4 v5, 0x1

    goto :goto_113

    :cond_112
    const/4 v5, 0x0

    :goto_113
    if-nez v5, :cond_116

    goto :goto_12b

    :cond_116
    add-int/lit8 v5, v1, 0x2

    if-le v2, v5, :cond_128

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xc0

    if-ne v5, v10, :cond_122

    const/4 v12, 0x1

    goto :goto_123

    :cond_122
    const/4 v12, 0x0

    :goto_123
    if-nez v12, :cond_126

    goto :goto_128

    :cond_126
    :goto_126
    move v5, v6

    goto :goto_f6

    :cond_128
    :goto_128
    move v5, v6

    goto/16 :goto_77

    :cond_12b
    :goto_12b
    move v5, v6

    goto/16 :goto_4d

    :cond_12e
    aget-byte v7, v0, v1

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, v0, v8

    and-int/lit16 v9, v8, 0xc0

    if-ne v9, v10, :cond_13a

    const/4 v9, 0x1

    goto :goto_13b

    :cond_13a
    const/4 v9, 0x0

    :goto_13b
    if-nez v9, :cond_144

    add-int/lit8 v6, v5, 0x1

    aput-char v11, v3, v5

    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_12b

    :cond_144
    add-int/lit8 v9, v1, 0x2

    aget-byte v9, v0, v9

    and-int/lit16 v12, v9, 0xc0

    if-ne v12, v10, :cond_14e

    const/4 v12, 0x1

    goto :goto_14f

    :cond_14e
    const/4 v12, 0x0

    :goto_14f
    if-nez v12, :cond_158

    add-int/lit8 v6, v5, 0x1

    aput-char v11, v3, v5

    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_128

    :cond_158
    aget-byte v6, v0, v6

    and-int/lit16 v12, v6, 0xc0

    if-ne v12, v10, :cond_160

    const/4 v10, 0x1

    goto :goto_161

    :cond_160
    const/4 v10, 0x0

    :goto_161
    if-nez v10, :cond_16a

    add-int/lit8 v6, v5, 0x1

    aput-char v11, v3, v5

    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_126

    :cond_16a
    const v10, 0x381f80

    xor-int/2addr v6, v10

    shl-int/lit8 v9, v9, 0x6

    xor-int/2addr v6, v9

    shl-int/lit8 v8, v8, 0xc

    xor-int/2addr v6, v8

    shl-int/lit8 v7, v7, 0x12

    xor-int/2addr v6, v7

    const v7, 0x10ffff

    if-le v6, v7, :cond_183

    add-int/lit8 v6, v5, 0x1

    aput-char v11, v3, v5

    :goto_180
    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_1b8

    :cond_183
    if-gt v14, v6, :cond_189

    if-gt v6, v13, :cond_189

    const/4 v12, 0x1

    goto :goto_18a

    :cond_189
    const/4 v12, 0x0

    :goto_18a
    if-eqz v12, :cond_191

    add-int/lit8 v6, v5, 0x1

    aput-char v11, v3, v5

    goto :goto_180

    :cond_191
    const/high16 v7, 0x10000

    if-ge v6, v7, :cond_19a

    add-int/lit8 v6, v5, 0x1

    aput-char v11, v3, v5

    goto :goto_180

    :cond_19a
    if-eq v6, v11, :cond_1b3

    ushr-int/lit8 v7, v6, 0xa

    const v8, 0xd7c0

    add-int/2addr v7, v8

    int-to-char v7, v7

    add-int/lit8 v8, v5, 0x1

    aput-char v7, v3, v5

    and-int/lit16 v5, v6, 0x3ff

    const v6, 0xdc00

    add-int/2addr v5, v6

    int-to-char v5, v5

    add-int/lit8 v6, v8, 0x1

    aput-char v5, v3, v8

    goto :goto_180

    :cond_1b3
    add-int/lit8 v6, v5, 0x1

    aput-char v11, v3, v5

    goto :goto_180

    :goto_1b8
    const/4 v9, 0x4

    move v5, v6

    goto/16 :goto_78

    :cond_1bc
    add-int/lit8 v6, v5, 0x1

    aput-char v11, v3, v5

    add-int/lit8 v1, v1, 0x1

    move v5, v6

    goto/16 :goto_18

    :cond_1c5
    invoke-static {v3, v4, v5}, Lkotlin/text/g;->concatToString([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1ca
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " beginIndex="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " endIndex="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static synthetic commonToUtf8String$default([BIIILjava/lang/Object;)Ljava/lang/String;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_a

    array-length p2, p0

    :cond_a
    invoke-static {p0, p1, p2}, Lokio/internal/_Utf8Kt;->commonToUtf8String([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

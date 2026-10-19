###### Class okio.internal._ByteStringKt (okio.internal._ByteStringKt)
.class public final Lokio/internal/_ByteStringKt;
.super Ljava/lang/Object;
.source "-ByteString.kt"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lokio/internal/_ByteStringKt;->a:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private static final a([BI)I
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    array-length v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_8
    :goto_8
    if-ge v4, v2, :cond_218

    aget-byte v7, v0, v4

    const/16 v8, 0x9f

    const/16 v9, 0x7f

    const/16 v10, 0x1f

    const/16 v11, 0xd

    const v12, 0xfffd

    const/16 v13, 0xa

    const/high16 v14, 0x10000

    const/16 v16, -0x1

    const/16 v17, 0x1

    if-ltz v7, :cond_85

    add-int/lit8 v18, v6, 0x1

    if-ne v6, v1, :cond_26

    return v5

    :cond_26
    if-eq v7, v13, :cond_42

    if-eq v7, v11, :cond_42

    if-ltz v7, :cond_30

    if-gt v7, v10, :cond_30

    const/4 v6, 0x1

    goto :goto_31

    :cond_30
    const/4 v6, 0x0

    :goto_31
    if-nez v6, :cond_3f

    if-gt v9, v7, :cond_39

    if-gt v7, v8, :cond_39

    const/4 v6, 0x1

    goto :goto_3a

    :cond_39
    const/4 v6, 0x0

    :goto_3a
    if-eqz v6, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 v6, 0x0

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 v6, 0x1

    :goto_40
    if-nez v6, :cond_44

    :cond_42
    if-ne v7, v12, :cond_45

    :cond_44
    return v16

    :cond_45
    if-ge v7, v14, :cond_49

    const/4 v6, 0x1

    goto :goto_4a

    :cond_49
    const/4 v6, 0x2

    :goto_4a
    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    :goto_4d
    move/from16 v6, v18

    if-ge v4, v2, :cond_8

    aget-byte v7, v0, v4

    if-ltz v7, :cond_8

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, v0, v4

    add-int/lit8 v18, v6, 0x1

    if-ne v6, v1, :cond_5e

    return v5

    :cond_5e
    if-eq v4, v13, :cond_7a

    if-eq v4, v11, :cond_7a

    if-ltz v4, :cond_68

    if-gt v4, v10, :cond_68

    const/4 v6, 0x1

    goto :goto_69

    :cond_68
    const/4 v6, 0x0

    :goto_69
    if-nez v6, :cond_77

    if-gt v9, v4, :cond_71

    if-gt v4, v8, :cond_71

    const/4 v6, 0x1

    goto :goto_72

    :cond_71
    const/4 v6, 0x0

    :goto_72
    if-eqz v6, :cond_75

    goto :goto_77

    :cond_75
    const/4 v6, 0x0

    goto :goto_78

    :cond_77
    :goto_77
    const/4 v6, 0x1

    :goto_78
    if-nez v6, :cond_7c

    :cond_7a
    if-ne v4, v12, :cond_7d

    :cond_7c
    return v16

    :cond_7d
    if-ge v4, v14, :cond_81

    const/4 v4, 0x1

    goto :goto_82

    :cond_81
    const/4 v4, 0x2

    :goto_82
    add-int/2addr v5, v4

    move v4, v7

    goto :goto_4d

    :cond_85
    shr-int/lit8 v3, v7, 0x5

    const/4 v15, -0x2

    const/16 v14, 0x80

    if-ne v3, v15, :cond_e3

    add-int/lit8 v3, v4, 0x1

    if-gt v2, v3, :cond_94

    if-ne v6, v1, :cond_93

    return v5

    :cond_93
    return v16

    :cond_94
    aget-byte v7, v0, v4

    aget-byte v3, v0, v3

    and-int/lit16 v15, v3, 0xc0

    if-ne v15, v14, :cond_9e

    const/4 v15, 0x1

    goto :goto_9f

    :cond_9e
    const/4 v15, 0x0

    :goto_9f
    if-nez v15, :cond_a5

    if-ne v6, v1, :cond_a4

    return v5

    :cond_a4
    return v16

    :cond_a5
    xor-int/lit16 v3, v3, 0xf80

    shl-int/lit8 v7, v7, 0x6

    xor-int/2addr v3, v7

    if-ge v3, v14, :cond_b0

    if-ne v6, v1, :cond_af

    return v5

    :cond_af
    return v16

    :cond_b0
    add-int/lit8 v7, v6, 0x1

    if-ne v6, v1, :cond_b5

    return v5

    :cond_b5
    if-eq v3, v13, :cond_d1

    if-eq v3, v11, :cond_d1

    if-ltz v3, :cond_bf

    if-gt v3, v10, :cond_bf

    const/4 v6, 0x1

    goto :goto_c0

    :cond_bf
    const/4 v6, 0x0

    :goto_c0
    if-nez v6, :cond_ce

    if-gt v9, v3, :cond_c8

    if-gt v3, v8, :cond_c8

    const/4 v6, 0x1

    goto :goto_c9

    :cond_c8
    const/4 v6, 0x0

    :goto_c9
    if-eqz v6, :cond_cc

    goto :goto_ce

    :cond_cc
    const/4 v6, 0x0

    goto :goto_cf

    :cond_ce
    :goto_ce
    const/4 v6, 0x1

    :goto_cf
    if-nez v6, :cond_d3

    :cond_d1
    if-ne v3, v12, :cond_d4

    :cond_d3
    return v16

    :cond_d4
    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_da

    const/4 v15, 0x1

    goto :goto_db

    :cond_da
    const/4 v15, 0x2

    :goto_db
    add-int/2addr v5, v15

    sget-object v3, Lkotlin/v;->a:Lkotlin/v;

    add-int/lit8 v4, v4, 0x2

    :goto_e0
    move v6, v7

    goto/16 :goto_8

    :cond_e3
    shr-int/lit8 v3, v7, 0x4

    const v12, 0xdfff

    const v8, 0xd800

    if-ne v3, v15, :cond_16f

    add-int/lit8 v3, v4, 0x2

    if-gt v2, v3, :cond_f5

    if-ne v6, v1, :cond_f4

    return v5

    :cond_f4
    return v16

    :cond_f5
    aget-byte v7, v0, v4

    add-int/lit8 v15, v4, 0x1

    aget-byte v15, v0, v15

    and-int/lit16 v9, v15, 0xc0

    if-ne v9, v14, :cond_101

    const/4 v9, 0x1

    goto :goto_102

    :cond_101
    const/4 v9, 0x0

    :goto_102
    if-nez v9, :cond_108

    if-ne v6, v1, :cond_107

    return v5

    :cond_107
    return v16

    :cond_108
    aget-byte v3, v0, v3

    and-int/lit16 v9, v3, 0xc0

    if-ne v9, v14, :cond_110

    const/4 v9, 0x1

    goto :goto_111

    :cond_110
    const/4 v9, 0x0

    :goto_111
    if-nez v9, :cond_117

    if-ne v6, v1, :cond_116

    return v5

    :cond_116
    return v16

    :cond_117
    const v9, -0x1e080

    xor-int/2addr v3, v9

    shl-int/lit8 v9, v15, 0x6

    xor-int/2addr v3, v9

    shl-int/lit8 v7, v7, 0xc

    xor-int/2addr v3, v7

    const/16 v7, 0x800

    if-ge v3, v7, :cond_129

    if-ne v6, v1, :cond_128

    return v5

    :cond_128
    return v16

    :cond_129
    if-gt v8, v3, :cond_12f

    if-gt v3, v12, :cond_12f

    const/4 v7, 0x1

    goto :goto_130

    :cond_12f
    const/4 v7, 0x0

    :goto_130
    if-eqz v7, :cond_136

    if-ne v6, v1, :cond_135

    return v5

    :cond_135
    return v16

    :cond_136
    add-int/lit8 v7, v6, 0x1

    if-ne v6, v1, :cond_13b

    return v5

    :cond_13b
    if-eq v3, v13, :cond_15b

    if-eq v3, v11, :cond_15b

    if-ltz v3, :cond_145

    if-gt v3, v10, :cond_145

    const/4 v6, 0x1

    goto :goto_146

    :cond_145
    const/4 v6, 0x0

    :goto_146
    if-nez v6, :cond_158

    const/16 v6, 0x7f

    if-gt v6, v3, :cond_152

    const/16 v6, 0x9f

    if-gt v3, v6, :cond_152

    const/4 v6, 0x1

    goto :goto_153

    :cond_152
    const/4 v6, 0x0

    :goto_153
    if-eqz v6, :cond_156

    goto :goto_158

    :cond_156
    const/4 v6, 0x0

    goto :goto_159

    :cond_158
    :goto_158
    const/4 v6, 0x1

    :goto_159
    if-nez v6, :cond_160

    :cond_15b
    const v6, 0xfffd

    if-ne v3, v6, :cond_161

    :cond_160
    return v16

    :cond_161
    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_167

    const/4 v15, 0x1

    goto :goto_168

    :cond_167
    const/4 v15, 0x2

    :goto_168
    add-int/2addr v5, v15

    sget-object v3, Lkotlin/v;->a:Lkotlin/v;

    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_e0

    :cond_16f
    shr-int/lit8 v3, v7, 0x3

    if-ne v3, v15, :cond_214

    add-int/lit8 v3, v4, 0x3

    if-gt v2, v3, :cond_17b

    if-ne v6, v1, :cond_17a

    return v5

    :cond_17a
    return v16

    :cond_17b
    aget-byte v7, v0, v4

    add-int/lit8 v9, v4, 0x1

    aget-byte v9, v0, v9

    and-int/lit16 v15, v9, 0xc0

    if-ne v15, v14, :cond_187

    const/4 v15, 0x1

    goto :goto_188

    :cond_187
    const/4 v15, 0x0

    :goto_188
    if-nez v15, :cond_18e

    if-ne v6, v1, :cond_18d

    return v5

    :cond_18d
    return v16

    :cond_18e
    add-int/lit8 v15, v4, 0x2

    aget-byte v15, v0, v15

    and-int/lit16 v10, v15, 0xc0

    if-ne v10, v14, :cond_198

    const/4 v10, 0x1

    goto :goto_199

    :cond_198
    const/4 v10, 0x0

    :goto_199
    if-nez v10, :cond_19f

    if-ne v6, v1, :cond_19e

    return v5

    :cond_19e
    return v16

    :cond_19f
    aget-byte v3, v0, v3

    and-int/lit16 v10, v3, 0xc0

    if-ne v10, v14, :cond_1a7

    const/4 v10, 0x1

    goto :goto_1a8

    :cond_1a7
    const/4 v10, 0x0

    :goto_1a8
    if-nez v10, :cond_1ae

    if-ne v6, v1, :cond_1ad

    return v5

    :cond_1ad
    return v16

    :cond_1ae
    const v10, 0x381f80

    xor-int/2addr v3, v10

    shl-int/lit8 v10, v15, 0x6

    xor-int/2addr v3, v10

    shl-int/lit8 v9, v9, 0xc

    xor-int/2addr v3, v9

    shl-int/lit8 v7, v7, 0x12

    xor-int/2addr v3, v7

    const v7, 0x10ffff

    if-le v3, v7, :cond_1c4

    if-ne v6, v1, :cond_1c3

    return v5

    :cond_1c3
    return v16

    :cond_1c4
    if-gt v8, v3, :cond_1ca

    if-gt v3, v12, :cond_1ca

    const/4 v7, 0x1

    goto :goto_1cb

    :cond_1ca
    const/4 v7, 0x0

    :goto_1cb
    if-eqz v7, :cond_1d1

    if-ne v6, v1, :cond_1d0

    return v5

    :cond_1d0
    return v16

    :cond_1d1
    const/high16 v7, 0x10000

    if-ge v3, v7, :cond_1d9

    if-ne v6, v1, :cond_1d8

    return v5

    :cond_1d8
    return v16

    :cond_1d9
    add-int/lit8 v7, v6, 0x1

    if-ne v6, v1, :cond_1de

    return v5

    :cond_1de
    if-eq v3, v13, :cond_200

    if-eq v3, v11, :cond_200

    if-ltz v3, :cond_1ea

    const/16 v6, 0x1f

    if-gt v3, v6, :cond_1ea

    const/4 v6, 0x1

    goto :goto_1eb

    :cond_1ea
    const/4 v6, 0x0

    :goto_1eb
    if-nez v6, :cond_1fd

    const/16 v6, 0x7f

    if-gt v6, v3, :cond_1f7

    const/16 v6, 0x9f

    if-gt v3, v6, :cond_1f7

    const/4 v6, 0x1

    goto :goto_1f8

    :cond_1f7
    const/4 v6, 0x0

    :goto_1f8
    if-eqz v6, :cond_1fb

    goto :goto_1fd

    :cond_1fb
    const/4 v6, 0x0

    goto :goto_1fe

    :cond_1fd
    :goto_1fd
    const/4 v6, 0x1

    :goto_1fe
    if-nez v6, :cond_205

    :cond_200
    const v6, 0xfffd

    if-ne v3, v6, :cond_206

    :cond_205
    return v16

    :cond_206
    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_20c

    const/4 v15, 0x1

    goto :goto_20d

    :cond_20c
    const/4 v15, 0x2

    :goto_20d
    add-int/2addr v5, v15

    sget-object v3, Lkotlin/v;->a:Lkotlin/v;

    add-int/lit8 v4, v4, 0x4

    goto/16 :goto_e0

    :cond_214
    if-ne v6, v1, :cond_217

    return v5

    :cond_217
    return v16

    :cond_218
    return v5
.end method

.method public static final synthetic access$codePointIndexToCharIndex([BI)I
    .registers 2

    invoke-static {p0, p1}, Lokio/internal/_ByteStringKt;->a([BI)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$decodeHexDigit(C)I
    .registers 1

    invoke-static {p0}, Lokio/internal/_ByteStringKt;->b(C)I

    move-result p0

    return p0
.end method

.method private static final b(C)I
    .registers 5

    const/16 v0, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, p0, :cond_c

    const/16 v3, 0x39

    if-gt p0, v3, :cond_c

    const/4 v3, 0x1

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    :goto_d
    if-eqz v3, :cond_11

    sub-int/2addr p0, v0

    goto :goto_2f

    :cond_11
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1b

    const/16 v3, 0x66

    if-gt p0, v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    if-eqz v3, :cond_22

    :goto_1e
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    goto :goto_2f

    :cond_22
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2b

    const/16 v3, 0x46

    if-gt p0, v3, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    if-eqz v1, :cond_30

    goto :goto_1e

    :goto_2f
    return p0

    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    const-string v1, "Unexpected hex digit: "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final commonBase64(Lokio/ByteString;)Ljava/lang/String;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lokio/_Base64Kt;->encodeBase64$default([B[BILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final commonBase64Url(Lokio/ByteString;)Ljava/lang/String;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object p0

    invoke-static {}, Lokio/_Base64Kt;->getBASE64_URL_SAFE()[B

    move-result-object v0

    invoke-static {p0, v0}, Lokio/_Base64Kt;->encodeBase64([B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final commonCompareTo(Lokio/ByteString;Lokio/ByteString;)I
    .registers 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->F()I

    move-result v0

    invoke-virtual {p1}, Lokio/ByteString;->F()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_18
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v4, v2, :cond_32

    invoke-virtual {p0, v4}, Lokio/ByteString;->j(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {p1, v4}, Lokio/ByteString;->j(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-ne v7, v8, :cond_2d

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_2d
    if-ge v7, v8, :cond_30

    goto :goto_31

    :cond_30
    const/4 v5, 0x1

    :goto_31
    return v5

    :cond_32
    if-ne v0, v1, :cond_35

    return v3

    :cond_35
    if-ge v0, v1, :cond_38

    goto :goto_39

    :cond_38
    const/4 v5, 0x1

    :goto_39
    return v5
.end method

.method public static final commonCopyInto(Lokio/ByteString;I[BII)V
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object p0

    add-int/2addr p4, p1

    invoke-static {p0, p2, p3, p1, p4}, Lkotlin/collections/k;->copyInto([B[BIII)[B

    return-void
.end method

.method public static final commonDecodeBase64(Ljava/lang/String;)Lokio/ByteString;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lokio/_Base64Kt;->decodeBase64ToArray(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_11

    new-instance v0, Lokio/ByteString;

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method

.method public static final commonDecodeHex(Ljava/lang/String;)Lokio/ByteString;
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_46

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_40

    :goto_20
    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v5, v1, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lokio/internal/_ByteStringKt;->access$decodeHexDigit(C)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lokio/internal/_ByteStringKt;->access$decodeHexDigit(C)I

    move-result v5

    add-int/2addr v6, v5

    int-to-byte v5, v6

    aput-byte v5, v3, v1

    if-le v4, v0, :cond_3e

    goto :goto_40

    :cond_3e
    move v1, v4

    goto :goto_20

    :cond_40
    :goto_40
    new-instance p0, Lokio/ByteString;

    invoke-direct {p0, v3}, Lokio/ByteString;-><init>([B)V

    return-object p0

    :cond_46
    const-string v0, "Unexpected hex string: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final commonEncodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/ByteString;

    invoke-static {p0}, Lokio/_JvmPlatformKt;->asUtf8ToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    invoke-virtual {v0, p0}, Lokio/ByteString;->C(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final commonEndsWith(Lokio/ByteString;Lokio/ByteString;)Z
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->F()I

    move-result v0

    invoke-virtual {p1}, Lokio/ByteString;->F()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lokio/ByteString;->F()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lokio/ByteString;->z(ILokio/ByteString;II)Z

    move-result p0

    return p0
.end method

.method public static final commonEndsWith(Lokio/ByteString;[B)Z
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->F()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v0, v1

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lokio/ByteString;->A(I[BII)Z

    move-result p0

    return p0
.end method

.method public static final commonEquals(Lokio/ByteString;Ljava/lang/Object;)Z
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_a

    goto :goto_2c

    :cond_a
    instance-of v2, p1, Lokio/ByteString;

    if-eqz v2, :cond_2b

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->F()I

    move-result v2

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object v3

    array-length v3, v3

    if-ne v2, v3, :cond_2b

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object v2

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object p0

    array-length p0, p0

    invoke-virtual {p1, v1, v2, v1, p0}, Lokio/ByteString;->A(I[BII)Z

    move-result p0

    if-eqz p0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    return v0
.end method

.method public static final commonGetByte(Lokio/ByteString;I)B
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object p0

    aget-byte p0, p0, p1

    return p0
.end method

.method public static final commonGetSize(Lokio/ByteString;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public static final commonHashCode(Lokio/ByteString;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->m()I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-virtual {p0, v0}, Lokio/ByteString;->B(I)V

    return v0
.end method

.method public static final commonHex(Lokio/ByteString;)Ljava/lang/String;
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_15
    if-ge v2, v1, :cond_36

    aget-byte v4, p0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v3, 0x1

    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v6

    shr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v3

    add-int/lit8 v3, v5, 0x1

    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v6

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v0, v5

    goto :goto_15

    :cond_36
    invoke-static {v0}, Lkotlin/text/g;->concatToString([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final commonIndexOf(Lokio/ByteString;[BI)I
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object v0

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-gt p2, v0, :cond_2b

    :goto_18
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object v3

    array-length v4, p1

    invoke-static {v3, p2, p1, v1, v4}, Lokio/_UtilKt;->arrayRangeEquals([BI[BII)Z

    move-result v3

    if-eqz v3, :cond_26

    return p2

    :cond_26
    if-ne p2, v0, :cond_29

    goto :goto_2b

    :cond_29
    move p2, v2

    goto :goto_18

    :cond_2b
    :goto_2b
    const/4 p0, -0x1

    return p0
.end method

.method public static final commonInternalArray(Lokio/ByteString;)[B
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object p0

    return-object p0
.end method

.method public static final commonLastIndexOf(Lokio/ByteString;Lokio/ByteString;I)I
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/ByteString;->u()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->x([BI)I

    move-result p0

    return p0
.end method

.method public static final commonLastIndexOf(Lokio/ByteString;[BI)I
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lokio/_UtilKt;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result p2

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object v0

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-ltz p2, :cond_2f

    :goto_1b
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v1, p2, p1, v2, v3}, Lokio/_UtilKt;->arrayRangeEquals([BI[BII)Z

    move-result v1

    if-eqz v1, :cond_2a

    return p2

    :cond_2a
    if-gez v0, :cond_2d

    goto :goto_2f

    :cond_2d
    move p2, v0

    goto :goto_1b

    :cond_2f
    :goto_2f
    const/4 p0, -0x1

    return p0
.end method

.method public static final commonOf([B)Lokio/ByteString;
    .registers 3

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/ByteString;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v1, "java.util.Arrays.copyOf(this, size)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public static final commonRangeEquals(Lokio/ByteString;ILokio/ByteString;II)Z
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object p0

    invoke-virtual {p2, p3, p0, p1, p4}, Lokio/ByteString;->A(I[BII)Z

    move-result p0

    return p0
.end method

.method public static final commonRangeEquals(Lokio/ByteString;I[BII)Z
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_26

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_26

    if-ltz p3, :cond_26

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_26

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lokio/_UtilKt;->arrayRangeEquals([BI[BII)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method

.method public static final commonStartsWith(Lokio/ByteString;Lokio/ByteString;)Z
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/ByteString;->F()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lokio/ByteString;->z(ILokio/ByteString;II)Z

    move-result p0

    return p0
.end method

.method public static final commonStartsWith(Lokio/ByteString;[B)Z
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lokio/ByteString;->A(I[BII)Z

    move-result p0

    return p0
.end method

.method public static final commonSubstring(Lokio/ByteString;II)Lokio/ByteString;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lokio/_UtilKt;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    if-eqz v2, :cond_6f

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object v2

    array-length v2, v2

    if-gt p2, v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    if-eqz v2, :cond_4a

    sub-int v2, p2, p1

    if-ltz v2, :cond_23

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_3e

    if-nez p1, :cond_30

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object v0

    array-length v0, v0

    if-ne p2, v0, :cond_30

    return-object p0

    :cond_30
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object p0

    invoke-static {p0, p1, p2}, Lkotlin/collections/k;->copyOfRange([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0

    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "endIndex < beginIndex"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "endIndex > length("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object p0

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "beginIndex < 0"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonToAsciiLowercase(Lokio/ByteString;)Lokio/ByteString;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_4e

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object v1

    aget-byte v1, v1, v0

    const/16 v2, 0x41

    int-to-byte v2, v2

    if-lt v1, v2, :cond_4b

    const/16 v3, 0x5a

    int-to-byte v3, v3

    if-le v1, v3, :cond_1e

    goto :goto_4b

    :cond_1e
    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object p0

    array-length v4, p0

    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v4, "java.util.Arrays.copyOf(this, size)"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v1, v1, 0x20

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    :goto_33
    array-length v0, p0

    if-ge v4, v0, :cond_45

    aget-byte v0, p0, v4

    if-lt v0, v2, :cond_42

    if-le v0, v3, :cond_3d

    goto :goto_42

    :cond_3d
    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, p0, v4

    :cond_42
    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_45
    new-instance v0, Lokio/ByteString;

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0

    :cond_4b
    :goto_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_4e
    return-object p0
.end method

.method public static final commonToAsciiUppercase(Lokio/ByteString;)Lokio/ByteString;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_4e

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object v1

    aget-byte v1, v1, v0

    const/16 v2, 0x61

    int-to-byte v2, v2

    if-lt v1, v2, :cond_4b

    const/16 v3, 0x7a

    int-to-byte v3, v3

    if-le v1, v3, :cond_1e

    goto :goto_4b

    :cond_1e
    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object p0

    array-length v4, p0

    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v4, "java.util.Arrays.copyOf(this, size)"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v1, v1, -0x20

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    :goto_33
    array-length v0, p0

    if-ge v4, v0, :cond_45

    aget-byte v0, p0, v4

    if-lt v0, v2, :cond_42

    if-le v0, v3, :cond_3d

    goto :goto_42

    :cond_3d
    add-int/lit8 v0, v0, -0x20

    int-to-byte v0, v0

    aput-byte v0, p0, v4

    :cond_42
    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_45
    new-instance v0, Lokio/ByteString;

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0

    :cond_4b
    :goto_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_4e
    return-object p0
.end method

.method public static final commonToByteArray(Lokio/ByteString;)[B
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object p0

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v0, "java.util.Arrays.copyOf(this, size)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final commonToByteString([BII)Lokio/ByteString;
    .registers 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    int-to-long v1, v0

    int-to-long v3, p1

    int-to-long v5, p2

    invoke-static/range {v1 .. v6}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    new-instance v0, Lokio/ByteString;

    add-int/2addr p2, p1

    invoke-static {p0, p1, p2}, Lkotlin/collections/k;->copyOfRange([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public static final commonToString(Lokio/ByteString;)Ljava/lang/String;
    .registers 22

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->k()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-eqz v1, :cond_18

    const-string v0, "[size=0]"

    return-object v0

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->k()[B

    move-result-object v1

    const/16 v4, 0x40

    invoke-static {v1, v4}, Lokio/internal/_ByteStringKt;->access$codePointIndexToCharIndex([BI)I

    move-result v1

    const/4 v5, -0x1

    const-string v6, "\u2026]"

    const/16 v7, 0x5d

    const-string v8, "[size="

    if-ne v1, v5, :cond_ce

    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->k()[B

    move-result-object v1

    array-length v1, v1

    if-gt v1, v4, :cond_4b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[hex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9c

    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->k()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " hex="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v4}, Lokio/_UtilKt;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->k()[B

    move-result-object v5

    array-length v5, v5

    if-gt v4, v5, :cond_6d

    const/4 v5, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v5, 0x0

    :goto_6e
    if-eqz v5, :cond_a9

    add-int/lit8 v5, v4, 0x0

    if-ltz v5, :cond_75

    goto :goto_76

    :cond_75
    const/4 v2, 0x0

    :goto_76
    if-eqz v2, :cond_9d

    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->k()[B

    move-result-object v2

    array-length v2, v2

    if-ne v4, v2, :cond_80

    goto :goto_8e

    :cond_80
    new-instance v2, Lokio/ByteString;

    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->k()[B

    move-result-object v0

    invoke-static {v0, v3, v4}, Lkotlin/collections/k;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {v2, v0}, Lokio/ByteString;-><init>([B)V

    move-object v0, v2

    :goto_8e
    invoke-virtual {v0}, Lokio/ByteString;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9c
    return-object v0

    :cond_9d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endIndex < beginIndex"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->k()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_ce
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->K()Ljava/lang/String;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v10, "\\"

    const-string v11, "\\\\"

    invoke-static/range {v9 .. v14}, Lkotlin/text/g;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    const-string v16, "\n"

    const-string v17, "\\n"

    invoke-static/range {v15 .. v20}, Lkotlin/text/g;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\r"

    const-string v11, "\\r"

    invoke-static/range {v9 .. v14}, Lkotlin/text/g;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_127

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->k()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " text="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13b

    :cond_127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_13b
    return-object v0
.end method

.method public static final commonUtf8(Lokio/ByteString;)Ljava/lang/String;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->p()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lokio/ByteString;->u()[B

    move-result-object v0

    invoke-static {v0}, Lokio/_JvmPlatformKt;->toUtf8String([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokio/ByteString;->C(Ljava/lang/String;)V

    :cond_16
    return-object v0
.end method

.method public static final commonWrite(Lokio/ByteString;Lokio/Buffer;II)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->k()[B

    move-result-object p0

    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->S([BII)Lokio/Buffer;

    return-void
.end method

.method public static final getHEX_DIGIT_CHARS()[C
    .registers 1

    sget-object v0, Lokio/internal/_ByteStringKt;->a:[C

    return-object v0
.end method

.method public static synthetic getHEX_DIGIT_CHARS$annotations()V
    .registers 0

    return-void
.end method

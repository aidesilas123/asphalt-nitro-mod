###### Class com.google.zxing.common.StringUtils (com.google.zxing.common.StringUtils)
.class public final Lcom/google/zxing/common/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final a:Ljava/nio/charset/Charset;

.field public static final b:Ljava/nio/charset/Charset;

.field public static final c:Ljava/nio/charset/Charset;

.field private static final d:Ljava/nio/charset/Charset;

.field private static final e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/common/StringUtils;->a:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    :try_start_7
    const-string v1, "SJIS"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1
    :try_end_d
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_7 .. :try_end_d} :catch_e

    goto :goto_f

    :catch_e
    move-object v1, v0

    :goto_f
    sput-object v1, Lcom/google/zxing/common/StringUtils;->b:Ljava/nio/charset/Charset;

    :try_start_11
    const-string v1, "GB2312"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1
    :try_end_17
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_11 .. :try_end_17} :catch_18

    goto :goto_19

    :catch_18
    move-object v1, v0

    :goto_19
    sput-object v1, Lcom/google/zxing/common/StringUtils;->c:Ljava/nio/charset/Charset;

    :try_start_1b
    const-string v1, "EUC_JP"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_21
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1b .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    nop

    :goto_23
    sput-object v0, Lcom/google/zxing/common/StringUtils;->d:Ljava/nio/charset/Charset;

    sget-object v1, Lcom/google/zxing/common/StringUtils;->b:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_31

    sget-object v2, Lcom/google/zxing/common/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    :cond_31
    if-eqz v0, :cond_3d

    sget-object v1, Lcom/google/zxing/common/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_3b
    const/4 v0, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    sput-boolean v0, Lcom/google/zxing/common/StringUtils;->e:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessCharset([BLjava/util/Map;)Ljava/nio/charset/Charset;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Ljava/nio/charset/Charset;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_1b

    sget-object v2, Lcom/google/zxing/DecodeHintType;->e:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0

    :cond_1b
    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_36

    aget-byte v1, v0, v4

    const/4 v5, -0x2

    const/4 v6, -0x1

    if-ne v1, v5, :cond_2b

    aget-byte v1, v0, v3

    if-eq v1, v6, :cond_33

    :cond_2b
    aget-byte v1, v0, v4

    if-ne v1, v6, :cond_36

    aget-byte v1, v0, v3

    if-ne v1, v5, :cond_36

    :cond_33
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    return-object v0

    :cond_36
    array-length v1, v0

    sget-object v5, Lcom/google/zxing/common/StringUtils;->b:Ljava/nio/charset/Charset;

    if-eqz v5, :cond_3d

    const/4 v5, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v5, 0x0

    :goto_3e
    array-length v6, v0

    const/4 v7, 0x3

    if-le v6, v7, :cond_56

    aget-byte v6, v0, v4

    const/16 v8, -0x11

    if-ne v6, v8, :cond_56

    aget-byte v6, v0, v3

    const/16 v8, -0x45

    if-ne v6, v8, :cond_56

    aget-byte v6, v0, v2

    const/16 v8, -0x41

    if-ne v6, v8, :cond_56

    const/4 v6, 0x1

    goto :goto_57

    :cond_56
    const/4 v6, 0x0

    :goto_57
    move v8, v5

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_67
    if-ge v9, v1, :cond_117

    if-nez v3, :cond_6f

    if-nez v8, :cond_6f

    if-eqz v5, :cond_117

    :cond_6f
    aget-byte v7, v0, v9

    and-int/lit16 v7, v7, 0xff

    if-eqz v5, :cond_a3

    if-lez v10, :cond_80

    and-int/lit16 v0, v7, 0x80

    if-nez v0, :cond_7d

    :cond_7b
    :goto_7b
    const/4 v5, 0x0

    goto :goto_a3

    :cond_7d
    add-int/lit8 v10, v10, -0x1

    goto :goto_a3

    :cond_80
    and-int/lit16 v0, v7, 0x80

    if-eqz v0, :cond_a3

    and-int/lit8 v0, v7, 0x40

    if-nez v0, :cond_89

    goto :goto_7b

    :cond_89
    add-int/lit8 v10, v10, 0x1

    and-int/lit8 v0, v7, 0x20

    if-nez v0, :cond_92

    add-int/lit8 v12, v12, 0x1

    goto :goto_a3

    :cond_92
    add-int/lit8 v10, v10, 0x1

    and-int/lit8 v0, v7, 0x10

    if-nez v0, :cond_9b

    add-int/lit8 v13, v13, 0x1

    goto :goto_a3

    :cond_9b
    add-int/lit8 v10, v10, 0x1

    and-int/lit8 v0, v7, 0x8

    if-nez v0, :cond_7b

    add-int/lit8 v14, v14, 0x1

    :cond_a3
    :goto_a3
    const/16 v0, 0x7f

    if-eqz v3, :cond_c1

    if-le v7, v0, :cond_af

    const/16 v0, 0xa0

    if-ge v7, v0, :cond_af

    const/4 v3, 0x0

    goto :goto_c1

    :cond_af
    const/16 v0, 0x9f

    if-le v7, v0, :cond_c1

    const/16 v0, 0xc0

    if-lt v7, v0, :cond_bf

    const/16 v0, 0xd7

    if-eq v7, v0, :cond_bf

    const/16 v0, 0xf7

    if-ne v7, v0, :cond_c1

    :cond_bf
    add-int/lit8 v16, v16, 0x1

    :cond_c1
    :goto_c1
    if-eqz v8, :cond_110

    if-lez v11, :cond_d5

    const/16 v0, 0x40

    if-lt v7, v0, :cond_10f

    const/16 v0, 0x7f

    if-eq v7, v0, :cond_10f

    const/16 v0, 0xfc

    if-le v7, v0, :cond_d2

    goto :goto_10f

    :cond_d2
    add-int/lit8 v11, v11, -0x1

    goto :goto_110

    :cond_d5
    const/16 v0, 0x80

    if-eq v7, v0, :cond_10f

    const/16 v0, 0xa0

    if-eq v7, v0, :cond_10f

    const/16 v0, 0xef

    if-le v7, v0, :cond_e2

    goto :goto_10f

    :cond_e2
    const/16 v0, 0xa0

    if-le v7, v0, :cond_f9

    const/16 v0, 0xe0

    if-ge v7, v0, :cond_f9

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v18, 0x1

    if-le v0, v15, :cond_f4

    move v15, v0

    move/from16 v18, v15

    goto :goto_f6

    :cond_f4
    move/from16 v18, v0

    :goto_f6
    const/16 v17, 0x0

    goto :goto_110

    :cond_f9
    const/16 v0, 0x7f

    if-le v7, v0, :cond_10a

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v0, v17, 0x1

    if-le v0, v4, :cond_107

    move v4, v0

    move/from16 v17, v4

    goto :goto_10c

    :cond_107
    move/from16 v17, v0

    goto :goto_10c

    :cond_10a
    const/16 v17, 0x0

    :goto_10c
    const/16 v18, 0x0

    goto :goto_110

    :cond_10f
    :goto_10f
    const/4 v8, 0x0

    :cond_110
    :goto_110
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    const/4 v7, 0x3

    goto/16 :goto_67

    :cond_117
    if-eqz v5, :cond_11c

    if-lez v10, :cond_11c

    const/4 v5, 0x0

    :cond_11c
    if-eqz v8, :cond_121

    if-lez v11, :cond_121

    const/4 v8, 0x0

    :cond_121
    if-eqz v5, :cond_12c

    if-nez v6, :cond_129

    add-int/2addr v12, v13

    add-int/2addr v12, v14

    if-lez v12, :cond_12c

    :cond_129
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0

    :cond_12c
    if-eqz v8, :cond_13a

    sget-boolean v0, Lcom/google/zxing/common/StringUtils;->e:Z

    if-nez v0, :cond_137

    const/4 v0, 0x3

    if-ge v15, v0, :cond_137

    if-lt v4, v0, :cond_13a

    :cond_137
    sget-object v0, Lcom/google/zxing/common/StringUtils;->b:Ljava/nio/charset/Charset;

    return-object v0

    :cond_13a
    if-eqz v3, :cond_14d

    if-eqz v8, :cond_14d

    const/4 v0, 0x2

    if-ne v15, v0, :cond_143

    if-eq v2, v0, :cond_147

    :cond_143
    mul-int/lit8 v0, v16, 0xa

    if-lt v0, v1, :cond_14a

    :cond_147
    sget-object v0, Lcom/google/zxing/common/StringUtils;->b:Ljava/nio/charset/Charset;

    goto :goto_14c

    :cond_14a
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    :goto_14c
    return-object v0

    :cond_14d
    if-eqz v3, :cond_152

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-object v0

    :cond_152
    if-eqz v8, :cond_157

    sget-object v0, Lcom/google/zxing/common/StringUtils;->b:Ljava/nio/charset/Charset;

    return-object v0

    :cond_157
    if-eqz v5, :cond_15c

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0

    :cond_15c
    sget-object v0, Lcom/google/zxing/common/StringUtils;->a:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public static guessEncoding([BLjava/util/Map;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/zxing/common/StringUtils;->guessCharset([BLjava/util/Map;)Ljava/nio/charset/Charset;

    move-result-object p0

    sget-object p1, Lcom/google/zxing/common/StringUtils;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p0, "SJIS"

    return-object p0

    :cond_f
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const-string p0, "UTF8"

    return-object p0

    :cond_1a
    sget-object p1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    const-string p0, "ISO8859_1"

    return-object p0

    :cond_25
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class com.json.adqualitysdk.sdk.i.jz (com.ironsource.adqualitysdk.sdk.i.jz)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/jz;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:[C = null

.field private static b:I = 0x0

.field private static c:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x28

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/jz;->a:[C

    return-void

    :array_a
    .array-data 2
        0x66s
        0xd2s
        0xd2s
        0xcds
        0xe6s
        0xfbs
        0xfbs
        0x62s
        0xdbs
        0x5fs
        0x97s
        0x8bs
        0xa2s
        0xa0s
        0x85s
        0x6bs
        0x87s
        0x8fs
        0x77s
        0x72s
        0x89s
        0x87s
        0x7bs
        0x3bs
        0x87s
        0x10cs
        0x10bs
        0x117s
        0x117s
        0x107s
        0x108s
        0xf3s
        0x12s
        0x52s
        0xbes
        0xd3s
        0xd2s
        0xe2s
        0xe2s
        0xd6s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    :cond_d
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    if-eq p1, v1, :cond_1a

    return-object v0

    :cond_1a
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    add-int/lit8 p1, p1, 0x2d

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    rem-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p1

    const/16 v2, 0x57

    if-nez p1, :cond_2f

    const/16 p1, 0x2c

    goto :goto_31

    :cond_2f
    const/16 p1, 0x57

    :goto_31
    if-eq p1, v2, :cond_57

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    rem-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_d

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    add-int/lit8 p0, p0, 0x1b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_53

    return-object v0

    :cond_53
    const/4 p0, 0x0

    :try_start_54
    throw p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception p0

    throw p0

    :cond_57
    :goto_57
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p1

    if-gt v1, p1, :cond_d

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x56

    if-eqz p2, :cond_6b

    const/16 v2, 0x56

    goto :goto_6d

    :cond_6b
    const/16 v2, 0x38

    :goto_6d
    if-eq v2, p1, :cond_7c

    add-int/lit8 v1, v1, 0x1

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_57

    :cond_7c
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eq v0, v2, :cond_18

    goto :goto_87

    :cond_18
    const/4 v0, 0x4

    new-array v3, v0, [I

    fill-array-data v3, :array_88

    const-string v4, "\u0000"

    invoke-static {v1, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_56

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v0, [I

    fill-array-data v5, :array_94

    const-string v6, "\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001"

    invoke-static {v1, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    rem-int/lit8 v1, v1, 0x2

    :cond_56
    new-array v1, v0, [I

    fill-array-data v1, :array_a0

    invoke-static {v2, v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_87

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p0, v0, [I

    fill-array-data p0, :array_ac

    const-string v0, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001"

    invoke-static {v2, p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_87
    :goto_87
    return-object p0

    :array_88
    .array-data 4
        0x17
        0x1
        0x18
        0x0
    .end array-data

    :array_94
    .array-data 4
        0x18
        0x8
        0xb0
        0x0
    .end array-data

    :array_a0
    .array-data 4
        0x20
        0x1
        0x0
        0x1
    .end array-data

    :array_ac
    .array-data 4
        0x21
        0x7
        0x7b
        0x0
    .end array-data
.end method

.method private static c(Z[ILjava/lang/String;)Ljava/lang/String;
    .registers 15

    if-eqz p2, :cond_8

    const-string v0, "ISO-8859-1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    :cond_8
    check-cast p2, [B

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﻛ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_e
    aget v2, p1, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    const/4 v5, 0x2

    aget v6, p1, v5

    const/4 v7, 0x3

    aget v7, p1, v7

    sget-object v8, Lcom/ironsource/adqualitysdk/sdk/i/jz;->a:[C

    new-array v9, v4, [C

    invoke-static {v8, v2, v9, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p2, :cond_47

    new-array v2, v4, [C

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    const/4 v8, 0x0

    :goto_27
    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    if-ge v10, v4, :cond_46

    aget-byte v11, p2, v10

    if-ne v11, v3, :cond_38

    aget-char v11, v9, v10

    shl-int/2addr v11, v3

    add-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    goto :goto_3f

    :cond_38
    aget-char v11, v9, v10

    shl-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    :goto_3f
    aget-char v8, v2, v10

    add-int/lit8 v10, v10, 0x1

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    goto :goto_27

    :cond_46
    move-object v9, v2

    :cond_47
    if-lez v7, :cond_56

    new-array p2, v4, [C

    invoke-static {v9, v1, p2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v2, v4, v7

    invoke-static {p2, v1, v9, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v7, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_56
    if-eqz p0, :cond_6d

    new-array p0, v4, [C

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    :goto_5c
    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    if-ge p2, v4, :cond_6c

    sub-int v2, v4, p2

    sub-int/2addr v2, v3

    aget-char v2, v9, v2

    aput-char v2, p0, p2

    add-int/lit8 p2, p2, 0x1

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    goto :goto_5c

    :cond_6c
    move-object v9, p0

    :cond_6d
    if-lez v6, :cond_82

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    :goto_71
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    if-ge p0, v4, :cond_82

    aget-char p2, v9, p0

    aget v1, p1, v5

    sub-int/2addr p2, v1

    int-to-char p2, p2

    aput-char p2, v9, p0

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    goto :goto_71

    :cond_82
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v9}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_e .. :try_end_88} :catchall_89

    return-object p0

    :catchall_89
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static ﻐ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_25

    goto :goto_26

    :cond_25
    const/4 p1, 0x1

    :goto_26
    if-eqz p1, :cond_29

    return-object p0

    :cond_29
    const/4 p0, 0x0

    :try_start_2a
    throw p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception p0

    throw p0
.end method

.method public static ﻛ(Ljava/lang/String;)Z
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const/4 v3, 0x0

    if-nez v0, :cond_51

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    if-eqz v0, :cond_3e

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_58

    const-string v2, "\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0000\u0001\u0000"

    invoke-static {v1, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    rem-int/lit8 v0, v0, 0x2

    return p0

    :cond_3e
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    add-int/lit8 p0, p0, 0x69

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_4b

    const/4 v1, 0x0

    :cond_4b
    if-eqz v1, :cond_4e

    return v2

    :cond_4e
    :try_start_4e
    throw v3
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception p0

    throw p0

    :cond_51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :try_start_54
    throw v3
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception p0

    throw p0

    nop

    :array_58
    .array-data 4
        0x9
        0xe
        0x44
        0x5
    .end array-data
.end method

.method public static ｋ(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-static {p0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method public static ｋ(Ljava/lang/String;I)Z
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4e

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x5e

    if-lez v0, :cond_26

    const/16 v0, 0x5a

    goto :goto_28

    :cond_26
    const/16 v0, 0x5e

    :goto_28
    if-eq v0, v2, :cond_4e

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gt p0, p1, :cond_4e

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    add-int/lit8 p0, p0, 0x53

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    rem-int/lit8 p0, p0, 0x2

    const/4 p1, 0x1

    if-eqz p0, :cond_49

    const/4 p0, 0x1

    goto :goto_4a

    :cond_49
    const/4 p0, 0x0

    :goto_4a
    if-eqz p0, :cond_4d

    return v1

    :cond_4d
    return p1

    :cond_4e
    return v1
.end method

.method public static ﾇ(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    add-int/lit8 v1, v0, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_44

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_13

    const/4 p2, 0x0

    goto :goto_14

    :cond_13
    const/4 p2, 0x1

    :goto_14
    if-eq p2, v3, :cond_22

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 p2, v0, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_22
    invoke-static {p0, p1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2e

    const/4 p1, 0x1

    goto :goto_30

    :cond_2e
    const/16 p1, 0x45

    :goto_30
    if-eq p1, v3, :cond_33

    return-object v2

    :cond_33
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    rem-int/lit8 p1, p1, 0x2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_44
    :try_start_44
    throw v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception p0

    throw p0
.end method

.method public static ﾇ(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_11
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_19

    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    if-eqz v3, :cond_34

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    add-int/lit8 v3, v3, 0x43

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    rem-int/lit8 v3, v3, 0x2

    goto :goto_11

    :cond_34
    return-object v0
.end method

.method public static ﾒ(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_b8

    const/4 v2, 0x1

    const-string v3, "\u0001\u0001\u0000\u0001\u0000\u0001\u0000"

    invoke-static {v2, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v0, [I

    fill-array-data v1, :array_c4

    const/4 v5, 0x0

    const-string v6, "\u0000\u0000"

    invoke-static {v5, v1, v6}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-array v1, v0, [I

    fill-array-data v1, :array_d0

    invoke-static {v2, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [I

    fill-array-data v0, :array_dc

    invoke-static {v5, v0, v6}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_57
    array-length v0, p0

    const/16 v1, 0x62

    if-ge v5, v0, :cond_74

    array-length v0, p1

    if-ge v5, v0, :cond_74

    aget-object v0, p0, v5

    aget-object v2, p1, v5

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const/16 v0, 0x62

    goto :goto_6e

    :cond_6c
    const/16 v0, 0x55

    :goto_6e
    if-eq v0, v1, :cond_71

    goto :goto_74

    :cond_71
    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    :cond_74
    :goto_74
    array-length v0, p0

    if-ge v5, v0, :cond_99

    array-length v0, p1

    if-ge v5, v0, :cond_99

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    rem-int/lit8 v0, v0, 0x2

    aget-object p0, p0, v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->signum(I)I

    move-result p0

    return p0

    :cond_99
    array-length p0, p0

    array-length p1, p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->signum(I)I

    move-result p0

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_af

    const/16 p1, 0x62

    goto :goto_b1

    :cond_af
    const/16 p1, 0x47

    :goto_b1
    if-eq p1, v1, :cond_b4

    return p0

    :cond_b4
    const/4 p0, 0x0

    :try_start_b5
    throw p0
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b6

    :catchall_b6
    move-exception p0

    throw p0

    :array_b8
    .array-data 4
        0x0
        0x7
        0x9f
        0x6
    .end array-data

    :array_c4
    .array-data 4
        0x7
        0x2
        0x96
        0x1
    .end array-data

    :array_d0
    .array-data 4
        0x0
        0x7
        0x9f
        0x6
    .end array-data

    :array_dc
    .array-data 4
        0x7
        0x2
        0x96
        0x1
    .end array-data
.end method

.method public static ﾒ(Ljava/lang/String;Lorg/json/JSONArray;Z)Ljava/lang/String;
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/16 v2, 0x46

    if-ge v0, v1, :cond_16

    const/16 v1, 0x5f

    goto :goto_18

    :cond_16
    const/16 v1, 0x46

    :goto_18
    const/4 v3, 0x0

    if-eq v1, v2, :cond_49

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3f

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->ﾇ(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3c

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    add-int/lit8 p0, p0, 0x21

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    rem-int/lit8 p0, p0, 0x2

    return-object v1

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_3f
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->ﾇ(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    :try_start_46
    throw v3
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception p0

    throw p0

    :cond_49
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jz;->b:I

    add-int/lit8 p0, p0, 0x75

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/jz;->c:I

    rem-int/lit8 p0, p0, 0x2

    return-object v3
.end method

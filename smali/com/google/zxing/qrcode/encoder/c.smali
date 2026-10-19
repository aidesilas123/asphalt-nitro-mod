###### Class com.google.zxing.qrcode.encoder.c (com.google.zxing.qrcode.encoder.c)
.class final Lcom/google/zxing/qrcode/encoder/c;
.super Ljava/lang/Object;
.source "MaskUtil.java"


# direct methods
.method static a(Lcom/google/zxing/qrcode/encoder/b;)I
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/c;->b(Lcom/google/zxing/qrcode/encoder/b;Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/zxing/qrcode/encoder/c;->b(Lcom/google/zxing/qrcode/encoder/b;Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static b(Lcom/google/zxing/qrcode/encoder/b;Z)I
    .registers 12

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->d()I

    move-result v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->e()I

    move-result v0

    :goto_b
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->e()I

    move-result v1

    goto :goto_16

    :cond_12
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->d()I

    move-result v1

    :goto_16
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->c()[[B

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1d
    if-ge v3, v0, :cond_4c

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_22
    const/4 v8, 0x5

    if-ge v6, v1, :cond_42

    if-eqz p1, :cond_2c

    aget-object v9, p0, v3

    aget-byte v9, v9, v6

    goto :goto_30

    :cond_2c
    aget-object v9, p0, v6

    aget-byte v9, v9, v3

    :goto_30
    if-ne v9, v5, :cond_35

    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    :cond_35
    if-lt v7, v8, :cond_3c

    add-int/lit8 v7, v7, -0x5

    add-int/lit8 v7, v7, 0x3

    add-int/2addr v4, v7

    :cond_3c
    const/4 v5, 0x1

    move v5, v9

    const/4 v7, 0x1

    :goto_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    :cond_42
    if-lt v7, v8, :cond_49

    add-int/lit8 v7, v7, -0x5

    add-int/lit8 v7, v7, 0x3

    add-int/2addr v4, v7

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_4c
    return v4
.end method

.method static c(Lcom/google/zxing/qrcode/encoder/b;)I
    .registers 12

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->c()[[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->e()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->d()I

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    add-int/lit8 v5, p0, -0x1

    if-ge v3, v5, :cond_37

    aget-object v5, v0, v3

    const/4 v6, 0x0

    :goto_16
    add-int/lit8 v7, v1, -0x1

    if-ge v6, v7, :cond_34

    aget-byte v7, v5, v6

    add-int/lit8 v8, v6, 0x1

    aget-byte v9, v5, v8

    if-ne v7, v9, :cond_32

    add-int/lit8 v9, v3, 0x1

    aget-object v10, v0, v9

    aget-byte v6, v10, v6

    if-ne v7, v6, :cond_32

    aget-object v6, v0, v9

    aget-byte v6, v6, v8

    if-ne v7, v6, :cond_32

    add-int/lit8 v4, v4, 0x1

    :cond_32
    move v6, v8

    goto :goto_16

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_37
    mul-int/lit8 v4, v4, 0x3

    return v4
.end method

.method static d(Lcom/google/zxing/qrcode/encoder/b;)I
    .registers 11

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->c()[[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->e()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->d()I

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v3, p0, :cond_a9

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v1, :cond_a5

    aget-object v6, v0, v3

    add-int/lit8 v7, v5, 0x6

    const/4 v8, 0x1

    if-ge v7, v1, :cond_55

    aget-byte v9, v6, v5

    if-ne v9, v8, :cond_55

    add-int/lit8 v9, v5, 0x1

    aget-byte v9, v6, v9

    if-nez v9, :cond_55

    add-int/lit8 v9, v5, 0x2

    aget-byte v9, v6, v9

    if-ne v9, v8, :cond_55

    add-int/lit8 v9, v5, 0x3

    aget-byte v9, v6, v9

    if-ne v9, v8, :cond_55

    add-int/lit8 v9, v5, 0x4

    aget-byte v9, v6, v9

    if-ne v9, v8, :cond_55

    add-int/lit8 v9, v5, 0x5

    aget-byte v9, v6, v9

    if-nez v9, :cond_55

    aget-byte v7, v6, v7

    if-ne v7, v8, :cond_55

    add-int/lit8 v7, v5, -0x4

    invoke-static {v6, v7, v5}, Lcom/google/zxing/qrcode/encoder/c;->g([BII)Z

    move-result v7

    if-nez v7, :cond_53

    add-int/lit8 v7, v5, 0x7

    add-int/lit8 v9, v5, 0xb

    invoke-static {v6, v7, v9}, Lcom/google/zxing/qrcode/encoder/c;->g([BII)Z

    move-result v6

    if-eqz v6, :cond_55

    :cond_53
    add-int/lit8 v4, v4, 0x1

    :cond_55
    add-int/lit8 v6, v3, 0x6

    if-ge v6, p0, :cond_a1

    aget-object v7, v0, v3

    aget-byte v7, v7, v5

    if-ne v7, v8, :cond_a1

    add-int/lit8 v7, v3, 0x1

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-nez v7, :cond_a1

    add-int/lit8 v7, v3, 0x2

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-ne v7, v8, :cond_a1

    add-int/lit8 v7, v3, 0x3

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-ne v7, v8, :cond_a1

    add-int/lit8 v7, v3, 0x4

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-ne v7, v8, :cond_a1

    add-int/lit8 v7, v3, 0x5

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-nez v7, :cond_a1

    aget-object v6, v0, v6

    aget-byte v6, v6, v5

    if-ne v6, v8, :cond_a1

    add-int/lit8 v6, v3, -0x4

    invoke-static {v0, v5, v6, v3}, Lcom/google/zxing/qrcode/encoder/c;->h([[BIII)Z

    move-result v6

    if-nez v6, :cond_9f

    add-int/lit8 v6, v3, 0x7

    add-int/lit8 v7, v3, 0xb

    invoke-static {v0, v5, v6, v7}, Lcom/google/zxing/qrcode/encoder/c;->h([[BIII)Z

    move-result v6

    if-eqz v6, :cond_a1

    :cond_9f
    add-int/lit8 v4, v4, 0x1

    :cond_a1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_12

    :cond_a5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_f

    :cond_a9
    mul-int/lit8 v4, v4, 0x28

    return v4
.end method

.method static e(Lcom/google/zxing/qrcode/encoder/b;)I
    .registers 11

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->c()[[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->e()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->d()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_f
    if-ge v4, v2, :cond_23

    aget-object v6, v0, v4

    const/4 v7, 0x0

    :goto_14
    if-ge v7, v1, :cond_20

    aget-byte v8, v6, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1d

    add-int/lit8 v5, v5, 0x1

    :cond_1d
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_23
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->d()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->e()I

    move-result p0

    mul-int v0, v0, p0

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0xa

    div-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0xa

    return p0
.end method

.method static f(III)Z
    .registers 4

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_4a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid mask pattern: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1b
    mul-int p0, p2, p1

    rem-int/lit8 p0, p0, 0x3

    add-int/2addr p2, p1

    and-int/lit8 p1, p2, 0x1

    add-int/2addr p0, p1

    goto :goto_2b

    :pswitch_24
    mul-int p2, p2, p1

    and-int/lit8 p0, p2, 0x1

    rem-int/lit8 p2, p2, 0x3

    add-int/2addr p0, p2

    :goto_2b
    and-int/2addr p0, v0

    goto :goto_44

    :pswitch_2d
    mul-int p2, p2, p1

    and-int/lit8 p0, p2, 0x1

    rem-int/lit8 p2, p2, 0x3

    add-int/2addr p0, p2

    goto :goto_44

    :pswitch_35
    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p1, p1, 0x3

    goto :goto_41

    :pswitch_3a
    add-int/2addr p2, p1

    rem-int/lit8 p0, p2, 0x3

    goto :goto_44

    :pswitch_3e
    rem-int/lit8 p0, p1, 0x3

    goto :goto_44

    :goto_41
    :pswitch_41
    add-int/2addr p2, p1

    :pswitch_42
    and-int/lit8 p0, p2, 0x1

    :goto_44
    if-nez p0, :cond_47

    goto :goto_48

    :cond_47
    const/4 v0, 0x0

    :goto_48
    return v0

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_41
        :pswitch_42
        :pswitch_3e
        :pswitch_3a
        :pswitch_35
        :pswitch_2d
        :pswitch_24
        :pswitch_1b
    .end packed-switch
.end method

.method private static g([BII)Z
    .registers 6

    const/4 v0, 0x0

    if-ltz p1, :cond_13

    array-length v1, p0

    if-ge v1, p2, :cond_7

    goto :goto_13

    :cond_7
    :goto_7
    const/4 v1, 0x1

    if-ge p1, p2, :cond_12

    aget-byte v2, p0, p1

    if-ne v2, v1, :cond_f

    return v0

    :cond_f
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_12
    return v1

    :cond_13
    :goto_13
    return v0
.end method

.method private static h([[BIII)Z
    .registers 7

    const/4 v0, 0x0

    if-ltz p2, :cond_15

    array-length v1, p0

    if-ge v1, p3, :cond_7

    goto :goto_15

    :cond_7
    :goto_7
    const/4 v1, 0x1

    if-ge p2, p3, :cond_14

    aget-object v2, p0, p2

    aget-byte v2, v2, p1

    if-ne v2, v1, :cond_11

    return v0

    :cond_11
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_14
    return v1

    :cond_15
    :goto_15
    return v0
.end method

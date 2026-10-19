###### Class com.json.adqualitysdk.sdk.i.jr (com.ironsource.adqualitysdk.sdk.i.jr)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/jr;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:J = 0x0L

.field private static b:I = 0x0

.field private static c:C = '\ufef8'

.field private static d:I = 0x0

.field private static e:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;
    .registers 11

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_6
    check-cast p4, [C

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_e
    check-cast p1, [C

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_16
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻐ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1b
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    const/4 v1, 0x0

    aget-char v2, p0, v1

    xor-int/2addr p3, v2

    int-to-char p3, p3

    aput-char p3, p0, v1

    const/4 p3, 0x2

    aget-char v2, p1, p3

    int-to-char p2, p2

    add-int/2addr v2, p2

    int-to-char p2, v2

    aput-char p2, p1, p3

    array-length p2, p4

    new-array p3, p2, [C

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    :goto_3b
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    if-ge v1, p2, :cond_80

    add-int/lit8 v2, v1, 0x2

    rem-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v1, 0x3

    rem-int/lit8 v3, v3, 0x4

    rem-int/lit8 v1, v1, 0x4

    aget-char v1, p0, v1

    mul-int/lit16 v1, v1, 0x7fce

    aget-char v4, p1, v2

    add-int/2addr v1, v4

    const v4, 0xffff

    rem-int/2addr v1, v4

    int-to-char v1, v1

    sput-char v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ｋ:C

    aget-char v5, p0, v3

    mul-int/lit16 v5, v5, 0x7fce

    aget-char v2, p1, v2

    add-int/2addr v5, v2

    div-int/2addr v5, v4

    int-to-char v2, v5

    aput-char v2, p1, v3

    aput-char v1, p0, v3

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    aget-char v2, p4, v1

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/jr;->a:J

    xor-long/2addr v2, v4

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/jr;->b:I

    int-to-long v4, v4

    xor-long/2addr v2, v4

    sget-char v4, Lcom/ironsource/adqualitysdk/sdk/i/jr;->c:C

    int-to-long v4, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    goto :goto_3b

    :cond_80
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p3}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_1b .. :try_end_86} :catchall_87

    return-object p0

    :catchall_87
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static ﻛ(Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    const-string v0, "\ue1d6\uc987\u88c1\u33e5\udd67"

    const-string v1, "\u6a3a\uc74b\u9d41\u80d7"

    const-string v2, "\u0000\u0000\u0000\u0000"

    const-string v3, ""

    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    :try_start_c
    new-instance v7, Ljava/lang/String;

    new-array v8, v5, [C

    const/16 v9, 0x48

    aput-char v9, v8, v6

    const/16 v10, 0x6d

    aput-char v10, v8, v4

    const/16 v10, 0x61

    const/4 v11, 0x2

    aput-char v10, v8, v11

    const/4 v10, 0x3

    const/16 v12, 0x63

    aput-char v12, v8, v10

    const/4 v10, 0x4

    const/16 v12, 0x53

    aput-char v12, v8, v10

    const/4 v10, 0x5

    aput-char v9, v8, v10

    const/4 v9, 0x6

    const/16 v10, 0x41

    aput-char v10, v8, v9

    const/4 v9, 0x7

    const/16 v10, 0x31

    aput-char v10, v8, v9

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V

    invoke-static {v7}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v7

    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string v9, "\u367f\ub09a\u6864\uc835"

    invoke-static {v6}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v10

    rsub-int/lit8 v10, v10, -0x1

    invoke-static {v3, v3, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v12

    int-to-char v12, v12

    const-string v13, "\u08de\uc0bb\u155a\u4d8d\ucbad\u1d8d\u0b0a\u51e3\u99ff\u6a66\u7813\ufc92\uf417\u5804\u99f7\ud70d\u3b40\u6c29\ubcb1\u8cda\ud203\u798e\u4e3c\u00ed\u721b\u8aa5\u7005\ue562\u7080\ucd16\ua8e7\ub1e0\u6c82\ue821"

    invoke-static {v9, v2, v10, v12, v13}, Lcom/ironsource/adqualitysdk/sdk/i/jr;->a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v6, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v10

    const v12, 0x41c74b6a

    add-int/2addr v10, v12

    const v13, 0xd79d

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v14

    shr-int/lit8 v14, v14, 0x10

    add-int/2addr v14, v13

    int-to-char v13, v14

    invoke-static {v1, v2, v10, v13, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jr;->a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v7}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7, v8}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const-string v8, "\u75f9\uef6f\u66ab\u6001"

    const v9, -0x5410908b

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    sub-int/2addr v9, v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    add-int/lit16 v10, v10, 0x166

    int-to-char v10, v10

    const-string v13, "\u9c78"

    invoke-static {v8, v2, v9, v10, v13}, Lcom/ironsource/adqualitysdk/sdk/i/jr;->a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v8, "\u5ca0\u87e7\u1878\ub2e2"

    const v9, 0x7887e75c

    invoke-static {v3, v6}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v10

    sub-int/2addr v9, v10

    const v10, 0xe219

    invoke-static {v3}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v13

    add-int/2addr v13, v10

    int-to-char v10, v13

    const-string v13, "\uf856"

    invoke-static {v8, v2, v9, v10, v13}, Lcom/ironsource/adqualitysdk/sdk/i/jr;->a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    add-int/2addr v8, v12

    const v9, 0xd79e

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v10

    const/4 v12, 0x0

    cmpl-float v10, v10, v12

    sub-int/2addr v9, v10

    int-to-char v9, v9

    invoke-static {v1, v2, v8, v9, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jr;->a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v7, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ia;->ｋ([B)Ljava/lang/String;

    move-result-object p0
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_e8} :catch_103

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jr;->e:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jr;->d:I

    rem-int/2addr v0, v11

    const/16 v1, 0x2c

    if-eqz v0, :cond_f8

    const/16 v0, 0x2c

    goto :goto_fa

    :cond_f8
    const/16 v0, 0x62

    :goto_fa
    if-eq v0, v1, :cond_fd

    return-object p0

    :cond_fd
    const/16 v0, 0x1f

    :try_start_ff
    div-int/2addr v0, v6
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_101

    return-object p0

    :catchall_101
    move-exception p0

    throw p0

    :catch_103
    move-exception p0

    const v0, 0x5d55909

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v1

    shr-int/2addr v1, v5

    add-int/2addr v1, v0

    const/16 v0, 0x30

    invoke-static {v3, v0, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v5

    add-int/2addr v5, v4

    int-to-char v4, v5

    const-string v5, "\u092a\ud559\uea05\u8ab0"

    const-string v7, "\u6dd1\u7ad3\ubae2\u175a\u2223\uf0c9\uf3c8\u821e\uccd6"

    invoke-static {v5, v2, v1, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/jr;->a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x12bd3b1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    add-int/2addr v7, v5

    invoke-static {v3, v0, v6, v6}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    rsub-int/lit8 v0, v0, -0x1

    int-to-char v0, v0

    const-string v3, "\ub12b\u2bd3\ue201\u04e1"

    const-string v5, "\uef02\uf791\udb9c\ud9f8\ud090\u23d1\u1a54"

    invoke-static {v3, v2, v7, v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/jr;->a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

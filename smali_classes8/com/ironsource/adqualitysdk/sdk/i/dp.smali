###### Class com.json.adqualitysdk.sdk.i.dp (com.ironsource.adqualitysdk.sdk.i.dp)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/dp;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:[C = null

.field private static b:C = '\u0001'

.field private static c:I = 0x0

.field private static d:I = 0x1


# instance fields
.field private e:Ljava/lang/Object;

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x22

    aput-char v2, v0, v1

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->a:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->e:Ljava/lang/Object;

    return-void
.end method

.method private static a(BLjava/lang/String;I)Ljava/lang/String;
    .registers 11

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_6
    check-cast p1, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/dp;->a:[C

    sget-char v2, Lcom/ironsource/adqualitysdk/sdk/i/dp;->b:C

    new-array v3, p2, [C

    rem-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_1d

    add-int/lit8 p2, p2, -0x1

    aget-char v4, p1, p2

    sub-int/2addr v4, p0

    int-to-char v4, v4

    aput-char v4, v3, p2

    :cond_1d
    const/4 v4, 0x1

    if-le p2, v4, :cond_df

    const/4 v5, 0x0

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    :goto_23
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    if-ge v5, p2, :cond_df

    aget-char v5, p1, v5

    sput-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    add-int/2addr v5, v4

    aget-char v5, p1, v5

    sput-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    sget-char v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    if-ne v5, v6, :cond_4b

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    sget-char v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    sub-int/2addr v6, p0

    int-to-char v6, v6

    aput-char v6, v3, v5

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    add-int/2addr v5, v4

    sget-char v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    sub-int/2addr v6, p0

    int-to-char v6, v6

    aput-char v6, v3, v5

    goto/16 :goto_d7

    :cond_4b
    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    div-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    div-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    if-ne v5, v6, :cond_8e

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    mul-int v5, v5, v2

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v5, v6

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    mul-int v6, v6, v2

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v6, v7

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v5, v1, v6

    aput-char v5, v3, v7

    goto :goto_d7

    :cond_8e
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    if-ne v5, v6, :cond_bd

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    mul-int v5, v5, v2

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v5, v6

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    mul-int v6, v6, v2

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v6, v7

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v5, v1, v6

    aput-char v5, v3, v7

    goto :goto_d7

    :cond_bd
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    mul-int v5, v5, v2

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v5, v6

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    mul-int v6, v6, v2

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v6, v7

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v5, v1, v6

    aput-char v5, v3, v7

    :goto_d7
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    add-int/lit8 v5, v5, 0x2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    goto/16 :goto_23

    :cond_df
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_e5
    .catchall {:try_start_b .. :try_end_e5} :catchall_e6

    return-object p0

    :catchall_e6
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->e:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_62

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x44

    int-to-byte v4, v4

    invoke-static {v3, v3}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x1

    const-string v6, "g"

    invoke-static {v4, v6, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->a(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->e:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x45

    int-to-byte v4, v4

    const/16 v5, 0x30

    const-string v7, ""

    invoke-static {v7, v5, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v3

    neg-int v3, v3

    invoke-static {v4, v6, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->a(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/dp;->c:I

    add-int/lit8 v3, v3, 0x1d

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/dp;->d:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_5b

    const/16 v3, 0x53

    goto :goto_5c

    :cond_5b
    const/4 v3, 0x1

    :goto_5c
    if-ne v3, v2, :cond_5f

    return-object v0

    :cond_5f
    :try_start_5f
    throw v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_60

    :catchall_60
    move-exception v0

    throw v0

    :cond_62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->e:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/dp;->d:I

    add-int/lit8 v4, v4, 0x4d

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/dp;->c:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_7d

    goto :goto_7e

    :cond_7d
    const/4 v2, 0x0

    :goto_7e
    if-nez v2, :cond_81

    return-object v0

    :cond_81
    :try_start_81
    throw v1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_82

    :catchall_82
    move-exception v0

    throw v0
.end method

.method public final ﱟ()Lcom/ironsource/adqualitysdk/sdk/i/dp;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->d:I

    add-int/lit8 v1, v0, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dp;->c:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->g:Z

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dp;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x4f

    if-eqz v0, :cond_1c

    const/16 v0, 0x15

    goto :goto_1e

    :cond_1c
    const/16 v0, 0x4f

    :goto_1e
    if-ne v0, v1, :cond_21

    return-object p0

    :cond_21
    const/4 v0, 0x0

    :try_start_22
    throw v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v0

    throw v0
.end method

.method public final ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/dp;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->c:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dp;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    if-eqz v0, :cond_16

    iput-boolean v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->h:Z

    goto :goto_18

    :cond_16
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->h:Z

    :goto_18
    return-object p0
.end method

.method public final ﺙ()Z
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->d:I

    add-int/lit8 v1, v0, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dp;->c:I

    rem-int/lit8 v1, v1, 0x2

    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->h:Z

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dp;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_22

    const/16 v0, 0x56

    :try_start_1e
    div-int/2addr v0, v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_20

    return v1

    :catchall_20
    move-exception v0

    throw v0

    :cond_22
    return v1
.end method

.method public final ﻐ()Ljava/lang/Object;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->d:I

    add-int/lit8 v1, v0, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dp;->c:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->e:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dp;->c:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public final ﻛ()Z
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->c:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dp;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    if-ne v0, v3, :cond_2b

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->g:Z

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/dp;->c:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    if-eq v1, v3, :cond_25

    return v0

    :cond_25
    const/16 v1, 0x4b

    :try_start_27
    div-int/2addr v1, v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_29

    return v0

    :catchall_29
    move-exception v0

    throw v0

    :cond_2b
    const/4 v0, 0x0

    :try_start_2c
    throw v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v0

    throw v0
.end method

.method public final ｋ(Z)Lcom/ironsource/adqualitysdk/sdk/i/dp;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->d:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dp;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1d

    if-eqz v0, :cond_11

    const/16 v0, 0x40

    goto :goto_13

    :cond_11
    const/16 v0, 0x1d

    :goto_13
    if-ne v0, v1, :cond_18

    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->f:Z

    return-object p0

    :cond_18
    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->f:Z

    const/4 p1, 0x0

    :try_start_1b
    throw p1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception p1

    throw p1
.end method

.method public final ｋ()Z
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->d:I

    add-int/lit8 v1, v0, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dp;->c:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    const/4 v4, 0x0

    if-nez v1, :cond_27

    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->f:Z

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/dp;->c:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_21

    const/4 v2, 0x0

    :cond_21
    if-eqz v2, :cond_24

    return v1

    :cond_24
    :try_start_24
    throw v4
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v0

    throw v0

    :cond_27
    :try_start_27
    throw v4
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception v0

    throw v0
.end method

.method public final ﾇ()Z
    .registers 9

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->c:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dp;->d:I

    rem-int/lit8 v0, v0, 0x2

    return v1

    :cond_10
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_25

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dp;->c:I

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dp;->d:I

    rem-int/lit8 v1, v1, 0x2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_25
    instance-of v2, v0, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-eqz v2, :cond_39

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    goto :goto_35

    :cond_34
    const/4 v0, 0x1

    :goto_35
    if-eq v0, v3, :cond_38

    return v3

    :cond_38
    return v1

    :cond_39
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_78

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/16 v0, 0x55

    cmp-long v2, v4, v6

    if-eqz v2, :cond_4e

    const/16 v2, 0x55

    goto :goto_50

    :cond_4e
    const/16 v2, 0x3b

    :goto_50
    if-eq v2, v0, :cond_53

    return v1

    :cond_53
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->d:I

    add-int/lit8 v2, v0, 0x27

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/dp;->c:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v4, 0x29

    if-eqz v2, :cond_64

    const/16 v2, 0x29

    goto :goto_66

    :cond_64
    const/16 v2, 0x36

    :goto_66
    if-eq v2, v4, :cond_69

    const/4 v1, 0x1

    :cond_69
    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dp;->c:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_74

    return v1

    :cond_74
    const/4 v0, 0x0

    :try_start_75
    throw v0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_76

    :catchall_76
    move-exception v0

    throw v0

    :cond_78
    instance-of v2, v0, Ljava/lang/Double;

    if-eqz v2, :cond_7e

    const/4 v2, 0x1

    goto :goto_7f

    :cond_7e
    const/4 v2, 0x0

    :goto_7f
    if-eq v2, v3, :cond_90

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_8f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8e

    return v3

    :cond_8e
    return v1

    :cond_8f
    return v3

    :cond_90
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/16 v0, 0x24

    cmpl-double v2, v4, v6

    if-eqz v2, :cond_a1

    const/16 v2, 0x5d

    goto :goto_a3

    :cond_a1
    const/16 v2, 0x24

    :goto_a3
    if-eq v2, v0, :cond_a6

    return v3

    :cond_a6
    return v1
.end method

.method public final ﾒ()Ljava/lang/Number;
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->d:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dp;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->e:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    const/16 v3, 0x22

    const/4 v4, 0x0

    :try_start_14
    div-int/2addr v3, v4
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_1d

    const/4 v3, 0x1

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v4, 0x1

    :goto_1a
    if-eq v4, v3, :cond_3b

    goto :goto_25

    :catchall_1d
    move-exception v0

    throw v0

    :cond_1f
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->e:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3b

    :goto_25
    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->d:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_34

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    :cond_34
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    :try_start_38
    throw v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v0

    throw v0

    :cond_3b
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dp;->e:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Long;

    const/16 v3, 0x25

    if-eqz v1, :cond_46

    const/16 v1, 0x25

    goto :goto_48

    :cond_46
    const/16 v1, 0x28

    :goto_48
    if-eq v1, v3, :cond_52

    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_51

    check-cast v0, Ljava/lang/Double;

    return-object v0

    :cond_51
    return-object v2

    :cond_52
    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

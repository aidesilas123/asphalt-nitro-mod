###### Class com.ironsource.adqualitysdk.sdk.i.ai.a (com.ironsource.adqualitysdk.sdk.i.ai$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ai$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ai;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZLcom/ironsource/adqualitysdk/sdk/i/ai$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static d:[I = null

.field private static e:I = 0x0

.field private static f:I = 0x1


# instance fields
.field private synthetic g:Ljava/lang/String;

.field private synthetic h:Lorg/json/JSONObject;

.field private synthetic i:Lorg/json/JSONObject;

.field private synthetic j:Z

.field final synthetic k:Lcom/ironsource/adqualitysdk/sdk/i/ai$e;

.field private synthetic l:Lcom/ironsource/adqualitysdk/sdk/i/ai;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->d:[I

    return-void

    :array_a
    .array-data 4
        0x45616d7e
        -0x30a60be3
        -0x635c3fc5
        0x5ae12b83
        0x22221914
        -0x7c0cd96c
        0x36b7ed8b
        -0x5055557d
        0x6c28f1f8
        0x2ba3ef6b
        -0x6b0a0a47
        0x469c55ef
        0x547ce983
        0x793143d4
        -0x7889f10e
        0x6d9c499f
        0x57696c5c
        -0x37d5acf6
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ai;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZLcom/ironsource/adqualitysdk/sdk/i/ai$e;)V
    .registers 7

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->l:Lcom/ironsource/adqualitysdk/sdk/i/ai;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->h:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->i:Lorg/json/JSONObject;

    iput-boolean p5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->j:Z

    iput-object p6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->k:Lcom/ironsource/adqualitysdk/sdk/i/ai$e;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method

.method private static b([II)Ljava/lang/String;
    .registers 14

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x4

    :try_start_4
    new-array v1, v1, [C

    array-length v2, p0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    new-array v2, v2, [C

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->d:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/4 v5, 0x0

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    :goto_16
    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    array-length v7, p0

    if-ge v6, v7, :cond_bc

    aget v7, p0, v6

    const/16 v8, 0x10

    shr-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v5

    aget v7, p0, v6

    int-to-char v7, v7

    aput-char v7, v1, v3

    add-int/lit8 v7, v6, 0x1

    aget v7, p0, v7

    shr-int/2addr v7, v8

    int-to-char v7, v7

    const/4 v9, 0x2

    aput-char v7, v1, v9

    add-int/lit8 v6, v6, 0x1

    aget v6, p0, v6

    int-to-char v6, v6

    const/4 v7, 0x3

    aput-char v6, v1, v7

    aget-char v6, v1, v5

    shl-int/2addr v6, v8

    aget-char v10, v1, v3

    add-int/2addr v6, v10

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    aget-char v6, v1, v9

    shl-int/2addr v6, v8

    aget-char v10, v1, v7

    add-int/2addr v6, v10

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ([I)V

    const/4 v6, 0x0

    :goto_4d
    if-ge v6, v8, :cond_6a

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    aget v11, v4, v6

    xor-int/2addr v10, v11

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    invoke-static {v10}, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾇ(I)I

    move-result v10

    sget v11, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    xor-int/2addr v10, v11

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sget v11, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sput v11, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_4d

    :cond_6a
    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    aget v8, v4, v8

    xor-int/2addr v6, v8

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    const/16 v8, 0x11

    aget v8, v4, v8

    xor-int/2addr v6, v8

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    ushr-int/lit8 v8, v6, 0x10

    int-to-char v8, v8

    aput-char v8, v1, v5

    int-to-char v6, v6

    aput-char v6, v1, v3

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    ushr-int/lit8 v8, v6, 0x10

    int-to-char v8, v8

    aput-char v8, v1, v9

    int-to-char v6, v6

    aput-char v6, v1, v7

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ([I)V

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    shl-int/lit8 v8, v6, 0x1

    aget-char v10, v1, v5

    aput-char v10, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v3

    aget-char v10, v1, v3

    aput-char v10, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v9

    aget-char v9, v1, v9

    aput-char v9, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v7

    aget-char v7, v1, v7

    aput-char v7, v2, v8

    add-int/lit8 v6, v6, 0x2

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    goto/16 :goto_16

    :cond_bc
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v5, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_4 .. :try_end_c2} :catchall_c3

    return-object p0

    :catchall_c3
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final ﻛ()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->g:Ljava/lang/String;

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_138

    const-string v2, ""

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0xd

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->b([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    const/4 v0, 0x1

    :goto_24
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_46

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->f:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->e:I

    rem-int/2addr v0, v4

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    goto :goto_36

    :cond_35
    const/4 v0, 0x1

    :goto_36
    if-ne v0, v1, :cond_3e

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->l:Lcom/ironsource/adqualitysdk/sdk/i/ai;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->e(Lcom/ironsource/adqualitysdk/sdk/i/ai;)I

    goto :goto_46

    :cond_3e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->l:Lcom/ironsource/adqualitysdk/sdk/i/ai;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->e(Lcom/ironsource/adqualitysdk/sdk/i/ai;)I

    :try_start_43
    throw v3
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v0

    throw v0

    :cond_46
    :goto_46
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->l:Lcom/ironsource/adqualitysdk/sdk/i/ai;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->d(Lcom/ironsource/adqualitysdk/sdk/i/ai;)I

    move-result v0

    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->l:Lcom/ironsource/adqualitysdk/sdk/i/ai;

    invoke-static {v5}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->c(Lcom/ironsource/adqualitysdk/sdk/i/ai;)I

    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->h:Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾒ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    new-array v6, v4, [I

    fill-array-data v6, :array_14c

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    const/4 v8, 0x4

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->b([II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->g:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-array v6, v4, [I

    fill-array-data v6, :array_154

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    add-int/2addr v7, v4

    invoke-static {v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->b([II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_15c

    const v6, -0xfffff7

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v0, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->b([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->i:Lorg/json/JSONObject;

    const/16 v7, 0x31

    if-eqz v6, :cond_a7

    const/16 v9, 0x30

    goto :goto_a9

    :cond_a7
    const/16 v9, 0x31

    :goto_a9
    if-eq v9, v7, :cond_de

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->f:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v7, v0, 0x80

    sput v7, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->e:I

    rem-int/2addr v0, v4

    if-eqz v0, :cond_cd

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﻛ:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᖺ:Ljava/lang/String;

    iget-object v7, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->i:Lorg/json/JSONObject;

    invoke-virtual {v7, v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v3, 0x12

    :try_start_c9
    div-int/2addr v3, v2
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_cb

    goto :goto_de

    :catchall_cb
    move-exception v0

    throw v0

    :cond_cd
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﻛ:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᖺ:Ljava/lang/String;

    iget-object v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->i:Lorg/json/JSONObject;

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_de
    :goto_de
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f9

    new-array v0, v4, [I

    fill-array-data v0, :array_16c

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/graphics/PointF;->length(FF)F

    move-result v3

    cmpl-float v2, v3, v2

    add-int/2addr v2, v8

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->b([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :cond_f9
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﾇ:Ljava/lang/String;

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ｋ:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10b

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ｋ:Ljava/lang/String;

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10b
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->l:Lcom/ironsource/adqualitysdk/sdk/i/ai;

    iget-boolean v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->j:Z

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->g:Ljava/lang/String;

    new-array v4, v8, [I

    fill-array-data v4, :array_174

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/lit8 v6, v6, 0x7

    invoke-static {v4, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->b([II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v5, v2, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jk;->ｋ(Lorg/json/JSONObject;ZZZ)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ai$a$a;

    invoke-direct {v1, p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ai$a$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ai$a;Lorg/json/JSONObject;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    return-void

    nop

    :array_138
    .array-data 4
        0x4be5aff3    # 3.0105574E7f
        -0x385d0b4
        0x7f158e6e
        0x499bd830    # 1276678.0f
        -0x7aa56461
        0x4a43f785    # 3210721.2f
        0x6366fa1
        0x2f11c6d3
    .end array-data

    :array_14c
    .array-data 4
        0x688e71eb
        -0x37d3944
    .end array-data

    :array_154
    .array-data 4
        0x47a66018    # 85184.19f
        0x6caa1356
    .end array-data

    :array_15c
    .array-data 4
        0x2799ed11
        0x5480049b
        0x220d07c4
        0x430949cb
        -0x48fae678
        -0x420b4ed
    .end array-data

    :array_16c
    .array-data 4
        0x1756eef1
        -0xf6b848e
    .end array-data

    :array_174
    .array-data 4
        -0x7012b9fb
        0x7136ff0c
        -0x24c60f6b
        -0x49d1e539
    .end array-data
.end method

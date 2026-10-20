###### Class com.ironsource.adqualitysdk.sdk.i.r.a.C0353a (com.ironsource.adqualitysdk.sdk.i.r$a$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ix$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/r$a;->ﻛ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static a:[I = null

.field private static b:I = 0x0

.field private static c:I = 0x1


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/r$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;->a:[I

    return-void

    :array_a
    .array-data 4
        0x7ee5a6bb
        0x5607e5d8
        0x301c734c
        0x5985d385
        0x70a7f4cb
        -0x69b336f7
        -0x6df2e61e
        0x239ee739
        0x7825ad14
        0x13f96729
        0x1c4b6e41
        -0x31bbbcd2
        -0xfc2aea2
        0x488e4de7
        -0xfb0814a
        -0x34fbc299    # -8666471.0f
        -0x57404259
        -0x2e2fe506
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/r$a;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/r$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([II)Ljava/lang/String;
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

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;->a:[I

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
.method public final ﻐ(Ljava/lang/String;)V
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;->c:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;->b:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v0, 0x4c

    if-eqz p1, :cond_15

    const/16 v2, 0x4d

    goto :goto_17

    :cond_15
    const/16 v2, 0x4c

    :goto_17
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eq v2, v0, :cond_51

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/r$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/r$a;->k:Lcom/ironsource/adqualitysdk/sdk/i/r;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/r;->d(Lcom/ironsource/adqualitysdk/sdk/i/r;)Lcom/ironsource/adqualitysdk/sdk/i/ix;

    move-result-object v0

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_e4

    invoke-static {v5}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v6

    rsub-int/lit8 v6, v6, 0xe

    invoke-static {v2, v6}, Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;->a([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v6, v4, [I

    fill-array-data v6, :array_f8

    const-string v7, ""

    invoke-static {v7, v7, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x5

    invoke-static {v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;->a([II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v6, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ix;->ﾇ(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ix$d;)V

    :cond_51
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/r$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/r$a;->k:Lcom/ironsource/adqualitysdk/sdk/i/r;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/r;->n(Lcom/ironsource/adqualitysdk/sdk/i/r;)Lcom/ironsource/adqualitysdk/sdk/i/ag;

    move-result-object v0

    new-array v2, v4, [I

    fill-array-data v2, :array_104

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/lit8 v6, v6, 0x7

    invoke-static {v2, v6}, Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;->a([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/r$a;

    iget-boolean v7, v6, Lcom/ironsource/adqualitysdk/sdk/i/r$a;->h:Z

    if-eqz v7, :cond_a4

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;->c:I

    add-int/lit8 v3, v3, 0x6d

    rem-int/lit16 v7, v3, 0x80

    sput v7, Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;->b:I

    rem-int/2addr v3, v1

    iget-object v3, v6, Lcom/ironsource/adqualitysdk/sdk/i/r$a;->i:Ljava/lang/String;

    if-eqz v3, :cond_89

    add-int/lit8 v7, v7, 0x17

    rem-int/lit16 v4, v7, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;->c:I

    rem-int/2addr v7, v1

    goto :goto_a4

    :cond_89
    new-array v3, v1, [I

    fill-array-data v3, :array_110

    invoke-static {v5, v5}, Landroid/view/View;->getDefaultSize(II)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v3, v6}, Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;->a([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;->c:I

    add-int/lit8 v4, v4, 0x11

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;->b:I

    rem-int/2addr v4, v1

    :cond_a4
    :goto_a4
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/r$a;

    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/r$a;->k:Lcom/ironsource/adqualitysdk/sdk/i/r;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/r;->j(Lcom/ironsource/adqualitysdk/sdk/i/r;)Lcom/ironsource/adqualitysdk/sdk/i/ax;

    move-result-object v1

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/gl;

    iget-object v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/r$a;

    iget-object v6, v6, Lcom/ironsource/adqualitysdk/sdk/i/r$a;->k:Lcom/ironsource/adqualitysdk/sdk/i/r;

    invoke-static {v6}, Lcom/ironsource/adqualitysdk/sdk/i/r;->p(Lcom/ironsource/adqualitysdk/sdk/i/r;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/ironsource/adqualitysdk/sdk/i/gl;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/r$a;

    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/r$a;->k:Lcom/ironsource/adqualitysdk/sdk/i/r;

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/r;->p(Lcom/ironsource/adqualitysdk/sdk/i/r;)Landroid/content/Context;

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/r$a;

    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/r$a;->k:Lcom/ironsource/adqualitysdk/sdk/i/r;

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/r;->s(Lcom/ironsource/adqualitysdk/sdk/i/r;)Lcom/ironsource/adqualitysdk/sdk/i/ak;

    move-result-object v4

    invoke-static {v3, v1, p1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/jq;->ﻛ(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ax;ZLcom/ironsource/adqualitysdk/sdk/i/ak;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->ﻐ(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/r$a;

    iget-boolean v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/r$a;->j:Z

    if-eqz v0, :cond_d6

    goto :goto_d7

    :cond_d6
    const/4 v5, 0x1

    :goto_d7
    if-eqz v5, :cond_da

    goto :goto_e3

    :cond_da
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/r$a;->k:Lcom/ironsource/adqualitysdk/sdk/i/r;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/r;->n(Lcom/ironsource/adqualitysdk/sdk/i/r;)Lcom/ironsource/adqualitysdk/sdk/i/ag;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->ﻐ()V

    :goto_e3
    return-void

    :array_e4
    .array-data 4
        0x73d51986
        -0x71cbf539
        -0x7d8e309
        0x4e42683a    # 8.154026E8f
        0x55d3bc50
        0x4bbe6dbe    # 2.4959868E7f
        0x334c065
        -0x11ad5402    # -1.6299944E28f
    .end array-data

    :array_f8
    .array-data 4
        0x71b5c4c6
        0x7d4a355b
        -0x30da4095
        0x4daa779e    # 3.5749574E8f
    .end array-data

    :array_104
    .array-data 4
        -0x3de60af4
        0x72b369cf
        0x2e37d5ed
        -0x71649431
    .end array-data

    :array_110
    .array-data 4
        -0x3c0e9ac6
        0x6750ae45
    .end array-data
.end method

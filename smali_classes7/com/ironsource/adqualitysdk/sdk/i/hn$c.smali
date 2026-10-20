###### Class com.ironsource.adqualitysdk.sdk.i.hn.c (com.ironsource.adqualitysdk.sdk.i.hn$c)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/hn$c;
.super Lcom/ironsource/adqualitysdk/sdk/i/hh$b;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/cg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/hn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field private static h:I = 0x7

.field private static i:[I = null

.field private static j:I = 0x0

.field private static k:I = 0x1


# instance fields
.field private l:Lcom/ironsource/adqualitysdk/sdk/i/hn;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->i:[I

    return-void

    :array_a
    .array-data 4
        0x4f34f28c
        -0x2c63039d
        0x2606bbcb
        -0x6c7b5e26
        0x25f62729
        -0x142b1dfc
        0x762d1f80
        -0x731336d1
        0x7749af62
        0x61ef9fff
        -0x2ce9bd3
        0x59212ede
        0x19daebc0
        -0xc27f248
        -0x86f7df7
        -0x53b00b16
        -0x1eaccffb
        -0x6ea4674e
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hh$b;-><init>()V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hn;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    return-void
.end method

.method private d(I)Lcom/ironsource/adqualitysdk/sdk/i/hn$c;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->j:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->k:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    iget v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/hh;->k:I

    or-int/2addr p1, v2

    iput p1, v0, Lcom/ironsource/adqualitysdk/sdk/i/hh;->k:I

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->j:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0
.end method

.method private e()Lcom/ironsource/adqualitysdk/sdk/i/hn$c;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->k:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->j:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hn;->d()V

    return-object p0

    :cond_17
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hn;->d()V

    const/4 v0, 0x0

    :try_start_1d
    throw v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v0

    throw v0
.end method

.method private f(I)Lcom/ironsource/adqualitysdk/sdk/i/hn$c;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->k:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hn;->e(Lcom/ironsource/adqualitysdk/sdk/i/hn;I)I

    const/16 p1, 0x4f

    :try_start_19
    div-int/2addr p1, v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1b

    goto :goto_22

    :catchall_1b
    move-exception p1

    throw p1

    :cond_1d
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hn;->e(Lcom/ironsource/adqualitysdk/sdk/i/hn;I)I

    :goto_22
    return-object p0
.end method

.method private g(Ljava/lang/Class;)Lcom/ironsource/adqualitysdk/sdk/i/hn$c;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->j:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->k:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hn;->j(Lcom/ironsource/adqualitysdk/sdk/i/hn;Ljava/lang/Class;)Ljava/lang/Class;

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->j:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->k:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    if-nez p1, :cond_1e

    const/4 p1, 0x0

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x1

    :goto_1f
    if-ne p1, v0, :cond_22

    return-object p0

    :cond_22
    const/4 p1, 0x0

    :try_start_23
    throw p1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p1

    throw p1
.end method

.method private h(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/hn$c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/hn$c;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->j:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->k:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hn;->g(Lcom/ironsource/adqualitysdk/sdk/i/hn;Ljava/util/List;)Ljava/util/List;

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->k:I

    add-int/lit8 p1, p1, 0x2d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->j:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method private static i([II)Ljava/lang/String;
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

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->i:[I

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

.method private j(I)Lcom/ironsource/adqualitysdk/sdk/i/hn$c;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->j:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->k:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x4b

    if-nez v0, :cond_11

    const/16 v0, 0x4b

    goto :goto_13

    :cond_11
    const/16 v0, 0x42

    :goto_13
    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    iget v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/hh;->j:I

    or-int/2addr p1, v1

    :goto_1a
    iput p1, v0, Lcom/ironsource/adqualitysdk/sdk/i/hh;->j:I

    goto :goto_23

    :cond_1d
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    iget v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/hh;->j:I

    and-int/2addr p1, v1

    goto :goto_1a

    :goto_23
    return-object p0
.end method

.method private k(Ljava/lang/Class;)Lcom/ironsource/adqualitysdk/sdk/i/hn$c;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->j:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->k:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hn;->i(Lcom/ironsource/adqualitysdk/sdk/i/hn;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1b
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hn;->i(Lcom/ironsource/adqualitysdk/sdk/i/hn;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    :try_start_25
    throw p1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception p1

    throw p1
.end method

.method private l(Z)Lcom/ironsource/adqualitysdk/sdk/i/hn$c;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->j:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->k:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hn;->h(Lcom/ironsource/adqualitysdk/sdk/i/hn;Z)Z

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->k:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->j:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :cond_21
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hn;->h(Lcom/ironsource/adqualitysdk/sdk/i/hn;Z)Z

    const/4 p1, 0x0

    :try_start_27
    throw p1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p1

    throw p1
.end method

.method private m(I)Lcom/ironsource/adqualitysdk/sdk/i/hn$c;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->j:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->k:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hn;->f(Lcom/ironsource/adqualitysdk/sdk/i/hn;I)I

    return-object p0

    :cond_18
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hn;->f(Lcom/ironsource/adqualitysdk/sdk/i/hn;I)I

    const/4 p1, 0x0

    :try_start_1e
    throw p1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p1

    throw p1
.end method

.method private n()Lcom/ironsource/adqualitysdk/sdk/i/hn;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->k:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->j:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->k:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method private o(ZI)Lcom/ironsource/adqualitysdk/sdk/i/hn$c;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->k:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    const/16 v0, 0x55

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    iput-boolean p1, v0, Lcom/ironsource/adqualitysdk/sdk/i/hh;->h:Z

    iput p2, v0, Lcom/ironsource/adqualitysdk/sdk/i/hh;->i:I

    const/4 p1, 0x3

    :try_start_1a
    div-int/2addr p1, v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1c

    goto :goto_24

    :catchall_1c
    move-exception p1

    throw p1

    :cond_1e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    iput-boolean p1, v0, Lcom/ironsource/adqualitysdk/sdk/i/hh;->h:Z

    iput p2, v0, Lcom/ironsource/adqualitysdk/sdk/i/hh;->i:I

    :goto_24
    return-object p0
.end method

.method private static p(IZIILjava/lang/String;)Ljava/lang/String;
    .registers 11

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_6
    check-cast p4, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﻐ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    new-array v1, p3, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    :goto_10
    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    if-ge v3, p3, :cond_2f

    aget-char v3, p4, v3

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾇ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾇ:I

    add-int/2addr v4, p0

    int-to-char v4, v4

    aput-char v4, v1, v3

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    aget-char v4, v1, v3

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->h:I

    sub-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    goto :goto_10

    :cond_2f
    if-lez p2, :cond_46

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    new-array p0, p3, [C

    invoke-static {v1, v2, p0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    sub-int p4, p3, p2

    invoke-static {p0, v2, v1, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    sub-int p4, p3, p2

    invoke-static {p0, p2, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_46
    if-eqz p1, :cond_5e

    new-array p0, p3, [C

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    :goto_4c
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    if-ge p1, p3, :cond_5d

    sub-int p2, p3, p1

    add-int/lit8 p2, p2, -0x1

    aget-char p2, v1, p2

    aput-char p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    goto :goto_4c

    :cond_5d
    move-object v1, p0

    :cond_5e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_b .. :try_end_64} :catchall_65

    return-object p0

    :catchall_65
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final ﾒ(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/ch;)Ljava/lang/Object;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ironsource/adqualitysdk/sdk/i/ch;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-class v3, Ljava/lang/Integer;

    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const/16 v5, 0x30

    const/16 v6, 0xa

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x5

    const-string v15, ""

    const/16 v11, 0xc

    const/16 v16, 0x2

    const/4 v10, 0x1

    const/4 v14, 0x0

    sparse-switch v4, :sswitch_data_2c4

    goto/16 :goto_208

    :sswitch_23
    invoke-static {v15, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    add-int/lit8 v4, v4, 0x72

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    shr-int/lit8 v5, v5, 0x16

    sub-int/2addr v12, v5

    invoke-static {v14, v14}, Landroid/view/View;->resolveSize(II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x12

    const-string v6, "\u0003\ufff7\u0008\ufff7\uffe6\n\ufffb\t\t\ufffb\u0006\u000f\uffea\t\u0008\ufffb\n\ufffb"

    invoke-static {v4, v10, v12, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->p(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_208

    const/4 v6, 0x1

    goto/16 :goto_209

    :sswitch_49
    new-array v4, v11, [I

    fill-array-data v4, :array_30c

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v5

    cmp-long v9, v5, v7

    add-int/lit8 v9, v9, 0x14

    invoke-static {v4, v9}, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->i([II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    const/4 v4, 0x0

    goto :goto_67

    :cond_66
    const/4 v4, 0x1

    :goto_67
    if-eq v4, v10, :cond_208

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->j:I

    add-int/2addr v4, v13

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->k:I

    rem-int/lit8 v4, v4, 0x2

    const/4 v6, 0x6

    goto/16 :goto_209

    :sswitch_75
    invoke-static {v15, v5, v14}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x6d

    invoke-static {v14}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v5

    const-string v6, "\ufffe\r\uffeb\ufffe\r\u000e\u000b\u0007\uffed\u0012\t\ufffe\uffed\u0008\uffdf\u0002\u0007\ufffd\u000c"

    cmpl-float v5, v5, v9

    add-int/lit8 v5, v5, 0x12

    invoke-static {v15}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x14

    invoke-static {v4, v14, v5, v7, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->p(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9c

    const/16 v4, 0xf

    goto :goto_9e

    :cond_9c
    const/16 v4, 0x4a

    :goto_9e
    const/16 v5, 0xf

    if-eq v4, v5, :cond_a4

    goto/16 :goto_208

    :cond_a4
    const/4 v6, 0x0

    goto/16 :goto_209

    :sswitch_a7
    new-array v4, v11, [I

    fill-array-data v4, :array_328

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v5

    shr-int/lit8 v5, v5, 0x18

    rsub-int/lit8 v5, v5, 0x15

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->i([II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c4

    const/4 v4, 0x1

    goto :goto_c5

    :cond_c4
    const/4 v4, 0x0

    :goto_c5
    if-eqz v4, :cond_208

    const/4 v6, 0x5

    goto/16 :goto_209

    :sswitch_ca
    new-array v4, v6, [I

    fill-array-data v4, :array_344

    invoke-static {v14, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x12

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->i([II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e5

    const/4 v4, 0x1

    goto :goto_e6

    :cond_e5
    const/4 v4, 0x0

    :goto_e6
    if-eq v4, v10, :cond_ea

    goto/16 :goto_208

    :cond_ea
    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->k:I

    add-int/lit8 v4, v4, 0x6d

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->j:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_f9

    const/16 v4, 0x31

    goto :goto_fb

    :cond_f9
    const/16 v4, 0x38

    :goto_fb
    const/16 v5, 0x38

    if-eq v4, v5, :cond_103

    const/16 v6, 0x28

    goto/16 :goto_209

    :cond_103
    const/4 v6, 0x7

    goto/16 :goto_209

    :sswitch_106
    invoke-static {v14, v14, v14, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    add-int/lit8 v4, v4, 0x6e

    invoke-static {v14, v14}, Landroid/view/View;->resolveSize(II)I

    move-result v5

    const/4 v6, 0x4

    rsub-int/lit8 v5, v5, 0x4

    invoke-static {v14, v14}, Landroid/view/View;->resolveSize(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x18

    const-string v7, "\u000b\ufffa\ufffe\u000c\ufffe\t\u0012\uffed\u0007\u000b\u000e\r\ufffe\uffeb\r\ufffc\ufffa\u0011\uffde\u000b\u0008\uffdf\u0001\ufffc"

    invoke-static {v4, v10, v5, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->p(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12b

    const/4 v4, 0x1

    goto :goto_12c

    :cond_12b
    const/4 v4, 0x0

    :goto_12c
    if-eq v4, v10, :cond_130

    goto/16 :goto_208

    :cond_130
    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->j:I

    add-int/lit8 v4, v4, 0x27

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->k:I

    rem-int/lit8 v4, v4, 0x2

    const/4 v6, 0x4

    goto/16 :goto_209

    :sswitch_13d
    new-array v4, v11, [I

    fill-array-data v4, :array_35c

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int/lit8 v5, v5, 0x15

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->i([II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_208

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->k:I

    add-int/lit8 v5, v4, 0x59

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->j:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_167

    const/4 v5, 0x3

    const/4 v6, 0x3

    goto :goto_168

    :cond_167
    const/4 v6, 0x2

    :goto_168
    add-int/lit8 v4, v4, 0x4b

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->j:I

    rem-int/lit8 v4, v4, 0x2

    goto/16 :goto_209

    :sswitch_172
    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int/lit8 v4, v4, 0x74

    invoke-static {v14}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x2

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v6

    shr-int/2addr v6, v12

    add-int/2addr v6, v13

    const-string v7, "\ufff8\u0005\u0007\ufff8\u0006"

    invoke-static {v4, v10, v5, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->p(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_208

    const/16 v6, 0x9

    goto/16 :goto_209

    :sswitch_19a
    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x6f

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    const/4 v7, 0x4

    add-int/2addr v5, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v7

    shr-int/2addr v7, v12

    add-int/2addr v7, v13

    const-string v8, "\u0003\u0000\u000c\ufff9\ufffb"

    invoke-static {v4, v10, v5, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->p(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c0

    const/4 v4, 0x1

    goto :goto_1c1

    :cond_1c0
    const/4 v4, 0x0

    :goto_1c1
    if-eq v4, v10, :cond_209

    goto :goto_208

    :sswitch_1c4
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_378

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v5

    cmpl-float v5, v5, v9

    sub-int/2addr v11, v5

    invoke-static {v4, v11}, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->i([II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e1

    const/4 v4, 0x1

    goto :goto_1e2

    :cond_1e1
    const/4 v4, 0x0

    :goto_1e2
    if-eqz v4, :cond_208

    const/4 v6, 0x3

    goto :goto_209

    :sswitch_1e6
    new-array v4, v11, [I

    fill-array-data v4, :array_388

    invoke-static {v15, v14, v14}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x15

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->i([II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_201

    const/4 v4, 0x0

    goto :goto_202

    :cond_201
    const/4 v4, 0x1

    :goto_202
    if-eqz v4, :cond_205

    goto :goto_208

    :cond_205
    const/16 v6, 0x8

    goto :goto_209

    :cond_208
    :goto_208
    const/4 v6, -0x1

    :cond_209
    :goto_209
    packed-switch v6, :pswitch_data_2f2

    goto/16 :goto_8

    :pswitch_20e
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->n()Lcom/ironsource/adqualitysdk/sdk/i/hn;

    move-result-object v1

    return-object v1

    :pswitch_213
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->e()Lcom/ironsource/adqualitysdk/sdk/i/hn$c;

    move-result-object v1

    return-object v1

    :pswitch_218
    const-class v1, Ljava/lang/Class;

    invoke-static {v2, v14, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->k(Ljava/lang/Class;)Lcom/ironsource/adqualitysdk/sdk/i/hn$c;

    move-result-object v1

    return-object v1

    :pswitch_225
    const-class v1, Ljava/lang/Boolean;

    invoke-static {v2, v14, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v10, :cond_242

    invoke-static {v2, v10, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v11

    goto :goto_243

    :cond_242
    const/4 v11, -0x1

    :goto_243
    invoke-direct {v0, v1, v11}, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->o(ZI)Lcom/ironsource/adqualitysdk/sdk/i/hn$c;

    move-result-object v1

    return-object v1

    :pswitch_248
    invoke-static {v2, v14, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->d(I)Lcom/ironsource/adqualitysdk/sdk/i/hn$c;

    move-result-object v1

    return-object v1

    :pswitch_257
    invoke-static {v2, v14, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->j(I)Lcom/ironsource/adqualitysdk/sdk/i/hn$c;

    move-result-object v1

    return-object v1

    :pswitch_266
    const-class v1, Ljava/lang/Boolean;

    invoke-static {v2, v14, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->l(Z)Lcom/ironsource/adqualitysdk/sdk/i/hn$c;

    move-result-object v1

    return-object v1

    :pswitch_277
    invoke-static {v2, v14, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->m(I)Lcom/ironsource/adqualitysdk/sdk/i/hn$c;

    move-result-object v1

    return-object v1

    :pswitch_286
    invoke-static {v2, v14, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->f(I)Lcom/ironsource/adqualitysdk/sdk/i/hn$c;

    move-result-object v1

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->k:I

    add-int/lit8 v2, v2, 0x4d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->j:I

    rem-int/lit8 v2, v2, 0x2

    return-object v1

    :pswitch_29f
    const-class v1, Ljava/util/List;

    invoke-static {v2, v14, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->h(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/hn$c;

    move-result-object v1

    return-object v1

    :pswitch_2ac
    const-class v1, Ljava/lang/Class;

    invoke-static {v2, v14, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->g(Ljava/lang/Class;)Lcom/ironsource/adqualitysdk/sdk/i/hn$c;

    move-result-object v1

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->k:I

    add-int/lit8 v2, v2, 0x5f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/hn$c;->j:I

    rem-int/lit8 v2, v2, 0x2

    return-object v1

    nop

    :sswitch_data_2c4
    .sparse-switch
        -0x7869fea8 -> :sswitch_1e6
        -0x23cf5ecd -> :sswitch_1c4
        0x59bc66e -> :sswitch_19a
        0x6761d4f -> :sswitch_172
        0x7e7f90c -> :sswitch_13d
        0xbf4c4a8 -> :sswitch_106
        0x1711abaa -> :sswitch_ca
        0x175cef12 -> :sswitch_a7
        0x177bc480 -> :sswitch_75
        0x54d47844 -> :sswitch_49
        0x69b7b3ed -> :sswitch_23
    .end sparse-switch

    :pswitch_data_2f2
    .packed-switch 0x0
        :pswitch_2ac
        :pswitch_29f
        :pswitch_286
        :pswitch_277
        :pswitch_266
        :pswitch_257
        :pswitch_248
        :pswitch_225
        :pswitch_218
        :pswitch_213
        :pswitch_20e
    .end packed-switch

    :array_30c
    .array-data 4
        0x6cccbcc
        0x18734777
        0x4b8e00ce    # 1.8612636E7f
        -0x2a111d1a
        0x484d1bd6
        -0x464143cd
        -0x7eb12e18
        -0xc783553
        -0x19c94a0b
        -0x1254ee6e
        0x8ebc82b
        -0x33adf473    # -5.5062068E7f
    .end array-data

    :array_328
    .array-data 4
        0x6cccbcc
        0x18734777
        0x4b8e00ce    # 1.8612636E7f
        -0x2a111d1a
        0x484d1bd6
        -0x464143cd
        0x30f51006
        0x583d8666
        -0x19c94a0b
        -0x1254ee6e
        0x8ebc82b
        -0x33adf473    # -5.5062068E7f
    .end array-data

    :array_344
    .array-data 4
        0x656cb7a9
        -0x64720b43
        -0x7385b00f
        0x13a414fe
        0x7f5a121f
        -0x6e8ffde0
        0x234b2c98
        0x61cec106
        -0x4452e114
        0x1241cd96
    .end array-data

    :array_35c
    .array-data 4
        0x4e8e948d
        0x50171ed4
        0x402ddfe2
        -0x792386f9
        0x30a72bab
        -0x4929203b
        -0x188bb723
        0x559d9546
        0x85469be
        -0x3be4cdcc
        0x3e5d22d3
        -0x5e83bb0b
    .end array-data

    :array_378
    .array-data 4
        -0x58adb650
        0x4f61b68e
        -0x4e8fae8f
        0x5ce83fbe
        -0x598ae856
        -0x2937392f
    .end array-data

    :array_388
    .array-data 4
        0x7ed17ead
        -0xae51d61
        0x5b74f6d6
        0x2e132204
        0x4ddd26c0    # 4.6378803E8f
        -0x11d96967
        0x5294914f
        -0x32d255ab
        0x35f1d2bb
        -0x40092ec5
        0x8ebc82b
        -0x33adf473    # -5.5062068E7f
    .end array-data
.end method

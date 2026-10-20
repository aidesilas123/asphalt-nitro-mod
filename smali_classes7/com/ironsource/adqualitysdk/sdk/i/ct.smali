###### Class com.json.adqualitysdk.sdk.i.ct (com.ironsource.adqualitysdk.sdk.i.ct)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ct;
.super Lcom/ironsource/adqualitysdk/sdk/i/cx;
.source ""


# static fields
.field private static h:[I = null

.field private static i:I = 0x0

.field private static j:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ct;->h:[I

    return-void

    :array_a
    .array-data 4
        -0x358bcdbd    # -4000912.8f
        0x5365550a
        0x1c447682
        -0x18192d7d
        0x1284f4fc
        -0x25f68224
        0x2f23d1f8
        0x323c1436
        -0x17e77219
        0x227c0c00
        -0x4935211c
        -0x4ad47403
        -0x1ce3c0a7
        -0x11a15a1f
        0x37992bfd
        -0x2f5b8f01
        0x194290e0
        -0x6f7cb040
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;-><init>()V

    return-void
.end method

.method private static d([II)Ljava/lang/String;
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

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ct;->h:[I

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
.method public final ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/cj;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;

    const-class v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {p2, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :try_start_b
    const-class v3, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    const/4 v4, 0x1

    invoke-static {p2, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d} :catch_d3

    const/16 v7, 0x5d

    const/4 v8, 0x2

    if-le v6, v8, :cond_25

    const/16 v6, 0x5d

    goto :goto_27

    :cond_25
    const/16 v6, 0x2b

    :goto_27
    if-eq v6, v7, :cond_2b

    :goto_29
    move-object v0, p1

    goto :goto_62

    :cond_2b
    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/ct;->i:I

    add-int/lit8 v6, v6, 0x11

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/ironsource/adqualitysdk/sdk/i/ct;->j:I

    rem-int/2addr v6, v8

    :try_start_34
    invoke-static {p2, v8, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->b(Ljava/util/List;ILjava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5d

    invoke-static {p2, v8, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x1a

    const/4 v9, 0x3

    if-le v6, v9, :cond_4b

    const/4 v6, 0x5

    goto :goto_4d

    :cond_4b
    const/16 v6, 0x1a

    :goto_4d
    if-eq v6, v7, :cond_62

    invoke-static {p2, v9}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v5
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_53} :catch_d3

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/ct;->i:I

    add-int/lit8 p2, p2, 0x47

    rem-int/lit16 v6, p2, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/ct;->j:I

    rem-int/2addr p2, v8

    goto :goto_62

    :cond_5d
    :try_start_5d
    invoke-static {p2, v8}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v5

    goto :goto_29

    :cond_62
    :goto_62
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_68
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_6c} :catch_d3

    if-ge v6, v7, :cond_d2

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/ct;->i:I

    add-int/lit8 v7, v7, 0x23

    rem-int/lit16 v9, v7, 0x80

    sput v9, Lcom/ironsource/adqualitysdk/sdk/i/ct;->j:I

    rem-int/2addr v7, v8

    if-nez v7, :cond_8f

    :try_start_79
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v2, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﺙ()Lcom/ironsource/adqualitysdk/sdk/i/dr;

    move-result-object v7

    invoke-virtual {v3, v7, v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dn;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﾇ()Z

    move-result v7

    if-eqz v7, :cond_c1

    goto :goto_aa

    :cond_8f
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v2, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﺙ()Lcom/ironsource/adqualitysdk/sdk/i/dr;

    move-result-object v7

    invoke-virtual {v3, v7, v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dn;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﾇ()Z

    move-result v7
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_a2} :catch_d3

    if-eqz v7, :cond_a6

    const/4 v7, 0x0

    goto :goto_a7

    :cond_a6
    const/4 v7, 0x1

    :goto_a7
    if-eqz v7, :cond_aa

    goto :goto_c1

    :cond_aa
    :goto_aa
    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/ct;->j:I

    add-int/lit8 v7, v7, 0x21

    rem-int/lit16 v9, v7, 0x80

    sput v9, Lcom/ironsource/adqualitysdk/sdk/i/ct;->i:I

    rem-int/2addr v7, v8

    if-eqz v7, :cond_b7

    const/4 v7, 0x0

    goto :goto_b8

    :cond_b7
    const/4 v7, 0x1

    :goto_b8
    if-eqz v7, :cond_c7

    :try_start_ba
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c1
    :goto_c1
    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_68

    :cond_c7
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_ce} :catch_d3

    const/4 p2, 0x0

    :try_start_cf
    throw p2
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d0} :catch_d3
    .catchall {:try_start_cf .. :try_end_d0} :catchall_d0

    :catchall_d0
    move-exception p1

    throw p1

    :cond_d2
    return-object p2

    :catch_d3
    move-exception p2

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_f4

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x1c

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ct;->d([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    nop

    :array_f4
    .array-data 4
        -0x5b524f5f
        -0x55b91772
        0x22bfee0d
        -0x707ae49
        -0x3552bac6    # -5677725.0f
        0x23a5510
        0x70174468
        0x2e7db57
        0x19ba0ff
        -0x5c543354
        -0x4113db54
        0x6f307a7b
        0x38064302
        0x5b17f70a
    .end array-data
.end method

.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/cj;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ct;->i:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ct;->j:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ct;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Ljava/lang/Object;

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ct;->j:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ct;->i:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1b

    const/4 p1, 0x0

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x1

    :goto_1c
    const/4 v0, 0x0

    if-ne p1, p2, :cond_20

    return-object v0

    :cond_20
    :try_start_20
    throw v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p1

    throw p1
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/cj;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;

    const-class v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {p2, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :try_start_b
    const-class v3, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    const/4 v4, 0x1

    invoke-static {p2, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_21

    goto :goto_22

    :cond_21
    const/4 v4, 0x0

    :goto_22
    if-eqz v4, :cond_49

    invoke-static {p2, v7, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->b(Ljava/util/List;ILjava/lang/Class;)Z

    move-result v4
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_28} :catch_94

    if-eqz v4, :cond_45

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/ct;->i:I

    add-int/lit8 v4, v4, 0x71

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/ct;->j:I

    rem-int/2addr v4, v7

    :try_start_33
    invoke-static {p2, v7, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/cj;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x3

    if-le v4, v6, :cond_4a

    invoke-static {p2, v6}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v5

    goto :goto_4a

    :cond_45
    invoke-static {p2, v7}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v5

    :cond_49
    move-object v0, p1

    :cond_4a
    :goto_4a
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_4f} :catch_94

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/ct;->j:I

    add-int/lit8 v4, v4, 0x47

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/ct;->i:I

    rem-int/2addr v4, v7

    const/4 v4, 0x0

    :goto_59
    :try_start_59
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_7b

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﺙ()Lcom/ironsource/adqualitysdk/sdk/i/dr;

    move-result-object v6

    invoke-virtual {v3, v6, v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dn;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﻐ()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_78} :catch_94

    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    :cond_7b
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ct;->j:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ct;->i:I

    rem-int/2addr p1, v7

    const/16 v0, 0x2e

    if-eqz p1, :cond_8b

    const/16 p1, 0x2e

    goto :goto_8d

    :cond_8b
    const/16 p1, 0x2d

    :goto_8d
    if-eq p1, v0, :cond_90

    return-object p2

    :cond_90
    const/4 p1, 0x0

    :try_start_91
    throw p1
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_92

    :catchall_92
    move-exception p1

    throw p1

    :catch_94
    move-exception p2

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_b4

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x21

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ct;->d([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :array_b4
    .array-data 4
        -0x5b524f5f
        -0x55b91772
        0x22bfee0d
        -0x707ae49
        -0x3552bac6    # -5677725.0f
        0x23a5510
        0x645fd91f
        0x5095be19
        -0x6afb4f12
        -0x614fa162
        -0x294bbd31
        -0x3baaabb1
        -0x369887aa
        0x2c3c3185
        -0x3ccb6e30
        0xac8b030
        0x27c8f5f4
        0x1894c59
    .end array-data
.end method

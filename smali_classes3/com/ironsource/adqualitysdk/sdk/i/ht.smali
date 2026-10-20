###### Class com.json.adqualitysdk.sdk.i.ht (com.ironsource.adqualitysdk.sdk.i.ht)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ht;
.super Lcom/ironsource/adqualitysdk/sdk/i/cx;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/cg;
.implements Lcom/ironsource/adqualitysdk/sdk/i/hp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ironsource/adqualitysdk/sdk/i/cx;",
        "Lcom/ironsource/adqualitysdk/sdk/i/cg;",
        "Lcom/ironsource/adqualitysdk/sdk/i/hp<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static h:[C = null

.field private static i:I = 0x7f

.field private static j:Z = true

.field private static k:Z = true

.field private static l:I = 0x0

.field private static m:I = 0x1


# instance fields
.field private n:Ljava/lang/reflect/Field;

.field private o:Ljava/util/Collection;

.field private p:Ljava/util/Map;

.field private q:Ljava/lang/Object;

.field private r:Lcom/ironsource/adqualitysdk/sdk/i/hp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->h:[C

    return-void

    :array_a
    .array-data 2
        0xe6s
        0xe4s
        0xf3s
        0xd5s
        0xe0s
        0xebs
        0xf4s
        0xf2s
        0xe8s
        0xc5s
        0xe3s
        0xc2s
        0xees
        0xe2s
        0xeds
        0xccs
        0xefs
        0xcfs
        0xf1s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hp;)V
    .registers 4

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->n:Ljava/lang/reflect/Field;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->q:Ljava/lang/Object;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->r:Lcom/ironsource/adqualitysdk/sdk/i/hp;

    return-void
.end method

.method constructor <init>(Ljava/util/Collection;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hp;)V
    .registers 4

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->o:Ljava/util/Collection;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->q:Ljava/lang/Object;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->r:Lcom/ironsource/adqualitysdk/sdk/i/hp;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hp;)V
    .registers 4

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->p:Ljava/util/Map;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->q:Ljava/lang/Object;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->r:Lcom/ironsource/adqualitysdk/sdk/i/hp;

    return-void
.end method

.method private d()Lcom/ironsource/adqualitysdk/sdk/i/hp;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->m:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ht;->l:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->r:Lcom/ironsource/adqualitysdk/sdk/i/hp;

    return-object v0

    :cond_15
    const/4 v0, 0x0

    :try_start_16
    throw v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v0

    throw v0
.end method

.method private e()Ljava/util/Map;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->m:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ht;->l:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1e

    if-eqz v0, :cond_11

    const/16 v0, 0x1e

    goto :goto_13

    :cond_11
    const/16 v0, 0x53

    :goto_13
    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->p:Ljava/util/Map;

    return-object v0

    :cond_18
    const/4 v0, 0x0

    :try_start_19
    throw v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    throw v0
.end method

.method private f()Ljava/util/Collection;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->l:I

    add-int/lit8 v1, v0, 0x5

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ht;->m:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_10

    const/4 v1, 0x0

    goto :goto_11

    :cond_10
    const/4 v1, 0x1

    :goto_11
    if-ne v1, v3, :cond_2f

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->o:Ljava/util/Collection;

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ht;->m:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v3, 0x15

    if-nez v0, :cond_24

    const/16 v0, 0x15

    goto :goto_26

    :cond_24
    const/16 v0, 0xd

    :goto_26
    if-eq v0, v3, :cond_29

    return-object v1

    :cond_29
    const/16 v0, 0xf

    :try_start_2b
    div-int/2addr v0, v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2d

    return-object v1

    :catchall_2d
    move-exception v0

    throw v0

    :cond_2f
    const/4 v0, 0x0

    :try_start_30
    throw v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v0

    throw v0
.end method

.method private g()Z
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->n:Ljava/lang/reflect/Field;

    const/16 v1, 0x24

    if-eqz v0, :cond_9

    const/16 v0, 0x24

    goto :goto_b

    :cond_9
    const/16 v0, 0x40

    :goto_b
    if-eq v0, v1, :cond_19

    const/4 v0, 0x0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ht;->l:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ht;->m:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    :cond_19
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->l:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ht;->m:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    return v0
.end method

.method private static h([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 9

    if-eqz p3, :cond_8

    const-string v0, "ISO-8859-1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    :cond_8
    check-cast p3, [B

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_10
    check-cast p1, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ht;->h:[C

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ht;->i:I

    sget-boolean v3, Lcom/ironsource/adqualitysdk/sdk/i/ht;->k:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_49

    array-length p0, p3

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    new-array p0, p0, [C

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    :goto_25
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    if-ge p1, v3, :cond_42

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sub-int/2addr v3, v4

    aget-byte v3, p3, v3

    add-int/2addr v3, p2

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p1

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    goto :goto_25

    :cond_42
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p1

    :cond_49
    sget-boolean p3, Lcom/ironsource/adqualitysdk/sdk/i/ht;->j:Z

    if-eqz p3, :cond_78

    array-length p0, p1

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    new-array p0, p0, [C

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    :goto_54
    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    if-ge p3, v3, :cond_71

    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sub-int/2addr v3, v4

    aget-char v3, p1, v3

    sub-int/2addr v3, p2

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p3

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    goto :goto_54

    :cond_71
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p1

    :cond_78
    array-length p1, p0

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    new-array p1, p1, [C

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    :goto_7f
    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    if-ge p3, v3, :cond_9c

    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sub-int/2addr v3, v4

    aget v3, p0, v3

    sub-int/2addr v3, p2

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p1, p3

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    goto :goto_7f

    :cond_9c
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_15 .. :try_end_a2} :catchall_a3

    return-object p0

    :catchall_a3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private i(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->m:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ht;->l:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ht;->g()Z

    move-result v0

    const/16 v1, 0x57

    if-eqz v0, :cond_15

    const/16 v0, 0x57

    goto :goto_17

    :cond_15
    const/16 v0, 0x60

    :goto_17
    if-eq v0, v1, :cond_1a

    goto :goto_2b

    :cond_1a
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->l:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ht;->m:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_24
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->n:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->q:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2b} :catch_2b

    :catch_2b
    :goto_2b
    return-void
.end method

.method private j()Z
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->l:I

    add-int/lit8 v1, v0, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ht;->m:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->p:Ljava/util/Map;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ht;->m:I

    rem-int/lit8 v0, v0, 0x2

    return v3
.end method

.method private ﻛ()Z
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->l:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ht;->m:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    const/4 v3, 0x0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->o:Ljava/util/Collection;

    const/4 v4, 0x4

    :try_start_10
    div-int/2addr v4, v3
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_1d

    const/16 v4, 0x59

    if-eqz v0, :cond_18

    const/16 v0, 0x59

    goto :goto_1a

    :cond_18
    const/16 v0, 0x3c

    :goto_1a
    if-eq v0, v4, :cond_2a

    goto :goto_29

    :catchall_1d
    move-exception v0

    throw v0

    :cond_1f
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->o:Ljava/util/Collection;

    if-eqz v0, :cond_25

    const/4 v0, 0x2

    goto :goto_27

    :cond_25
    const/16 v0, 0x2a

    :goto_27
    if-eq v0, v2, :cond_2a

    :goto_29
    return v3

    :cond_2a
    const/4 v0, 0x1

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ht;->l:I

    rem-int/2addr v1, v2

    if-eqz v1, :cond_3a

    const/16 v1, 0x1b

    :try_start_36
    div-int/2addr v1, v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_38

    return v0

    :catchall_38
    move-exception v0

    throw v0

    :cond_3a
    return v0
.end method


# virtual methods
.method public final ﻐ()Ljava/lang/reflect/Field;
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->l:I

    const/16 v1, 0x19

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ht;->m:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v3, 0x39

    if-nez v0, :cond_12

    const/16 v0, 0x19

    goto :goto_14

    :cond_12
    const/16 v0, 0x39

    :goto_14
    const/4 v4, 0x0

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->n:Ljava/lang/reflect/Field;

    add-int/2addr v2, v3

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ht;->l:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_24

    const/4 v1, 0x0

    goto :goto_25

    :cond_24
    const/4 v1, 0x1

    :goto_25
    if-eqz v1, :cond_28

    return-object v0

    :cond_28
    :try_start_28
    throw v4
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v0

    throw v0

    :cond_2b
    :try_start_2b
    throw v4
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v0

    throw v0
.end method

.method public final ｋ()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->m:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ht;->l:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ht;->g()Z

    move-result v0

    const/16 v1, 0x3a

    if-eqz v0, :cond_15

    const/16 v0, 0x3a

    goto :goto_17

    :cond_15
    const/16 v0, 0x1e

    :goto_17
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2f

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ht;->ﻛ()Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v3, 0x1

    :goto_24
    if-eq v3, v4, :cond_2c

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ht;->j()Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_2c
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->q:Ljava/lang/Object;

    return-object v0

    :cond_2f
    :try_start_2f
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->n:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ht;->q:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_37} :catch_4a

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ht;->m:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/ht;->l:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_44

    const/4 v3, 0x1

    :cond_44
    if-nez v3, :cond_47

    return-object v0

    :cond_47
    :try_start_47
    throw v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception v0

    throw v0

    :catch_4a
    :cond_4a
    return-object v2
.end method

.method public final ﾒ(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/ch;)Ljava/lang/Object;
    .registers 14
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

    const/4 p3, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x7

    const/16 v2, 0x30

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    sparse-switch v0, :sswitch_data_18a

    goto/16 :goto_148

    :sswitch_15
    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x7f

    const-string v1, "\u008b\u0086\u0082\u0089\u008a\u0088\u0089"

    invoke-static {v9, v9, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ht;->h([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_148

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ht;->m:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/ht;->l:I

    rem-int/2addr p1, v5

    const/4 p3, 0x2

    goto/16 :goto_148

    :sswitch_39
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    rsub-int/lit8 v0, v0, 0x7f

    const-string v1, "\u0082\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v9, v9, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ht;->h([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_148

    const/4 p3, 0x0

    goto/16 :goto_148

    :sswitch_54
    invoke-static {v7, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit8 v0, v0, 0x7f

    const-string v1, "\u008b\u0086\u0082\u0089\u008a\u0083\u0082\u0081"

    invoke-static {v9, v9, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ht;->h([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_148

    const/4 p3, 0x3

    goto/16 :goto_148

    :sswitch_6d
    invoke-static {v7, v8}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x7f

    const-string v2, "\u0082\u0087\u0086\u0085\u0084\u0083\u0082\u0088"

    invoke-static {v9, v9, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ht;->h([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_85

    const/4 p1, 0x0

    goto :goto_86

    :cond_85
    const/4 p1, 0x1

    :goto_86
    if-eq p1, v6, :cond_148

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ht;->l:I

    add-int/2addr p1, v1

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/ht;->m:I

    rem-int/2addr p1, v5

    const/4 p3, 0x1

    goto/16 :goto_148

    :sswitch_93
    invoke-static {v7}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x7f

    const-string v1, "\u0083\u008f\u0082\u0093\u0085\u0092\u0083\u0082\u0081"

    invoke-static {v9, v9, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ht;->h([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_148

    const/16 p3, 0x8

    goto/16 :goto_148

    :sswitch_ad
    invoke-static {v7, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x7e

    const-string v1, "\u008f\u008d\u0089\u0083\u008e\u0082\u0086\u0086\u008d\u008c\u0088\u0089"

    invoke-static {v9, v9, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ht;->h([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x35

    if-eqz p1, :cond_c8

    const/16 p1, 0x2f

    goto :goto_ca

    :cond_c8
    const/16 p1, 0x35

    :goto_ca
    if-eq p1, v0, :cond_148

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ht;->m:I

    add-int/lit8 p1, p1, 0x4b

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/ht;->l:I

    rem-int/2addr p1, v5

    const/4 p3, 0x4

    goto/16 :goto_148

    :sswitch_d8
    invoke-static {v7, v2, v8}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x7e

    const-string v1, "\u0091\u0085\u0090\u0088\u0089"

    invoke-static {v9, v9, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ht;->h([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_148

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ht;->l:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/ht;->m:I

    rem-int/2addr p1, v5

    const/4 p3, 0x6

    goto :goto_148

    :sswitch_f9
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v6

    const-string v0, "\u0091\u0085\u0090\u0083\u0082\u0081"

    cmp-long v2, v6, v3

    add-int/lit8 v2, v2, 0x7e

    invoke-static {v9, v9, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ht;->h([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_148

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ht;->m:I

    add-int/lit8 p1, p1, 0xd

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/ht;->l:I

    rem-int/2addr p1, v5

    const/16 p3, 0x16

    if-eqz p1, :cond_121

    const/16 p1, 0x16

    goto :goto_123

    :cond_121
    const/16 p1, 0x44

    :goto_123
    if-eq p1, p3, :cond_127

    const/4 p3, 0x7

    goto :goto_148

    :cond_127
    const/16 p3, 0x64

    goto :goto_148

    :sswitch_12a
    invoke-static {v8}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    const-string v2, "\u008f\u008d\u0089\u0083\u008e\u0082\u0086\u0086\u008d\u008c\u0083\u0082\u0081"

    cmp-long v5, v0, v3

    rsub-int/lit8 v0, v5, 0x7f

    invoke-static {v9, v9, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ht;->h([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_144

    const/4 p1, 0x0

    goto :goto_145

    :cond_144
    const/4 p1, 0x1

    :goto_145
    if-eq p1, v6, :cond_148

    const/4 p3, 0x5

    :cond_148
    :goto_148
    packed-switch p3, :pswitch_data_1b0

    return-object v9

    :pswitch_14c
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ht;->d()Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object p1

    return-object p1

    :pswitch_151
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ht;->e()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :pswitch_156
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ht;->j()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_15f
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ht;->f()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    :pswitch_164
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ht;->ﻛ()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_16d
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ht;->ﻐ()Ljava/lang/reflect/Field;

    move-result-object p1

    return-object p1

    :pswitch_172
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ht;->g()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_17b
    const-class p1, Ljava/lang/Object;

    invoke-static {p2, v8, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ht;->i(Ljava/lang/Object;)V

    return-object v9

    :pswitch_185
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ht;->ｋ()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_data_18a
    .sparse-switch
        -0x7989996c -> :sswitch_12a
        -0x4a77a9da -> :sswitch_f9
        0x5fd17d2 -> :sswitch_d8
        0x19a0ab68 -> :sswitch_ad
        0x29c22ba0 -> :sswitch_93
        0x53d8522f -> :sswitch_6d
        0x746c4744 -> :sswitch_54
        0x754a37bb -> :sswitch_39
        0x7ab74df0 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_1b0
    .packed-switch 0x0
        :pswitch_185
        :pswitch_17b
        :pswitch_172
        :pswitch_16d
        :pswitch_164
        :pswitch_15f
        :pswitch_156
        :pswitch_151
        :pswitch_14c
    .end packed-switch
.end method

###### Class com.json.adqualitysdk.sdk.i.hl (com.ironsource.adqualitysdk.sdk.i.hl)
.class public Lcom/ironsource/adqualitysdk/sdk/i/hl;
.super Lcom/ironsource/adqualitysdk/sdk/i/hh;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/hl$c;
    }
.end annotation


# instance fields
.field private l:Ljava/lang/Class;

.field private m:I

.field private n:Z

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hh;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->o:Ljava/util/List;

    invoke-super {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hh;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->l:Ljava/lang/Class;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->m:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->n:Z

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method static synthetic e(Lcom/ironsource/adqualitysdk/sdk/i/hl;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->n:Z

    return p1
.end method

.method static synthetic f(Lcom/ironsource/adqualitysdk/sdk/i/hl;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->o:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lcom/ironsource/adqualitysdk/sdk/i/hl;I)I
    .registers 2

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->m:I

    return p1
.end method

.method static synthetic h(Lcom/ironsource/adqualitysdk/sdk/i/hl;Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->l:Ljava/lang/Class;

    return-object p1
.end method


# virtual methods
.method protected final d()V
    .registers 2

    invoke-super {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hh;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->l:Ljava/lang/Class;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->m:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->n:Z

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final ﱟ()I
    .registers 2

    iget v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->m:I

    return v0
.end method

.method public final ﱡ()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->o:Ljava/util/List;

    return-object v0
.end method

.method public final ﺙ()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->l:Ljava/lang/Class;

    return-object v0
.end method

.method public final ﻏ()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->n:Z

    return v0
.end method

.method public final ﾒ(Ljava/lang/Class;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl;->l:Ljava/lang/Class;

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.hl.c (com.ironsource.adqualitysdk.sdk.i.hl$c)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/hl$c;
.super Lcom/ironsource/adqualitysdk/sdk/i/hh$b;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/cg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/hl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field private static h:[C = null

.field private static i:C = '\u0006'

.field private static j:I = 0x0

.field private static k:I = 0x1


# instance fields
.field private l:Lcom/ironsource/adqualitysdk/sdk/i/hl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->h:[C

    return-void

    :array_a
    .array-data 2
        0x73s
        0x65s
        0x74s
        0x54s
        0x79s
        0x70s
        0x6fs
        0x46s
        0x69s
        0x6es
        0x64s
        0x6bs
        0x6cs
        0x61s
        0x72s
        0x63s
        0x68s
        0x45s
        0x78s
        0x4ds
        0x66s
        0x49s
        0x75s
        0x53s
        0x67s
        0x62s
        0x76s
        0x77s
        0x7as
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x7fs
        0x80s
        0x81s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hh$b;-><init>()V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hl;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    return-void
.end method

.method private d(Ljava/lang/Class;)Lcom/ironsource/adqualitysdk/sdk/i/hl$c;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->k:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->j:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hl;->f(Lcom/ironsource/adqualitysdk/sdk/i/hl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->k:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->j:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_22

    const/4 p1, 0x0

    goto :goto_23

    :cond_22
    const/4 p1, 0x1

    :goto_23
    if-ne p1, v0, :cond_26

    return-object p0

    :cond_26
    const/4 p1, 0x0

    :try_start_27
    throw p1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p1

    throw p1
.end method

.method private static e(BLjava/lang/String;I)Ljava/lang/String;
    .registers 11

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_6
    check-cast p1, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->h:[C

    sget-char v2, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->i:C

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

.method private f(I)Lcom/ironsource/adqualitysdk/sdk/i/hl$c;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->j:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->k:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eq v0, v1, :cond_19

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hl;->g(Lcom/ironsource/adqualitysdk/sdk/i/hl;I)I

    goto :goto_21

    :cond_19
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hl;->g(Lcom/ironsource/adqualitysdk/sdk/i/hl;I)I

    const/16 p1, 0x3b

    :try_start_20
    div-int/2addr p1, v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_22

    :goto_21
    return-object p0

    :catchall_22
    move-exception p1

    throw p1
.end method

.method private g(ZI)Lcom/ironsource/adqualitysdk/sdk/i/hl$c;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->k:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->j:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    iput-boolean p1, v0, Lcom/ironsource/adqualitysdk/sdk/i/hh;->h:Z

    iput p2, v0, Lcom/ironsource/adqualitysdk/sdk/i/hh;->i:I

    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->k:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0
.end method

.method private h(Z)Lcom/ironsource/adqualitysdk/sdk/i/hl$c;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->k:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->j:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hl;->e(Lcom/ironsource/adqualitysdk/sdk/i/hl;Z)Z

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->j:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->k:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method private ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hl$c;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->j:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->k:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hl;->d()V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->k:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x43

    if-eqz v0, :cond_20

    const/16 v0, 0x43

    goto :goto_22

    :cond_20
    const/16 v0, 0x2b

    :goto_22
    if-eq v0, v1, :cond_25

    return-object p0

    :cond_25
    const/16 v0, 0x12

    :try_start_27
    div-int/lit8 v0, v0, 0x0
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_2a

    return-object p0

    :catchall_2a
    move-exception v0

    throw v0
.end method


# virtual methods
.method public final ﻐ(Ljava/lang/Class;)Lcom/ironsource/adqualitysdk/sdk/i/hl$c;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->k:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->j:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hl;->h(Lcom/ironsource/adqualitysdk/sdk/i/hl;Ljava/lang/Class;)Ljava/lang/Class;

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->j:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->k:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method public final ﾇ(I)Lcom/ironsource/adqualitysdk/sdk/i/hl$c;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->k:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x3c

    if-eqz v0, :cond_11

    const/16 v0, 0x3c

    goto :goto_12

    :cond_11
    const/4 v0, 0x3

    :goto_12
    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    iget v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/hh;->j:I

    or-int/2addr p1, v1

    :goto_19
    iput p1, v0, Lcom/ironsource/adqualitysdk/sdk/i/hh;->j:I

    goto :goto_22

    :cond_1c
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    iget v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/hh;->j:I

    and-int/2addr p1, v1

    goto :goto_19

    :goto_22
    return-object p0
.end method

.method public final ﾒ(I)Lcom/ironsource/adqualitysdk/sdk/i/hl$c;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->j:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->k:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    iget v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/hh;->k:I

    or-int/2addr p1, v2

    iput p1, v0, Lcom/ironsource/adqualitysdk/sdk/i/hh;->k:I

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->j:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0
.end method

.method public final ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/hl;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->k:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0xa

    if-eqz v0, :cond_11

    const/16 v0, 0xa

    goto :goto_13

    :cond_11
    const/16 v0, 0xc

    :goto_13
    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    goto :goto_1e

    :cond_18
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->l:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    const/16 v1, 0x16

    :try_start_1c
    div-int/lit8 v1, v1, 0x0
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_1f

    :goto_1e
    return-object v0

    :catchall_1f
    move-exception v0

    throw v0
.end method

.method public final ﾒ(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/ch;)Ljava/lang/Object;
    .registers 20
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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-class v3, Ljava/lang/Boolean;

    const-class v4, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const/16 v6, 0x8

    const-wide/16 v7, 0x0

    const/16 v10, 0x2f

    const/4 v12, 0x5

    const-string v13, ""

    const/16 v14, 0x45

    const/4 v15, 0x2

    const/4 v9, 0x1

    const/4 v11, 0x0

    sparse-switch v5, :sswitch_data_232

    goto/16 :goto_185

    :sswitch_21
    invoke-static {v11}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x50

    int-to-byte v5, v5

    invoke-static {v13}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x15

    const-string v7, "\u0010\u0007\u0007\u0016\u0007\u000b\u000e\u001a\u0007\u0002\u000c\u0002\u0000\t\u000c\u0017\u0010\r\u001c\u0010\u00b5"

    invoke-static {v5, v7, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->e(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_185

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->j:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->k:I

    rem-int/2addr v0, v15

    if-nez v0, :cond_4b

    const/4 v0, 0x0

    goto :goto_4c

    :cond_4b
    const/4 v0, 0x1

    :goto_4c
    if-eq v0, v9, :cond_50

    goto/16 :goto_c8

    :cond_50
    const/4 v6, 0x4

    goto/16 :goto_186

    :sswitch_53
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int/lit8 v5, v5, 0x6a

    int-to-byte v5, v5

    invoke-static {v11, v11}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v12

    const-string v6, "\u0010\u0007\t\u0004\u0005\u0000\u0002\u0004\t\u0012\u001b\u0006\u0008\u000c\u00cf"

    cmp-long v10, v12, v7

    rsub-int/lit8 v7, v10, 0xe

    invoke-static {v5, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->e(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_185

    const/4 v6, 0x6

    goto/16 :goto_186

    :sswitch_77
    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v5

    sub-int/2addr v10, v5

    int-to-byte v5, v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v7

    shr-int/lit8 v6, v7, 0x8

    add-int/lit8 v6, v6, 0x15

    const-string v7, "\u0010\u0007\u0007\u0016\u0007\u000b\u000e\u001a\u0007\u0002\u000c\u0002\u0000\t\u001b\u000f\u0010\r\u001c\u0010\u0094"

    invoke-static {v5, v7, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->e(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v5, 0xb

    if-eqz v0, :cond_9a

    const/16 v0, 0x3b

    goto :goto_9c

    :cond_9a
    const/16 v0, 0xb

    :goto_9c
    if-eq v0, v5, :cond_185

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->k:I

    add-int/2addr v0, v9

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->j:I

    rem-int/2addr v0, v15

    const/4 v6, 0x3

    goto/16 :goto_186

    :sswitch_a9
    invoke-static {v13}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v5

    rsub-int/lit8 v5, v5, 0xe

    int-to-byte v5, v5

    const/16 v6, 0x30

    invoke-static {v13, v6}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v6

    add-int/lit8 v6, v6, 0x13

    const-string v7, "\u0001\u0002\u000e\u000f\u0010\u0011\u001b\u000f\u0012\u0017\u0000\u0002\u000f\u0010\r\u000e\u0082\u0082"

    invoke-static {v5, v7, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->e(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_185

    :goto_c8
    const/4 v6, 0x5

    goto/16 :goto_186

    :sswitch_cb
    invoke-static {v11, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    add-int/lit8 v5, v5, 0x5c

    int-to-byte v5, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/2addr v6, v12

    const-string v7, "\r\u0002\u0001\u0002\u00d0"

    invoke-static {v5, v7, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->e(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_185

    const/4 v6, 0x7

    goto/16 :goto_186

    :sswitch_ec
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    sub-int/2addr v14, v5

    int-to-byte v5, v14

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    shr-int/lit8 v7, v7, 0x16

    add-int/2addr v7, v12

    const-string v8, "\u001c\u0013\u0006\u000e\u00a9"

    invoke-static {v5, v8, v7}, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->e(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_185

    goto/16 :goto_186

    :sswitch_10d
    invoke-static {v13}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v14, v5

    int-to-byte v5, v14

    invoke-static {v11, v11}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    rsub-int/lit8 v6, v6, 0xa

    const-string v7, "\u0005\u0006\u000b\u0002\u0008\t\u0000\r\u0006\u0004"

    invoke-static {v5, v7, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->e(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_185

    const/4 v6, 0x1

    goto :goto_186

    :sswitch_12b
    invoke-static {v11}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    const/4 v6, 0x3

    rsub-int/lit8 v5, v5, 0x3

    int-to-byte v5, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/lit8 v6, v6, 0xd

    const-string v7, "\u0001\u0002\u0003\u0004\u0005\u0000\u0002\u0004\u0007\u0008\t\ng"

    invoke-static {v5, v7, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->e(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14e

    const/16 v0, 0x45

    goto :goto_150

    :cond_14e
    const/16 v0, 0x37

    :goto_150
    if-eq v0, v14, :cond_153

    goto :goto_185

    :cond_153
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->k:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->j:I

    rem-int/2addr v0, v15

    const/4 v6, 0x0

    goto :goto_186

    :sswitch_15e
    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x2a

    int-to-byte v5, v5

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x12

    const-string v7, "\u0001\u0002\u000e\u000f\u0010\u0011\u0008\u0007\u000f\u000c\u0013\u000c\u000e\u0003\u0004\u0005\u0000\u0002"

    invoke-static {v5, v7, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->e(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17e

    const/16 v0, 0x2f

    goto :goto_180

    :cond_17e
    const/16 v0, 0x40

    :goto_180
    if-eq v0, v10, :cond_183

    goto :goto_185

    :cond_183
    const/4 v6, 0x2

    goto :goto_186

    :cond_185
    :goto_185
    const/4 v6, -0x1

    :goto_186
    const/4 v0, 0x0

    packed-switch v6, :pswitch_data_258

    return-object v0

    :pswitch_18b
    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/hl;

    move-result-object v0

    return-object v0

    :pswitch_190
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hl$c;

    move-result-object v0

    return-object v0

    :pswitch_195
    const-class v0, Ljava/lang/Class;

    invoke-static {v2, v11, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->d(Ljava/lang/Class;)Lcom/ironsource/adqualitysdk/sdk/i/hl$c;

    move-result-object v0

    return-object v0

    :pswitch_1a2
    invoke-static {v2, v11, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v9, :cond_1c6

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->j:I

    add-int/lit8 v3, v3, 0x31

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->k:I

    rem-int/2addr v3, v15

    invoke-static {v2, v9, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v9

    goto :goto_1c7

    :cond_1c6
    const/4 v9, -0x1

    :goto_1c7
    invoke-direct {v1, v0, v9}, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->g(ZI)Lcom/ironsource/adqualitysdk/sdk/i/hl$c;

    move-result-object v0

    return-object v0

    :pswitch_1cc
    invoke-static {v2, v11, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->ﾒ(I)Lcom/ironsource/adqualitysdk/sdk/i/hl$c;

    move-result-object v0

    return-object v0

    :pswitch_1db
    invoke-static {v2, v11, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->ﾇ(I)Lcom/ironsource/adqualitysdk/sdk/i/hl$c;

    move-result-object v0

    return-object v0

    :pswitch_1ea
    invoke-static {v2, v11, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->h(Z)Lcom/ironsource/adqualitysdk/sdk/i/hl$c;

    move-result-object v2

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->k:I

    add-int/lit8 v3, v3, 0x69

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->j:I

    rem-int/2addr v3, v15

    if-eqz v3, :cond_204

    goto :goto_205

    :cond_204
    const/4 v11, 0x1

    :goto_205
    if-ne v11, v9, :cond_208

    return-object v2

    :cond_208
    :try_start_208
    throw v0
    :try_end_209
    .catchall {:try_start_208 .. :try_end_209} :catchall_209

    :catchall_209
    move-exception v0

    move-object v2, v0

    throw v2

    :pswitch_20c
    invoke-static {v2, v11, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->f(I)Lcom/ironsource/adqualitysdk/sdk/i/hl$c;

    move-result-object v0

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->k:I

    add-int/lit8 v2, v2, 0x49

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->j:I

    rem-int/2addr v2, v15

    return-object v0

    :pswitch_224
    const-class v0, Ljava/lang/Class;

    invoke-static {v2, v11, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;->ﻐ(Ljava/lang/Class;)Lcom/ironsource/adqualitysdk/sdk/i/hl$c;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_232
    .sparse-switch
        -0x5051e628 -> :sswitch_15e
        -0x370d8f50 -> :sswitch_12b
        -0xce80ae8 -> :sswitch_10d
        0x59bc66e -> :sswitch_ec
        0x6761d4f -> :sswitch_cb
        0x1711abaa -> :sswitch_a9
        0x175cef12 -> :sswitch_77
        0x3f9fecc8 -> :sswitch_53
        0x54d47844 -> :sswitch_21
    .end sparse-switch

    :pswitch_data_258
    .packed-switch 0x0
        :pswitch_224
        :pswitch_20c
        :pswitch_1ea
        :pswitch_1db
        :pswitch_1cc
        :pswitch_1a2
        :pswitch_195
        :pswitch_190
        :pswitch_18b
    .end packed-switch
.end method

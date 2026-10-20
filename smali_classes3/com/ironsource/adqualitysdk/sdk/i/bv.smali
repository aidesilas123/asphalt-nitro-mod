###### Class com.json.adqualitysdk.sdk.i.bv (com.ironsource.adqualitysdk.sdk.i.bv)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/bv;
.super Lcom/ironsource/adqualitysdk/sdk/i/az;
.source ""


# static fields
.field private static A:Z = true

.field private static B:I = 0x0

.field private static C:I = 0x1

.field private static t:C = '\ua5de'

.field private static u:C = '\u8cef'

.field private static v:C = '\uee98'

.field private static w:C = '\u34ed'

.field private static x:[C = null

.field private static y:I = 0xb

.field private static z:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1e

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/bv;->x:[C

    return-void

    :array_a
    .array-data 2
        0x58s
        0x84s
        0x5fs
        0x6cs
        0x7ds
        0x72s
        0x70s
        0x7fs
        0x4es
        0x7as
        0x79s
        0x71s
        0x74s
        0x61s
        0x7es
        0x4cs
        0x6es
        0x81s
        0x50s
        0x6fs
        0x4fs
        0x80s
        0x54s
        0x77s
        0x5ds
        0x82s
        0x5es
        0x85s
        0x57s
        0x7bs
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/az;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k(Lcom/my/target/ads/Reward;)Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bv;->C:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bv;->B:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0xc

    if-eqz v0, :cond_11

    const/16 v0, 0xc

    goto :goto_13

    :cond_11
    const/16 v0, 0x1b

    :goto_13
    if-eq v0, v1, :cond_24

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->m(Lcom/my/target/ads/Reward;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bv;->C:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bv;->B:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    :cond_24
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->m(Lcom/my/target/ads/Reward;)Ljava/lang/String;

    const/4 p0, 0x0

    :try_start_28
    throw p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    throw p0
.end method

.method private static l([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
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
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/bv;->x:[C

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/bv;->y:I

    sget-boolean v3, Lcom/ironsource/adqualitysdk/sdk/i/bv;->A:Z

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
    sget-boolean p3, Lcom/ironsource/adqualitysdk/sdk/i/bv;->z:Z

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

.method private static m(Lcom/my/target/ads/Reward;)Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bv;->B:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bv;->C:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iget-object p0, p0, Lcom/my/target/ads/Reward;->type:Ljava/lang/String;

    if-eq v0, v1, :cond_16

    goto :goto_19

    :cond_16
    const/16 v0, 0x3c

    :try_start_18
    div-int/2addr v0, v2
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_33

    :goto_19
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bv;->C:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bv;->B:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x40

    if-eqz v0, :cond_2a

    const/16 v0, 0xf

    goto :goto_2c

    :cond_2a
    const/16 v0, 0x40

    :goto_2c
    if-ne v0, v1, :cond_2f

    return-object p0

    :cond_2f
    const/4 p0, 0x0

    :try_start_30
    throw p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p0

    throw p0

    :catchall_33
    move-exception p0

    throw p0
.end method

.method private static n(Ljava/lang/String;I)Ljava/lang/String;
    .registers 13

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    array-length v1, p0

    new-array v1, v1, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    const/4 v3, 0x2

    new-array v3, v3, [C

    :goto_14
    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    array-length v5, p0

    if-ge v4, v5, :cond_76

    aget-char v5, p0, v4

    aput-char v5, v3, v2

    add-int/lit8 v4, v4, 0x1

    aget-char v4, p0, v4

    const/4 v5, 0x1

    aput-char v4, v3, v5

    const v4, 0xe370

    const/4 v6, 0x0

    :goto_28
    const/16 v7, 0x10

    if-ge v6, v7, :cond_65

    aget-char v7, v3, v5

    aget-char v8, v3, v2

    add-int/2addr v8, v4

    aget-char v9, v3, v2

    shl-int/lit8 v9, v9, 0x4

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/bv;->v:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v2

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/bv;->w:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    sub-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v5

    aget-char v7, v3, v2

    aget-char v8, v3, v5

    add-int/2addr v8, v4

    aget-char v9, v3, v5

    shl-int/lit8 v9, v9, 0x4

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/bv;->t:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v5

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/bv;->u:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    sub-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    const v7, 0x9e37

    sub-int/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_65
    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    aget-char v6, v3, v2

    aput-char v6, v1, v4

    add-int/lit8 v6, v4, 0x1

    aget-char v5, v3, v5

    aput-char v5, v1, v6

    add-int/lit8 v4, v4, 0x2

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    goto :goto_14

    :cond_76
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_b .. :try_end_7c} :catchall_7d

    return-object p0

    :catchall_7d
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method final j()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/adqualitysdk/sdk/i/az$d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x7e

    const/4 v2, 0x0

    const-string v3, "\u0087\u009e\u0082\u0083\u0094\u0085\u0084\u009a\u0087\u0099\u0088\u0087\u0086"

    invoke-static {v2, v2, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->l([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/bv$a;

    invoke-direct {v3, p0}, Lcom/ironsource/adqualitysdk/sdk/i/bv$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/bv;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bv;->B:I

    const/16 v3, 0x5d

    add-int/2addr v1, v3

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/bv;->C:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v4, 0x4d

    if-nez v1, :cond_31

    const/16 v3, 0x4d

    :cond_31
    if-eq v3, v4, :cond_34

    return-object v0

    :cond_34
    :try_start_34
    throw v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception v0

    throw v0
.end method

.method final ｋ(Ljava/lang/String;)Ljava/lang/Class;
    .registers 20

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v4, 0x6

    const/16 v5, 0x9

    const-wide/16 v6, 0x0

    const/16 v8, 0x13

    const/16 v9, 0x12

    const/16 v10, 0x30

    const/16 v11, 0x17

    const/16 v12, 0xc

    const/16 v13, 0x8

    const-string v14, ""

    const/4 v15, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x10

    const/4 v1, 0x0

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_30e

    goto/16 :goto_2cf

    :sswitch_25
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    shr-int/lit8 v2, v2, 0x16

    rsub-int/lit8 v2, v2, 0x7f

    const-string v4, "\u0086\u008d\u008c\u008b\u008a\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v3, v3, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->l([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cf

    goto/16 :goto_2d0

    :sswitch_3f
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v4

    const-string v5, "\ua7f8\u98af\u1f4b\u5b02\u172f\u3417"

    invoke-static {v5, v2}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    goto :goto_58

    :cond_57
    const/4 v15, 0x0

    :goto_58
    if-eqz v15, :cond_2cf

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bv;->B:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bv;->C:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x6

    goto/16 :goto_2d0

    :sswitch_67
    invoke-static {v1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v1

    const-string v4, "\u0087\u009c\u008d\u009b\u0094\u0090"

    cmp-long v5, v1, v6

    rsub-int/lit8 v1, v5, 0x7f

    invoke-static {v3, v3, v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->l([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/16 v0, 0x23

    goto :goto_84

    :cond_82
    const/16 v0, 0x27

    :goto_84
    const/16 v1, 0x23

    if-eq v0, v1, :cond_8a

    goto/16 :goto_2cf

    :cond_8a
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bv;->C:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bv;->B:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9a

    const/16 v1, 0x70

    goto/16 :goto_2d0

    :cond_9a
    const/16 v1, 0x12

    goto/16 :goto_2d0

    :sswitch_9e
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x10

    const-string v2, "\u53ad\ufb93\u285e\u0c6f\u0006\u1bc8\u491c\uaae3\uf08d\uc6e2\u2798\uab60\ubea9\u8dcd\u89c0\uc845"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cf

    const/4 v1, 0x3

    goto/16 :goto_2d0

    :sswitch_b9
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    add-int/2addr v2, v12

    const-string v4, "\u53ad\ufb93\u285e\u0c6f\u0006\u1bc8\u491c\uaae3\u8118\u2aa3\uf7ad\uc3f1"

    invoke-static {v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    const/4 v1, 0x1

    :cond_cf
    if-eq v1, v15, :cond_d3

    goto/16 :goto_2cf

    :cond_d3
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bv;->C:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bv;->B:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e2

    const/16 v0, 0x3f

    goto :goto_e4

    :cond_e2
    const/16 v0, 0x5c

    :goto_e4
    const/16 v1, 0x5c

    if-eq v0, v1, :cond_e9

    goto :goto_106

    :cond_e9
    const/16 v1, 0x11

    goto/16 :goto_2d0

    :sswitch_ed
    invoke-static {v14, v14, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    add-int/2addr v2, v5

    const-string v4, "\ude09\u1152\uee75\uaee6\u24b4\u9e70\u704f\ub70b\u495c\u72d6"

    invoke-static {v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    goto :goto_104

    :cond_103
    const/4 v1, 0x1

    :goto_104
    if-eq v1, v15, :cond_2cf

    :goto_106
    const/16 v1, 0x8

    goto/16 :goto_2d0

    :sswitch_10a
    invoke-static {v1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v1

    const-string v4, "\uf716\u53a7\u2d5a\uc66e\u00f5\u3567\ub10e\u999b\u0389\uaabe\u9557\ue0ef\uf5ab\u4c2e\uf716\u53a7\u174c\ue0a6\u090f\uf280\u1fbc\ufde1\ua599\u2f45\u0389\uaabe\u9557\ue0ef\u3e84\ud412\u50c5\u1a21\ue3cf\u2536\u7f6c\u7ccd\udb49\ud7c6"

    cmp-long v5, v1, v6

    add-int/lit8 v5, v5, 0x25

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cf

    const/4 v1, 0x4

    goto/16 :goto_2d0

    :sswitch_125
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    const-string v6, "\u0087\u008b\u008d\u0086\u008b\u0093\u0082\u0088\u008d\u0092\u008d\u0088\u0091\u0090"

    cmp-long v7, v1, v4

    rsub-int v1, v7, 0x80

    invoke-static {v3, v3, v1, v6}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->l([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cf

    const/4 v1, 0x5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bv;->B:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bv;->C:I

    rem-int/lit8 v0, v0, 0x2

    goto/16 :goto_2d0

    :sswitch_14c
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v12

    const-string v2, "\uc8cf\u8179\u4739\u75b2\u8c22\u9655\ua8e0\ufd56\ubd35\ufafc\u393d\u173f"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cf

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bv;->C:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bv;->B:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_172

    const/16 v0, 0x17

    goto :goto_173

    :cond_172
    const/4 v0, 0x4

    :goto_173
    if-eq v0, v11, :cond_179

    const/16 v1, 0x10

    goto/16 :goto_2d0

    :cond_179
    const/16 v1, 0x27

    goto/16 :goto_2d0

    :sswitch_17d
    invoke-static {v14, v10, v1, v1}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    add-int/2addr v1, v8

    const-string v2, "\ua7f8\u98af\u1f4b\u5b02\ub383\ua37d\u0bbe\uf1b0\uf006\u9d46\u2798\uab60\u2798\uab60\u5734\uc9b6\u172f\u3417"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cf

    const/16 v1, 0xa

    goto/16 :goto_2d0

    :sswitch_196
    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x7f

    const-string v2, "\u0094\u0090\u0098\u0084\u008d\u0088\u008d\u0088\u008f\u0085\u0087\u0088\u008b\u0097"

    invoke-static {v3, v3, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->l([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cf

    const/16 v1, 0xb

    goto/16 :goto_2d0

    :sswitch_1b2
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x7f

    const-string v4, "\u0085\u0087\u008b\u0087\u0088\u008f\u008d\u009d\u009a\u0087\u008d\u008e\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v3, v3, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->l([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cb

    const/4 v1, 0x1

    :cond_1cb
    if-eq v1, v15, :cond_1cf

    goto/16 :goto_2cf

    :cond_1cf
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bv;->C:I

    add-int/2addr v0, v11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bv;->B:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x13

    goto/16 :goto_2d0

    :sswitch_1dc
    invoke-static {v1, v1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    add-int/2addr v1, v9

    const-string v2, "\uc789\u53f5\uc114\u4af3\u8a8f\ufaf6\u33f7\u9a7e\u172f\u3417\u69c3\u3b9e\u4739\u75b2\uf656\ufe12\u83d1\u1166"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cf

    const/16 v1, 0xf

    goto/16 :goto_2d0

    :sswitch_1f5
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x16

    const-string v2, "\ub383\ua37d\u0bbe\uf1b0\uf006\u9d46\u2798\uab60\u2798\uab60\u5734\uc9b6\u172f\u3417\u69c3\u3b9e\u4739\u75b2\uf656\ufe12\u83d1\u1166"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x22

    if-eqz v0, :cond_212

    const/16 v0, 0x33

    goto :goto_214

    :cond_212
    const/16 v0, 0x22

    :goto_214
    if-eq v0, v1, :cond_2cf

    const/16 v1, 0xc

    goto/16 :goto_2d0

    :sswitch_21a
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x7f

    const-string v2, "\u0094\u0090\u0094\u0087\u0094\u0085\u0084\u009a\u0087\u0099"

    invoke-static {v3, v3, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->l([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cf

    const/16 v1, 0xe

    goto/16 :goto_2d0

    :sswitch_234
    invoke-static {v14, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    add-int/lit16 v1, v1, 0x80

    const-string v2, "\u0084\u0088\u0084\u0095\u008a\u0087\u0094\u008d\u008e"

    invoke-static {v3, v3, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->l([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cf

    const/4 v1, 0x7

    goto/16 :goto_2d0

    :sswitch_24d
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x7f

    const-string v2, "\u0085\u0087\u0086\u0084\u008b\u0084\u0081\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v3, v3, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->l([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x2b

    if-eqz v0, :cond_26a

    const/16 v0, 0x1e

    goto :goto_26c

    :cond_26a
    const/16 v0, 0x2b

    :goto_26c
    if-eq v0, v1, :cond_2cf

    const/4 v1, 0x1

    goto :goto_2d0

    :sswitch_270
    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v1

    const-string v4, "\u008b\u008a\u008d\u008f\u0085\u0087\u008e\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    cmpl-float v1, v1, v2

    add-int/lit8 v1, v1, 0x7f

    invoke-static {v3, v3, v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->l([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cf

    const/4 v1, 0x2

    goto :goto_2d0

    :sswitch_28b
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v1

    shr-int/2addr v1, v13

    rsub-int/lit8 v1, v1, 0x7f

    const-string v2, "\u0094\u0085\u0084\u009a\u0087\u0099"

    invoke-static {v3, v3, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->l([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cf

    const/16 v1, 0xd

    goto :goto_2d0

    :sswitch_2a5
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x7f

    const-string v2, "\u0084\u0088\u0084\u0095\u008a\u008d\u0094\u0096\u0090"

    invoke-static {v3, v3, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->l([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cf

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bv;->C:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bv;->B:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2cc

    const/16 v1, 0x52

    goto :goto_2d0

    :cond_2cc
    const/16 v1, 0x9

    goto :goto_2d0

    :cond_2cf
    :goto_2cf
    const/4 v1, -0x1

    :goto_2d0
    packed-switch v1, :pswitch_data_360

    return-object v3

    :pswitch_2d4
    const-class v0, Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    return-object v0

    :pswitch_2d7
    const-class v0, Lcom/my/target/ads/MyTargetView$AdSize;

    return-object v0

    :pswitch_2da
    const-class v0, Lcom/my/target/ads/MyTargetView;

    return-object v0

    :pswitch_2dd
    const-class v0, Lcom/my/target/common/CustomParams;

    return-object v0

    :pswitch_2e0
    const-class v0, Lcom/my/target/ads/RewardedAd$RewardedAdListener;

    return-object v0

    :pswitch_2e3
    const-class v0, Lcom/my/target/ads/RewardedAd;

    return-object v0

    :pswitch_2e6
    const-class v0, Lcom/my/target/ads/Reward;

    return-object v0

    :pswitch_2e9
    const-class v0, Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;

    return-object v0

    :pswitch_2ec
    const-class v0, Lcom/my/target/ads/InterstitialAd;

    return-object v0

    :pswitch_2ef
    const-class v0, Lcom/my/target/ads/BaseInterstitialAd;

    return-object v0

    :pswitch_2f2
    const-class v0, Lcom/my/target/common/models/AudioData;

    return-object v0

    :pswitch_2f5
    const-class v0, Lcom/my/target/common/models/ImageData;

    return-object v0

    :pswitch_2f8
    const-class v0, Lcom/my/target/common/models/VideoData;

    return-object v0

    :pswitch_2fb
    const-class v0, Lcom/my/target/common/BaseAd;

    return-object v0

    :pswitch_2fe
    const-class v0, Lcom/my/target/common/MyTargetActivity$ActivityEngine;

    return-object v0

    :pswitch_301
    const-class v0, Lcom/my/target/common/MyTargetActivity;

    return-object v0

    :pswitch_304
    const-class v0, Lcom/my/target/common/MyTargetVersion;

    return-object v0

    :pswitch_307
    const-class v0, Lcom/my/target/common/MyTargetManager;

    return-object v0

    :pswitch_30a
    const-class v0, Lcom/my/target/common/MyTargetConfig;

    return-object v0

    nop

    :sswitch_data_30e
    .sparse-switch
        -0x7d5dbb80 -> :sswitch_2a5
        -0x6e4bc4b1 -> :sswitch_28b
        -0x69450065 -> :sswitch_270
        -0x4c710d90 -> :sswitch_24d
        -0x39221d5b -> :sswitch_234
        -0x24589b0f -> :sswitch_21a
        -0x1db9b59d -> :sswitch_1f5
        -0x1778f33b -> :sswitch_1dc
        0x3e84d96 -> :sswitch_1b2
        0x1315208f -> :sswitch_196
        0x192621c0 -> :sswitch_17d
        0x1abdac77 -> :sswitch_14c
        0x1d0ade51 -> :sswitch_125
        0x2075e847 -> :sswitch_10a
        0x43130785 -> :sswitch_ed
        0x445b06c2 -> :sswitch_b9
        0x544268ac -> :sswitch_9e
        0x749382e4 -> :sswitch_67
        0x762c8af4 -> :sswitch_3f
        0x79a0bc1f -> :sswitch_25
    .end sparse-switch

    :pswitch_data_360
    .packed-switch 0x0
        :pswitch_30a
        :pswitch_307
        :pswitch_304
        :pswitch_301
        :pswitch_301
        :pswitch_2fe
        :pswitch_2fb
        :pswitch_2f8
        :pswitch_2f5
        :pswitch_2f2
        :pswitch_2ef
        :pswitch_2ec
        :pswitch_2e9
        :pswitch_2e6
        :pswitch_2e3
        :pswitch_2e0
        :pswitch_2dd
        :pswitch_2da
        :pswitch_2d7
        :pswitch_2d4
    .end packed-switch
.end method

.method public final ﾇ()Ljava/lang/String;
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bv;->B:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bv;->C:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    const-string v3, "\ua735\u8488\u310f\uec5e\u20de\u7a6b\uc741\uff03"

    const/4 v4, 0x0

    if-eqz v0, :cond_31

    :try_start_16
    const-class v0, Lcom/my/target/common/MyTargetVersion;

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x7

    invoke-static {v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    :goto_2a
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_47

    :cond_31
    const-class v0, Lcom/my/target/common/MyTargetVersion;

    const/16 v1, 0x5c

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_46} :catch_48

    goto :goto_2a

    :goto_47
    return-object v0

    :catch_48
    :try_start_48
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ｋ()Lcom/ironsource/adqualitysdk/sdk/i/hs;

    move-result-object v0

    const-class v1, Lcom/my/target/common/MyTargetVersion;

    const-string v2, "\u76a3\u577d\ufab1\udf08\u09bb\u10bb\u7026\ud477\ucb4e\ufe29\uc0ca\u6071"

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    rsub-int/lit8 v3, v3, 0xd

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bv;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->ﻐ(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_6a} :catch_6b

    return-object v0

    :catch_6b
    return-object v4
.end method

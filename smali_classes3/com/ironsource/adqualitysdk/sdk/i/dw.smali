###### Class com.json.adqualitysdk.sdk.i.dw (com.ironsource.adqualitysdk.sdk.i.dw)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/dw;
.super Lcom/ironsource/adqualitysdk/sdk/i/dx;
.source ""


# static fields
.field private static e:C = '\u2f8b'

.field private static f:C = '\ue469'

.field private static g:C = '\u3861'

.field private static h:C = '\uf436'

.field private static i:I = 0x0

.field private static j:I = 0x1


# instance fields
.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/do;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dx;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dq;->ﻐ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dw;->k:Ljava/lang/String;

    return-void
.end method

.method private static c(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/dw;->g:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v2

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/dw;->h:C

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

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/dw;->e:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v5

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/dw;->f:C

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
.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dw;->j:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dw;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0xe

    if-ne p0, p1, :cond_11

    const/16 v1, 0x8

    goto :goto_13

    :cond_11
    const/16 v1, 0xe

    :goto_13
    const/4 v2, 0x1

    if-eq v1, v0, :cond_17

    return v2

    :cond_17
    const/4 v0, 0x0

    if-eqz p1, :cond_64

    const-class v1, Lcom/ironsource/adqualitysdk/sdk/i/dw;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_23

    goto :goto_64

    :cond_23
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/dw;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dw;->k:Ljava/lang/String;

    const/16 v3, 0xa

    if-eqz v1, :cond_2e

    const/16 v4, 0xa

    goto :goto_30

    :cond_2e
    const/16 v4, 0x43

    :goto_30
    if-eq v4, v3, :cond_42

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/dw;->k:Ljava/lang/String;

    if-nez p1, :cond_41

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/dw;->j:I

    add-int/lit8 p1, p1, 0x4f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dw;->i:I

    rem-int/lit8 p1, p1, 0x2

    return v2

    :cond_41
    return v0

    :cond_42
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dw;->i:I

    add-int/lit8 v2, v2, 0x47

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/dw;->j:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v3, 0x5c

    if-nez v2, :cond_53

    const/16 v2, 0x2f

    goto :goto_55

    :cond_53
    const/16 v2, 0x5c

    :goto_55
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/dw;->k:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eq v2, v3, :cond_63

    const/16 v1, 0x3e

    :try_start_5f
    div-int/2addr v1, v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_61

    goto :goto_63

    :catchall_61
    move-exception p1

    throw p1

    :cond_63
    :goto_63
    return p1

    :cond_64
    :goto_64
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/dw;->j:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dw;->i:I

    rem-int/lit8 p1, p1, 0x2

    return v0
.end method

.method public final hashCode()I
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dw;->j:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dw;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dw;->k:Ljava/lang/String;

    const/16 v1, 0x2f

    :try_start_17
    div-int/2addr v1, v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_24

    const/16 v1, 0x34

    if-eqz v0, :cond_1f

    const/16 v0, 0x3d

    goto :goto_21

    :cond_1f
    const/16 v0, 0x34

    :goto_21
    if-eq v0, v1, :cond_3f

    goto :goto_2e

    :catchall_24
    move-exception v0

    throw v0

    :cond_26
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dw;->k:Ljava/lang/String;

    if-eqz v0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    if-eqz v1, :cond_3f

    :goto_2e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dw;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dw;->j:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dw;->i:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    :cond_3f
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dw;->i:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dw;->j:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dw;->k:Ljava/lang/String;

    const/4 v2, 0x1

    add-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/dw;->i:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    const/4 v1, 0x1

    :goto_1a
    if-eq v1, v2, :cond_22

    const/16 v1, 0x35

    :try_start_1e
    div-int/2addr v1, v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_20

    return-object v0

    :catchall_20
    move-exception v0

    throw v0

    :cond_22
    return-object v0
.end method

.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;
    .registers 7

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/dp;

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/az;

    move-result-object p2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dw;->k:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    const-string v3, "\u414f\ud07f\ua705\ue223\ube4d\u2856"

    invoke-static {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/dw;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->ﻐ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/az;->ﻛ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dp;-><init>(Ljava/lang/Object;)V

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/dw;->j:I

    add-int/lit8 p2, p2, 0x19

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dw;->i:I

    rem-int/lit8 p2, p2, 0x2

    const/16 v0, 0x5a

    if-eqz p2, :cond_35

    const/16 p2, 0x14

    goto :goto_37

    :cond_35
    const/16 p2, 0x5a

    :goto_37
    if-eq p2, v0, :cond_3f

    const/16 p2, 0x2d

    :try_start_3b
    div-int/2addr p2, v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3d

    return-object p1

    :catchall_3d
    move-exception p1

    throw p1

    :cond_3f
    return-object p1
.end method

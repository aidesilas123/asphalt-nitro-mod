###### Class com.json.adqualitysdk.sdk.i.ej (com.ironsource.adqualitysdk.sdk.i.ej)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ej;
.super Lcom/ironsource/adqualitysdk/sdk/i/dx;
.source ""


# static fields
.field private static e:J = 0x0L

.field private static f:I = 0x0

.field private static g:C = '\u6036'

.field private static h:I = 0x0

.field private static i:I = 0x1


# instance fields
.field private j:Ljava/lang/String;


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

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ej;->j:Ljava/lang/String;

    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;
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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/ej;->e:J

    xor-long/2addr v2, v4

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/ej;->f:I

    int-to-long v4, v4

    xor-long/2addr v2, v4

    sget-char v4, Lcom/ironsource/adqualitysdk/sdk/i/ej;->g:C

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


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/ej;

    const/16 v1, 0xe

    if-ne p0, p1, :cond_9

    const/16 v2, 0xe

    goto :goto_b

    :cond_9
    const/16 v2, 0x28

    :goto_b
    const/4 v3, 0x1

    if-eq v2, v1, :cond_45

    const/4 v1, 0x0

    if-eqz p1, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    if-eqz v2, :cond_44

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ej;->h:I

    add-int/lit8 v2, v2, 0x39

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ej;->i:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/16 v3, 0x3d

    :try_start_28
    div-int/2addr v3, v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_2c

    if-eq v0, v2, :cond_39

    goto :goto_44

    :catchall_2c
    move-exception p1

    throw p1

    :cond_2e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v0, v2, :cond_35

    goto :goto_36

    :cond_35
    const/4 v3, 0x0

    :goto_36
    if-eqz v3, :cond_39

    goto :goto_44

    :cond_39
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ej;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ej;->j:Ljava/lang/String;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ej;->j:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_44
    :goto_44
    return v1

    :cond_45
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ej;->h:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ej;->i:I

    rem-int/lit8 p1, p1, 0x2

    return v3
.end method

.method public final hashCode()I
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ej;->i:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ej;->h:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ej;->j:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    const/4 v3, 0x0

    goto :goto_14

    :cond_13
    const/4 v3, 0x1

    :goto_14
    if-eqz v3, :cond_1f

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ej;->i:I

    rem-int/lit8 v1, v1, 0x2

    return v2

    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_24
    const/4 v0, 0x0

    :try_start_25
    throw v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ej;->h:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ej;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eq v0, v1, :cond_17

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ej;->ｋ()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ej;->ｋ()Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_1b
    throw v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception v0

    throw v0
.end method

.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;
    .registers 9

    :try_start_0
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/dp;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ej;->ｋ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dr;->ﻐ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dp;-><init>(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception p1

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ej;->ｋ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﾒ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/dn;

    move-result-object v0

    if-eqz v0, :cond_1f

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/dp;

    invoke-direct {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dp;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_1f
    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    rsub-int/lit8 v1, v1, -0x1

    const v2, 0x91bc

    const/16 v3, 0x30

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v5, v3, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v3

    add-int/2addr v3, v2

    int-to-char v2, v3

    const-string v3, "\uf065\ubafc\ubb12\ud291"

    const-string v4, "\u0000\u0000\u0000\u0000"

    const-string v5, "\u73f3\u2105\u64f9\uf84f\u5f03\uff39\ud867\u2656\u646f\ue13f\ua26a\ueb76\ufd9e\u9758\ub9c4\uba97\u617d\u5aa8\u4daf\uc635\ue5e1\uc1f9\u0e50\udf20\u70c4\u19ca\uaed1\ue0ef"

    invoke-static {v3, v4, v1, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ej;->c(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻐ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/dp;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dp;-><init>(Ljava/lang/Object;)V

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/ej;->h:I

    add-int/lit8 p2, p2, 0x7

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ej;->i:I

    rem-int/lit8 p2, p2, 0x2

    return-object p1
.end method

.method public final ｋ()Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ej;->i:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ej;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x10

    if-eqz v0, :cond_11

    const/16 v0, 0x54

    goto :goto_13

    :cond_11
    const/16 v0, 0x10

    :goto_13
    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ej;->j:Ljava/lang/String;

    const/16 v1, 0x41

    :try_start_19
    div-int/lit8 v1, v1, 0x0
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v0

    throw v0

    :cond_1e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ej;->j:Ljava/lang/String;

    :goto_20
    return-object v0
.end method

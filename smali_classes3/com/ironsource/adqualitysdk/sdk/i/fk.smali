###### Class com.json.adqualitysdk.sdk.i.fk (com.ironsource.adqualitysdk.sdk.i.fk)
.class public Lcom/ironsource/adqualitysdk/sdk/i/fk;
.super Lcom/ironsource/adqualitysdk/sdk/i/fr;
.source ""


# static fields
.field private static a:J = 0x6778da6b6f17972bL

.field private static b:I = 0x0

.field private static c:I = 0x1


# instance fields
.field private d:Lcom/ironsource/adqualitysdk/sdk/i/dx;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;)V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/fr;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/fk;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    return-void
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-wide v1, Lcom/ironsource/adqualitysdk/sdk/i/fk;->a:J

    invoke-static {v1, v2, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ(J[CI)[C

    move-result-object p0

    const/4 p1, 0x4

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    :goto_14
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    array-length v2, p0

    if-ge v1, v2, :cond_3a

    add-int/lit8 v1, v1, -0x4

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ｋ:I

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    aget-char v2, p0, v1

    rem-int/lit8 v3, v1, 0x4

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/f;->ｋ:I

    int-to-long v4, v4

    sget-wide v6, Lcom/ironsource/adqualitysdk/sdk/i/fk;->a:J

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p0, v1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    goto :goto_14

    :cond_3a
    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v1, p0, p1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_b .. :try_end_42} :catchall_43

    return-object v1

    :catchall_43
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method final b()Lcom/ironsource/adqualitysdk/sdk/i/dx;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fk;->c:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fk;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fk;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    const/16 v2, 0x23

    :try_start_16
    div-int/2addr v2, v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception v0

    throw v0

    :cond_1a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fk;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    :goto_1c
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_e

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/fk;->b:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fk;->c:I

    rem-int/lit8 p1, p1, 0x2

    return v0

    :cond_e
    const/16 v1, 0x4a

    if-eqz p1, :cond_15

    const/16 v2, 0x2f

    goto :goto_17

    :cond_15
    const/16 v2, 0x4a

    :goto_17
    const/4 v3, 0x0

    if-eq v2, v1, :cond_64

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/fk;->b:I

    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fk;->c:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/16 v4, 0x1f

    :try_start_30
    div-int/2addr v4, v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_3d

    const/16 v4, 0x31

    if-eq v1, v2, :cond_38

    const/16 v1, 0x31

    goto :goto_3a

    :cond_38
    const/16 v1, 0x1c

    :goto_3a
    if-eq v1, v4, :cond_64

    goto :goto_4a

    :catchall_3d
    move-exception p1

    throw p1

    :cond_3f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_4a

    goto :goto_64

    :cond_4a
    :goto_4a
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/fk;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/fk;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/fk;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v1, :cond_57

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_57
    if-nez p1, :cond_64

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/fk;->c:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fk;->b:I

    rem-int/lit8 p1, p1, 0x2

    return v0

    :cond_64
    :goto_64
    return v3
.end method

.method public hashCode()I
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fk;->b:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fk;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fk;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    const/16 v3, 0x61

    :try_start_11
    div-int/2addr v3, v2
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_1b

    const/4 v3, 0x1

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    const/4 v0, 0x1

    :goto_18
    if-eq v0, v3, :cond_31

    goto :goto_2a

    :catchall_1b
    move-exception v0

    throw v0

    :cond_1d
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fk;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    const/16 v3, 0x1e

    if-eqz v0, :cond_26

    const/16 v0, 0x54

    goto :goto_28

    :cond_26
    const/16 v0, 0x1e

    :goto_28
    if-eq v0, v3, :cond_31

    :goto_2a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fk;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_31
    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/fk;->b:I

    rem-int/lit8 v1, v1, 0x2

    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fk;->b:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fk;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x23

    if-nez v0, :cond_11

    const/16 v0, 0x23

    goto :goto_13

    :cond_11
    const/16 v0, 0x3e

    :goto_13
    const-string v2, "\udcc3\u7021\udcf8\ubb70\u0a07"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fk;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v0, :cond_59

    goto :goto_25

    :cond_1e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fk;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    const/16 v1, 0x58

    :try_start_22
    div-int/2addr v1, v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_6a

    if-eqz v0, :cond_59

    :goto_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/fk;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v4

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/fk;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/fk;->b:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fk;->c:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_52

    const/4 v3, 0x1

    :cond_52
    if-eq v3, v4, :cond_55

    return-object v0

    :cond_55
    const/4 v0, 0x0

    :try_start_56
    throw v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    :catchall_57
    move-exception v0

    throw v0

    :cond_59
    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    add-int/2addr v0, v4

    invoke-static {v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/fk;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_6a
    move-exception v0

    throw v0
.end method

.method public ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fk;->b:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fk;->c:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fk;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    const/16 v2, 0x3e

    if-eqz v0, :cond_13

    const/16 v3, 0x56

    goto :goto_15

    :cond_13
    const/16 v3, 0x3e

    :goto_15
    if-eq v3, v2, :cond_24

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fk;->b:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object p1

    return-object p1

    :cond_24
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/dp;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dp;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

###### Class com.json.adqualitysdk.sdk.i.dv (com.ironsource.adqualitysdk.sdk.i.dv)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/dv;
.super Lcom/ironsource/adqualitysdk/sdk/i/dx;
.source ""


# static fields
.field private static e:J = 0x0L

.field private static f:I = -0x16de6746

.field private static g:C = '\u0000'

.field private static h:I = 0x0

.field private static i:I = 0x1


# instance fields
.field private j:Lcom/ironsource/adqualitysdk/sdk/i/dx;

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/do;)V
    .registers 4

    invoke-direct {p0, p3}, Lcom/ironsource/adqualitysdk/sdk/i/dx;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dv;->j:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/dv;->k:Ljava/lang/String;

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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/dv;->e:J

    xor-long/2addr v2, v4

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/dv;->f:I

    int-to-long v4, v4

    xor-long/2addr v2, v4

    sget-char v4, Lcom/ironsource/adqualitysdk/sdk/i/dv;->g:C

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

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/dv;

    const/16 v1, 0xf

    if-ne p0, p1, :cond_9

    const/16 v2, 0x40

    goto :goto_b

    :cond_9
    const/16 v2, 0xf

    :goto_b
    const/4 v3, 0x1

    if-eq v2, v1, :cond_f

    return v3

    :cond_f
    const/4 v1, 0x0

    if-eqz p1, :cond_82

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dv;->h:I

    add-int/lit8 v2, v2, 0x65

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/dv;->i:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/16 v4, 0x5e

    :try_start_24
    div-int/2addr v4, v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_28

    if-eq v0, v2, :cond_36

    goto :goto_82

    :catchall_28
    move-exception p1

    throw p1

    :cond_2a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v0, v2, :cond_32

    const/4 v0, 0x0

    goto :goto_33

    :cond_32
    const/4 v0, 0x1

    :goto_33
    if-eq v0, v3, :cond_36

    goto :goto_82

    :cond_36
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/dv;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dv;->j:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v0, :cond_3e

    const/4 v2, 0x0

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x1

    :goto_3f
    if-eq v2, v3, :cond_54

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dv;->i:I

    add-int/lit8 v2, v2, 0x5

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/dv;->h:I

    rem-int/lit8 v2, v2, 0x2

    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/dv;->j:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_58

    :cond_54
    iget-object v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/dv;->j:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v0, :cond_59

    :goto_58
    return v1

    :cond_59
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dv;->k:Ljava/lang/String;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/dv;->k:Ljava/lang/String;

    if-eqz v0, :cond_74

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dv;->h:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dv;->i:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_70

    return p1

    :cond_70
    const/4 p1, 0x0

    :try_start_71
    throw p1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_72

    :catchall_72
    move-exception p1

    throw p1

    :cond_74
    if-nez p1, :cond_81

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/dv;->h:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dv;->i:I

    rem-int/lit8 p1, p1, 0x2

    return v3

    :cond_81
    return v1

    :cond_82
    :goto_82
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/dv;->h:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dv;->i:I

    rem-int/lit8 p1, p1, 0x2

    return v1
.end method

.method public final hashCode()I
    .registers 6

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dv;->j:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/dv;->h:I

    add-int/lit8 v3, v3, 0x23

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/dv;->i:I

    rem-int/lit8 v3, v3, 0x2

    const/16 v4, 0xb

    if-nez v3, :cond_18

    const/16 v3, 0x1f

    goto :goto_1a

    :cond_18
    const/16 v3, 0xb

    :goto_1a
    if-ne v3, v4, :cond_21

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_29

    :cond_21
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    const/4 v0, 0x0

    :try_start_25
    throw v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v0

    throw v0

    :cond_28
    const/4 v0, 0x0

    :goto_29
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dv;->k:Ljava/lang/String;

    if-eqz v1, :cond_4b

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/dv;->i:I

    add-int/lit8 v3, v3, 0x39

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/dv;->h:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_46

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/16 v3, 0x1e

    :try_start_41
    div-int/2addr v3, v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_44

    move v2, v1

    goto :goto_55

    :catchall_44
    move-exception v0

    throw v0

    :cond_46
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_55

    :cond_4b
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dv;->h:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/dv;->i:I

    rem-int/lit8 v1, v1, 0x2

    :goto_55
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dv;->j:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, -0x7a1b4a18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-string v6, "\ue9c8\ue4b5\u8485\ud763"

    const-string v7, "\u0000\u0000\u0000\u0000"

    const-string v8, "\u6088"

    cmp-long v9, v2, v4

    add-int/2addr v9, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    cmp-long v3, v1, v4

    rsub-int v1, v3, 0x6385

    int-to-char v1, v1

    invoke-static {v6, v7, v9, v1, v8}, Lcom/ironsource/adqualitysdk/sdk/i/dv;->c(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dv;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dv;->h:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dv;->i:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x40

    if-nez v1, :cond_4e

    const/16 v1, 0x40

    goto :goto_50

    :cond_4e
    const/16 v1, 0x34

    :goto_50
    if-eq v1, v2, :cond_53

    return-object v0

    :cond_53
    const/4 v0, 0x0

    :try_start_54
    throw v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception v0

    throw v0
.end method

.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dv;->h:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dv;->i:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dv;->j:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﻐ()Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;

    if-eqz p2, :cond_26

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/dp;

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/cj;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dv;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﾒ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/dn;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dp;-><init>(Ljava/lang/Object;)V

    return-object p2

    :cond_26
    :try_start_26
    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/dp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dv;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dp;-><init>(Ljava/lang/Object;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_39} :catch_53

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/dv;->i:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dv;->h:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_49

    const/4 p1, 0x0

    goto :goto_4a

    :cond_49
    const/4 p1, 0x1

    :goto_4a
    if-eq p1, v1, :cond_52

    const/16 p1, 0x2a

    :try_start_4e
    div-int/2addr p1, v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_50

    return-object p2

    :catchall_50
    move-exception p1

    throw p1

    :cond_52
    return-object p2

    :catch_53
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/dp;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dp;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

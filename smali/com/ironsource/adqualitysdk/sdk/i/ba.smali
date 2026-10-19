###### Class com.json.adqualitysdk.sdk.i.ba (com.ironsource.adqualitysdk.sdk.i.ba)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ba;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:J = 0x0L

.field private static b:I = 0x0

.field private static c:C = '\ua498'

.field private static d:I = -0x1ea8875d

.field private static e:I = 0x1c

.field private static f:I = -0x1d7b9048

.field private static g:[B = null

.field private static h:[S = null

.field private static i:I = 0x0

.field private static j:I = 0x1


# instance fields
.field private k:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdListener;

.field private l:Landroid/os/Handler;

.field private m:Lcom/ironsource/adqualitysdk/sdk/i/ag;

.field private n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ironsource/adqualitysdk/sdk/i/ii;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x37

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->g:[B

    return-void

    :array_a
    .array-data 1
        -0x1t
        -0xft
        0x2t
        0x11t
        -0x13t
        0x1t
        0x14t
        -0x15t
        0x11t
        0x2t
        -0x1t
        -0xbt
        0x0t
        0x1t
        -0x5t
        0x1t
        0x14t
        -0x15t
        0x11t
        0x2t
        -0x1t
        -0x14t
        0xat
        -0x3t
        -0x2t
        0x1t
        0xet
        0x1t
        0x5t
        -0x15t
        0x11t
        0x2t
        0x3t
        -0x3t
        0x0t
        0xdt
        0x6t
        -0x11t
        -0x4t
        0xdt
        0x1t
        -0xat
        0x9t
        0x12t
        -0x21t
        0x6t
        0x9t
        -0x11t
        0x31t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/ironsource/adqualitysdk/sdk/i/ag;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->n:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->o:Ljava/util/Set;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->m:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->l:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/ironsource/adqualitysdk/sdk/i/ba;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    add-int/lit8 p0, p0, 0x65

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->f(Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_8
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﻛ:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᖺ:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_1a} :catch_24

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    rem-int/lit8 v1, v1, 0x2

    :catch_24
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->m:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-virtual {v1, p1, p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->ﻛ(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/ba;->a:J

    xor-long/2addr v2, v4

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/ba;->b:I

    int-to-long v4, v4

    xor-long/2addr v2, v4

    sget-char v4, Lcom/ironsource/adqualitysdk/sdk/i/ba;->c:C

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

.method private static d()D
    .registers 2

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﱟ()Z

    move-result v0

    const/16 v1, 0x27

    if-nez v0, :cond_19

    const/16 v0, 0x27

    goto :goto_1a

    :cond_19
    const/4 v0, 0x5

    :goto_1a
    if-eq v0, v1, :cond_1f

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    return-wide v0

    :cond_1f
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x1

    :goto_2f
    if-ne v0, v1, :cond_3a

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﱡ()D

    move-result-wide v0

    return-wide v0

    :cond_3a
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﱡ()D

    const/4 v0, 0x0

    :try_start_42
    throw v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_43

    :catchall_43
    move-exception v0

    throw v0
.end method

.method private static e(IIBSI)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ba;->e:I

    add-int/2addr p0, v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p0, v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    if-eqz v3, :cond_2a

    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->g:[B

    if-eqz p0, :cond_21

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/ba;->d:I

    add-int/2addr v6, p4

    aget-byte p0, p0, v6

    add-int/2addr p0, v2

    int-to-byte p0, p0

    goto :goto_2a

    :cond_21
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->h:[S

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/ba;->d:I

    add-int/2addr v6, p4

    aget-short p0, p0, v6

    add-int/2addr p0, v2

    int-to-short p0, p0

    :cond_2a
    :goto_2a
    if-lez p0, :cond_89

    add-int/2addr p4, p0

    add-int/lit8 p4, p4, -0x2

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ba;->d:I

    add-int/2addr p4, v2

    if-eqz v3, :cond_35

    const/4 v4, 0x1

    :cond_35
    add-int/2addr p4, v4

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    sput-byte p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/ba;->f:I

    add-int/2addr p1, p2

    int-to-char p1, p1

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻛ:C

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾒ:I

    :goto_49
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾒ:I

    if-ge p1, p0, :cond_89

    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->g:[B

    if-eqz p1, :cond_65

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    add-int/lit8 p4, p2, -0x1

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    aget-byte p1, p1, p2

    sget-char p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻛ:C

    add-int/2addr p1, p3

    int-to-byte p1, p1

    sget-byte p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    xor-int/2addr p1, p4

    add-int/2addr p2, p1

    int-to-char p1, p2

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    goto :goto_7a

    :cond_65
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->h:[S

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    add-int/lit8 p4, p2, -0x1

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    aget-short p1, p1, p2

    sget-char p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻛ:C

    add-int/2addr p1, p3

    int-to-short p1, p1

    sget-byte p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    xor-int/2addr p1, p4

    add-int/2addr p2, p1

    int-to-char p1, p2

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    :goto_7a
    sget-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻛ:C

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾒ:I

    add-int/2addr p1, v5

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾒ:I

    goto :goto_49

    :cond_89
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_3 .. :try_end_8e} :catchall_8f

    return-object p0

    :catchall_8f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private f(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 8

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->n:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x16

    if-eqz v1, :cond_16

    const/16 v1, 0x61

    goto :goto_18

    :cond_16
    const/16 v1, 0x16

    :goto_18
    const/4 v3, 0x0

    if-eq v1, v2, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ii;

    invoke-interface {v1, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ii;->ﻛ(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2a

    const/4 v4, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v4, 0x0

    :goto_2b
    if-eq v4, v2, :cond_2e

    goto :goto_b

    :cond_2e
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    add-int/lit8 v2, v2, 0x71

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    rem-int/lit8 v2, v2, 0x2

    invoke-static {p2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾇ(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    if-nez v2, :cond_3e

    goto :goto_b

    :cond_3e
    :try_start_3e
    throw v3
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception p1

    throw p1

    :cond_41
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4e

    return-void

    :cond_4e
    :try_start_4e
    throw v3
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception p1

    throw p1
.end method


# virtual methods
.method public final ﮐ(Lorg/json/JSONObject;)V
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v2

    rsub-int/lit8 v2, v2, -0x11

    const v3, 0x1d7b90aa

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    sub-int/2addr v3, v4

    invoke-static {v1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    int-to-byte v1, v1

    invoke-static {v0}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v4

    rsub-int/lit8 v4, v4, -0x1

    int-to-short v4, v4

    const v5, 0x1ea88766

    const/16 v6, 0x30

    invoke-static {v0, v6}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    sub-int/2addr v5, v0

    invoke-static {v2, v3, v1, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->e(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    add-int/lit8 p1, p1, 0x49

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final ﱟ(Lorg/json/JSONObject;)V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x30

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    rsub-int/lit8 v0, v0, -0x10

    const v3, 0x1d7b90a9

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v3

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/graphics/PointF;->length(FF)F

    move-result v5

    cmpl-float v3, v5, v3

    int-to-byte v3, v3

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v1

    int-to-short v1, v1

    const v5, 0x1ea88772

    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    add-int/2addr v2, v5

    invoke-static {v0, v4, v3, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->e(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x13

    if-nez p1, :cond_50

    const/16 p1, 0x5b

    goto :goto_52

    :cond_50
    const/16 p1, 0x13

    :goto_52
    if-ne p1, v0, :cond_55

    return-void

    :cond_55
    const/4 p1, 0x0

    :try_start_56
    throw p1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    :catchall_57
    move-exception p1

    throw p1
.end method

.method public final ﺙ(Lorg/json/JSONObject;)V
    .registers 13

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x40

    if-eqz v0, :cond_11

    const/16 v0, 0x10

    goto :goto_13

    :cond_11
    const/16 v0, 0x40

    :goto_13
    const-string v2, "\u8ad3\ub75b\u5c5c\u81a2\udc2b\ua42d\uea53\u860d\u4d50\u266a\u9a10\u5cb3\ue81d\u63ff\u1e53"

    const/4 v3, 0x0

    const v4, 0xfa88

    const v5, -0x61dad7c3

    const-string v6, "\u0000\u0000\u0000\u0000"

    const-string v7, "\u3c75\u2528\u889e\u85fa"

    if-eq v0, v1, :cond_42

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    const-wide/16 v8, 0x1

    cmp-long v10, v0, v8

    mul-int v10, v10, v5

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    rem-int/2addr v4, v0

    int-to-char v0, v4

    invoke-static {v7, v6, v10, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->c(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3a
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_59

    :cond_42
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmp-long v10, v0, v8

    sub-int/2addr v5, v10

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    sub-int/2addr v4, v0

    int-to-char v0, v4

    invoke-static {v7, v6, v5, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->c(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    :goto_59
    return-void
.end method

.method public final ﻏ(Lorg/json/JSONObject;)V
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-string v5, "\ud362\uc718\u4696\u8506"

    const-string v6, "\u0000\u0000\u0000\u0000"

    const-string v7, "\u849d\u67e5\u6795\u84ce\ucc22\u60e6\u0b48\uba9f\u0724\u193a"

    cmp-long v8, v1, v3

    rsub-int/lit8 v1, v8, 0x1

    int-to-char v1, v1

    invoke-static {v5, v6, v0, v1, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->c(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final ﻐ(Lorg/json/JSONObject;)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const/4 v3, 0x0

    if-eq v0, v2, :cond_3f

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->k:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdListener;

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x1

    :goto_1a
    if-eq v1, v2, :cond_2f

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﻛ:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﻐ:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->fromInt(I)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdListener;->adClosed(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;)V

    :cond_2f
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    add-int/lit8 p1, p1, 0x6f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3c

    return-void

    :cond_3c
    :try_start_3c
    throw v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception p1

    throw p1

    :cond_3f
    :try_start_3f
    throw v3
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    :catchall_40
    move-exception p1

    throw p1
.end method

.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ii;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->n:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_17
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->n:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    :try_start_1d
    throw p1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p1

    throw p1
.end method

.method public final ﻛ(Lorg/json/JSONObject;)V
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    rem-int/lit8 v0, v0, 0x2

    const v0, 0x678ee96f

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v1

    int-to-byte v1, v1

    add-int/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    int-to-char v0, v0

    const-string v2, "\u6e53\u8ee9\ue467\u104b"

    const-string v3, "\u0000\u0000\u0000\u0000"

    const-string v4, "\ub0b4\u4102\u2811\u7eb6\udedf\ue3e1\u1127\u81e1\u09e3\ub113\u5d5a"

    invoke-static {v2, v3, v1, v0, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->c(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    add-int/lit8 p1, p1, 0x35

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x16

    if-eqz p1, :cond_3c

    const/16 p1, 0x16

    goto :goto_3e

    :cond_3c
    const/16 p1, 0x60

    :goto_3e
    if-eq p1, v0, :cond_41

    return-void

    :cond_41
    const/16 p1, 0x49

    :try_start_43
    div-int/lit8 p1, p1, 0x0
    :try_end_45
    .catchall {:try_start_43 .. :try_end_45} :catchall_46

    return-void

    :catchall_46
    move-exception p1

    throw p1
.end method

.method public final ｋ(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdListener;)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x3f

    if-nez v0, :cond_11

    const/16 v0, 0x62

    goto :goto_13

    :cond_11
    const/16 v0, 0x3f

    :goto_13
    const/4 v3, 0x0

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->k:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdListener;

    if-ne v0, v2, :cond_2c

    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    rem-int/lit8 v1, v1, 0x2

    const/4 p1, 0x1

    if-eqz v1, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    if-eq v0, p1, :cond_29

    return-void

    :cond_29
    :try_start_29
    throw v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p1

    throw p1

    :cond_2c
    :try_start_2c
    throw v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p1

    throw p1
.end method

.method public final ｋ(Lorg/json/JSONObject;)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﻐ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->k:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdListener;

    const/16 v2, 0x36

    if-eqz v1, :cond_19

    const/16 v3, 0xc

    goto :goto_1b

    :cond_19
    const/16 v3, 0x36

    :goto_1b
    if-eq v3, v2, :cond_34

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﻛ:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->fromInt(I)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdListener;->adDisplayed(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    rem-int/lit8 p1, p1, 0x2

    :cond_34
    return-void
.end method

.method public final ﾇ(Lorg/json/JSONObject;)V
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x30

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    add-int/lit8 v0, v0, -0x10

    const v1, 0x1e7b90a9

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    int-to-short v2, v2

    const v4, 0x1ea8875d

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v0, v3, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->e(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    if-nez p1, :cond_26

    return-void

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

.method public final ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .registers 20

    move-object v1, p0

    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->o:Ljava/util/Set;

    monitor-enter v2

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    add-int/lit8 v5, v5, -0x1b

    const v6, 0x1d7b9082

    const-string v7, ""

    const-string v8, ""

    invoke-static {v7, v8, v4, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    add-int/lit8 v11, v11, -0x1

    int-to-byte v7, v11

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    int-to-short v8, v8

    const v9, 0x1ea8877c

    const-string v10, ""

    const/16 v11, 0x30

    invoke-static {v10, v11}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v5, v6, v7, v8, v9}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->e(IIBSI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v6, v1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->o:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    if-nez p6, :cond_68

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ｋ()Z

    move-result v6

    if-nez v6, :cond_68

    monitor-exit v2

    return-void

    :cond_68
    iget-object v6, v1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->o:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_4 .. :try_end_6e} :catchall_132

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double v6, v6, v8

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->d()D

    move-result-wide v8

    const/4 v0, 0x0

    cmpg-double v2, v6, v8

    if-gez v2, :cond_e5

    invoke-static/range {p1 .. p5}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->ｋ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, -0x14

    const v5, 0x1d7b90bc

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v8

    sub-int/2addr v5, v8

    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    int-to-byte v8, v8

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    int-to-short v9, v9

    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    const v11, 0x1ea8877d

    add-int/2addr v10, v11

    invoke-static {v3, v5, v8, v9, v10}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->e(IIBSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->f(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->m:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v5

    add-int/lit8 v5, v5, -0x14

    const v8, 0x1d7b90bb

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v9

    cmp-long v12, v9, v6

    add-int/2addr v12, v8

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v6

    cmpl-float v6, v6, v0

    int-to-byte v6, v6

    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v7

    rsub-int/lit8 v7, v7, -0x1

    int-to-short v7, v7

    invoke-static {v4}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v4

    cmpl-float v0, v4, v0

    sub-int/2addr v11, v0

    invoke-static {v5, v12, v6, v7, v11}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->e(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->ﻐ(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_e5
    invoke-static {v4, v4}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v2

    add-int/lit8 v2, v2, -0x11

    const v3, 0x1d7b908e

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v5

    cmpl-float v0, v5, v0

    sub-int/2addr v3, v0

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-byte v0, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    int-to-short v5, v5

    const v6, 0x1ea88784

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {v2, v3, v0, v5, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->e(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\ue29b\u3604\ub7a7\uaa75"

    const-string v3, "\u0000\u0000\u0000\u0000"

    const v5, -0x58c9fb1e

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    sub-int/2addr v5, v6

    invoke-static {v4, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    int-to-char v4, v4

    const-string v6, "\u1761\u47b9\ucadf\u7d33\ucde1\uae73\uf1de\u403d\u44d4\u1aab\u6313\u772d>\uf0e8\u49f7\u20c4\u067a\ud859\u3fe2\ua3d8\u82bd\uf210\u75d0\u4308\u956c\u8404\ueb11\u729c\ubb8e\u1681\u0ccb\ub7c7\u4ea2\uac1c\u87a0\u2bda\uebd2\u0f5d\uf0c4\ue61d\ub747\uc4af\u562e\u788f\u5a38\ubc4c\u2b11\u17c1\u0153"

    invoke-static {v2, v3, v5, v4, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->c(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﺙ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_132
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->l:Landroid/os/Handler;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ba$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ba$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ba;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_18

    const/4 p1, 0x0

    goto :goto_19

    :cond_18
    const/4 p1, 0x1

    :goto_19
    if-eqz p1, :cond_1c

    return-void

    :cond_1c
    const/4 p1, 0x0

    :try_start_1d
    throw p1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p1

    throw p1
.end method

.method public final ﾒ(Lorg/json/JSONObject;)V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    rem-int/lit8 v0, v0, 0x2

    const v0, -0xcb3e520

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v2, v2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    int-to-char v1, v1

    const-string v3, "\ue072\u4c1a\ua9f3\u3414"

    const-string v4, "\u0000\u0000\u0000\u0000"

    const-string v5, "\u1050\uc611\ub79c\u13ea\u907d\u3cef\ue2f6\u4539\ud2b2\uabf6\u01e5"

    invoke-static {v3, v4, v0, v1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->c(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ba;->j:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;->i:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v2, 0x1

    :goto_3a
    if-ne v2, v0, :cond_3d

    return-void

    :cond_3d
    const/4 p1, 0x0

    :try_start_3e
    throw p1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception p1

    throw p1
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.ba.a (com.ironsource.adqualitysdk.sdk.i.ba$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ba$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ba;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Lorg/json/JSONObject;

.field private synthetic f:Lcom/ironsource/adqualitysdk/sdk/i/ba;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ba;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ba$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ba;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ba$a;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ba$a;->e:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ba$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ba;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ba$a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ba$a;->e:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->a(Lcom/ironsource/adqualitysdk/sdk/i/ba;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

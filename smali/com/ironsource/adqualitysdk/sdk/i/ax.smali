###### Class com.json.adqualitysdk.sdk.i.ax (com.ironsource.adqualitysdk.sdk.i.ax)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ax;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:[C = null

.field private static b:J = 0x0L

.field private static c:I = 0x0

.field private static d:I = 0x0

.field private static e:I = 0x0

.field private static f:[B = null

.field private static g:[S = null

.field private static h:I = 0x0

.field private static i:I = 0x1


# instance fields
.field private j:Z

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/ci;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/gd;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/ironsource/adqualitysdk/sdk/i/cz;

.field private p:Lcom/ironsource/adqualitysdk/sdk/i/dr;

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/adqualitysdk/sdk/i/au;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/ironsource/adqualitysdk/sdk/i/at;

.field private s:Ljava/lang/String;

.field private t:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;

.field private u:Lcom/ironsource/adqualitysdk/sdk/i/iq;

.field private v:Lcom/ironsource/adqualitysdk/sdk/i/ba;

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_28

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->a:[C

    const-wide v0, 0x73c8bf3a4e1d410dL    # 5.536925627464433E249

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->b:J

    const v0, -0x21500299

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->c:I

    const/16 v0, 0x23

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->d:I

    const v0, -0x3619250

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->e:I

    const/16 v0, 0xcb

    new-array v0, v0, [B

    fill-array-data v0, :array_6c

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->f:[B

    return-void

    :array_28
    .array-data 2
        -0x446as
        -0x549s
        0x39a1s
        0x789cs
        -0x407cs
        -0x109s
        0x3defs
        0x7ce1s
        -0x4c31s
        -0xd13s
        0x3136s
        0x7034s
        -0x48d8s
        -0x9e5s
        0x3506s
        0x7464s
        0x2508s
        0x6412s
        -0x58fbs
        -0x19c7s
        0x6b42s
        0x2a6as
        -0x16b8s
        -0x57afs
        0x6f56s
        0x2e2es
        -0x12dcs
        -0x53d4s
        0x6312s
        0x2225s
        -0x1e3bs
        -0x5f39s
        -0x244as
        -0x654as
        0x59a1s
        0x189cs
        -0x2071s
        -0x6106s
        0x5df5s
        0x1ce0s
        -0x2c2ds
        -0x6d32s
        0x5139s
        0x1034s
        -0x28d9s
        -0x69ees
        0x550ds
        0x40fbs
        0x1fds
        -0x3d1bs
        -0x7c25s
        0x44c6s
        0x5bas
        -0x394cs
        0x44s
        0x4164s
        -0x7d97s
        -0x3cbas
        0x456s
        0x452ds
        -0x79d9s
        -0x38cbs
        0x80fs
        0x4955s
    .end array-data

    :array_6c
    .array-data 1
        0x5t
        -0x1t
        0x6t
        -0xat
        0x1t
        0xdt
        -0x11t
        0x56t
        -0x52t
        0x3t
        -0x5t
        0x11t
        -0x2t
        -0x9t
        0x0t
        -0x1t
        0xct
        0x43t
        -0x47t
        -0x7t
        0x5t
        0x5t
        0x0t
        0x3t
        0x41t
        -0x52t
        0x3t
        -0x3t
        0x0t
        0x2dt
        0x1t
        0x3t
        -0x3t
        0x0t
        0xdt
        0x45t
        -0x52t
        0x3t
        -0x5t
        0x11t
        -0x2t
        -0x9t
        0x0t
        -0x1t
        0xct
        0x43t
        -0x47t
        -0x7t
        0x5t
        0x5t
        0x0t
        0x3t
        0x41t
        -0x52t
        0x3t
        -0x3t
        0x0t
        0x2dt
        -0x59t
        0x5t
        0xbt
        -0x3t
        0xbt
        -0x14t
        0x24t
        -0x13t
        0x23t
        0x21t
        -0x45t
        0x2t
        -0xft
        -0x3t
        0x6t
        0x1ct
        -0x1bt
        -0x1t
        -0x3t
        0x9t
        0x49t
        -0xdt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x10t
        -0x1t
        -0x1t
        -0x4t
        0x9t
        0x4at
        -0x4et
        -0x1t
        0x6t
        -0xat
        0x1t
        0xdt
        -0x11t
        0x56t
        -0x52t
        0x3t
        -0x5t
        0x11t
        -0x2t
        -0x9t
        0x0t
        -0x1t
        0xct
        0x43t
        -0x47t
        -0x7t
        0x5t
        -0xbt
        0x13t
        -0x4t
        -0xdt
        0xft
        0x43t
        -0x52t
        0x3t
        -0x3t
        0x0t
        0x2dt
        0x3t
        -0x5t
        0x11t
        -0x2t
        -0x9t
        0x0t
        -0x1t
        0xct
        0x43t
        0x5t
        -0x5t
        -0x3t
        -0x8t
        0x4t
        -0xbt
        0x54t
        -0x4et
        0x5t
        0x49t
        -0x44t
        -0x1t
        0x1t
        0x3t
        -0xet
        0x3t
        0x4ct
        -0x54t
        0x5t
        0x1t
        0x4et
        -0x53t
        0x12t
        -0x16t
        0x57t
        -0x53t
        0x1t
        0x3t
        -0x5t
        0x11t
        -0x2t
        -0x9t
        0x0t
        -0x1t
        0xct
        0x43t
        -0x45t
        -0x3t
        -0xct
        0x54t
        -0x46t
        -0x9t
        0x4ft
        -0x45t
        -0x9t
        -0x1t
        0x4ft
        -0x54t
        0x1t
        0x12t
        -0x4t
        -0x7t
        0x4ct
        -0x54t
        0x33t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iq;Lcom/ironsource/adqualitysdk/sdk/i/ag;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/at;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->j:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->k:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->l:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->m:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->n:Ljava/util/Map;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/cz;

    invoke-direct {v1}, Lcom/ironsource/adqualitysdk/sdk/i/cz;-><init>()V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->o:Lcom/ironsource/adqualitysdk/sdk/i/cz;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/dr;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/dr;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->p:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->q:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->w:Z

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->u:Lcom/ironsource/adqualitysdk/sdk/i/iq;

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/ba;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ba;-><init>(Landroid/os/Handler;Lcom/ironsource/adqualitysdk/sdk/i/ag;)V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->v:Lcom/ironsource/adqualitysdk/sdk/i/ba;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ba;)V

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->v:Lcom/ironsource/adqualitysdk/sdk/i/ba;

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/ax$j;

    invoke-direct {p2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax$j;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ax;)V

    invoke-virtual {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ii;)V

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->s:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->r:Lcom/ironsource/adqualitysdk/sdk/i/at;

    iput-object p5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->t:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;

    return-void
.end method

.method private A(Lcom/ironsource/adqualitysdk/sdk/i/ci;Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﻐ()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->r:Lcom/ironsource/adqualitysdk/sdk/i/at;

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/at$d;

    invoke-direct {v3, v1, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/at$d;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/at;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/av$a;)V

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ax;Lcom/ironsource/adqualitysdk/sdk/i/ci;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private B(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/az;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x4b

    if-eqz p2, :cond_11

    const/16 v1, 0x4b

    goto :goto_13

    :cond_11
    const/16 v1, 0x52

    :goto_13
    if-eq v1, v0, :cond_16

    goto :goto_2f

    :cond_16
    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/az;->ﱡ()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->H(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 p1, p1, 0x2

    :goto_2f
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method static synthetic C(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Z
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->c()Z

    move-result p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1b

    const/4 v1, 0x0

    :cond_1b
    if-eqz v1, :cond_1e

    return p0

    :cond_1e
    const/4 p0, 0x0

    :try_start_1f
    throw p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p0

    throw p0
.end method

.method static synthetic D(Lcom/ironsource/adqualitysdk/sdk/i/ci;)Z
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->J(Lcom/ironsource/adqualitysdk/sdk/i/ci;)Z

    move-result p0

    if-eq v0, v2, :cond_1c

    const/4 v0, 0x5

    :try_start_18
    div-int/2addr v0, v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_1a

    goto :goto_1c

    :catchall_1a
    move-exception p0

    throw p0

    :cond_1c
    :goto_1c
    return p0
.end method

.method private static E(IIC)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/e;->ｋ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-array v1, p0, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    :goto_8
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    if-ge v2, p0, :cond_24

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/ax;->a:[C

    add-int v4, p1, v2

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v2

    sget-wide v7, Lcom/ironsource/adqualitysdk/sdk/i/ax;->b:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p2

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    goto :goto_8

    :cond_24
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2b

    return-object p0

    :catchall_2b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic F(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Ljava/util/Map;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1c

    if-nez v0, :cond_11

    const/16 v0, 0x38

    goto :goto_13

    :cond_11
    const/16 v0, 0x1c

    :goto_13
    if-ne v0, v1, :cond_24

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->m()Ljava/util/Map;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    :cond_24
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->m()Ljava/util/Map;

    const/4 p0, 0x0

    :try_start_28
    throw p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    throw p0
.end method

.method static synthetic G(Lcom/ironsource/adqualitysdk/sdk/i/ax;Lcom/ironsource/adqualitysdk/sdk/i/ci;)Lorg/json/JSONObject;
    .registers 3

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 p0, p0, 0x53

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 p0, p0, 0x2

    const/16 v0, 0x1d

    if-eqz p0, :cond_11

    const/16 p0, 0x5b

    goto :goto_13

    :cond_11
    const/16 p0, 0x1d

    :goto_13
    if-ne p0, v0, :cond_24

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->M(Lcom/ironsource/adqualitysdk/sdk/i/ci;)Lorg/json/JSONObject;

    move-result-object p0

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :cond_24
    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->M(Lcom/ironsource/adqualitysdk/sdk/i/ci;)Lorg/json/JSONObject;

    const/4 p0, 0x0

    :try_start_28
    throw p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    throw p0
.end method

.method private static H(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 13

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᖫ:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_63

    :catch_b
    move-exception p0

    const-string v1, ""

    invoke-static {v1}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v2

    rsub-int/lit8 v2, v2, 0xf

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v4

    const v5, 0xbbd4

    const/16 v6, 0x30

    invoke-static {v1, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    sub-int/2addr v5, v1

    int-to-char v1, v5

    invoke-static {v2, v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->E(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x2

    const v4, 0x3619295

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/2addr v5, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    int-to-short v6, v6

    const v7, 0x215002f9

    invoke-static {v3, v3}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    add-int/2addr v3, v7

    invoke-static {v2, v5, v4, v6, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->t(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_63
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 p0, p0, 0xb

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 p0, p0, 0x2

    return-object v0
.end method

.method static synthetic I(Lcom/ironsource/adqualitysdk/sdk/i/ax;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/gd;Lcom/ironsource/adqualitysdk/sdk/i/ci;ZLcom/ironsource/adqualitysdk/sdk/i/az;Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct/range {p0 .. p8}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->N(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/gd;Lcom/ironsource/adqualitysdk/sdk/i/ci;ZLcom/ironsource/adqualitysdk/sdk/i/az;Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 p0, p0, 0x6f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 p0, p0, 0x2

    const/16 p1, 0x2e

    if-eqz p0, :cond_1e

    const/16 p0, 0x3b

    goto :goto_20

    :cond_1e
    const/16 p0, 0x2e

    :goto_20
    if-eq p0, p1, :cond_29

    const/16 p0, 0xf

    :try_start_24
    div-int/lit8 p0, p0, 0x0
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception p0

    throw p0

    :cond_29
    return-void
.end method

.method private static J(Lcom/ironsource/adqualitysdk/sdk/i/ci;)Z
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﮐ()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_37

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->ﾒ(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x0

    if-ltz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    if-eqz p0, :cond_22

    goto :goto_37

    :cond_22
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 p0, p0, 0x71

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    if-nez v0, :cond_33

    return v1

    :cond_33
    const/4 p0, 0x0

    :try_start_34
    throw p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception p0

    throw p0

    :cond_37
    :goto_37
    return v0
.end method

.method static synthetic K(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Lcom/ironsource/adqualitysdk/sdk/i/at;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v1, v0, 0x35

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x47

    if-eqz v1, :cond_11

    const/16 v1, 0x47

    goto :goto_13

    :cond_11
    const/16 v1, 0x49

    :goto_13
    const/4 v3, 0x0

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->r:Lcom/ironsource/adqualitysdk/sdk/i/at;

    if-eq v1, v2, :cond_2f

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0xc

    if-eqz v0, :cond_27

    const/16 v0, 0x5c

    goto :goto_29

    :cond_27
    const/16 v0, 0xc

    :goto_29
    if-ne v0, v1, :cond_2c

    return-object p0

    :cond_2c
    :try_start_2c
    throw v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    throw p0

    :cond_2f
    :try_start_2f
    throw v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    throw p0
.end method

.method static synthetic L(Lcom/ironsource/adqualitysdk/sdk/i/ax;Ljava/util/Map;)Ljava/util/Map;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->q:Ljava/util/Map;

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v1, v1, 0x2

    const/4 p0, 0x1

    if-eqz v1, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-eq v0, p0, :cond_1d

    return-object p1

    :cond_1d
    const/4 p0, 0x0

    :try_start_1e
    throw p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p0

    throw p0
.end method

.method private static M(Lcom/ironsource/adqualitysdk/sdk/i/ci;)Lorg/json/JSONObject;
    .registers 14

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const/4 v3, 0x0

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﺙ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->H(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_1c
    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᖺ:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﻛ()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_25} :catch_26

    goto :goto_92

    :catch_26
    move-exception p0

    goto :goto_3c

    :cond_28
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﺙ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->H(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_30
    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᖺ:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﻛ()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_39} :catch_26

    :try_start_39
    throw v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception p0

    throw p0

    :goto_3c
    invoke-static {v2, v2}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x10

    const-string v5, ""

    invoke-static {v5, v5, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v6

    const v7, 0xbbd6

    const/16 v8, 0x30

    invoke-static {v5, v8, v2, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v8

    add-int/2addr v8, v7

    int-to-char v7, v8

    invoke-static {v4, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->E(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    const v7, 0x3619294

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    add-int/2addr v12, v7

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    rsub-int/lit8 v7, v11, 0x1

    int-to-byte v7, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    int-to-short v8, v8

    const v9, 0x215002f8

    invoke-static {v5}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v5

    add-int/2addr v5, v9

    invoke-static {v6, v12, v7, v8, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->t(IIBSI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_92
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 p0, p0, 0x1b

    rem-int/lit16 v4, p0, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_9f

    goto :goto_a0

    :cond_9f
    const/4 v2, 0x1

    :goto_a0
    if-ne v2, v1, :cond_a3

    return-object v0

    :cond_a3
    :try_start_a3
    throw v3
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a4

    :catchall_a4
    move-exception p0

    throw p0
.end method

.method private N(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/gd;Lcom/ironsource/adqualitysdk/sdk/i/ci;ZLcom/ironsource/adqualitysdk/sdk/i/az;Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    .registers 20

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$l;

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v3, p5

    move-object v4, p4

    move-object v5, p3

    move/from16 v6, p6

    move-object/from16 v7, p8

    move-object v8, p2

    move-object/from16 v9, p7

    move-object v10, p1

    invoke-direct/range {v1 .. v10}, Lcom/ironsource/adqualitysdk/sdk/i/ax$l;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ax;Lcom/ironsource/adqualitysdk/sdk/i/ci;Lcom/ironsource/adqualitysdk/sdk/i/gd;Ljava/lang/String;ZLcom/ironsource/adqualitysdk/sdk/i/il;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/az;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    goto :goto_25

    :cond_24
    const/4 v0, 0x1

    :goto_25
    if-eqz v0, :cond_28

    return-void

    :cond_28
    const/4 v0, 0x0

    :try_start_29
    throw v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    move-object v1, v0

    throw v1
.end method

.method static synthetic O(Lcom/ironsource/adqualitysdk/sdk/i/ax;Landroid/content/Context;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->q(Landroid/content/Context;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 p0, p0, 0x3d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 p0, p0, 0x2

    const/16 p1, 0x3f

    if-nez p0, :cond_1e

    const/16 p0, 0x3f

    goto :goto_20

    :cond_1e
    const/16 p0, 0x2f

    :goto_20
    if-eq p0, p1, :cond_23

    return-void

    :cond_23
    const/16 p0, 0x21

    :try_start_25
    div-int/lit8 p0, p0, 0x0
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception p0

    throw p0
.end method

.method static synthetic P(Lcom/ironsource/adqualitysdk/sdk/i/ax;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    const/4 v0, 0x1

    :goto_f
    invoke-direct/range {p0 .. p5}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    if-eqz v0, :cond_1f

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 p0, p0, 0x11

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :cond_1f
    const/4 p0, 0x0

    :try_start_20
    throw p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p0

    throw p0
.end method

.method static synthetic Q(Lcom/ironsource/adqualitysdk/sdk/i/ax;Landroid/content/Context;Ljava/util/List;Ljava/lang/Runnable;)V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->Y(Landroid/content/Context;Ljava/util/List;Ljava/lang/Runnable;)V

    if-nez v0, :cond_2b

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 p0, p0, 0x6f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    if-nez v1, :cond_28

    return-void

    :cond_28
    :try_start_28
    throw v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    throw p0

    :cond_2b
    :try_start_2b
    throw v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    throw p0
.end method

.method private R(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 9

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->r:Lcom/ironsource/adqualitysdk/sdk/i/at;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/at$d;

    invoke-direct {v2, v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/at$d;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/at;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/av$a;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_12

    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    const/4 v1, 0x1

    :goto_13
    if-eqz v1, :cond_16

    goto :goto_5e

    :cond_16
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v1, v1, 0x2

    :try_start_20
    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v1

    int-to-byte v1, v1

    rsub-int/lit8 v1, v1, -0x21

    const v2, 0x36192b4

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v2

    const-string v2, ""

    invoke-static {v2, v0, v0}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v0

    int-to-byte v0, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    int-to-short v2, v2

    const v4, 0x215002f6

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/2addr v5, v4

    invoke-static {v1, v3, v0, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->t(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_54} :catch_5e

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 p1, p1, 0x2

    :catch_5e
    :goto_5e
    return-void
.end method

.method private static S(Lcom/ironsource/adqualitysdk/sdk/i/ci;Ljava/lang/String;)Z
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_39

    const/16 v0, 0x76

    invoke-static {v1, v2, v3}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v4

    shr-int/2addr v0, v4

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x2c

    invoke-static {v1}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v1

    add-int/lit16 v1, v1, 0x2cd0

    int-to-char v1, v1

    invoke-static {v0, v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->E(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x0

    goto :goto_35

    :cond_34
    const/4 v0, 0x1

    :goto_35
    if-eqz v0, :cond_5f

    goto/16 :goto_b8

    :cond_39
    invoke-static {v1, v3, v3}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x7

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x2f

    invoke-static {v1}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v1

    rsub-int v1, v1, 0x40bd

    int-to-char v1, v1

    invoke-static {v0, v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->E(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    const/4 v0, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v0, 0x0

    :goto_5d
    if-eqz v0, :cond_b8

    :cond_5f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_67

    const/4 v0, 0x0

    goto :goto_68

    :cond_67
    const/4 v0, 0x1

    :goto_68
    if-eqz v0, :cond_6b

    goto :goto_b5

    :cond_6b
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_79

    const/4 v0, 0x0

    goto :goto_7a

    :cond_79
    const/4 v0, 0x1

    :goto_7a
    if-eqz v0, :cond_90

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﱟ()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->ﾒ(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3e

    if-ltz v0, :cond_8b

    const/16 v0, 0x4e

    goto :goto_8d

    :cond_8b
    const/16 v0, 0x3e

    :goto_8d
    if-eq v0, v1, :cond_b5

    goto :goto_a2

    :cond_90
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﱟ()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->ﾒ(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    :try_start_9a
    div-int/2addr v1, v3
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_b6

    if-ltz v0, :cond_9f

    const/4 v0, 0x1

    goto :goto_a0

    :cond_9f
    const/4 v0, 0x0

    :goto_a0
    if-eqz v0, :cond_b5

    :goto_a2
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﻏ()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->ﾒ(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x26

    if-gtz p0, :cond_b1

    const/16 p0, 0x26

    goto :goto_b3

    :cond_b1
    const/16 p0, 0x5f

    :goto_b3
    if-eq p0, p1, :cond_b8

    :cond_b5
    :goto_b5
    return v3

    :catchall_b6
    move-exception p0

    throw p0

    :cond_b8
    :goto_b8
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 p0, p0, 0xd

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 p0, p0, 0x2

    return v2
.end method

.method private T(Ljava/lang/String;)Z
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x21

    if-nez v0, :cond_11

    const/16 v0, 0x20

    goto :goto_13

    :cond_11
    const/16 v0, 0x21

    :goto_13
    if-ne v0, v1, :cond_51

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xb

    if-eqz v0, :cond_22

    const/16 v0, 0x28

    goto :goto_24

    :cond_22
    const/16 v0, 0xb

    :goto_24
    const/4 v2, 0x0

    if-eq v0, v1, :cond_46

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/au;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/au;->ﻐ(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_46

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_44

    return v2

    :cond_44
    const/4 p1, 0x1

    return p1

    :cond_46
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 p1, p1, 0x2

    return v2

    :cond_51
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    :try_start_57
    throw p1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception p1

    throw p1
.end method

.method private U(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/az;)Lcom/ironsource/adqualitysdk/sdk/i/ci;
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz p2, :cond_2a

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/dh;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->p:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    invoke-direct {v3, p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dh;-><init>(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/dr;)V

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/ci;

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->v:Lcom/ironsource/adqualitysdk/sdk/i/ba;

    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->o:Lcom/ironsource/adqualitysdk/sdk/i/cz;

    move-object v1, p2

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/ci;-><init>(Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/dh;Lcom/ironsource/adqualitysdk/sdk/i/ba;Lcom/ironsource/adqualitysdk/sdk/i/cz;Lcom/ironsource/adqualitysdk/sdk/i/az;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 p1, p1, 0x2

    return-object p2

    :cond_2a
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic V(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Ljava/util/List;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->f()Ljava/util/List;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x4d

    if-nez v0, :cond_1f

    const/16 v0, 0x4a

    goto :goto_21

    :cond_1f
    const/16 v0, 0x4d

    :goto_21
    if-ne v0, v1, :cond_24

    return-object p0

    :cond_24
    const/4 p0, 0x0

    :try_start_25
    throw p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception p0

    throw p0
.end method

.method private W()V
    .registers 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x59

    const/16 v4, 0x10

    if-eqz v2, :cond_1a

    const/16 v2, 0x59

    goto :goto_1c

    :cond_1a
    const/16 v2, 0x10

    :goto_1c
    const/4 v5, 0x0

    if-eq v2, v3, :cond_df

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {v5}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v3

    rsub-int/lit8 v3, v3, -0x1

    const v6, 0xbbd5

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v7

    shr-int/2addr v7, v4

    add-int/2addr v7, v6

    int-to-char v6, v7

    invoke-static {v2, v3, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->E(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-static {v5, v6, v6}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v7

    const-string v8, ""

    cmpl-float v6, v7, v6

    rsub-int/lit8 v6, v6, 0xa

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    shr-int/2addr v7, v4

    add-int/lit8 v7, v7, 0x36

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v9

    rsub-int/lit8 v9, v9, -0x1

    int-to-char v9, v9

    invoke-static {v6, v7, v9}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->E(IIC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ｋ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    add-int/lit8 v6, v6, -0x19

    const v7, 0x3619270

    invoke-static {v8, v5, v5}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v9

    sub-int/2addr v7, v9

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v9

    shr-int/2addr v9, v4

    int-to-byte v9, v9

    invoke-static {v8, v8}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v8

    int-to-short v8, v8

    const v10, 0x2150031d

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v11

    int-to-byte v11, v11

    add-int/2addr v11, v10

    invoke-static {v6, v7, v9, v8, v11}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->t(IIBSI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾇ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﻐ()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    invoke-direct {p0, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->R(Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ax$b;

    invoke-direct {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ax$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ci;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_23

    :cond_d4
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :cond_df
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v2, v2, 0x3d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v2, v2, 0x2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﻐ()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->T(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_fa

    const/4 v5, 0x1

    :cond_fa
    if-eqz v5, :cond_d

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v3, v3, 0x33

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v3, v3, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d
.end method

.method private X(Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    .registers 4

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$f;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ax$f;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ax;Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private Y(Landroid/content/Context;Ljava/util/List;Ljava/lang/Runnable;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    :cond_0
    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_63

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_63

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v2, v2, 0x2d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_26

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v1, 0x1

    :cond_23
    if-eq v1, v0, :cond_33

    goto :goto_0

    :cond_26
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_33
    move-object v7, v2

    invoke-static {v7}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->o(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5f

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->r:Lcom/ironsource/adqualitysdk/sdk/i/at;

    invoke-virtual {v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/at;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e;

    move-object v3, v0

    move-object v4, p0

    move-object v6, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/ironsource/adqualitysdk/sdk/i/ax$e;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ax;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->c()Z

    move-result v0

    const/16 v1, 0x52

    if-nez v0, :cond_5b

    const/16 v0, 0x60

    goto :goto_5d

    :cond_5b
    const/16 v0, 0x52

    :goto_5d
    if-eq v0, v1, :cond_62

    :cond_5f
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->Y(Landroid/content/Context;Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_62
    return-void

    :cond_63
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_73

    const/4 v1, 0x1

    :cond_73
    if-eq v1, v0, :cond_76

    return-void

    :cond_76
    const/4 p1, 0x0

    :try_start_77
    throw p1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_78

    :catchall_78
    move-exception p1

    throw p1
.end method

.method static synthetic Z(Lcom/ironsource/adqualitysdk/sdk/i/ax;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/gd;Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x25

    if-nez v0, :cond_11

    const/16 v0, 0x25

    goto :goto_13

    :cond_11
    const/16 v0, 0x51

    :goto_13
    invoke-direct/range {p0 .. p5}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/gd;Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    if-eq v0, v1, :cond_19

    goto :goto_1d

    :cond_19
    const/16 p0, 0x2e

    :try_start_1b
    div-int/lit8 p0, p0, 0x0
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_28

    :goto_1d
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 p0, p0, 0x2d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :catchall_28
    move-exception p0

    throw p0
.end method

.method private declared-synchronized a()V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->w:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_66

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->r:Lcom/ironsource/adqualitysdk/sdk/i/at;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/at;->ﻐ()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v1, 0x0

    :cond_1f
    if-eqz v1, :cond_22

    goto :goto_66

    :cond_22
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;

    move-result-object v0

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;->CONNECTOR_LOAD_TIMEOUT:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    rsub-int/lit8 v3, v3, 0x13

    const v5, 0x3619291

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v2, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    int-to-byte v2, v2

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v6

    cmpl-float v4, v6, v4

    int-to-short v4, v4

    const v6, 0x21500328

    const-string v7, ""

    invoke-static {v7}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {v3, v5, v2, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->t(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;->adQualitySdkInitFailed(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_1 .. :try_end_64} :catchall_6f

    monitor-exit p0

    return-void

    :cond_66
    :goto_66
    :try_start_66
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;->adQualitySdkInitSuccess()V
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_6f

    monitor-exit p0

    return-void

    :catchall_6f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a0(Lcom/ironsource/adqualitysdk/sdk/i/ax;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x34

    if-nez v0, :cond_11

    const/16 v0, 0x34

    goto :goto_13

    :cond_11
    const/16 v0, 0x13

    :goto_13
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->R(Ljava/lang/String;Lorg/json/JSONObject;)V

    if-eq v0, v1, :cond_19

    goto :goto_1d

    :cond_19
    const/16 p0, 0x61

    :try_start_1b
    div-int/lit8 p0, p0, 0x0
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_1e

    :goto_1d
    return-void

    :catchall_1e
    move-exception p0

    throw p0
.end method

.method static synthetic b(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Ljava/util/List;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    if-ne v0, v1, :cond_17

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->j()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_17
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->j()Ljava/util/List;

    const/4 p0, 0x0

    :try_start_1b
    throw p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception p0

    throw p0
.end method

.method static synthetic b0(Lcom/ironsource/adqualitysdk/sdk/i/ax;Ljava/lang/String;)Z
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    if-ne v0, v1, :cond_17

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->T(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_17
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->T(Ljava/lang/String;)Z

    const/4 p0, 0x0

    :try_start_1b
    throw p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception p0

    throw p0
.end method

.method private declared-synchronized c()Z
    .registers 4

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    const/4 v0, 0x1

    :goto_12
    if-eq v0, v2, :cond_22

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->丫()Z

    move-result v0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_45

    const/16 v2, 0x5b

    :try_start_1e
    div-int/2addr v2, v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_20

    goto :goto_2a

    :catchall_20
    move-exception v0

    :try_start_21
    throw v0

    :cond_22
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->丫()Z

    move-result v0

    :goto_2a
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_34
    .catchall {:try_start_21 .. :try_end_34} :catchall_45

    const/16 v2, 0x3a

    if-nez v1, :cond_3b

    const/16 v1, 0x3a

    goto :goto_3d

    :cond_3b
    const/16 v1, 0x4f

    :goto_3d
    if-eq v1, v2, :cond_41

    monitor-exit p0

    return v0

    :cond_41
    const/4 v0, 0x0

    :try_start_42
    throw v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_43

    :catchall_43
    move-exception v0

    :try_start_44
    throw v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c0(Lcom/ironsource/adqualitysdk/sdk/i/ci;Ljava/lang/String;)Z
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_16

    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->S(Lcom/ironsource/adqualitysdk/sdk/i/ci;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_16
    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->S(Lcom/ironsource/adqualitysdk/sdk/i/ci;Ljava/lang/String;)Z

    const/4 p0, 0x0

    :try_start_1a
    throw p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception p0

    throw p0
.end method

.method private d()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/ci;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->f()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v1, v1, 0x47

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    if-eq v1, v2, :cond_1c

    return-object v0

    :cond_1c
    const/4 v0, 0x0

    :try_start_1d
    throw v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v0

    throw v0
.end method

.method static synthetic e(Lcom/ironsource/adqualitysdk/sdk/i/ax;)V
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->a()V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 p0, p0, 0x31

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 p0, p0, 0x2

    const/4 v0, 0x1

    if-eqz p0, :cond_1c

    const/4 p0, 0x0

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x1

    :goto_1d
    if-ne p0, v0, :cond_20

    return-void

    :cond_20
    const/4 p0, 0x0

    :try_start_21
    throw p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception p0

    throw p0
.end method

.method private declared-synchronized f()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/ci;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v1, v0, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->k:Ljava/util/List;

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object v1

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic g(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Z
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x13

    if-eqz v0, :cond_11

    const/16 v0, 0x3d

    goto :goto_13

    :cond_11
    const/16 v0, 0x13

    :goto_13
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->w:Z

    return v2
.end method

.method private declared-synchronized h()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v1, v0, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->m:Ljava/util/Map;

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_27

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    if-eq v0, v3, :cond_25

    const/16 v0, 0x40

    :try_start_20
    div-int/2addr v0, v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_23

    monitor-exit p0

    return-object v1

    :catchall_23
    move-exception v0

    :try_start_24
    throw v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_27

    :cond_25
    monitor-exit p0

    return-object v1

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic i(Lcom/ironsource/adqualitysdk/sdk/i/ax;)V
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->W()V

    if-nez v0, :cond_1f

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 p0, p0, 0x53

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :cond_1f
    const/4 p0, 0x0

    :try_start_20
    throw p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p0

    throw p0
.end method

.method private declared-synchronized j()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/gd;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x53

    if-eqz v0, :cond_12

    const/16 v0, 0x53

    goto :goto_14

    :cond_12
    const/16 v0, 0x63

    :goto_14
    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->l:Ljava/util/List;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1e

    monitor-exit p0

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    :try_start_1b
    throw v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception v0

    :try_start_1d
    throw v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic k(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Ljava/util/Map;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h()Ljava/util/Map;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method static synthetic l(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->s:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v0, 0x13

    if-eqz v1, :cond_1b

    const/16 v1, 0x33

    goto :goto_1d

    :cond_1b
    const/16 v1, 0x13

    :goto_1d
    if-ne v1, v0, :cond_20

    return-object p0

    :cond_20
    const/4 p0, 0x0

    :try_start_21
    throw p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception p0

    throw p0
.end method

.method private declared-synchronized m()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->n:Ljava/util/Map;

    goto :goto_1b

    :cond_16
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->n:Ljava/util/Map;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1f

    const/16 v2, 0x4b

    :try_start_1a
    div-int/2addr v2, v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1d

    :goto_1b
    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception v0

    :try_start_1e
    throw v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic n(Lcom/ironsource/adqualitysdk/sdk/i/ax;Lcom/ironsource/adqualitysdk/sdk/i/dr;)Lcom/ironsource/adqualitysdk/sdk/i/dr;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    const/4 v0, 0x1

    :goto_f
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->p:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    if-eqz v0, :cond_14

    return-object p1

    :cond_14
    const/4 p0, 0x0

    :try_start_15
    throw p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception p0

    throw p0
.end method

.method private static o(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/gd;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_53

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    const/4 v0, 0x1

    :goto_17
    if-eq v0, v1, :cond_53

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v3, 0x63

    if-eqz v0, :cond_2a

    const/16 v0, 0x63

    goto :goto_2c

    :cond_2a
    const/16 v0, 0x33

    :goto_2c
    if-eq v0, v3, :cond_3e

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4e

    if-eqz v0, :cond_39

    const/16 v0, 0x4e

    goto :goto_3b

    :cond_39
    const/16 v0, 0x5d

    :goto_3b
    if-eq v0, v1, :cond_48

    goto :goto_53

    :cond_3e
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_45

    goto :goto_46

    :cond_45
    const/4 v1, 0x0

    :goto_46
    if-eqz v1, :cond_53

    :cond_48
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/gd;

    invoke-interface {p0}, Lcom/ironsource/adqualitysdk/sdk/i/gd;->ﾒ()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_53
    :goto_53
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic p(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Ljava/util/List;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0xd

    if-eqz v0, :cond_11

    const/16 v0, 0xd

    goto :goto_13

    :cond_11
    const/16 v0, 0x1f

    :goto_13
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->d()Ljava/util/List;

    move-result-object p0

    if-eq v0, v1, :cond_1a

    goto :goto_1e

    :cond_1a
    const/16 v0, 0x49

    :try_start_1c
    div-int/lit8 v0, v0, 0x0
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_1f

    :goto_1e
    return-object p0

    :catchall_1f
    move-exception p0

    throw p0
.end method

.method private q(Landroid/content/Context;)V
    .registers 15

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    shr-int/lit8 v0, v0, 0x16

    add-int/lit8 v0, v0, 0xc

    const-string v1, ""

    invoke-static {v1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x14

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit16 v3, v3, 0x6b03

    int-to-char v3, v3

    invoke-static {v0, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->E(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    shr-int/lit8 v3, v3, 0x16

    add-int/lit8 v3, v3, 0x1

    const v4, 0x361924d

    const/16 v5, 0x30

    invoke-static {v5}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v5

    add-int/2addr v5, v4

    const/4 v4, 0x0

    invoke-static {v1, v1, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v6

    int-to-byte v6, v6

    invoke-static {v1, v4}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v1

    int-to-short v1, v1

    const v7, 0x215002d2

    invoke-static {v4, v4}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    sub-int/2addr v7, v12

    invoke-static {v3, v5, v6, v1, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->t(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, -0xfffff1

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x20

    const v4, 0xdb96

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    sub-int/2addr v4, v5

    int-to-char v4, v4

    invoke-static {v1, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->E(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾇ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$c;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax$c;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ax;)V

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->爫()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/il;J)V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$g;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ax$g;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ax;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/gd;",
            ">;",
            "Lcom/ironsource/adqualitysdk/sdk/i/il;",
            ")V"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    const/16 v1, 0x57

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_43

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sget p4, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 p4, p4, 0x6d

    rem-int/lit16 v2, p4, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 p4, p4, 0x2

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_24

    const/16 p4, 0x57

    goto :goto_26

    :cond_24
    const/16 p4, 0x2b

    :goto_26
    if-eq p4, v1, :cond_29

    return-void

    :cond_29
    sget p4, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 p4, p4, 0x49

    rem-int/lit16 v2, p4, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 p4, p4, 0x2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v6, p4

    check-cast v6, Lcom/ironsource/adqualitysdk/sdk/i/gd;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/gd;Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    goto :goto_1b

    :cond_43
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    const/4 p1, 0x0

    :try_start_47
    throw p1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception p1

    throw p1
.end method

.method static synthetic s(Lcom/ironsource/adqualitysdk/sdk/i/ax;Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/az;)Lcom/ironsource/adqualitysdk/sdk/i/ci;
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    if-ne v0, v1, :cond_21

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->U(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/az;)Lcom/ironsource/adqualitysdk/sdk/i/ci;

    move-result-object p0

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :cond_21
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->U(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/az;)Lcom/ironsource/adqualitysdk/sdk/i/ci;

    const/4 p0, 0x0

    :try_start_25
    throw p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception p0

    throw p0
.end method

.method private static t(IIBSI)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->d:I

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

    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->f:[B

    if-eqz p0, :cond_21

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/ax;->c:I

    add-int/2addr v6, p4

    aget-byte p0, p0, v6

    add-int/2addr p0, v2

    int-to-byte p0, p0

    goto :goto_2a

    :cond_21
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->g:[S

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/ax;->c:I

    add-int/2addr v6, p4

    aget-short p0, p0, v6

    add-int/2addr p0, v2

    int-to-short p0, p0

    :cond_2a
    :goto_2a
    if-lez p0, :cond_89

    add-int/2addr p4, p0

    add-int/lit8 p4, p4, -0x2

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->c:I

    add-int/2addr p4, v2

    if-eqz v3, :cond_35

    const/4 v4, 0x1

    :cond_35
    add-int/2addr p4, v4

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    sput-byte p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->e:I

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

    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->f:[B

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
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->g:[S

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

.method static synthetic u(Lcom/ironsource/adqualitysdk/sdk/i/ax;Ljava/util/List;)Ljava/util/List;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x41

    if-eqz v0, :cond_11

    const/16 v0, 0x41

    goto :goto_13

    :cond_11
    const/16 v0, 0x3a

    :goto_13
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->k:Ljava/util/List;

    if-eq v0, v2, :cond_20

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v1, v1, 0x2

    return-object p1

    :cond_20
    const/4 p0, 0x0

    :try_start_21
    throw p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception p0

    throw p0
.end method

.method private static v(Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x45

    if-eqz v3, :cond_22

    const/16 v3, 0x52

    goto :goto_24

    :cond_22
    const/16 v3, 0x45

    :goto_24
    if-eq v3, v4, :cond_44

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v3, v3, 0x15

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v3, v3, 0x2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_17

    :cond_44
    const/4 p0, 0x0

    invoke-static {p0, p0, p0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    rsub-int/lit8 v2, v2, -0x1f

    const v3, 0x36192c6

    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p0

    const/4 v4, 0x0

    cmpl-float p0, p0, v4

    sub-int/2addr v3, p0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p0

    cmpl-float p0, p0, v4

    rsub-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    int-to-short v4, v4

    const v5, 0x21500325

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    shr-int/lit8 v6, v6, 0x16

    sub-int/2addr v5, v6

    invoke-static {v2, v3, p0, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->t(IIBSI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 p0, p0, 0x1d

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 p0, p0, 0x2

    return-object v0
.end method

.method private w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/gd;Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    .registers 20

    move-object v10, p0

    move-object/from16 v0, p3

    invoke-interface/range {p4 .. p4}, Lcom/ironsource/adqualitysdk/sdk/i/gd;->ｋ()Lcom/ironsource/adqualitysdk/sdk/i/iw$e;

    move-result-object v9

    invoke-interface/range {p4 .. p4}, Lcom/ironsource/adqualitysdk/sdk/i/gd;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/az;

    move-result-object v11

    invoke-direct {p0, v0, v11}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->B(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/az;)V

    iget-object v1, v10, Lcom/ironsource/adqualitysdk/sdk/i/ax;->r:Lcom/ironsource/adqualitysdk/sdk/i/at;

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/at$d;

    invoke-direct {v3, v1, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/at$d;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/at;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/av$a;)V

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    iget-object v12, v10, Lcom/ironsource/adqualitysdk/sdk/i/ax;->u:Lcom/ironsource/adqualitysdk/sdk/i/iq;

    new-instance v13, Lcom/ironsource/adqualitysdk/sdk/i/ax$h;

    move-object v1, v13

    move-object v2, p0

    move-object v3, p1

    move-object v4, v11

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/ironsource/adqualitysdk/sdk/i/ax$h;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ax;Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/az;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/gd;Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    invoke-virtual {v12, v9, v13}, Lcom/ironsource/adqualitysdk/sdk/i/iq;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/iw;Lcom/ironsource/adqualitysdk/sdk/i/ih;)Ljava/lang/String;

    move-result-object v4

    new-instance v12, Lcom/ironsource/adqualitysdk/sdk/i/ax$i;

    move-object v1, v12

    move-object v5, v11

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/ironsource/adqualitysdk/sdk/i/ax$i;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ax;Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/az;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/gd;Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    const-wide/16 v0, 0x7d0

    invoke-static {v12, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/il;J)V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_53

    const/4 v0, 0x1

    goto :goto_54

    :cond_53
    const/4 v0, 0x0

    :goto_54
    if-nez v0, :cond_57

    return-void

    :cond_57
    const/4 v0, 0x0

    :try_start_58
    throw v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_59

    :catchall_59
    move-exception v0

    move-object v1, v0

    throw v1
.end method

.method private x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/gd;",
            ">;",
            "Lcom/ironsource/adqualitysdk/sdk/i/il;",
            ")V"
        }
    .end annotation

    new-instance v7, Lcom/ironsource/adqualitysdk/sdk/i/ax$k;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/ax$k;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ax;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    invoke-static {v7}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    if-nez p1, :cond_21

    return-void

    :cond_21
    const/4 p1, 0x0

    :try_start_22
    throw p1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p1

    throw p1
.end method

.method static synthetic y(Lcom/ironsource/adqualitysdk/sdk/i/ax;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct/range {p0 .. p5}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 p0, p0, 0x4f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method static synthetic z(Lcom/ironsource/adqualitysdk/sdk/i/ax;Lcom/ironsource/adqualitysdk/sdk/i/ci;Ljava/lang/String;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->A(Lcom/ironsource/adqualitysdk/sdk/i/ci;Ljava/lang/String;)V

    if-eqz v0, :cond_16

    goto :goto_19

    :cond_16
    const/16 p0, 0x39

    :try_start_18
    div-int/2addr p0, v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_34

    :goto_19
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 p0, p0, 0x15

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 p0, p0, 0x2

    const/16 p1, 0x3e

    if-nez p0, :cond_2a

    const/16 p0, 0x3e

    goto :goto_2c

    :cond_2a
    const/16 p0, 0x5f

    :goto_2c
    if-eq p0, p1, :cond_2f

    return-void

    :cond_2f
    const/4 p0, 0x4

    :try_start_30
    div-int/2addr p0, v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_32

    return-void

    :catchall_32
    move-exception p0

    throw p0

    :catchall_34
    move-exception p0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized ﻐ()V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$n;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax$n;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ax;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->r:Lcom/ironsource/adqualitysdk/sdk/i/at;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/at$a;

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/at$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/at;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->r:Lcom/ironsource/adqualitysdk/sdk/i/at;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ax$d;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax$d;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ax;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_34

    if-eqz v1, :cond_2c

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    if-nez v1, :cond_31

    monitor-exit p0

    return-void

    :cond_31
    :try_start_31
    throw v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v0

    :try_start_33
    throw v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ﻐ(Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v0, v0, 0x2

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->j:Z

    const/4 v1, 0x1

    if-nez v0, :cond_32

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$o;

    invoke-direct {v0, p0, p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ax$o;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ax;Ljava/lang/Runnable;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->X(Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->j:Z

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    const/16 p2, 0x33

    add-int/2addr p1, p2

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_54

    const/4 v0, 0x0

    if-eqz p1, :cond_29

    const/4 v1, 0x0

    :cond_29
    if-eqz v1, :cond_2d

    monitor-exit p0

    return-void

    :cond_2d
    :try_start_2d
    div-int/2addr p2, v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_30

    monitor-exit p0

    return-void

    :catchall_30
    move-exception p1

    :try_start_31
    throw p1

    :cond_32
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/ax$m;

    invoke-direct {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ax$m;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/2addr p1, v1

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_43
    .catchall {:try_start_31 .. :try_end_43} :catchall_54

    const/16 p2, 0x3d

    if-nez p1, :cond_4a

    const/16 p1, 0x21

    goto :goto_4c

    :cond_4a
    const/16 p1, 0x3d

    :goto_4c
    if-ne p1, p2, :cond_50

    monitor-exit p0

    return-void

    :cond_50
    const/4 p1, 0x0

    :try_start_51
    throw p1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception p1

    :try_start_53
    throw p1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_54

    :catchall_54
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final ﻐ(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->ﾇ(Ljava/lang/String;Ljava/util/List;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final declared-synchronized ﻛ()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;
    .registers 4

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->t:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_22

    monitor-exit p0

    return-object v0

    :cond_1e
    const/4 v0, 0x0

    :try_start_1f
    throw v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v0

    :try_start_21
    throw v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ｋ()Lorg/json/JSONObject;
    .registers 12

    const-string v0, ""

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    :try_start_d
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->m()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v5, 0x1

    goto :goto_27

    :cond_26
    const/4 v5, 0x0

    :goto_27
    if-eqz v5, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->m()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_3c} :catch_68

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v5, v5, 0x3f

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v5, v5, 0x2

    goto :goto_1e

    :cond_47
    :try_start_47
    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x4

    invoke-static {v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x10

    invoke-static {v0, v3}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v6

    add-int/lit16 v6, v6, 0x256d

    int-to-char v6, v6

    invoke-static {v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->E(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_67
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_67} :catch_68

    goto :goto_bc

    :catch_68
    move-exception v2

    const/16 v4, 0x30

    invoke-static {v0, v4, v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    add-int/lit8 v4, v4, 0x11

    invoke-static {v3, v3}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    cmp-long v10, v5, v7

    rsub-int/lit8 v5, v10, -0x1

    const v6, 0xbbd5

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    shr-int/lit8 v7, v7, 0x16

    sub-int/2addr v6, v7

    int-to-char v6, v6

    invoke-static {v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->E(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v5

    rsub-int/lit8 v5, v5, -0x6

    const v6, 0x3619295

    invoke-static {v3, v3, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {v3, v9, v9}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v6

    cmpl-float v6, v6, v9

    int-to-byte v6, v6

    invoke-static {v0, v0, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v8

    int-to-short v8, v8

    const v9, 0x215002b7

    invoke-static {v0, v3, v3}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v0

    sub-int/2addr v9, v0

    invoke-static {v5, v7, v6, v8, v9}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->t(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_bc
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public final ﾇ()Lorg/json/JSONObject;
    .registers 12

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x55

    if-nez v0, :cond_11

    const/16 v0, 0x55

    goto :goto_13

    :cond_11
    const/16 v0, 0x2a

    :goto_13
    const/4 v2, 0x0

    if-eq v0, v1, :cond_21

    :try_start_16
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->v(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_2c

    :catch_1f
    move-exception v0

    goto :goto_39

    :cond_21
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->v(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_29} :catch_1f

    const/16 v1, 0x25

    :try_start_2b
    div-int/2addr v1, v2
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_2c} :catch_1f
    .catchall {:try_start_2b .. :try_end_2c} :catchall_37

    :goto_2c
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :catchall_37
    move-exception v0

    throw v0

    :goto_39
    const-string v1, ""

    invoke-static {v1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x10

    invoke-static {v1}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v4

    rsub-int/lit8 v4, v4, -0x1

    const v5, 0xbbd4

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    add-int/2addr v10, v5

    int-to-char v5, v10

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->E(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v4

    cmp-long v6, v4, v8

    add-int/lit8 v6, v6, -0x4

    const v4, 0x3619295

    invoke-static {v8, v9}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v2, v2}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v1}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v1

    rsub-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    const v4, 0x21500299

    invoke-static {v8, v9}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v7

    sub-int/2addr v4, v7

    invoke-static {v6, v5, v2, v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->t(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public final ﾇ(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdListener;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x4b

    if-eqz v0, :cond_11

    const/16 v0, 0x63

    goto :goto_13

    :cond_11
    const/16 v0, 0x4b

    :goto_13
    if-eq v0, v1, :cond_21

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->v:Lcom/ironsource/adqualitysdk/sdk/i/ba;

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ｋ(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdListener;)V

    const/16 p1, 0x13

    :try_start_1c
    div-int/lit8 p1, p1, 0x0
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_1f

    goto :goto_26

    :catchall_1f
    move-exception p1

    throw p1

    :cond_21
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax;->v:Lcom/ironsource/adqualitysdk/sdk/i/ba;

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ｋ(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdListener;)V

    :goto_26
    return-void
.end method

.method public final ﾇ(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-eqz v1, :cond_27

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 v1, v1, 0x2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v1, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﾇ(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_8

    :cond_27
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ax;->i:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ax;->h:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

###### Class com.json.adqualitysdk.sdk.i.fi (com.ironsource.adqualitysdk.sdk.i.fi)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/fi;
.super Lcom/ironsource/adqualitysdk/sdk/i/dx;
.source ""


# static fields
.field private static e:Lcom/ironsource/adqualitysdk/sdk/i/fi; = null

.field private static f:[C = null

.field private static g:C = '\u0000'

.field private static h:I = 0x0

.field private static i:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/fi;->d()V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/fi;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/fi;-><init>()V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/fi;->e:Lcom/ironsource/adqualitysdk/sdk/i/fi;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fi;->h:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fi;->i:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-string v0, ""

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/do;->ﾒ(Ljava/lang/String;I)Lcom/ironsource/adqualitysdk/sdk/i/do;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dx;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    return-void
.end method

.method private static c(BLjava/lang/String;I)Ljava/lang/String;
    .registers 11

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_6
    check-cast p1, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/fi;->f:[C

    sget-char v2, Lcom/ironsource/adqualitysdk/sdk/i/fi;->g:C

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

.method static d()V
    .registers 1

    const/4 v0, 0x2

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/fi;->g:C

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_c

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/fi;->f:[C

    return-void

    :array_c
    .array-data 2
        0x6es
        0x75s
        0x6cs
        0x6fs
    .end array-data
.end method

.method public static declared-synchronized ｋ()Lcom/ironsource/adqualitysdk/sdk/i/fi;
    .registers 3

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/fi;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/fi;->h:I

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fi;->i:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x22

    if-nez v1, :cond_14

    const/16 v1, 0x56

    goto :goto_16

    :cond_14
    const/16 v1, 0x22

    :goto_16
    if-eq v1, v2, :cond_21

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/fi;->e:Lcom/ironsource/adqualitysdk/sdk/i/fi;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_25

    const/16 v2, 0x50

    :try_start_1c
    div-int/lit8 v2, v2, 0x0
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception v1

    :try_start_20
    throw v1

    :cond_21
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/fi;->e:Lcom/ironsource/adqualitysdk/sdk/i/fi;
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_25

    :goto_23
    monitor-exit v0

    return-object v1

    :catchall_25
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fi;->h:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fi;->i:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    const-wide/16 v3, -0x1

    const-string v5, "\u0001\u0000\u00d1\u00d1"

    const-string v6, ""

    if-eqz v0, :cond_2a

    const/16 v0, 0x30

    invoke-static {v6, v0, v2, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x64

    int-to-byte v0, v0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    cmp-long v2, v6, v3

    rsub-int/lit8 v2, v2, 0x5

    goto :goto_3b

    :cond_2a
    const/16 v0, 0x65

    const/4 v7, 0x7

    invoke-static {v6, v7, v2, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    shl-int/2addr v0, v2

    int-to-byte v0, v0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    cmp-long v2, v6, v3

    rem-int v2, v1, v2

    :goto_3b
    invoke-static {v0, v5, v2}, Lcom/ironsource/adqualitysdk/sdk/i/fi;->c(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/fi;->i:I

    add-int/lit8 v2, v2, 0x75

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/fi;->h:I

    rem-int/2addr v2, v1

    return-object v0
.end method

.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;
    .registers 5

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/dp;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dp;-><init>(Ljava/lang/Object;)V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fi;->i:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fi;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    if-eqz v0, :cond_16

    const/16 v0, 0x25

    goto :goto_17

    :cond_16
    const/4 v0, 0x4

    :goto_17
    if-ne v0, v1, :cond_1a

    return-object p1

    :cond_1a
    :try_start_1a
    throw p2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception p1

    throw p1
.end method

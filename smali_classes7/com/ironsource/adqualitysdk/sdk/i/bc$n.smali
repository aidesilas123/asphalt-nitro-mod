###### Class com.ironsource.adqualitysdk.sdk.i.bc.n (com.ironsource.adqualitysdk.sdk.i.bc$n)
.class Lcom/ironsource/adqualitysdk/sdk/i/bc$n;
.super Lcom/adcolony/sdk/AdColonyInterstitialListener;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/gy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/adcolony/sdk/AdColonyInterstitialListener;",
        "Lcom/ironsource/adqualitysdk/sdk/i/gy<",
        "Lcom/adcolony/sdk/AdColonyInterstitialListener;",
        ">;"
    }
.end annotation


# static fields
.field private static a:[C = null

.field private static b:C = '\u0006'

.field private static c:J = 0x0L

.field private static d:I = 0x0

.field private static e:I = 0x1


# instance fields
.field private f:Lcom/adcolony/sdk/AdColonyInterstitialListener;

.field private g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

.field private synthetic h:Lcom/ironsource/adqualitysdk/sdk/i/bc;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->a:[C

    const-wide v0, 0x30251e121a50a2ceL    # 9.118698809993018E-77

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->c:J

    return-void

    nop

    :array_12
    .array-data 2
        0x41s
        0x64s
        0x43s
        0x6fs
        0x6cs
        0x6es
        0x79s
        0x49s
        0x74s
        0x65s
        0x72s
        0x73s
        0x69s
        0x61s
        0x4cs
        0x2es
        0x52s
        0x71s
        0x75s
        0x46s
        0x4fs
        0x70s
        0x45s
        0x78s
        0x67s
        0x53s
        0x42s
        0x44s
        0x47s
        0x48s
        0x4as
        0x4bs
        0x4ds
        0x4es
        0x50s
        0x51s
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/bc;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/ironsource/adqualitysdk/sdk/i/ch;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->h:Lcom/ironsource/adqualitysdk/sdk/i/bc;

    invoke-direct {p0}, Lcom/adcolony/sdk/AdColonyInterstitialListener;-><init>()V

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->f:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    return-void
.end method

.method private a()Lcom/adcolony/sdk/AdColonyInterstitialListener;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->f:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    if-eqz v1, :cond_22

    const/16 v1, 0x57

    :try_start_1e
    div-int/2addr v1, v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_20

    return-object v0

    :catchall_20
    move-exception v0

    throw v0

    :cond_22
    return-object v0
.end method

.method private static b(BLjava/lang/String;I)Ljava/lang/String;
    .registers 11

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_6
    check-cast p1, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->a:[C

    sget-char v2, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->b:C

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

.method private static c(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-wide v1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->c:J

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

    sget-wide v6, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->c:J

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
.method public onAudioStarted(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->h:Lcom/ironsource/adqualitysdk/sdk/i/bc;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    int-to-byte v3, v3

    const-string v4, ""

    invoke-static {v4, v4, v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v4

    add-int/lit8 v4, v4, 0x2b

    const-string v5, "\u0001\u0002\u0003\u0004\u0005\u0004\u0000\u000b\u000b\u0001\t\n\u000b\u0006\u0006\u000e\u0006\u000e\u0010\u0001\u000f\r\u0006\t\u000b\u0003\n\u000b\u0015\t\u0000\u0001\u0013\u0000\u000f\u0000\u001a\u0007\u0010\u0007\t\no"

    invoke-static {v3, v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->b(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {v0, p0, v1, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->f:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    if-eqz v0, :cond_35

    const/4 v2, 0x1

    :cond_35
    if-eqz v2, :cond_44

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onAudioStarted(Lcom/adcolony/sdk/AdColonyInterstitial;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->e:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    rem-int/lit8 p1, p1, 0x2

    :cond_44
    return-void
.end method

.method public onAudioStopped(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->e:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "\u1e57\u1e16\u3218\u78ee\u90b2\u3d31\ub922\u9503\u5127\ubedb\ued8b\u22fc\u086e\u29e2\u6149\uaf98\ubf8d\ud4b7\uda01\udb5c\u32c3\u5f75\u4f2c\u4401\ua603\uca3d\uc0f6\uf1d1\u5d62\u76c2\ub5b8\u7aef\ud0f1\ue18b\u297b\ue794\u47e2\u6c58\ua204\u1362\ufafc\u1700\u17ca\u9c35\u6e17\u8229\u8899"

    const/4 v2, 0x1

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->h:Lcom/ironsource/adqualitysdk/sdk/i/bc;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    shl-int/lit8 v4, v4, 0x51

    invoke-static {v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v0, p0, v3, v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->f:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    const/16 v1, 0x48

    if-eqz v0, :cond_31

    const/16 v0, 0x48

    goto :goto_33

    :cond_31
    const/16 v0, 0x61

    :goto_33
    if-eq v0, v1, :cond_58

    goto :goto_67

    :cond_36
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->h:Lcom/ironsource/adqualitysdk/sdk/i/bc;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    shr-int/lit8 v4, v4, 0x16

    invoke-static {v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, p0, v3, v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->f:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    if-eqz v0, :cond_55

    goto :goto_56

    :cond_55
    const/4 v2, 0x0

    :goto_56
    if-eqz v2, :cond_67

    :cond_58
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->e:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->f:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onAudioStopped(Lcom/adcolony/sdk/AdColonyInterstitial;)V

    :cond_67
    :goto_67
    return-void
.end method

.method public onClicked(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .registers 8

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->h:Lcom/ironsource/adqualitysdk/sdk/i/bc;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const-string v4, "\u8617\u8656\ub3a2\u767d\u1108\u33a2\uffb7\u0d43\u17b2\u3f61\ue318\u6469\u902e\ua858\u6fda\ue90d\u27cd\u550d\ud492\u9dc9\uaa83\udecf\u41bf\u0294\u3e43\u4b87\uce65\ub744\uc522\uf778\ubb2b\u3c7a\u48b1\u6031\u27e8\ua103\udfbb\uedef\uac9d\u55f3\u628a\u96aa"

    invoke-static {v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->f:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    if-eqz v0, :cond_23

    const/4 v5, 0x1

    :cond_23
    if-eq v5, v3, :cond_26

    goto :goto_33

    :cond_26
    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onClicked(Lcom/adcolony/sdk/AdColonyInterstitial;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    add-int/lit8 p1, p1, 0x21

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->e:I

    rem-int/lit8 p1, p1, 0x2

    :goto_33
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->e:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public onClosed(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->e:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->h:Lcom/ironsource/adqualitysdk/sdk/i/bc;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x51

    int-to-byte v2, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    shr-int/lit8 v3, v3, 0x16

    add-int/lit8 v3, v3, 0x25

    const-string v4, "\u0001\u0002\u0003\u0004\u0005\u0004\u0000\u000b\u000b\u0001\t\n\u000b\u0006\u0006\u000e\u0006\u000e\u0010\u0001\u000f\r\u0006\t\u000b\u0003\n\u000b\u0015\t\u0000\u0003\u0005\u0004\u0006\n\u00b5"

    invoke-static {v2, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->b(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->f:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    if-eqz v0, :cond_37

    goto :goto_38

    :cond_37
    const/4 v3, 0x0

    :goto_38
    if-eqz v3, :cond_58

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->e:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x39

    if-eqz v1, :cond_4b

    const/16 v1, 0xc

    goto :goto_4d

    :cond_4b
    const/16 v1, 0x39

    :goto_4d
    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onClosed(Lcom/adcolony/sdk/AdColonyInterstitial;)V

    if-eq v1, v2, :cond_58

    const/16 p1, 0x57

    :try_start_54
    div-int/2addr p1, v5
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_56

    goto :goto_58

    :catchall_56
    move-exception p1

    throw p1

    :cond_58
    :goto_58
    return-void
.end method

.method public onExpiring(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->e:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->h:Lcom/ironsource/adqualitysdk/sdk/i/bc;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const-string v2, ""

    invoke-static {v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    add-int/lit8 v2, v2, 0x74

    int-to-byte v2, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    rsub-int/lit8 v3, v3, 0x27

    const-string v4, "\u0001\u0002\u0003\u0004\u0005\u0004\u0000\u000b\u000b\u0001\t\n\u000b\u0006\u0006\u000e\u0006\u000e\u0010\u0001\u000f\r\u0006\t\u000b\u0003\n\u000b\u0015\t\u0004\u0017\u0012\u0016\u0010\u0006\u0011\u0000\u00db"

    invoke-static {v2, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->b(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->f:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    if-eqz v0, :cond_37

    goto :goto_38

    :cond_37
    const/4 v3, 0x0

    :goto_38
    if-eqz v3, :cond_47

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onExpiring(Lcom/adcolony/sdk/AdColonyInterstitial;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->e:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    rem-int/lit8 p1, p1, 0x2

    :cond_47
    return-void
.end method

.method public onIAPEvent(Lcom/adcolony/sdk/AdColonyInterstitial;Ljava/lang/String;I)V
    .registers 12

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->h:Lcom/ironsource/adqualitysdk/sdk/i/bc;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    const-string v4, "\u72d3\u7292\u732a\u5a34\ud180\u1feb\ua67b\uf987\u4e7e\uffe9\ucf51\u3da5\u64ea\u68d0\u4393\ub0c1\ud309\u9585\uf8db\uc405\u5e47\u1e47\u6df6\u5b58\uca87\u8b0f\ue22c\uee88\u31e6\u37f0\u9762\u65b6\ubc75\ua0b9\u0ba1\uf8c5\u2b52\u2d5e\u80f2\u0c22\u964e\u5628\u350b"

    invoke-static {v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v4, v7

    invoke-virtual {v0, p0, v1, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->f:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    if-eqz v0, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x1

    :goto_2b
    const/4 v1, 0x0

    if-eqz v2, :cond_2f

    goto :goto_3d

    :cond_2f
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->e:I

    add-int/lit8 v2, v2, 0x27

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    rem-int/2addr v2, v7

    invoke-virtual {v0, p1, p2, p3}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onIAPEvent(Lcom/adcolony/sdk/AdColonyInterstitial;Ljava/lang/String;I)V

    if-nez v2, :cond_55

    :goto_3d
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->e:I

    rem-int/2addr p1, v7

    const/16 p2, 0x2c

    if-nez p1, :cond_4d

    const/16 p1, 0x1c

    goto :goto_4f

    :cond_4d
    const/16 p1, 0x2c

    :goto_4f
    if-ne p1, p2, :cond_52

    return-void

    :cond_52
    :try_start_52
    throw v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    :catchall_53
    move-exception p1

    throw p1

    :cond_55
    :try_start_55
    throw v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    :catchall_56
    move-exception p1

    throw p1
.end method

.method public onLeftApplication(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->h:Lcom/ironsource/adqualitysdk/sdk/i/bc;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    const-string v3, "\ub26f\ub22e\u9959\u655a\u3bf3\u2085\u329e\u393b\uda9b\u159a\uf03f\ua940\ua456\u82a3\u7cfd\u2424\u13b5\u7ff6\uc7b5\u50e0\u9efb\uf434\u5298\ucfbd\u0a3b\u617c\udd42\u7a6d\uf15a\udd83\ua80c\uf153\u7cc9\u4aca\u34cf\u6c25\uebca\uc71b\ubfad\u98f0\u56e7\ubc45\u0a7d\u1790\uc23c\u296c\u953d\u8268\u4968\ua5ab"

    invoke-static {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->f:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    const/16 v1, 0x37

    if-eqz v0, :cond_30

    const/16 v2, 0x12

    goto :goto_32

    :cond_30
    const/16 v2, 0x37

    :goto_32
    if-eq v2, v1, :cond_41

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onLeftApplication(Lcom/adcolony/sdk/AdColonyInterstitial;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->e:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    rem-int/lit8 p1, p1, 0x2

    :cond_41
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->e:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public onOpened(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .registers 8

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->h:Lcom/ironsource/adqualitysdk/sdk/i/bc;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const-string v2, ""

    invoke-static {v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View;->resolveSize(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x25

    const-string v5, "\u0001\u0002\u0003\u0004\u0005\u0004\u0000\u000b\u000b\u0001\t\n\u000b\u0006\u0006\u000e\u0006\u000e\u0010\u0001\u000f\r\u0006\t\u000b\u0003\n\u000b\u0015\t\u0002\u0017\u001b\u000f\u0003\u000bi"

    invoke-static {v2, v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->b(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-virtual {v0, p0, v1, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->f:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    if-eqz v0, :cond_2b

    const/4 v3, 0x1

    :cond_2b
    if-eq v3, v4, :cond_2e

    goto :goto_45

    :cond_2e
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->e:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onOpened(Lcom/adcolony/sdk/AdColonyInterstitial;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->e:I

    add-int/lit8 p1, p1, 0x49

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    rem-int/lit8 p1, p1, 0x2

    :goto_45
    return-void
.end method

.method public onRequestFilled(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->e:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "\u0001\u0002\u0003\u0004\u0005\u0004\u0000\u000b\u000b\u0001\t\n\u000b\u0006\u0006\u000e\u0006\u000e\u0010\u0001\u000f\r\u0006\t\u000b\u0003\n\u000b\u0015\t\u0004\u0011\u000b\u000f\u0015\u0006\u0006\t\u0012\roo\u0007\u0003"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->h:Lcom/ironsource/adqualitysdk/sdk/i/bc;

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x43

    div-int v6, v3, v6

    invoke-static {v5, v1, v6}, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->b(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v0, p0, v4, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->f:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    if-eqz v0, :cond_75

    goto :goto_66

    :cond_39
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->h:Lcom/ironsource/adqualitysdk/sdk/i/bc;

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x3

    int-to-byte v5, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    rsub-int/lit8 v6, v6, 0x2c

    invoke-static {v5, v1, v6}, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->b(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {v0, p0, v4, v1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->f:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    if-eqz v0, :cond_62

    goto :goto_63

    :cond_62
    const/4 v2, 0x1

    :goto_63
    if-eqz v2, :cond_66

    goto :goto_75

    :cond_66
    :goto_66
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->f:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onRequestFilled(Lcom/adcolony/sdk/AdColonyInterstitial;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->e:I

    rem-int/lit8 p1, p1, 0x2

    :cond_75
    :goto_75
    return-void
.end method

.method public onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V
    .registers 7

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->h:Lcom/ironsource/adqualitysdk/sdk/i/bc;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const-string v2, ""

    invoke-static {v2}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const-string v4, "\u686d\u682c\u9e56\u4bcb\u3cfc\u0e14\u6f21\ue339\u8724\u1295\udeae\uf4ff\u7e54\u85ac\u526c\u799b\uc9b7\u78f9\ue924\u0d5f\u44f9\uf33b\u7c09\u9202\ud039\u6673\uf3d3\u27d2\u2b58\uda8c\u869d\uacec\ua6cb\u4dc5\u1a5e\u3184\u31c8\uc003\u913d\uc56b\u8ce6\ubb4e\u24ce\u4a29\u1829\u2e44\ubbb1\udfd2\u9369\ua2af\u4f74"

    invoke-static {v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->f:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    const/4 v1, 0x7

    const/16 v2, 0x5b

    if-eqz v0, :cond_27

    const/4 v3, 0x7

    goto :goto_29

    :cond_27
    const/16 v3, 0x5b

    :goto_29
    if-eq v3, v2, :cond_41

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->e:I

    rem-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->e:I

    add-int/lit8 p1, p1, 0x69

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    rem-int/lit8 p1, p1, 0x2

    :cond_41
    return-void
.end method

.method public final synthetic ﾇ()Ljava/lang/Object;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->e:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->a()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->d:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bc$n;->e:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    if-eq v1, v2, :cond_21

    return-object v0

    :cond_21
    const/4 v0, 0x0

    :try_start_22
    throw v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v0

    throw v0
.end method

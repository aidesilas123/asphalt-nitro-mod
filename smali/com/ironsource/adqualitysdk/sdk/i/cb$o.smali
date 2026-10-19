###### Class com.ironsource.adqualitysdk.sdk.i.cb.o (com.ironsource.adqualitysdk.sdk.i.cb$o)
.class Lcom/ironsource/adqualitysdk/sdk/i/cb$o;
.super Lcom/unity3d/services/core/webview/WebViewApp;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/gy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unity3d/services/core/webview/WebViewApp;",
        "Lcom/ironsource/adqualitysdk/sdk/i/gy<",
        "Lcom/unity3d/services/core/webview/WebViewApp;",
        ">;"
    }
.end annotation


# static fields
.field private static a:[C = null

.field private static b:J = 0x0L

.field private static c:J = 0x0L

.field private static d:I = 0x0

.field private static e:I = 0x1


# instance fields
.field private f:Lcom/unity3d/services/core/webview/WebViewApp;

.field private g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

.field private synthetic h:Lcom/ironsource/adqualitysdk/sdk/i/cb;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x110

    new-array v0, v0, [C

    fill-array-data v0, :array_18

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->a:[C

    const-wide v0, -0x10c73abc522e35bbL    # -5.868034162567941E227

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->b:J

    const-wide v0, -0x6b1619039223d76cL    # -6.303055829202607E-208

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->c:J

    return-void

    :array_18
    .array-data 2
        0x57s
        -0x35e0s
        -0x6b18s
        0x5e99s
        0x297ds
        -0xcc4s
        -0x4217s
        -0x785es
        0x5258s
        0x1c1ds
        -0x1964s
        -0x4f7cs
        0x7b59s
        0x45f5s
        0xf91s
        -0x2592s
        -0x5bces
        0x6ed4s
        0x38aas
        0x36fs
        -0x32d8s
        -0x683as
        0x618fs
        0x2c57s
        -0x9e3s
        -0x3f27s
        -0x1a46s
        0x2fcds
        0x7105s
        -0x448cs
        -0x3370s
        0x16d1s
        0x5804s
        0x624fs
        -0x484bs
        -0x610s
        0x371s
        0x557ds
        -0x614cs
        -0x5fe8s
        -0x1584s
        0x3f83s
        0x41dfs
        -0x74c7s
        -0x22b9s
        -0x197es
        0x28cfs
        0x7225s
        -0x7b96s
        -0x364es
        0x13e0s
        0x2522s
        0x6e8as
        -0x4f19s
        -0x5fcs
        0xc4fs
        0x5188s
        -0x6429s
        -0x52d6s
        -0x893s
        0x57s
        -0x35e0s
        -0x6b18s
        0x5e99s
        0x297ds
        -0xcc4s
        -0x4217s
        -0x785es
        0x5258s
        0x1c1ds
        -0x1964s
        -0x4f70s
        0x7b59s
        0x45f5s
        0xf91s
        -0x2592s
        -0x5bces
        0x6ed4s
        0x38aas
        0x36fs
        -0x32des
        -0x6838s
        0x6187s
        0x2c5fs
        -0x9f3s
        -0x3f31s
        -0x7499s
        0x5504s
        0x1fe3s
        -0x164bs
        -0x4b8ds
        -0x60b7s
        0x553es
        0xbf6s
        -0x3e79s
        -0x499ds
        0x6c22s
        0x22f7s
        0x18bcs
        -0x32bas
        -0x7cfds
        0x7982s
        0x2f9bs
        -0x1bb9s
        -0x2514s
        -0x6f43s
        0x4561s
        0x3b19s
        -0xe12s
        -0x585as
        -0x63a9s
        0x5213s
        0x8d2s
        -0x179s
        -0x4c94s
        0x6916s
        0x5fd3s
        0x1455s
        -0x35c9s
        -0x7f05s
        0x76bbs
        0x2b61s
        -0x1edcs
        -0x282es
        -0x726es
        0x424es
        0x3810s
        -0x1122s
        -0x5b72s
        -0x66b1s
        0x4ff3s
        0x57e5s
        -0x626es
        -0x3ca6s
        0x92bs
        0x7ecfs
        -0x5b72s
        -0x15a5s
        -0x2ff0s
        0x5eas
        0x4bafs
        -0x4ed2s
        -0x18des
        0x2cebs
        0x1247s
        0x5823s
        -0x7224s
        -0xc80s
        0x3971s
        0x6f01s
        0x54c8s
        -0x655fs
        0x57s
        -0x35e0s
        -0x6b18s
        0x5e99s
        0x297ds
        -0xcc4s
        -0x4217s
        -0x785es
        0x5258s
        0x1c1ds
        -0x1964s
        -0x4f70s
        0x7b59s
        0x45f5s
        0xf85s
        -0x259cs
        -0x5bc2s
        0x6ef3s
        0x38b3s
        0x378s
        -0x32efs
        -0x6825s
        0x618fs
        0x2c47s
        -0x9efs
        -0x3f2es
        -0x7494s
        -0x281s
        0x3708s
        0x69c0s
        -0x5c4fs
        -0x2babs
        0xe14s
        0x40c1s
        0x7a8as
        -0x5090s
        -0x1ecbs
        0x1bb4s
        0x4dacs
        -0x798fs
        -0x4739s
        -0xd76s
        0x2766s
        0x590es
        -0x6c28s
        -0x3a64s
        -0x1bds
        0x57s
        -0x35e0s
        -0x6b18s
        0x5e99s
        0x297ds
        -0xcc4s
        -0x4217s
        -0x785es
        0x5258s
        0x1c1ds
        -0x1964s
        -0x4f62s
        0x7b52s
        0x45f7s
        0xfa9s
        -0x25a0s
        -0x5bcbs
        0x6ed8s
        0x38bfs
        0x36bs
        -0x32f4s
        -0x683as
        0x618as
        -0x431s
        0x31b8s
        0x6f70s
        -0x5affs
        -0x2d1bs
        0x8a4s
        0x4671s
        0x7c3as
        -0x5640s
        -0x187bs
        0x1d04s
        0x4b06s
        -0x7f36s
        -0x4191s
        -0xbcfs
        0x21f8s
        0x5fads
        -0x6ab2s
        -0x3cdds
        -0x715s
        0x3690s
        0x6c53s
        -0x65e9s
        -0x2838s
        0xd8bs
        0x1156s
        -0x24dfs
        -0x7a17s
        0x4f98s
        0x387cs
        -0x1dc3s
        -0x5318s
        -0x695ds
        0x4359s
        0xd1cs
        -0x863s
        -0x5e7cs
        0x6a58s
        0x54eds
        0x1ea8s
        -0x3484s
        -0x4accs
        0x7fd7s
        0x29bas
        0x1272s
        -0x23f7s
        -0x7936s
        0x708es
        0x3d51s
        -0x18ees
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/cb;Lcom/unity3d/services/core/webview/WebViewApp;Lcom/ironsource/adqualitysdk/sdk/i/ch;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    invoke-direct {p0}, Lcom/unity3d/services/core/webview/WebViewApp;-><init>()V

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    return-void
.end method

.method private a()Lcom/unity3d/services/core/webview/WebViewApp;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    add-int/lit8 v1, v0, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    if-eq v1, v2, :cond_1d

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1

    :cond_1d
    const/4 v0, 0x0

    :try_start_1e
    throw v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v0

    throw v0
.end method

.method private static b(IIC)Ljava/lang/String;
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

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->a:[C

    add-int v4, p1, v2

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v2

    sget-wide v7, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->b:J

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

.method private static c(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﻛ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ｋ:I

    array-length p1, p0

    new-array p1, p1, [C

    const/4 v1, 0x0

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    :goto_13
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    array-length v2, p0

    if-ge v1, v2, :cond_2e

    aget-char v2, p0, v1

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/h;->ｋ:I

    mul-int v3, v3, v1

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->c:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    goto :goto_13

    :cond_2e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_35

    return-object p0

    :catchall_35
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addCallback(Lcom/unity3d/services/core/webview/bridge/NativeCallback;)V
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    const-string v3, ""

    const v4, 0xd838

    const-string v5, "\u28c3\uf0c6\u9898\ua067\u4821\u11e2\u39a9\uc154\ue95c\ub10b\u5a9c\u62a8\u0a64\ud23b\ufbd5\u83cc\uab88\u735f\u1b28\u24e0\uccbb\u947c"

    if-eq v0, v2, :cond_38

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    iget-object v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {v3}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v3

    mul-int v3, v3, v4

    invoke-static {v5, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v6, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_5d

    goto :goto_58

    :cond_38
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    iget-object v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {v3}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v4

    invoke-static {v5, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v0, p0, v6, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_55

    const/4 v1, 0x1

    :cond_55
    if-eq v1, v2, :cond_58

    goto :goto_5d

    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/webview/WebViewApp;->addCallback(Lcom/unity3d/services/core/webview/bridge/NativeCallback;)V

    :cond_5d
    :goto_5d
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_6a

    return-void

    :cond_6a
    const/4 p1, 0x0

    :try_start_6b
    throw p1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception p1

    throw p1
.end method

.method public getCallback(Ljava/lang/String;)Lcom/unity3d/services/core/webview/bridge/NativeCallback;
    .registers 11

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const v2, 0xba26

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x42

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "\u28c3\u92d4\u5cbc\u06ad\uc069\u8a48\u743d\u3fd6\uf9cc\ua3a9\u6dc8\ud764\u914d\u5b01\u06d1\uc0de\u8aa8\u748d\u3e6c\uf84a\ua213\u6df6"

    cmpl-float v3, v3, v4

    sub-int/2addr v2, v3

    invoke-static {v8, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_2b

    const/16 v1, 0x4c

    goto :goto_2d

    :cond_2b
    const/16 v1, 0x42

    :goto_2d
    const/4 v2, 0x0

    if-eq v1, v5, :cond_4a

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3d

    const/4 v6, 0x1

    :cond_3d
    if-eq v6, v7, :cond_44

    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/webview/WebViewApp;->getCallback(Ljava/lang/String;)Lcom/unity3d/services/core/webview/bridge/NativeCallback;

    move-result-object p1

    return-object p1

    :cond_44
    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/webview/WebViewApp;->getCallback(Ljava/lang/String;)Lcom/unity3d/services/core/webview/bridge/NativeCallback;

    :try_start_47
    throw v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception p1

    throw p1

    :cond_4a
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    add-int/2addr p1, v7

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    rem-int/lit8 p1, p1, 0x2

    return-object v2
.end method

.method public getConfiguration()Lcom/unity3d/services/core/configuration/Configuration;
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    shr-int/lit8 v2, v2, 0x16

    rsub-int/lit8 v2, v2, 0x1b

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v4

    rsub-int v4, v4, 0x98

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    int-to-char v5, v5

    invoke-static {v2, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_38

    const/4 v3, 0x1

    :cond_38
    const/4 v1, 0x0

    if-eq v3, v6, :cond_3c

    return-object v1

    :cond_3c
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    add-int/lit8 v2, v2, 0x47

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v3, 0x33

    if-nez v2, :cond_4d

    const/16 v2, 0x2c

    goto :goto_4f

    :cond_4d
    const/16 v2, 0x33

    :goto_4f
    if-ne v2, v3, :cond_56

    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/WebViewApp;->getConfiguration()Lcom/unity3d/services/core/configuration/Configuration;

    move-result-object v0

    return-object v0

    :cond_56
    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/WebViewApp;->getConfiguration()Lcom/unity3d/services/core/configuration/Configuration;

    :try_start_59
    throw v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception v0

    throw v0
.end method

.method public getErrorStateFromWebAppCode()Lcom/unity3d/services/core/configuration/ErrorState;
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1a

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    const/16 v0, 0x1a

    goto :goto_13

    :cond_12
    const/4 v0, 0x1

    :goto_13
    const-string v3, "\u28c3\u7e6a\u85c0\u2b13\u7291\u99f6\u2f41\u76e8\u9c3c\u2397\u4ab4\u905a\u27b5\u4d3f\u94ab\u3bf3\u4156\ue8b0\u3e00\u4546\uecfc\u3242\u59b2\uef1c\u365a\u5dc5\ue345\u0aa0\u5037\ue77e\u0edc\u5410\ufb84\u011f\ua841\uffca\u053c\uac96"

    const/16 v4, 0x10

    if-eq v0, v1, :cond_3c

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v2

    shr-int/2addr v2, v4

    add-int/lit16 v2, v2, 0x569b

    invoke-static {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    const/4 v1, 0x6

    if-eqz v0, :cond_38

    goto :goto_39

    :cond_38
    const/4 v4, 0x6

    :goto_39
    if-eq v4, v1, :cond_60

    goto :goto_62

    :cond_3c
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/16 v5, 0x333f

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v6

    mul-int/lit8 v6, v6, 0x50

    div-int/2addr v5, v6

    invoke-static {v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_5d

    const/16 v0, 0x10

    goto :goto_5e

    :cond_5d
    const/4 v0, 0x5

    :goto_5e
    if-eq v0, v4, :cond_62

    :cond_60
    const/4 v0, 0x0

    return-object v0

    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/WebViewApp;->getErrorStateFromWebAppCode()Lcom/unity3d/services/core/configuration/ErrorState;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getWebAppFailureCode()I
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/16 v2, 0x30

    invoke-static {v2}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v2

    add-int/lit8 v2, v2, -0x11

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View;->resolveSize(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x3c

    invoke-static {v3, v3}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v5

    int-to-char v5, v5

    invoke-static {v2, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    const/16 v1, 0x15

    if-eqz v0, :cond_38

    const/16 v2, 0x15

    goto :goto_3a

    :cond_38
    const/16 v2, 0x44

    :goto_3a
    if-eq v2, v1, :cond_3d

    return v3

    :cond_3d
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4b

    const/4 v1, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x0

    :goto_4c
    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/WebViewApp;->getWebAppFailureCode()I

    move-result v0

    if-eqz v1, :cond_58

    const/16 v1, 0x20

    :try_start_54
    div-int/2addr v1, v3
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_56

    goto :goto_58

    :catchall_56
    move-exception v0

    throw v0

    :cond_58
    :goto_58
    return v0
.end method

.method public getWebAppFailureMessage()Ljava/lang/String;
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x22

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x1a

    const v4, 0xe5ee

    const-string v5, ""

    invoke-static {v5}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v4

    int-to-char v4, v5

    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    const/4 v1, 0x1

    if-eqz v0, :cond_3e

    const/4 v2, 0x0

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x1

    :goto_3f
    if-eq v2, v1, :cond_46

    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/WebViewApp;->getWebAppFailureMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_46
    const/4 v0, 0x0

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    add-int/lit8 v2, v2, 0x2b

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_55

    const/4 v2, 0x1

    goto :goto_56

    :cond_55
    const/4 v2, 0x0

    :goto_56
    if-eq v2, v1, :cond_59

    return-object v0

    :cond_59
    const/16 v1, 0xe

    :try_start_5b
    div-int/2addr v1, v3
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5d

    return-object v0

    :catchall_5d
    move-exception v0

    throw v0
.end method

.method public getWebView()Lcom/unity3d/services/core/webview/WebView;
    .registers 12

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/4 v2, 0x0

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-static {v2, v2}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/16 v8, 0x2d

    const-string v9, ""

    cmp-long v10, v4, v6

    rsub-int v4, v10, 0x82

    invoke-static {v9, v9, v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v5

    rsub-int v5, v5, 0x57b2

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->b(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_3e

    const/16 v1, 0x17

    goto :goto_40

    :cond_3e
    const/16 v1, 0x2d

    :goto_40
    const/4 v3, 0x0

    if-eq v1, v8, :cond_75

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6f

    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/WebViewApp;->getWebView()Lcom/unity3d/services/core/webview/WebView;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v3, 0x33

    if-eqz v1, :cond_64

    const/16 v1, 0x4c

    goto :goto_66

    :cond_64
    const/16 v1, 0x33

    :goto_66
    if-eq v1, v3, :cond_6e

    const/16 v1, 0x1d

    :try_start_6a
    div-int/2addr v1, v2
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6c

    return-object v0

    :catchall_6c
    move-exception v0

    throw v0

    :cond_6e
    return-object v0

    :cond_6f
    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/WebViewApp;->getWebView()Lcom/unity3d/services/core/webview/WebView;

    :try_start_72
    throw v3
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_73

    :catchall_73
    move-exception v0

    throw v0

    :cond_75
    return-object v3
.end method

.method public invokeCallback(Lcom/unity3d/services/core/webview/bridge/Invocation;)Z
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/16 v2, 0x30

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x18

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    shr-int/lit8 v5, v5, 0x16

    add-int/lit16 v5, v5, 0xde

    const v6, 0xfb98

    invoke-static {v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    sub-int/2addr v6, v3

    int-to-char v3, v6

    invoke-static {v2, v5, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-virtual {v0, p0, v1, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    const/16 v1, 0x5a

    if-eqz v0, :cond_43

    const/16 v2, 0x5a

    goto :goto_45

    :cond_43
    const/16 v2, 0x43

    :goto_45
    if-eq v2, v1, :cond_52

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    rem-int/lit8 p1, p1, 0x2

    return v4

    :cond_52
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5f

    goto :goto_60

    :cond_5f
    const/4 v4, 0x1

    :goto_60
    if-eqz v4, :cond_67

    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/webview/WebViewApp;->invokeCallback(Lcom/unity3d/services/core/webview/bridge/Invocation;)Z

    move-result p1

    return p1

    :cond_67
    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/webview/WebViewApp;->invokeCallback(Lcom/unity3d/services/core/webview/bridge/Invocation;)Z

    const/4 p1, 0x0

    :try_start_6b
    throw p1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception p1

    throw p1
.end method

.method public varargs invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .registers 15

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x0

    cmp-long v9, v2, v4

    rsub-int/lit8 v2, v9, 0x18

    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    rsub-int v3, v3, 0xc7

    invoke-static {v8, v8}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    int-to-char v4, v4

    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v8

    const/4 v4, 0x1

    aput-object p2, v3, v4

    aput-object p3, v3, v6

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_3e

    const/16 v1, 0xe

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x4

    :goto_3f
    if-eq v1, v7, :cond_60

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    rem-int/2addr v1, v6

    const/16 v2, 0x19

    if-eqz v1, :cond_51

    const/16 v1, 0x41

    goto :goto_53

    :cond_51
    const/16 v1, 0x19

    :goto_53
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/unity3d/services/core/webview/WebViewApp;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p1

    if-eq v1, v2, :cond_5f

    const/16 p2, 0x58

    :try_start_5b
    div-int/2addr p2, v8
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5d

    return p1

    :catchall_5d
    move-exception p1

    throw p1

    :cond_5f
    return p1

    :cond_60
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/2addr p1, v6

    return v8
.end method

.method public isWebAppInitialized()Z
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const v2, 0xeea3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    add-int/2addr v3, v2

    const-string v2, "\u28c3\uc652\uf5b0\ue32b\u9271\u81de\ubf31\uaea0\u5dfc\u4b5f\u7ae4\u69fc\u0743\u3684\u241b\ud37b\uc2e5\uf037\uef92\u9ec4\u8c46\ubba2\uaae2\u5858\u77bd\u6513\u1473\u03df\u3125\u2087"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    const/16 v1, 0x8

    if-eqz v0, :cond_31

    const/16 v2, 0x8

    goto :goto_33

    :cond_31
    const/16 v2, 0x1e

    :goto_33
    if-eq v2, v1, :cond_36

    return v3

    :cond_36
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/WebViewApp;->isWebAppInitialized()Z

    move-result v0

    return v0
.end method

.method public isWebAppLoaded()Z
    .registers 6

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const-string v2, ""

    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    rsub-int v2, v2, 0x62fb

    const-string v3, "\u28c3\u4a0a\ued003\ua311\uc616\u7901\u9c08\u3f3c\u5237\uf574\u6834\u8b23\u2e7c\u414b\ue443\u0765\uba4f\udd42\u7079\u9367\u3662\ua962\ucc7c\u6f78"

    invoke-static {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_22

    const/4 v1, 0x0

    goto :goto_23

    :cond_22
    const/4 v1, 0x1

    :goto_23
    if-eqz v1, :cond_26

    return v3

    :cond_26
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/WebViewApp;->isWebAppLoaded()Z

    move-result v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method public removeCallback(Lcom/unity3d/services/core/webview/bridge/NativeCallback;)V
    .registers 8

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const-string v2, ""

    invoke-static {v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x19

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v4

    add-int/lit16 v4, v4, 0xf7

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v2

    rsub-int v2, v2, 0x1101

    int-to-char v2, v2

    invoke-static {v3, v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    if-eq v1, v3, :cond_36

    goto :goto_48

    :cond_36
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_43

    const/4 v3, 0x0

    :cond_43
    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/webview/WebViewApp;->removeCallback(Lcom/unity3d/services/core/webview/bridge/NativeCallback;)V

    if-eqz v3, :cond_53

    :goto_48
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :cond_53
    const/4 p1, 0x0

    :try_start_54
    throw p1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception p1

    throw p1
.end method

.method public resetWebViewAppInitialization()V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    shr-int/lit8 v2, v2, 0x16

    add-int/lit8 v2, v2, 0x28

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v3, v3, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5b

    const v5, 0x9f1e

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/2addr v6, v5

    int-to-char v5, v6

    invoke-static {v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    const/4 v1, 0x1

    if-eqz v0, :cond_3e

    const/4 v2, 0x0

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x1

    :goto_3f
    if-eq v2, v1, :cond_5f

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x21

    if-nez v1, :cond_52

    const/16 v1, 0x4f

    goto :goto_54

    :cond_52
    const/16 v1, 0x21

    :goto_54
    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/WebViewApp;->resetWebViewAppInitialization()V

    if-eq v1, v2, :cond_5f

    const/16 v0, 0x5f

    :try_start_5b
    div-int/2addr v0, v4
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5d

    goto :goto_5f

    :catchall_5d
    move-exception v0

    throw v0

    :cond_5f
    :goto_5f
    return-void
.end method

.method public varargs sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    .registers 13

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/graphics/PointF;->length(FF)F

    move-result v4

    const/16 v5, 0x2e

    const/4 v6, 0x0

    cmpl-float v3, v4, v3

    rsub-int/lit8 v3, v3, 0x14

    invoke-static {v6, v6}, Landroid/view/View;->resolveSize(II)I

    move-result v4

    rsub-int v4, v4, 0xb3

    const v7, 0xfd28

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    add-int/2addr v8, v7

    int-to-char v7, v8

    invoke-static {v3, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->b(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    const/4 v7, 0x1

    aput-object p2, v4, v7

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    aput-object v7, v4, v1

    invoke-virtual {v0, p0, v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_49

    const/16 v2, 0x11

    goto :goto_4b

    :cond_49
    const/16 v2, 0x2e

    :goto_4b
    if-eq v2, v5, :cond_5b

    invoke-virtual {v0, p1, p2, p3}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    move-result p1

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    add-int/lit8 p2, p2, 0x47

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    rem-int/2addr p2, v1

    return p1

    :cond_5b
    return v6
.end method

.method public setConfiguration(Lcom/unity3d/services/core/configuration/Configuration;)V
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const v2, 0x10079f3

    const/4 v3, 0x0

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    add-int/2addr v4, v2

    const-string v2, "\u28c3\u5102\udb10\u451b\ucf31\u494e\uf351\u7d70\ue77c\u616f\uebc4\u1596\u9f95\u19b7\u839d\u0dc6\ub7ca\u31d1\ubbeb\u25fa\uae1d\u2809\u5217\udc35\u4635\uc040\u4a54"

    invoke-static {v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    const/16 v1, 0x2a

    if-eqz v0, :cond_32

    const/16 v2, 0xe

    goto :goto_34

    :cond_32
    const/16 v2, 0x2a

    :goto_34
    if-eq v2, v1, :cond_43

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/webview/WebViewApp;->setConfiguration(Lcom/unity3d/services/core/configuration/Configuration;)V

    :cond_43
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x47

    if-eqz p1, :cond_54

    const/16 p1, 0x1b

    goto :goto_56

    :cond_54
    const/16 p1, 0x47

    :goto_56
    if-ne p1, v0, :cond_59

    return-void

    :cond_59
    const/4 p1, 0x0

    :try_start_5a
    throw p1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception p1

    throw p1
.end method

.method public setWebAppFailureCode(I)V
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, ""

    const-string v2, "\u28c3\u464c\uf58c\u64f5\u9209\u0140\ub08d\u2ffe\u5d0c\ucc41\u7bd8\ueaf8\u182d\ub779\u2695\u55e2\uc326\u7258\ue1ae\u10e3\u8e16\u3d74\uacc3\uda03\u4959\uf893\u17c3\u8538\u3457\ua399\ud2d7"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/16 v6, 0x70db

    const/16 v7, 0x43

    invoke-static {v1, v7, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    shr-int v1, v6, v1

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p0, v5, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    goto :goto_3b

    :cond_39
    const/16 v0, 0x21

    :goto_3b
    if-eq v0, v3, :cond_6a

    goto :goto_6f

    :cond_3e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/16 v6, 0x30

    invoke-static {v1, v6, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    add-int/lit16 v1, v1, 0x6ebe

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, p0, v5, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    const/16 v1, 0xc

    if-eqz v0, :cond_66

    const/16 v0, 0x2c

    goto :goto_68

    :cond_66
    const/16 v0, 0xc

    :goto_68
    if-eq v0, v1, :cond_6f

    :cond_6a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/webview/WebViewApp;->setWebAppFailureCode(I)V

    :cond_6f
    :goto_6f
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    add-int/lit8 p1, p1, 0x6f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public setWebAppFailureMessage(Ljava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, "\u28c3\u62b0\ubc74\uf601\u01f9\u5bb4\u9565\u2f12\u7aec\ub4ad\uce30\u182c\u53fd\uedad\u274d\u713e\u8ce6\uc684\u1076\uaa37\ue5c6\u3fa0\u496b\u832f\udef9\u68bf\ua26b\ufc02\u37ed\u41ba\u9b79\ud52a\u60d3\uba90"

    cmpl-float v3, v3, v4

    rsub-int v3, v3, 0x4a41

    invoke-static {v8, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v0, p0, v1, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_28

    const/4 v1, 0x2

    goto :goto_29

    :cond_28
    const/4 v1, 0x7

    :goto_29
    if-eq v1, v5, :cond_4a

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    rem-int/2addr v1, v6

    if-eqz v1, :cond_37

    const/4 v2, 0x1

    :cond_37
    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/webview/WebViewApp;->setWebAppFailureMessage(Ljava/lang/String;)V

    if-eq v2, v7, :cond_46

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/2addr p1, v6

    goto :goto_4a

    :cond_46
    const/4 p1, 0x0

    :try_start_47
    throw p1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception p1

    throw p1

    :cond_4a
    :goto_4a
    return-void
.end method

.method public setWebAppInitialized(Z)V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/16 v2, 0x30

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    rsub-int v2, v2, 0x1344

    const-string v3, "\u28c3\u3bb4\u0e7c\u110d\u65e9\u48a8\u5b7d\uae36\ub2cc\u8589\ue808\ufb10\ucfcd\ud261\u2505\u09fa\u1ca6\u6f40\u723e\u46fb\ua9b9\ubc53\u8f13\u93d3\ue685\uc948\uddfa\u20ba\u3362\u0620\u6ae6"

    invoke-static {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    const/16 v1, 0x11

    if-eqz v0, :cond_38

    const/16 v2, 0x4e

    goto :goto_3a

    :cond_38
    const/16 v2, 0x11

    :goto_3a
    if-eq v2, v1, :cond_49

    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/webview/WebViewApp;->setWebAppInitialized(Z)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/lit8 p1, p1, 0x2

    :cond_49
    return-void
.end method

.method public setWebAppLoaded(Z)V
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x1a

    const/4 v3, 0x0

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmpl-float v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    int-to-char v5, v5

    invoke-static {v2, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v3, 0x1

    :goto_3f
    if-eqz v3, :cond_42

    goto :goto_4f

    :cond_42
    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/webview/WebViewApp;->setWebAppLoaded(Z)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/lit8 p1, p1, 0x2

    :goto_4f
    return-void
.end method

.method public setWebView(Lcom/unity3d/services/core/webview/WebView;)V
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, ""

    const-string v2, "\u28c3\u1718\u5724\u9779\ud759\u177c\u5795\u978a\ud7ac\u17d5\u57a0\u97e4\ud61d\u1635\u567d\u9656\ud666\u16bb\u569f\u96ba\ud6d7"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/16 v6, 0x1939

    invoke-static {v1}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v1

    shr-int v1, v6, v1

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v0, p0, v5, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_69

    goto :goto_55

    :cond_32
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->h:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {v1}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v1

    rsub-int v1, v1, 0x3fe8

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v5, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_51

    const/4 v0, 0x1

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    :goto_52
    if-eq v0, v4, :cond_55

    goto :goto_69

    :cond_55
    :goto_55
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_62

    const/4 v3, 0x1

    :cond_62
    if-eq v3, v4, :cond_6a

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/webview/WebViewApp;->setWebView(Lcom/unity3d/services/core/webview/WebView;)V

    :cond_69
    :goto_69
    return-void

    :cond_6a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->f:Lcom/unity3d/services/core/webview/WebViewApp;

    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/webview/WebViewApp;->setWebView(Lcom/unity3d/services/core/webview/WebView;)V

    const/4 p1, 0x0

    :try_start_70
    throw p1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_71

    :catchall_71
    move-exception p1

    throw p1
.end method

.method public final synthetic ﾇ()Ljava/lang/Object;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x63

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/16 v1, 0x63

    :goto_12
    if-ne v1, v2, :cond_23

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->a()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->d:I

    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->e:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :cond_23
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cb$o;->a()Lcom/unity3d/services/core/webview/WebViewApp;

    const/4 v0, 0x0

    :try_start_27
    throw v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception v0

    throw v0
.end method

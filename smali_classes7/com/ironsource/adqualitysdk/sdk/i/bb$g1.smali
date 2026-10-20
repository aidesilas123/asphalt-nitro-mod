###### Class com.ironsource.adqualitysdk.sdk.i.bb.g1 (com.ironsource.adqualitysdk.sdk.i.bb$g1)
.class Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;
.super Lcom/google/android/gms/ads/AdListener;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/gy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/ads/AdListener;",
        "Lcom/ironsource/adqualitysdk/sdk/i/gy<",
        "Lcom/google/android/gms/ads/AdListener;",
        ">;"
    }
.end annotation


# static fields
.field private static a:[C = null

.field private static b:J = 0x0L

.field private static c:I = 0x0

.field private static d:I = 0x1


# instance fields
.field private e:Lcom/google/android/gms/ads/AdListener;

.field private f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

.field private synthetic g:Lcom/ironsource/adqualitysdk/sdk/i/bb;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0xd9

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->a:[C

    const-wide v0, 0x59614c01634e3300L    # 3.57319264372406E122

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->b:J

    return-void

    nop

    :array_12
    .array-data 2
        0x656cs
        0x5649s
        0x361s
        -0x3bcs
        -0x56a2s
        -0x65a7s
        0x5748s
        0x43s
        -0x2b8s
        -0x51a1s
        -0x64fds
        0x5442s
        0x143s
        -0xd94s
        -0x50b7s
        -0x6792s
        0x5541s
        0x642s
        -0xca2s
        -0x53b8s
        -0x66b7s
        0x41s
        0x3364s
        0x664cs
        -0x6697s
        -0x338ds
        -0x8cs
        0x3265s
        0x656es
        -0x679bs
        -0x348es
        -0x1d2s
        0x316fs
        0x646es
        -0x68bfs
        -0x359cs
        -0x2bas
        0x3061s
        0x6369s
        -0x6994s
        -0x369bs
        -0x39cs
        0x2f54s
        0x626fs
        -0x6ab4s
        -0x3791s
        -0x49fs
        0x2e64s
        0x41s
        0x3364s
        0x664cs
        -0x6697s
        -0x338ds
        -0x8cs
        0x3265s
        0x656es
        -0x679bs
        -0x348es
        -0x1d2s
        0x316fs
        0x646es
        -0x68bfs
        -0x359cs
        -0x2bas
        0x3061s
        0x6369s
        -0x6994s
        -0x369bs
        -0x39cs
        0x2f54s
        0x626fs
        -0x6ab4s
        -0x3791s
        -0x49fs
        0x2e64s
        0x6157s
        -0x6b97s
        -0x388cs
        -0x598s
        0x2d41s
        0x6064s
        -0x6cbbs
        -0x398es
        -0x68es
        0x2c6fs
        0x5f72s
        0x6559s
        0x567cs
        0x354s
        -0x38fs
        -0x5695s
        -0x6594s
        0x577ds
        0x76s
        -0x283s
        -0x5196s
        -0x64cas
        0x5477s
        0x176s
        -0xda7s
        -0x5084s
        -0x67acs
        0x557ds
        0x67es
        -0xc94s
        -0x53a7s
        -0x6698s
        0x4a68s
        0x774s
        -0xf8fs
        -0x5285s
        -0x6187s
        0x4b6cs
        0x471s
        -0xe89s
        -0x5d8as
        0x64a9s
        0x578cs
        0x2a4s
        -0x27fs
        -0x5765s
        -0x6464s
        0x568ds
        0x186s
        -0x373s
        -0x5066s
        -0x653as
        0x5587s
        0x86s
        -0xc57s
        -0x5174s
        -0x6659s
        0x5498s
        0x78ds
        -0xd7as
        -0x5273s
        -0x6774s
        0x6c1ds
        0x5f38s
        0xa10s
        -0xacbs
        -0x5fd1s
        -0x6cd8s
        0x5e39s
        0x932s
        -0xbc7s
        -0x58d2s
        -0x6d8es
        0x5d33s
        0x832s
        -0x4e3s
        -0x59c8s
        -0x6ef0s
        0x5c33s
        0xf3ds
        -0x5c8s
        -0x5ac7s
        -0x6fc8s
        0x41s
        0x3364s
        0x664cs
        -0x6697s
        -0x338ds
        -0x8cs
        0x3265s
        0x656es
        -0x679bs
        -0x348es
        -0x1d2s
        0x316fs
        0x646es
        -0x68bfs
        -0x359cs
        -0x2b7s
        0x306ds
        0x6370s
        -0x698es
        -0x369bs
        -0x38ds
        0x2f73s
        0x6269s
        -0x6a91s
        -0x3792s
        0x41s
        0x3364s
        0x664cs
        -0x6697s
        -0x338ds
        -0x8cs
        0x3265s
        0x656es
        -0x679bs
        -0x348es
        -0x1d2s
        0x316fs
        0x646es
        -0x68bfs
        -0x359cs
        -0x2ads
        0x3077s
        0x6369s
        -0x6990s
        -0x369bs
        -0x3b9s
        0x2f65s
        0x6273s
        -0x6a8cs
        -0x378bs
        -0x48es
        0x2e65s
        0x6143s
        -0x6b94s
        -0x3897s
        -0x59ds
        0x2d6bs
        0x6065s
        -0x6c9cs
    .end array-data
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/bb;Lcom/google/android/gms/ads/AdListener;Lcom/ironsource/adqualitysdk/sdk/i/ch;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->g:Lcom/ironsource/adqualitysdk/sdk/i/bb;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->e:Lcom/google/android/gms/ads/AdListener;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    return-void
.end method

.method private static a(IIC)Ljava/lang/String;
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

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->a:[C

    add-int v4, p1, v2

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v2

    sget-wide v7, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->b:J

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

.method private b()Lcom/google/android/gms/ads/AdListener;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->d:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->c:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->e:Lcom/google/android/gms/ads/AdListener;

    add-int/lit8 v1, v1, 0x47

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0xf

    if-nez v1, :cond_1b

    const/16 v1, 0xf

    goto :goto_1d

    :cond_1b
    const/16 v1, 0x51

    :goto_1d
    if-eq v1, v2, :cond_20

    return-object v0

    :cond_20
    const/16 v1, 0x5f

    :try_start_22
    div-int/lit8 v1, v1, 0x0
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_25

    return-object v0

    :catchall_25
    move-exception v0

    throw v0
.end method


# virtual methods
.method public onAdClosed()V
    .registers 8

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->g:Lcom/ironsource/adqualitysdk/sdk/i/bb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v2

    int-to-byte v2, v2

    rsub-int/lit8 v2, v2, 0x14

    const-string v3, ""

    invoke-static {v3}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v5, 0x0

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    rsub-int v6, v6, 0x652d

    int-to-char v6, v6

    invoke-static {v2, v3, v6}, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->e:Lcom/google/android/gms/ads/AdListener;

    const/16 v1, 0x32

    if-eqz v0, :cond_31

    const/16 v2, 0x5e

    goto :goto_33

    :cond_31
    const/16 v2, 0x32

    :goto_33
    if-eq v2, v1, :cond_4d

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->c:I

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->d:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_42

    goto :goto_43

    :cond_42
    const/4 v4, 0x0

    :goto_43
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    if-nez v4, :cond_49

    goto :goto_4d

    :cond_49
    const/4 v0, 0x0

    :try_start_4a
    throw v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception v0

    throw v0

    :cond_4d
    :goto_4d
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->d:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->c:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .registers 12

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->d:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->c:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->g:Lcom/ironsource/adqualitysdk/sdk/i/bb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    cmp-long v8, v3, v5

    rsub-int/lit8 v3, v8, 0x1b

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v8

    cmp-long v4, v8, v5

    rsub-int/lit8 v4, v4, 0x16

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, p0, v1, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->e:Lcom/google/android/gms/ads/AdListener;

    if-eqz v0, :cond_41

    goto :goto_42

    :cond_41
    const/4 v2, 0x1

    :goto_42
    if-eq v2, v7, :cond_61

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->c:I

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x5e

    if-nez v1, :cond_55

    const/16 v1, 0xc

    goto :goto_57

    :cond_55
    const/16 v1, 0x5e

    :goto_57
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    if-ne v1, v2, :cond_5d

    goto :goto_61

    :cond_5d
    const/4 p1, 0x0

    :try_start_5e
    throw p1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception p1

    throw p1

    :cond_61
    :goto_61
    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->d:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->c:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->g:Lcom/ironsource/adqualitysdk/sdk/i/bb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x26

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x30

    const/4 v4, 0x0

    invoke-static {v4, v4}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v5

    int-to-char v5, v5

    invoke-static {v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-virtual {v0, p0, v1, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->e:Lcom/google/android/gms/ads/AdListener;

    if-eqz v0, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v4, 0x1

    :goto_3a
    const/4 v1, 0x0

    if-eq v4, v3, :cond_50

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->d:I

    add-int/lit8 v2, v2, 0x15

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->c:I

    rem-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    if-nez v2, :cond_4d

    goto :goto_50

    :cond_4d
    :try_start_4d
    throw v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception p1

    throw p1

    :cond_50
    :goto_50
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->c:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->d:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x24

    if-nez p1, :cond_61

    const/16 p1, 0x24

    goto :goto_63

    :cond_61
    const/16 p1, 0x1e

    :goto_63
    if-eq p1, v0, :cond_66

    return-void

    :cond_66
    :try_start_66
    throw v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception p1

    throw p1
.end method

.method public onAdImpression()V
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->d:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->c:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->g:Lcom/ironsource/adqualitysdk/sdk/i/bb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/4 v2, 0x0

    invoke-static {v2, v2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x19

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    rsub-int v4, v4, 0x9e

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->e:Lcom/google/android/gms/ads/AdListener;

    const/16 v1, 0xe

    if-eqz v0, :cond_38

    const/16 v2, 0x3d

    goto :goto_3a

    :cond_38
    const/16 v2, 0xe

    :goto_3a
    if-eq v2, v1, :cond_3f

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    :cond_3f
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->c:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->d:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public onAdLeftApplication()V
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->c:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->g:Lcom/ironsource/adqualitysdk/sdk/i/bb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v4, 0x51

    const-wide/16 v5, 0x0

    const-string v7, ""

    cmp-long v8, v2, v5

    rsub-int/lit8 v2, v8, 0x1f

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x56

    invoke-static {v7}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v5

    rsub-int v5, v5, 0x6517

    int-to-char v5, v5

    invoke-static {v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->e:Lcom/google/android/gms/ads/AdListener;

    if-eqz v0, :cond_3e

    const/16 v1, 0x51

    goto :goto_40

    :cond_3e
    const/16 v1, 0x58

    :goto_40
    if-eq v1, v4, :cond_43

    goto :goto_50

    :cond_43
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->d:I

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->c:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    :goto_50
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->c:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->d:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public onAdLoaded()V
    .registers 12

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->c:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->g:Lcom/ironsource/adqualitysdk/sdk/i/bb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const-string v2, ""

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    rsub-int v5, v5, 0x89

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    add-int/lit16 v10, v10, 0x6c5b

    int-to-char v6, v10

    invoke-static {v2, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->e:Lcom/google/android/gms/ads/AdListener;

    if-eqz v0, :cond_3e

    const/16 v1, 0xc

    goto :goto_40

    :cond_3e
    const/16 v1, 0x30

    :goto_40
    if-eq v1, v3, :cond_4f

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->d:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->c:I

    rem-int/lit8 v0, v0, 0x2

    :cond_4f
    return-void
.end method

.method public onAdOpened()V
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->d:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->c:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->g:Lcom/ironsource/adqualitysdk/sdk/i/bb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/4 v2, 0x0

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-static {v2, v2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x74

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    shr-int/lit8 v5, v5, 0x16

    add-int/lit16 v5, v5, 0x64e8

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->e:Lcom/google/android/gms/ads/AdListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_37

    const/4 v2, 0x1

    :cond_37
    if-eq v2, v1, :cond_3a

    goto :goto_47

    :cond_3a
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->c:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->d:I

    rem-int/lit8 v0, v0, 0x2

    :goto_47
    return-void
.end method

.method public onAdSwipeGestureClicked()V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->c:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->g:Lcom/ironsource/adqualitysdk/sdk/i/bb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x22

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int v3, v3, 0xb7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    shr-int/lit8 v4, v4, 0x16

    int-to-char v4, v4

    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->e:Lcom/google/android/gms/ads/AdListener;

    if-eqz v0, :cond_38

    goto :goto_39

    :cond_38
    const/4 v3, 0x1

    :goto_39
    if-eqz v3, :cond_3c

    goto :goto_3f

    :cond_3c
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdSwipeGestureClicked()V

    :goto_3f
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->c:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->d:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public final synthetic ﾇ()Ljava/lang/Object;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->d:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x38

    if-eqz v0, :cond_11

    const/16 v0, 0x38

    goto :goto_13

    :cond_11
    const/16 v0, 0xd

    :goto_13
    if-eq v0, v1, :cond_1a

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->b()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    goto :goto_22

    :cond_1a
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->b()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    const/16 v1, 0x20

    :try_start_20
    div-int/lit8 v1, v1, 0x0
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_3b

    :goto_22
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->c:I

    add-int/lit8 v1, v1, 0x51

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bb$g1;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x50

    if-nez v1, :cond_32

    const/4 v1, 0x3

    goto :goto_34

    :cond_32
    const/16 v1, 0x50

    :goto_34
    if-ne v1, v2, :cond_37

    return-object v0

    :cond_37
    const/4 v0, 0x0

    :try_start_38
    throw v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v0

    throw v0

    :catchall_3b
    move-exception v0

    throw v0
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.bb.h1 (com.ironsource.adqualitysdk.sdk.i.bb$h1)
.class Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/gy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/ads/FullScreenContentCallback;",
        "Lcom/ironsource/adqualitysdk/sdk/i/gy<",
        "Lcom/google/android/gms/ads/FullScreenContentCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static a:J = 0x0L

.field private static b:I = 0x0

.field private static c:C = '\u0b9f'

.field private static d:I = 0x0

.field private static e:I = 0x1


# instance fields
.field private f:Lcom/google/android/gms/ads/FullScreenContentCallback;

.field private g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

.field private synthetic h:Lcom/ironsource/adqualitysdk/sdk/i/bb;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/bb;Lcom/google/android/gms/ads/FullScreenContentCallback;Lcom/ironsource/adqualitysdk/sdk/i/ch;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->h:Lcom/ironsource/adqualitysdk/sdk/i/bb;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    return-void
.end method

.method private a()Lcom/google/android/gms/ads/FullScreenContentCallback;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->e:I

    add-int/lit8 v1, v0, 0x71

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->d:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->d:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;
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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->a:J

    xor-long/2addr v2, v4

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->b:I

    int-to-long v4, v4

    xor-long/2addr v2, v4

    sget-char v4, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->c:C

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
.method public onAdClicked()V
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->e:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const-string v3, "\u5461\u90b8\u97e4\ue37a\u3b03\u8ac4\udd0d\u5627\u7c50\u8015\u91e9\u4c20\u29da\ue18b\u68eb\u3a54\ud9f7\u62ee\u506f\u9b11\uca7a\u3fb7\u3b48\u4a6f\u2008\ufed5\ue7d1\u9cff\ua668\ue69e\u4eec\ud4e3\uefc2\ufe1f\u5f35\u09ab\u6832"

    const v4, -0x422a4c69

    const-string v5, "\u0000\u0000\u0000\u0000"

    const-string v6, "\u97ac\ud5b3\u72bd\udb84"

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->h:Lcom/ironsource/adqualitysdk/sdk/i/bb;

    iget-object v7, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    add-int/lit8 v8, v8, 0x15

    add-int/2addr v8, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    add-int/lit8 v4, v4, -0x50

    int-to-char v4, v4

    invoke-static {v6, v5, v8, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v7, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_40

    const/4 v1, 0x1

    :cond_40
    if-eq v1, v2, :cond_66

    goto :goto_81

    :cond_43
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->h:Lcom/ironsource/adqualitysdk/sdk/i/bb;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    shr-int/lit8 v7, v7, 0x16

    add-int/2addr v7, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-char v4, v4

    invoke-static {v6, v5, v7, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_81

    :cond_66
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->d:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->e:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdClicked()V

    goto :goto_81

    :cond_78
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdClicked()V

    const/4 v0, 0x0

    :try_start_7e
    throw v0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7f

    :catchall_7f
    move-exception v0

    throw v0

    :cond_81
    :goto_81
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->e:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->d:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .registers 15

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->d:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    const-string v3, "\u74f6\u05f5\u7cf3\u59a0\ud9d9\u371b\u901d\u17cb\ue998\u4a2d\u2135\u8c4a\u5a0d\uaf04\ue9b5\u30d3\ud480\ueda7\ue8c6\ub653\u0762\u8bf7\uc382\u8898\u9757\u4994\udc0c\u9185\ufcbd\u8134\u48a1\u1df6\ufe16\u64af\u0fbf\u9a45\u0986\u2d55\u86b4\u817a\u4630\u25a1\ucf43\u331a\u5bae\u155d\u124e\ud1bd\u26a3\u241a\u519d\u4280\u3bcc\u1181\u6f80\u567a"

    const v4, 0xb01a

    const-wide/16 v5, 0x0

    const/4 v7, -0x1

    const-string v8, "\u0000\u0000\u0000\u0000"

    const-string v9, "\ua204\ud458\u1a39\u3ab0"

    if-eq v0, v2, :cond_45

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->h:Lcom/ironsource/adqualitysdk/sdk/i/bb;

    iget-object v10, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v11

    cmp-long v13, v11, v5

    shl-int v5, v7, v13

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    int-to-char v4, v4

    invoke-static {v9, v8, v5, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v10, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_8b

    goto :goto_6f

    :cond_45
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->h:Lcom/ironsource/adqualitysdk/sdk/i/bb;

    iget-object v10, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v11

    cmp-long v13, v11, v5

    add-int/2addr v13, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v5

    shr-int/lit8 v5, v5, 0x18

    sub-int/2addr v4, v5

    int-to-char v4, v4

    invoke-static {v9, v8, v13, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v10, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_6b

    const/4 v0, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v0, 0x0

    :goto_6c
    if-eq v0, v2, :cond_6f

    goto :goto_8b

    :cond_6f
    :goto_6f
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->e:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdDismissedFullScreenContent()V

    const/16 v0, 0x28

    :try_start_82
    div-int/2addr v0, v1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_84

    goto :goto_8b

    :catchall_84
    move-exception v0

    throw v0

    :cond_86
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdDismissedFullScreenContent()V

    :cond_8b
    :goto_8b
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->e:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->d:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->d:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->h:Lcom/ironsource/adqualitysdk/sdk/i/bb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const v2, 0x4925d987

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    sub-int/2addr v2, v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    shr-int/lit8 v3, v3, 0x16

    int-to-char v3, v3

    const-string v4, "\u873f\u25d9\u7a49\u9a8f"

    const-string v5, "\u0000\u0000\u0000\u0000"

    const-string v6, "\u3966\u7047\u15a3\uc91f\ud8cc\u372b\u871b\u4983\u1648\u2c5a\uc831\u839e\ufe67\ua7b2\ub997\ueeee\u7b2d\u71b9\u839e\u8146\u4c37\ud25f\ue0fe\u685d\u3bb6\ub897\ua302\u2b77\u861f\u66d0\u0458\u6095\u7fa1\ucca3\ufac0\u032f\ua04a\u9edf\ua54d\uc52c\ua044\u1c64\uc120\u285a\ud25d\u9d9f\u2efe\u45fa\uf03c\u3080\u3f1b\uea86\uad0c\ucfdb\u0ef2\ud2e6\u09e0\ud0c3\ue22a"

    invoke-static {v4, v5, v2, v3, v6}, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_3c

    const/4 v1, 0x0

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x1

    :goto_3d
    if-eq v1, v3, :cond_58

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->d:I

    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->e:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4c

    const/4 v3, 0x0

    :cond_4c
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V

    if-eqz v3, :cond_52

    goto :goto_58

    :cond_52
    const/16 p1, 0x3f

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

.method public onAdImpression()V
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->d:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->h:Lcom/ironsource/adqualitysdk/sdk/i/bb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    add-int/lit16 v4, v4, 0x4479

    int-to-char v4, v4

    const-string v5, "\u0835\u9d87\u7942\u3a44"

    const-string v6, "\u0000\u0000\u0000\u0000"

    const-string v7, "\u34e6\u2cb7\ub84f\u9819\u2bca\u556a\u7226\u2376\uf43e\u08d4\u53c2\uc3c6\uf364\u7e39\u4100\u910c\u9029\uf768\uc936\u0cbe\u7b92\ua80c\u9f3a\u2d9b\udb9f\u7fa6\u6f17\u769d\u2b7d\u6eb4\uf2ac\u6927\u2c2c\ud8ee\u9daa\u47bc\ueff5\u08b3\uac21\ubbf8"

    invoke-static {v5, v6, v2, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    const/4 v1, 0x1

    if-eqz v0, :cond_35

    const/4 v3, 0x1

    :cond_35
    if-eq v3, v1, :cond_38

    goto :goto_4f

    :cond_38
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->d:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->e:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdImpression()V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->e:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->d:I

    rem-int/lit8 v0, v0, 0x2

    :goto_4f
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->d:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x4e

    if-nez v0, :cond_60

    const/16 v0, 0x4e

    goto :goto_62

    :cond_60
    const/16 v0, 0x3a

    :goto_62
    if-eq v0, v1, :cond_65

    return-void

    :cond_65
    const/4 v0, 0x0

    :try_start_66
    throw v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception v0

    throw v0
.end method

.method public onAdShowedFullScreenContent()V
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->e:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x56

    if-eqz v0, :cond_11

    const/16 v0, 0x25

    goto :goto_13

    :cond_11
    const/16 v0, 0x56

    :goto_13
    const/4 v2, 0x0

    const-string v3, "\u76de\uac58\u18b7\u5469\ueaed\u8f3d\udcb3\u0a6b\u0fb5\uc07f\u7f61\u1dce\uaf5a\ue468\u1364\ue8e6\u30fc\u847f\u058b\u14bf\u20cc\uda20\u3183\u217c\uf0ce\u4dd1\u3b0e\u82ba\u7247\u0fbd\u1ccb\u1ebf\u7af1\u433e\uef4b\uba4c\ufef6\u8bee\u4cab\u8295\u9c16\ua52a\ua578\ucd23\u7def\u022f\u6ff1\u09f3\u7126\u57c6\u2aa2\ufaa9\ua5d0"

    const v4, 0xc26c

    const-string v5, ""

    const v6, -0x67e6da88

    const-string v7, "\u0000\u0000\u0000\u0000"

    const-string v8, "\u774f\u1925\u9c98\u08c2"

    if-eq v0, v1, :cond_50

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->h:Lcom/ironsource/adqualitysdk/sdk/i/bb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {v5}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v6, v5

    const/16 v5, 0x38

    invoke-static {v5}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v5

    shl-int/2addr v4, v5

    int-to-char v4, v4

    invoke-static {v8, v7, v6, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    const/16 v1, 0x20

    if-eqz v0, :cond_4b

    const/16 v0, 0x20

    goto :goto_4d

    :cond_4b
    const/16 v0, 0x9

    :goto_4d
    if-eq v0, v1, :cond_72

    goto :goto_81

    :cond_50
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->h:Lcom/ironsource/adqualitysdk/sdk/i/bb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {v5}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v6

    const/16 v6, 0x30

    invoke-static {v6}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v6

    add-int/2addr v6, v4

    int-to-char v4, v6

    invoke-static {v8, v7, v5, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_81

    :cond_72
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdShowedFullScreenContent()V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->d:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->e:I

    rem-int/lit8 v0, v0, 0x2

    :cond_81
    :goto_81
    return-void
.end method

.method public final synthetic ﾇ()Ljava/lang/Object;
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->d:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    if-eq v0, v2, :cond_1d

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->a()Lcom/google/android/gms/ads/FullScreenContentCallback;

    move-result-object v0

    const/16 v3, 0x1c

    :try_start_19
    div-int/2addr v3, v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1b

    goto :goto_21

    :catchall_1b
    move-exception v0

    throw v0

    :cond_1d
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->a()Lcom/google/android/gms/ads/FullScreenContentCallback;

    move-result-object v0

    :goto_21
    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->e:I

    add-int/lit8 v3, v3, 0x25

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/bb$h1;->d:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    if-nez v1, :cond_31

    return-object v0

    :cond_31
    const/4 v0, 0x0

    :try_start_32
    throw v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception v0

    throw v0
.end method

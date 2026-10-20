###### Class com.ironsource.adqualitysdk.sdk.i.bb.i1 (com.ironsource.adqualitysdk.sdk.i.bb$i1)
.class Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;
.super Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/gy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;",
        "Lcom/ironsource/adqualitysdk/sdk/i/gy<",
        "Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static a:J = -0x11ddd7ceb4477925L

.field private static b:I = 0x0

.field private static c:C = '\u0000'

.field private static d:I = 0x0

.field private static e:I = 0x1


# instance fields
.field private f:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

.field private g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

.field private synthetic h:Lcom/ironsource/adqualitysdk/sdk/i/bb;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/bb;Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;Lcom/ironsource/adqualitysdk/sdk/i/ch;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->h:Lcom/ironsource/adqualitysdk/sdk/i/bb;

    invoke-direct {p0}, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;-><init>()V

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->f:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    return-void
.end method

.method private a(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->d:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->h:Lcom/ironsource/adqualitysdk/sdk/i/bb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v2

    const v4, 0xa31e

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    sub-int/2addr v4, v5

    int-to-char v4, v4

    const-string v5, "\u0501\u3b6d\u1ea8\u36a3"

    const-string v6, "\u86db\u4bb8\u2831\uee22"

    const-string v7, "\u0f88\u9b03\ue3c6\u1a01\ud5e7\ua179\uc155\u91fa\u9b95\uc52f\u0872\u0687\u7536\uf5b2\u5353\u36ad\u7df8\u1a67\uaaec\ud46c\u8450\u6c38\uccf7\u0164\uc413\ua3d3\u34a2\u413c\u81df\uad6a\ufb05\uec50"

    invoke-static {v5, v6, v2, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-virtual {v0, p0, v1, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->f:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    if-eqz v0, :cond_3b

    const/4 v3, 0x1

    :cond_3b
    if-eqz v3, :cond_54

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->e:I

    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->d:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->onAdLoaded(Ljava/lang/Object;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->d:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->e:I

    rem-int/lit8 p1, p1, 0x2

    :cond_54
    return-void
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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->a:J

    xor-long/2addr v2, v4

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->b:I

    int-to-long v4, v4

    xor-long/2addr v2, v4

    sget-char v4, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->c:C

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

.method private c()Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->d:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->f:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    return-object v0

    :cond_15
    const/4 v0, 0x0

    :try_start_16
    throw v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v0

    throw v0
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->d:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->h:Lcom/ironsource/adqualitysdk/sdk/i/bb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    invoke-static {v3, v3, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    int-to-char v4, v4

    const-string v5, "\u60a3\u06c1\u671c\u0606"

    const-string v6, "\u86db\u4bb8\u2831\uee22"

    const-string v7, "\u7e03\ub205\uc6eb\uf70d\u8560\u890e\u2594\u62cb\ub694\u7075\ue74a\u07ac\u33a6\ua3c4\u03dd\u2ac4\u8196\u885c\ubcf3\ue70e\u727d\ub893\ua41f\uc1f3\ua699\uc09f\ud18d\ue609\u12e5\ubce5\u76ec\u7a38\u6fd0\u54b1\u4e45\u515a\ue749\u197f"

    invoke-static {v5, v6, v2, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-virtual {v0, p0, v1, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->f:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    if-eqz v0, :cond_35

    goto :goto_36

    :cond_35
    const/4 v3, 0x1

    :goto_36
    if-eqz v3, :cond_39

    goto :goto_46

    :cond_39
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->d:I

    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->e:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    :goto_46
    return-void
.end method

.method public synthetic onAdLoaded(Ljava/lang/Object;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->d:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->e:I

    rem-int/lit8 v0, v0, 0x2

    check-cast p1, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->a(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->e:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->d:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x1f

    if-eqz p1, :cond_20

    const/16 p1, 0x1f

    goto :goto_22

    :cond_20
    const/16 p1, 0x2b

    :goto_22
    if-eq p1, v0, :cond_25

    return-void

    :cond_25
    const/4 p1, 0x0

    :try_start_26
    throw p1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p1

    throw p1
.end method

.method public onAppOpenAdFailedToLoad(I)V
    .registers 10

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->h:Lcom/ironsource/adqualitysdk/sdk/i/bb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const v2, -0x798b8e28

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v4

    sub-int/2addr v2, v4

    const v4, 0xe903

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/2addr v5, v4

    int-to-char v4, v5

    const-string v5, "\ud8b4\u7471\u0386\ub3e9"

    const-string v6, "\u86db\u4bb8\u2831\uee22"

    const-string v7, "\ufb87\ud349\uecc3\u0e7a\ue0d5\u2dfb\u3675\ue534\u20dc\u837e\u89fd\u2d43\u0b8a\u58e8\uc496\ubf71\ud5bf\ufc49\uc583\u9455\ud1e7\u2f14\u923d\u389e\u36d5\u35b3\u89f1\uf443\u3b02\ue6a5\u2275\u5dcd\ua2b5\u05ed\uc0c4\udcf8\u85f7\uf62d\u4a82\u04df\u6e24\u853b\u8316\ueb48\u0df3"

    invoke-static {v5, v6, v2, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v0, p0, v1, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->f:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    const/16 v1, 0xc

    if-eqz v0, :cond_3b

    const/16 v2, 0x32

    goto :goto_3d

    :cond_3b
    const/16 v2, 0xc

    :goto_3d
    if-eq v2, v1, :cond_62

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->e:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->d:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4d

    const/4 v1, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v1, 0x0

    :goto_4e
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;->onAppOpenAdFailedToLoad(I)V

    if-nez v1, :cond_5e

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->e:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->d:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_62

    :cond_5e
    const/4 p1, 0x0

    :try_start_5f
    throw p1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_60

    :catchall_60
    move-exception p1

    throw p1

    :cond_62
    :goto_62
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->d:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->e:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x22

    if-nez p1, :cond_72

    const/4 p1, 0x5

    goto :goto_74

    :cond_72
    const/16 p1, 0x22

    :goto_74
    if-eq p1, v0, :cond_7a

    :try_start_76
    div-int/2addr v4, v3
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_78

    return-void

    :catchall_78
    move-exception p1

    throw p1

    :cond_7a
    return-void
.end method

.method public onAppOpenAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 14

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->e:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->h:Lcom/ironsource/adqualitysdk/sdk/i/bb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "\u3d19\ue78e\ufa61\u3fc9"

    const-string v9, "\u86db\u4bb8\u2831\uee22"

    const-string v10, "\uc887\udf1d\u16fb\u5e7b\ua295\ub9d5\u3cdd\uc092\u2faf\u804f\u13bb\u2aed\u568f\u877c\ub6cd\u8e4d\u7ec4\u0e5d\uc223\u0b7d\u0afa\u3e93\udc11\u8760\u1870\ub9ba\u07f4\uf477\uc9bf\u4de0\uee34\u70b2\u6039\uf4e9\u4a21\u27a4\udfd7\ue448\u95fb\u988a\uab7c\uf462\u65de\ua9d3\ud239\u9b3c\u083f\u9f3f\udcae\u9f4d\u9bdc\udcd4\u08c5\u7c7e"

    cmp-long v11, v2, v4

    rsub-int/lit8 v2, v11, 0x1

    const v3, 0xc9fa

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    sub-int/2addr v3, v4

    int-to-char v3, v3

    invoke-static {v8, v9, v2, v3, v10}, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->f:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    if-eqz v0, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v6, 0x1

    :goto_40
    if-eqz v6, :cond_43

    goto :goto_50

    :cond_43
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->d:I

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->e:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;->onAppOpenAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    :goto_50
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->e:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->d:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public onAppOpenAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V
    .registers 12

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->d:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->h:Lcom/ironsource/adqualitysdk/sdk/i/bb;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const v2, 0x61c5116d

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x13

    const/4 v6, 0x0

    const-string v7, "\u6e42\uc511\ue261\uf63e"

    const-string v8, "\u86db\u4bb8\u2831\uee22"

    const-string v9, "\u2405\u5954\u64f9\uf610\u27a0\u0897\u288d\u4ba7\ubd9c\u26e7\u9132\ue110\ue60f\u1780\uc21c\udf14\ua336\u6ca7\uf5e0\ue775\u6175\u424e\u8d1f\u6e67\u201e\u3489\udbc4\u55b8\u842c\u44a7\u0576\ub710\ue7cd\u8062\u4a19\uec90\uc6e5\u9bb5\ufafa"

    cmpl-float v3, v3, v4

    add-int/2addr v3, v2

    invoke-static {v6}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x3ee3

    int-to-char v2, v2

    invoke-static {v7, v8, v3, v2, v9}, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->f:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    if-eqz v0, :cond_40

    const/16 v1, 0x13

    goto :goto_42

    :cond_40
    const/16 v1, 0x23

    :goto_42
    if-eq v1, v5, :cond_45

    goto :goto_5c

    :cond_45
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->d:I

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->e:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;->onAppOpenAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->e:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->d:I

    rem-int/lit8 p1, p1, 0x2

    :goto_5c
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->e:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->d:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x10

    if-eqz p1, :cond_6d

    const/16 p1, 0x1b

    goto :goto_6f

    :cond_6d
    const/16 p1, 0x10

    :goto_6f
    if-ne p1, v0, :cond_72

    return-void

    :cond_72
    const/4 p1, 0x0

    :try_start_73
    throw p1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_74

    :catchall_74
    move-exception p1

    throw p1
.end method

.method public final synthetic ﾇ()Ljava/lang/Object;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->d:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x39

    if-nez v0, :cond_11

    const/16 v0, 0x48

    goto :goto_13

    :cond_11
    const/16 v0, 0x39

    :goto_13
    if-ne v0, v1, :cond_1a

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->c()Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    move-result-object v0

    return-object v0

    :cond_1a
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/bb$i1;->c()Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    const/4 v0, 0x0

    :try_start_1e
    throw v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v0

    throw v0
.end method

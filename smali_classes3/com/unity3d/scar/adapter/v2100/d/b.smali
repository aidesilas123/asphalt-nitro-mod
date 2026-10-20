###### Class com.unity3d.scar.adapter.v2100.d.b (com.unity3d.scar.adapter.v2100.d.b)
.class public Lcom/unity3d/scar/adapter/v2100/d/b;
.super Lcom/unity3d/scar/adapter/common/l/e;
.source "SignalsCollector.java"

# interfaces
.implements Lcom/unity3d/scar/adapter/common/l/c;


# instance fields
.field private a:Lcom/unity3d/scar/adapter/v2100/b/a;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/v2100/b/a;)V
    .registers 2

    invoke-direct {p0}, Lcom/unity3d/scar/adapter/common/l/e;-><init>()V

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2100/d/b;->a:Lcom/unity3d/scar/adapter/v2100/b/a;

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/a;Lcom/unity3d/scar/adapter/common/l/f;)V
    .registers 11

    invoke-virtual {p0, p2}, Lcom/unity3d/scar/adapter/common/l/e;->e(Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/unity3d/scar/adapter/v2100/d/b;->d(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/a;Lcom/unity3d/scar/adapter/common/l/f;)V

    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/a;Lcom/unity3d/scar/adapter/common/l/f;)V
    .registers 9

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2100/d/b;->a:Lcom/unity3d/scar/adapter/v2100/b/a;

    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/v2100/b/a;->a()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    new-instance v1, Lcom/unity3d/scar/adapter/v2100/d/a;

    new-instance v2, Lcom/unity3d/scar/adapter/common/l/d;

    invoke-direct {v2, p4, p5}, Lcom/unity3d/scar/adapter/common/l/d;-><init>(Lcom/unity3d/scar/adapter/common/a;Lcom/unity3d/scar/adapter/common/l/f;)V

    invoke-direct {v1, p2, v2}, Lcom/unity3d/scar/adapter/v2100/d/a;-><init>(Ljava/lang/String;Lcom/unity3d/scar/adapter/common/l/a;)V

    invoke-virtual {p0, p3}, Lcom/unity3d/scar/adapter/v2100/d/b;->g(Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;)Lcom/google/android/gms/ads/AdFormat;

    move-result-object p2

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/ads/query/QueryInfo;->generate(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V

    return-void
.end method

.method public g(Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;)Lcom/google/android/gms/ads/AdFormat;
    .registers 3

    sget-object v0, Lcom/unity3d/scar/adapter/v2100/d/b$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    const/4 v0, 0x3

    if-eq p1, v0, :cond_14

    sget-object p1, Lcom/google/android/gms/ads/AdFormat;->UNKNOWN:Lcom/google/android/gms/ads/AdFormat;

    return-object p1

    :cond_14
    sget-object p1, Lcom/google/android/gms/ads/AdFormat;->REWARDED:Lcom/google/android/gms/ads/AdFormat;

    return-object p1

    :cond_17
    sget-object p1, Lcom/google/android/gms/ads/AdFormat;->INTERSTITIAL:Lcom/google/android/gms/ads/AdFormat;

    return-object p1

    :cond_1a
    sget-object p1, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    return-object p1
.end method

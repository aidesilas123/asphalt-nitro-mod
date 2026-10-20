###### Class com.unity3d.scar.adapter.v2100.c.f (com.unity3d.scar.adapter.v2100.c.f)
.class public Lcom/unity3d/scar/adapter/v2100/c/f;
.super Lcom/unity3d/scar/adapter/v2100/c/b;
.source "ScarInterstitialAdListener.java"


# instance fields
.field private final b:Lcom/unity3d/scar/adapter/v2100/c/e;

.field private final c:Lcom/unity3d/scar/adapter/common/f;

.field private final d:Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

.field private final e:Lcom/google/android/gms/ads/FullScreenContentCallback;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/f;Lcom/unity3d/scar/adapter/v2100/c/e;)V
    .registers 4

    invoke-direct {p0}, Lcom/unity3d/scar/adapter/v2100/c/b;-><init>()V

    new-instance v0, Lcom/unity3d/scar/adapter/v2100/c/f$a;

    invoke-direct {v0, p0}, Lcom/unity3d/scar/adapter/v2100/c/f$a;-><init>(Lcom/unity3d/scar/adapter/v2100/c/f;)V

    iput-object v0, p0, Lcom/unity3d/scar/adapter/v2100/c/f;->d:Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

    new-instance v0, Lcom/unity3d/scar/adapter/v2100/c/f$b;

    invoke-direct {v0, p0}, Lcom/unity3d/scar/adapter/v2100/c/f$b;-><init>(Lcom/unity3d/scar/adapter/v2100/c/f;)V

    iput-object v0, p0, Lcom/unity3d/scar/adapter/v2100/c/f;->e:Lcom/google/android/gms/ads/FullScreenContentCallback;

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2100/c/f;->c:Lcom/unity3d/scar/adapter/common/f;

    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2100/c/f;->b:Lcom/unity3d/scar/adapter/v2100/c/e;

    return-void
.end method

.method static synthetic b(Lcom/unity3d/scar/adapter/v2100/c/f;)Lcom/unity3d/scar/adapter/common/f;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/scar/adapter/v2100/c/f;->c:Lcom/unity3d/scar/adapter/common/f;

    return-object p0
.end method

.method static synthetic c(Lcom/unity3d/scar/adapter/v2100/c/f;)Lcom/google/android/gms/ads/FullScreenContentCallback;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/scar/adapter/v2100/c/f;->e:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-object p0
.end method

.method static synthetic d(Lcom/unity3d/scar/adapter/v2100/c/f;)Lcom/unity3d/scar/adapter/v2100/c/e;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/scar/adapter/v2100/c/f;->b:Lcom/unity3d/scar/adapter/v2100/c/e;

    return-object p0
.end method


# virtual methods
.method public e()Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2100/c/f;->d:Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

    return-object v0
.end method

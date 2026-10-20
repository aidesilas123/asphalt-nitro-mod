###### Class com.unity3d.scar.adapter.v2000.b.f (com.unity3d.scar.adapter.v2000.b.f)
.class public Lcom/unity3d/scar/adapter/v2000/b/f;
.super Lcom/unity3d/scar/adapter/v2000/b/b;
.source "ScarInterstitialAdListener.java"


# instance fields
.field private final b:Lcom/unity3d/scar/adapter/v2000/b/e;

.field private final c:Lcom/unity3d/scar/adapter/common/f;

.field private final d:Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

.field private final e:Lcom/google/android/gms/ads/FullScreenContentCallback;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/f;Lcom/unity3d/scar/adapter/v2000/b/e;)V
    .registers 4

    invoke-direct {p0}, Lcom/unity3d/scar/adapter/v2000/b/b;-><init>()V

    new-instance v0, Lcom/unity3d/scar/adapter/v2000/b/f$a;

    invoke-direct {v0, p0}, Lcom/unity3d/scar/adapter/v2000/b/f$a;-><init>(Lcom/unity3d/scar/adapter/v2000/b/f;)V

    iput-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/f;->d:Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

    new-instance v0, Lcom/unity3d/scar/adapter/v2000/b/f$b;

    invoke-direct {v0, p0}, Lcom/unity3d/scar/adapter/v2000/b/f$b;-><init>(Lcom/unity3d/scar/adapter/v2000/b/f;)V

    iput-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/f;->e:Lcom/google/android/gms/ads/FullScreenContentCallback;

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/b/f;->c:Lcom/unity3d/scar/adapter/common/f;

    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2000/b/f;->b:Lcom/unity3d/scar/adapter/v2000/b/e;

    return-void
.end method

.method static synthetic b(Lcom/unity3d/scar/adapter/v2000/b/f;)Lcom/unity3d/scar/adapter/common/f;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/scar/adapter/v2000/b/f;->c:Lcom/unity3d/scar/adapter/common/f;

    return-object p0
.end method

.method static synthetic c(Lcom/unity3d/scar/adapter/v2000/b/f;)Lcom/google/android/gms/ads/FullScreenContentCallback;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/scar/adapter/v2000/b/f;->e:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-object p0
.end method

.method static synthetic d(Lcom/unity3d/scar/adapter/v2000/b/f;)Lcom/unity3d/scar/adapter/v2000/b/e;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/scar/adapter/v2000/b/f;->b:Lcom/unity3d/scar/adapter/v2000/b/e;

    return-object p0
.end method


# virtual methods
.method public e()Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/f;->d:Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

    return-object v0
.end method

###### Class com.unity3d.scar.adapter.v2100.c.h (com.unity3d.scar.adapter.v2100.c.h)
.class public Lcom/unity3d/scar/adapter/v2100/c/h;
.super Lcom/unity3d/scar/adapter/v2100/c/b;
.source "ScarRewardedAdListener.java"


# instance fields
.field private final b:Lcom/unity3d/scar/adapter/v2100/c/g;

.field private final c:Lcom/unity3d/scar/adapter/common/g;

.field private final d:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

.field private final e:Lcom/google/android/gms/ads/OnUserEarnedRewardListener;

.field private final f:Lcom/google/android/gms/ads/FullScreenContentCallback;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/g;Lcom/unity3d/scar/adapter/v2100/c/g;)V
    .registers 4

    invoke-direct {p0}, Lcom/unity3d/scar/adapter/v2100/c/b;-><init>()V

    new-instance v0, Lcom/unity3d/scar/adapter/v2100/c/h$a;

    invoke-direct {v0, p0}, Lcom/unity3d/scar/adapter/v2100/c/h$a;-><init>(Lcom/unity3d/scar/adapter/v2100/c/h;)V

    iput-object v0, p0, Lcom/unity3d/scar/adapter/v2100/c/h;->d:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    new-instance v0, Lcom/unity3d/scar/adapter/v2100/c/h$b;

    invoke-direct {v0, p0}, Lcom/unity3d/scar/adapter/v2100/c/h$b;-><init>(Lcom/unity3d/scar/adapter/v2100/c/h;)V

    iput-object v0, p0, Lcom/unity3d/scar/adapter/v2100/c/h;->e:Lcom/google/android/gms/ads/OnUserEarnedRewardListener;

    new-instance v0, Lcom/unity3d/scar/adapter/v2100/c/h$c;

    invoke-direct {v0, p0}, Lcom/unity3d/scar/adapter/v2100/c/h$c;-><init>(Lcom/unity3d/scar/adapter/v2100/c/h;)V

    iput-object v0, p0, Lcom/unity3d/scar/adapter/v2100/c/h;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2100/c/h;->c:Lcom/unity3d/scar/adapter/common/g;

    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2100/c/h;->b:Lcom/unity3d/scar/adapter/v2100/c/g;

    return-void
.end method

.method static synthetic b(Lcom/unity3d/scar/adapter/v2100/c/h;)Lcom/unity3d/scar/adapter/common/g;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/scar/adapter/v2100/c/h;->c:Lcom/unity3d/scar/adapter/common/g;

    return-object p0
.end method

.method static synthetic c(Lcom/unity3d/scar/adapter/v2100/c/h;)Lcom/google/android/gms/ads/FullScreenContentCallback;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/scar/adapter/v2100/c/h;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-object p0
.end method

.method static synthetic d(Lcom/unity3d/scar/adapter/v2100/c/h;)Lcom/unity3d/scar/adapter/v2100/c/g;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/scar/adapter/v2100/c/h;->b:Lcom/unity3d/scar/adapter/v2100/c/g;

    return-object p0
.end method


# virtual methods
.method public e()Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2100/c/h;->d:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    return-object v0
.end method

.method public f()Lcom/google/android/gms/ads/OnUserEarnedRewardListener;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2100/c/h;->e:Lcom/google/android/gms/ads/OnUserEarnedRewardListener;

    return-object v0
.end method

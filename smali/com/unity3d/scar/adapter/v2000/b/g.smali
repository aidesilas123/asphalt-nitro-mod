###### Class com.unity3d.scar.adapter.v2000.b.g (com.unity3d.scar.adapter.v2000.b.g)
.class public Lcom/unity3d/scar/adapter/v2000/b/g;
.super Lcom/unity3d/scar/adapter/v2000/b/a;
.source "ScarRewardedAd.java"

# interfaces
.implements Lcom/unity3d/scar/adapter/common/scarads/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unity3d/scar/adapter/v2000/b/a<",
        "Lcom/google/android/gms/ads/rewarded/RewardedAd;",
        ">;",
        "Lcom/unity3d/scar/adapter/common/scarads/a;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/query/QueryInfo;Lcom/unity3d/scar/adapter/common/scarads/c;Lcom/unity3d/scar/adapter/common/b;Lcom/unity3d/scar/adapter/common/g;)V
    .registers 6

    invoke-direct {p0, p1, p3, p2, p4}, Lcom/unity3d/scar/adapter/v2000/b/a;-><init>(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/c;Lcom/google/android/gms/ads/query/QueryInfo;Lcom/unity3d/scar/adapter/common/b;)V

    new-instance p1, Lcom/unity3d/scar/adapter/v2000/b/h;

    invoke-direct {p1, p5, p0}, Lcom/unity3d/scar/adapter/v2000/b/h;-><init>(Lcom/unity3d/scar/adapter/common/g;Lcom/unity3d/scar/adapter/v2000/b/g;)V

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/b/a;->e:Lcom/unity3d/scar/adapter/v2000/b/b;

    return-void
.end method


# virtual methods
.method protected b(Lcom/google/android/gms/ads/AdRequest;Lcom/unity3d/scar/adapter/common/scarads/b;)V
    .registers 5

    iget-object p2, p0, Lcom/unity3d/scar/adapter/v2000/b/a;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/a;->c:Lcom/unity3d/scar/adapter/common/scarads/c;

    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/common/scarads/c;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/scar/adapter/v2000/b/a;->e:Lcom/unity3d/scar/adapter/v2000/b/b;

    check-cast v1, Lcom/unity3d/scar/adapter/v2000/b/h;

    invoke-virtual {v1}, Lcom/unity3d/scar/adapter/v2000/b/h;->e()Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    move-result-object v1

    invoke-static {p2, v0, p1, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/a;->a:Ljava/lang/Object;

    if-eqz v0, :cond_12

    check-cast v0, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    iget-object v1, p0, Lcom/unity3d/scar/adapter/v2000/b/a;->e:Lcom/unity3d/scar/adapter/v2000/b/b;

    check-cast v1, Lcom/unity3d/scar/adapter/v2000/b/h;

    invoke-virtual {v1}, Lcom/unity3d/scar/adapter/v2000/b/h;->f()Lcom/google/android/gms/ads/OnUserEarnedRewardListener;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    goto :goto_1d

    :cond_12
    iget-object p1, p0, Lcom/unity3d/scar/adapter/v2000/b/a;->f:Lcom/unity3d/scar/adapter/common/b;

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/a;->c:Lcom/unity3d/scar/adapter/common/scarads/c;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/common/GMAAdsError;->AdNotLoadedError(Lcom/unity3d/scar/adapter/common/scarads/c;)Lcom/unity3d/scar/adapter/common/GMAAdsError;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/unity3d/scar/adapter/common/b;->handleError(Lcom/unity3d/scar/adapter/common/h;)V

    :goto_1d
    return-void
.end method

###### Class com.unity3d.scar.adapter.v2000.b.h (com.unity3d.scar.adapter.v2000.b.h)
.class public Lcom/unity3d/scar/adapter/v2000/b/h;
.super Lcom/unity3d/scar/adapter/v2000/b/b;
.source "ScarRewardedAdListener.java"


# instance fields
.field private final b:Lcom/unity3d/scar/adapter/v2000/b/g;

.field private final c:Lcom/unity3d/scar/adapter/common/g;

.field private final d:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

.field private final e:Lcom/google/android/gms/ads/OnUserEarnedRewardListener;

.field private final f:Lcom/google/android/gms/ads/FullScreenContentCallback;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/g;Lcom/unity3d/scar/adapter/v2000/b/g;)V
    .registers 4

    invoke-direct {p0}, Lcom/unity3d/scar/adapter/v2000/b/b;-><init>()V

    new-instance v0, Lcom/unity3d/scar/adapter/v2000/b/h$a;

    invoke-direct {v0, p0}, Lcom/unity3d/scar/adapter/v2000/b/h$a;-><init>(Lcom/unity3d/scar/adapter/v2000/b/h;)V

    iput-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/h;->d:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    new-instance v0, Lcom/unity3d/scar/adapter/v2000/b/h$b;

    invoke-direct {v0, p0}, Lcom/unity3d/scar/adapter/v2000/b/h$b;-><init>(Lcom/unity3d/scar/adapter/v2000/b/h;)V

    iput-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/h;->e:Lcom/google/android/gms/ads/OnUserEarnedRewardListener;

    new-instance v0, Lcom/unity3d/scar/adapter/v2000/b/h$c;

    invoke-direct {v0, p0}, Lcom/unity3d/scar/adapter/v2000/b/h$c;-><init>(Lcom/unity3d/scar/adapter/v2000/b/h;)V

    iput-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/h;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/b/h;->c:Lcom/unity3d/scar/adapter/common/g;

    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2000/b/h;->b:Lcom/unity3d/scar/adapter/v2000/b/g;

    return-void
.end method

.method static synthetic b(Lcom/unity3d/scar/adapter/v2000/b/h;)Lcom/unity3d/scar/adapter/common/g;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/scar/adapter/v2000/b/h;->c:Lcom/unity3d/scar/adapter/common/g;

    return-object p0
.end method

.method static synthetic c(Lcom/unity3d/scar/adapter/v2000/b/h;)Lcom/google/android/gms/ads/FullScreenContentCallback;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/scar/adapter/v2000/b/h;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-object p0
.end method

.method static synthetic d(Lcom/unity3d/scar/adapter/v2000/b/h;)Lcom/unity3d/scar/adapter/v2000/b/g;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/scar/adapter/v2000/b/h;->b:Lcom/unity3d/scar/adapter/v2000/b/g;

    return-object p0
.end method


# virtual methods
.method public e()Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/h;->d:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    return-object v0
.end method

.method public f()Lcom/google/android/gms/ads/OnUserEarnedRewardListener;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/h;->e:Lcom/google/android/gms/ads/OnUserEarnedRewardListener;

    return-object v0
.end method

###### Class com.unity3d.scar.adapter.v2000.b.h.a (com.unity3d.scar.adapter.v2000.b.h$a)
.class Lcom/unity3d/scar/adapter/v2000/b/h$a;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "ScarRewardedAdListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/scar/adapter/v2000/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/scar/adapter/v2000/b/h;


# direct methods
.method constructor <init>(Lcom/unity3d/scar/adapter/v2000/b/h;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/b/h$a;->a:Lcom/unity3d/scar/adapter/v2000/b/h;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/ads/LoadAdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/h$a;->a:Lcom/unity3d/scar/adapter/v2000/b/h;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/b/h;->b(Lcom/unity3d/scar/adapter/v2000/b/h;)Lcom/unity3d/scar/adapter/common/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/unity3d/scar/adapter/common/c;->onAdFailedToLoad(ILjava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/ads/rewarded/RewardedAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->onAdLoaded(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/h$a;->a:Lcom/unity3d/scar/adapter/v2000/b/h;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/b/h;->b(Lcom/unity3d/scar/adapter/v2000/b/h;)Lcom/unity3d/scar/adapter/common/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/c;->onAdLoaded()V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/h$a;->a:Lcom/unity3d/scar/adapter/v2000/b/h;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/b/h;->c(Lcom/unity3d/scar/adapter/v2000/b/h;)Lcom/google/android/gms/ads/FullScreenContentCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/h$a;->a:Lcom/unity3d/scar/adapter/v2000/b/h;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/b/h;->d(Lcom/unity3d/scar/adapter/v2000/b/h;)Lcom/unity3d/scar/adapter/v2000/b/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unity3d/scar/adapter/v2000/b/a;->c(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/scar/adapter/v2000/b/h$a;->a:Lcom/unity3d/scar/adapter/v2000/b/h;

    iget-object p1, p1, Lcom/unity3d/scar/adapter/v2000/b/b;->a:Lcom/unity3d/scar/adapter/common/scarads/b;

    if-eqz p1, :cond_27

    invoke-interface {p1}, Lcom/unity3d/scar/adapter/common/scarads/b;->onAdLoaded()V

    :cond_27
    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lcom/unity3d/scar/adapter/v2000/b/h$a;->onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    return-void
.end method

###### Class com.unity3d.scar.adapter.v2000.b.h.b (com.unity3d.scar.adapter.v2000.b.h$b)
.class Lcom/unity3d/scar/adapter/v2000/b/h$b;
.super Ljava/lang/Object;
.source "ScarRewardedAdListener.java"

# interfaces
.implements Lcom/google/android/gms/ads/OnUserEarnedRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/scar/adapter/v2000/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/scar/adapter/v2000/b/h;


# direct methods
.method constructor <init>(Lcom/unity3d/scar/adapter/v2000/b/h;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/b/h$b;->a:Lcom/unity3d/scar/adapter/v2000/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/ads/rewarded/RewardItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/unity3d/scar/adapter/v2000/b/h$b;->a:Lcom/unity3d/scar/adapter/v2000/b/h;

    invoke-static {p1}, Lcom/unity3d/scar/adapter/v2000/b/h;->b(Lcom/unity3d/scar/adapter/v2000/b/h;)Lcom/unity3d/scar/adapter/common/g;

    move-result-object p1

    invoke-interface {p1}, Lcom/unity3d/scar/adapter/common/g;->onUserEarnedReward()V

    return-void
.end method

###### Class com.unity3d.scar.adapter.v2000.b.h.c (com.unity3d.scar.adapter.v2000.b.h$c)
.class Lcom/unity3d/scar/adapter/v2000/b/h$c;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "ScarRewardedAdListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/scar/adapter/v2000/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/scar/adapter/v2000/b/h;


# direct methods
.method constructor <init>(Lcom/unity3d/scar/adapter/v2000/b/h;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/b/h$c;->a:Lcom/unity3d/scar/adapter/v2000/b/h;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdDismissedFullScreenContent()V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/h$c;->a:Lcom/unity3d/scar/adapter/v2000/b/h;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/b/h;->b(Lcom/unity3d/scar/adapter/v2000/b/h;)Lcom/unity3d/scar/adapter/common/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/c;->onAdClosed()V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/ads/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/h$c;->a:Lcom/unity3d/scar/adapter/v2000/b/h;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/b/h;->b(Lcom/unity3d/scar/adapter/v2000/b/h;)Lcom/unity3d/scar/adapter/common/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/unity3d/scar/adapter/common/g;->onAdFailedToShow(ILjava/lang/String;)V

    return-void
.end method

.method public onAdImpression()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdImpression()V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/h$c;->a:Lcom/unity3d/scar/adapter/v2000/b/h;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/b/h;->b(Lcom/unity3d/scar/adapter/v2000/b/h;)Lcom/unity3d/scar/adapter/common/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/g;->onAdImpression()V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdShowedFullScreenContent()V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/h$c;->a:Lcom/unity3d/scar/adapter/v2000/b/h;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/b/h;->b(Lcom/unity3d/scar/adapter/v2000/b/h;)Lcom/unity3d/scar/adapter/common/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/c;->onAdOpened()V

    return-void
.end method

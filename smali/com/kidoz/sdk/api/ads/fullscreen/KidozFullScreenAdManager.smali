###### Class com.kidoz.sdk.api.ads.fullscreen.KidozFullScreenAdManager (com.kidoz.sdk.api.ads.fullscreen.KidozFullScreenAdManager)
.class public abstract Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;
.super Ljava/lang/Object;
.source "KidozFullScreenAdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$InternalFullScreenEventListener;
    }
.end annotation


# static fields
.field protected static TAG:Ljava/lang/String; = ""


# instance fields
.field private final adInstances:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;->adInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;->removeAdInstance(Ljava/lang/String;)V

    return-void
.end method

.method private removeAdInstance(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;->adInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->destroy()V

    :cond_15
    return-void
.end method


# virtual methods
.method public clearActivitySession_(I)V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;->adInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;->adInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->getContextId()I

    move-result v2

    if-ne p1, v2, :cond_a

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;->removeAdInstance(Ljava/lang/String;)V

    goto :goto_a

    :cond_36
    return-void
.end method

.method protected abstract getNewAdInstance(Landroid/app/Activity;Ljava/lang/String;)Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;
.end method

.method isLoaded(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;->adInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_12

    goto :goto_22

    :cond_12
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    const/4 v0, 0x1

    :cond_22
    :goto_22
    return v0
.end method

.method protected loadFullScreenAd(Landroid/app/Activity;Ljava/lang/String;Lcom/kidoz/sdk/api/ads/AdCallback;)V
    .registers 11

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;->adInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_32

    :cond_11
    invoke-virtual {p0, p2}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;->isLoaded(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;->adInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/kidoz/sdk/api/ads/AdCallback;->onAdLoaded(Ljava/lang/Object;)V

    goto :goto_5a

    :cond_27
    new-instance p1, Lcom/kidoz/sdk/api/general/KidozError;

    sget-object p2, Lcom/kidoz/sdk/api/general/KidozError$Type;->instanceAlreadyLoading:Lcom/kidoz/sdk/api/general/KidozError$Type;

    invoke-direct {p1, p2}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(Lcom/kidoz/sdk/api/general/KidozError$Type;)V

    invoke-interface {p3, p1}, Lcom/kidoz/sdk/api/ads/AdCallback;->onAdFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V

    goto :goto_5a

    :cond_32
    :goto_32
    invoke-virtual {p0, p1, p2}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;->getNewAdInstance(Landroid/app/Activity;Ljava/lang/String;)Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;

    move-result-object p1

    new-instance v6, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$1;-><init>(Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/ads/AdCallback;Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;)V

    invoke-virtual {p1, v6}, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->setInternalFullScreenEventListener(Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;)V

    instance-of v0, p1, Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;

    if-eqz v0, :cond_4d

    check-cast p3, Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialRewardedEventListener;

    invoke-virtual {p1, p3}, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->setRewardedEventListener(Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialRewardedEventListener;)V

    :cond_4d
    iget-object p3, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;->adInstances:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->load()V

    :goto_5a
    return-void
.end method

###### Class com.kidoz.sdk.api.ads.fullscreen.KidozFullScreenAdManager.AnonymousClass1 (com.kidoz.sdk.api.ads.fullscreen.KidozFullScreenAdManager$1)
.class Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$1;
.super Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$InternalFullScreenEventListener;
.source "KidozFullScreenAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;->loadFullScreenAd(Landroid/app/Activity;Ljava/lang/String;Lcom/kidoz/sdk/api/ads/AdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;

.field final synthetic val$ad:Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;

.field final synthetic val$callback:Lcom/kidoz/sdk/api/ads/AdCallback;

.field final synthetic val$instanceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/ads/AdCallback;Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;)V
    .registers 6

    iput-object p1, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$1;->this$0:Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;

    iput-object p3, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$1;->val$instanceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$1;->val$callback:Lcom/kidoz/sdk/api/ads/AdCallback;

    iput-object p5, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$1;->val$ad:Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;

    invoke-direct {p0, p2}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$InternalFullScreenEventListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAdFailedToShow(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$1;->this$0:Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$1;->val$instanceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;->access$000(Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$1;->val$callback:Lcom/kidoz/sdk/api/ads/AdCallback;

    invoke-interface {v0, p1}, Lcom/kidoz/sdk/api/ads/AdCallback;->onAdFailedToShow(Lcom/kidoz/sdk/api/general/KidozError;)V

    return-void
.end method

.method public onAdImpression()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$1;->val$callback:Lcom/kidoz/sdk/api/ads/AdCallback;

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ads/AdCallback;->onAdImpression()V

    return-void
.end method

.method public onAdLoaded()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$1;->val$callback:Lcom/kidoz/sdk/api/ads/AdCallback;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$1;->val$ad:Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ads/AdCallback;->onAdLoaded(Ljava/lang/Object;)V

    return-void
.end method

.method public onAdShown()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$1;->val$callback:Lcom/kidoz/sdk/api/ads/AdCallback;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$1;->val$ad:Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ads/AdCallback;->onAdShown(Ljava/lang/Object;)V

    return-void
.end method

.method public onClosed()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$1;->this$0:Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$1;->val$instanceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;->access$000(Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$1;->val$callback:Lcom/kidoz/sdk/api/ads/AdCallback;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$1;->val$ad:Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ads/AdCallback;->onAdClosed(Ljava/lang/Object;)V

    return-void
.end method

.method public onFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$1;->this$0:Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$1;->val$instanceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;->access$000(Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$1;->val$callback:Lcom/kidoz/sdk/api/ads/AdCallback;

    invoke-interface {v0, p1}, Lcom/kidoz/sdk/api/ads/AdCallback;->onAdFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V

    return-void
.end method

###### Class com.kidoz.sdk.api.ads.fullscreen.KidozFullScreenAdManager.InternalFullScreenEventListener (com.kidoz.sdk.api.ads.fullscreen.KidozFullScreenAdManager$InternalFullScreenEventListener)
.class abstract Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$InternalFullScreenEventListener;
.super Ljava/lang/Object;
.source "KidozFullScreenAdManager.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "InternalFullScreenEventListener"
.end annotation


# instance fields
.field private final instanceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$InternalFullScreenEventListener;->instanceId:Ljava/lang/String;

    return-void
.end method

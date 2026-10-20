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

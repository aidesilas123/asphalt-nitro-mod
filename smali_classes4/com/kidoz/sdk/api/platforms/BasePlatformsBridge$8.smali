###### Class com.kidoz.sdk.api.platforms.BasePlatformsBridge.AnonymousClass8 (com.kidoz.sdk.api.platforms.BasePlatformsBridge$8)
.class Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$8;
.super Ljava/lang/Object;
.source "BasePlatformsBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->hideBannerAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$8;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$8;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v0

    if-eqz v0, :cond_39

    const-string v0, "BasePlatformsBridge"

    const-string v1, "BasePlatformBridge | hideBannerAd() | hiding.."

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$8;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->hide()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$8;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$600(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$8;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$100(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$8;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_33
    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$8;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$402(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    :cond_39
    return-void
.end method

###### Class com.kidoz.sdk.api.platforms.BasePlatformsBridge.AnonymousClass6 (com.kidoz.sdk.api.platforms.BasePlatformsBridge$6)
.class Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;
.super Ljava/lang/Object;
.source "BasePlatformsBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->loadBannerAd(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

.field final synthetic val$autoShowOnLoad:Z

.field final synthetic val$bannerPosition:I


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;ZI)V
    .registers 4

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    iput-boolean p2, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->val$autoShowOnLoad:Z

    iput p3, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->val$bannerPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    new-instance v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    iget-object v2, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    iget-object v2, v2, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$402(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->setLayoutWithoutShowing()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6$1;-><init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;)V

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->setKidozBannerListener(Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;)V

    :cond_2d
    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    iget v2, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->val$bannerPosition:I

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$500(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;I)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->setBannerPosition(Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->load()V

    return-void
.end method

###### Class com.kidoz.sdk.api.platforms.BasePlatformsBridge.AnonymousClass5 (com.kidoz.sdk.api.platforms.BasePlatformsBridge$5)
.class Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$5;
.super Ljava/lang/Object;
.source "BasePlatformsBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->setBannerPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

.field final synthetic val$bannerPosition:I


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;I)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$5;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    iput p2, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$5;->val$bannerPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$5;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$5;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$5;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    iget v2, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$5;->val$bannerPosition:I

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$500(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;I)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->setBannerPosition(Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;)V

    :cond_19
    return-void
.end method

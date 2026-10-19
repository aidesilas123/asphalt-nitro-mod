###### Class com.gameloft.adsmanager.IronSourceBanner.AnonymousClass6 (com.gameloft.adsmanager.IronSourceBanner$6)
.class Lcom/gameloft/adsmanager/IronSourceBanner$6;
.super Ljava/lang/Object;
.source "IronSourceBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/IronSourceBanner;->Close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/IronSourceBanner;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/IronSourceBanner;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$6;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$6;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$000(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    sget-object v0, Lcom/gameloft/adsmanager/AdsManager;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$6;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v1}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$000(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$6;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$000(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$6;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$002(Lcom/gameloft/adsmanager/IronSourceBanner;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$6;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    iget-object v2, v0, Lcom/gameloft/adsmanager/IronSourceBanner;->sdkLocation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->OnClosed(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$6;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$100(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/gameloft/adsmanager/IronSource;

    move-result-object v0

    iput-object v1, v0, Lcom/gameloft/adsmanager/IronSource;->bannerObject:Lcom/gameloft/adsmanager/IronSourceBanner;

    return-void
.end method

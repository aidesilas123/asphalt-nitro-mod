###### Class com.gameloft.adsmanager.IronSourceBanner.AnonymousClass1 (com.gameloft.adsmanager.IronSourceBanner$1)
.class Lcom/gameloft/adsmanager/IronSourceBanner$1;
.super Ljava/lang/Object;
.source "IronSourceBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/IronSourceBanner;-><init>(Lcom/gameloft/adsmanager/IronSource;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

.field final synthetic val$sdkLocation:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/IronSourceBanner;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$1;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    iput-object p2, p0, Lcom/gameloft/adsmanager/IronSourceBanner$1;->val$sdkLocation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$1;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    sget-object v1, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    sget-object v2, Lcom/ironsource/mediationsdk/ISBannerSize;->SMART:Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/IronSource;->createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$002(Lcom/gameloft/adsmanager/IronSourceBanner;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$1;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$000(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v0

    new-instance v1, Lcom/gameloft/adsmanager/IronSourceBanner$1$1;

    invoke-direct {v1, p0}, Lcom/gameloft/adsmanager/IronSourceBanner$1$1;-><init>(Lcom/gameloft/adsmanager/IronSourceBanner$1;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->setLevelPlayBannerListener(Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;)V

    const-string v0, "IronSourceBanner.java"

    const-string v1, "Load banner called"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$1;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$000(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    return-void
.end method

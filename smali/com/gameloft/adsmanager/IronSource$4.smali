###### Class com.gameloft.adsmanager.IronSource.AnonymousClass4 (com.gameloft.adsmanager.IronSource$4)
.class Lcom/gameloft/adsmanager/IronSource$4;
.super Ljava/lang/Object;
.source "IronSource.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/InitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/IronSource;->Configure(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/IronSource;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/IronSource;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSource$4;->this$0:Lcom/gameloft/adsmanager/IronSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationComplete()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$4;->this$0:Lcom/gameloft/adsmanager/IronSource;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gameloft/adsmanager/IronSource;->wasIronSourceSDKSuccessfullyInitialized:Z

    const-string v0, "IronSource.java"

    const-string v1, "onInitializationComplete"

    const-string v2, "OnConfigurationSucceeded"

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$4;->this$0:Lcom/gameloft/adsmanager/IronSource;

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnConfigurationSucceeded()V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$4;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iget-boolean v0, v0, Lcom/gameloft/adsmanager/IronSource;->enableIronSourceTestMode:Z

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->launchTestSuite(Landroid/content/Context;)V

    :cond_1e
    return-void
.end method

###### Class com.gameloft.adsmanager.FANInterstitial.AnonymousClass4 (com.gameloft.adsmanager.FANInterstitial$4)
.class Lcom/gameloft/adsmanager/FANInterstitial$4;
.super Ljava/lang/Object;
.source "FANInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/FANInterstitial;->Load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/FANInterstitial;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/FANInterstitial;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$4;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-string v0, "FANInterstitial.java"

    const-string v1, "!!!!!"

    const-string v2, "Load for interstitial was called"

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    sget-object v2, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/gameloft/adsmanager/FANInterstitial$4;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v3}, Lcom/gameloft/adsmanager/FANInterstitial;->access$000(Lcom/gameloft/adsmanager/FANInterstitial;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/adsmanager/FANInterstitial$4;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v4}, Lcom/gameloft/adsmanager/FANInterstitial;->access$200(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/facebook/gamingservices/cloudgaming/InAppAdLibrary;->loadInterstitialAd(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_22} :catch_23

    goto :goto_5d

    :catch_23
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load error. Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$4;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/gameloft/adsmanager/FANInterstitial$4;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v2}, Lcom/gameloft/adsmanager/FANInterstitial;->access$000(Lcom/gameloft/adsmanager/FANInterstitial;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnInterstitialLoadError(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$4;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v0

    iget-object v0, v0, Lcom/gameloft/adsmanager/FAN;->interstitials:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    iget-object v1, p0, Lcom/gameloft/adsmanager/FANInterstitial$4;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v1}, Lcom/gameloft/adsmanager/FANInterstitial;->access$000(Lcom/gameloft/adsmanager/FANInterstitial;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PushPlacement(Ljava/lang/String;)V

    :goto_5d
    return-void
.end method

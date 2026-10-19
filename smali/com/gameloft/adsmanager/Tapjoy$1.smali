###### Class com.gameloft.adsmanager.Tapjoy.AnonymousClass1 (com.gameloft.adsmanager.Tapjoy$1)
.class Lcom/gameloft/adsmanager/Tapjoy$1;
.super Lcom/tapjoy/n;
.source "Tapjoy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/Tapjoy;->Configure(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/Tapjoy;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/Tapjoy;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    invoke-direct {p0}, Lcom/tapjoy/n;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailure(ILjava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnConfigurationFailed. Initialization failed with error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and message: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Tapjoy.java"

    const-string v0, "Configure"

    invoke-static {p2, v0, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    invoke-virtual {p1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnConfigurationFailed()V

    return-void
.end method

.method public onConnectSuccess()V
    .registers 4

    const-string v0, "Tapjoy.java"

    const-string v1, "Configure"

    const-string v2, "OnConfigurationSucceeded"

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnConfigurationSucceeded()V

    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    new-instance v1, Lcom/gameloft/adsmanager/Tapjoy$1$1;

    invoke-direct {v1, p0}, Lcom/gameloft/adsmanager/Tapjoy$1$1;-><init>(Lcom/gameloft/adsmanager/Tapjoy$1;)V

    iput-object v1, v0, Lcom/gameloft/adsmanager/Tapjoy;->tapjoyListener:Lcom/tapjoy/TJPlacementListener;

    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    iget-object v1, v0, Lcom/gameloft/adsmanager/Tapjoy;->offerWallSdkLocation:Ljava/lang/String;

    iget-object v2, v0, Lcom/gameloft/adsmanager/Tapjoy;->tapjoyListener:Lcom/tapjoy/TJPlacementListener;

    invoke-static {v1, v2}, Lcom/tapjoy/Tapjoy;->getPlacement(Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;

    move-result-object v1

    iput-object v1, v0, Lcom/gameloft/adsmanager/Tapjoy;->tapjoyPlacement:Lcom/tapjoy/TJPlacement;

    return-void
.end method

###### Class com.gameloft.adsmanager.TapjoyOfferWall.AnonymousClass1 (com.gameloft.adsmanager.TapjoyOfferWall$1)
.class Lcom/gameloft/adsmanager/TapjoyOfferWall$1;
.super Ljava/lang/Object;
.source "TapjoyOfferWall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/TapjoyOfferWall;->Show(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/TapjoyOfferWall;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/TapjoyOfferWall;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/TapjoyOfferWall$1;->this$0:Lcom/gameloft/adsmanager/TapjoyOfferWall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/adsmanager/TapjoyOfferWall$1;->this$0:Lcom/gameloft/adsmanager/TapjoyOfferWall;

    invoke-static {v0}, Lcom/gameloft/adsmanager/TapjoyOfferWall;->access$000(Lcom/gameloft/adsmanager/TapjoyOfferWall;)Lcom/gameloft/adsmanager/Tapjoy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnPauseGameAudio()V

    iget-object v0, p0, Lcom/gameloft/adsmanager/TapjoyOfferWall$1;->this$0:Lcom/gameloft/adsmanager/TapjoyOfferWall;

    invoke-static {v0}, Lcom/gameloft/adsmanager/TapjoyOfferWall;->access$000(Lcom/gameloft/adsmanager/TapjoyOfferWall;)Lcom/gameloft/adsmanager/Tapjoy;

    move-result-object v0

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy;->tapjoyPlacement:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->g()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/gameloft/adsmanager/TapjoyOfferWall$1;->this$0:Lcom/gameloft/adsmanager/TapjoyOfferWall;

    invoke-static {v0}, Lcom/gameloft/adsmanager/TapjoyOfferWall;->access$000(Lcom/gameloft/adsmanager/TapjoyOfferWall;)Lcom/gameloft/adsmanager/Tapjoy;

    move-result-object v0

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy;->tapjoyPlacement:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->j()V

    :cond_22
    return-void
.end method

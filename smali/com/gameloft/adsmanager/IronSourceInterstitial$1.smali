###### Class com.gameloft.adsmanager.IronSourceInterstitial.AnonymousClass1 (com.gameloft.adsmanager.IronSourceInterstitial$1)
.class Lcom/gameloft/adsmanager/IronSourceInterstitial$1;
.super Ljava/lang/Object;
.source "IronSourceInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/IronSourceInterstitial;->Show(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/IronSourceInterstitial;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/IronSourceInterstitial;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSourceInterstitial$1;->this$0:Lcom/gameloft/adsmanager/IronSourceInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceInterstitial$1;->this$0:Lcom/gameloft/adsmanager/IronSourceInterstitial;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceInterstitial;->access$000(Lcom/gameloft/adsmanager/IronSourceInterstitial;)Lcom/gameloft/adsmanager/IronSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnPauseGameAudio()V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceInterstitial$1;->this$0:Lcom/gameloft/adsmanager/IronSourceInterstitial;

    iget-object v0, v0, Lcom/gameloft/adsmanager/IronSourceInterstitial;->sdkLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->showInterstitial(Ljava/lang/String;)V

    return-void
.end method

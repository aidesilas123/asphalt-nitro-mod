###### Class com.gameloft.adsmanager.IronSource.AnonymousClass5 (com.gameloft.adsmanager.IronSource$5)
.class Lcom/gameloft/adsmanager/IronSource$5;
.super Ljava/lang/Object;
.source "IronSource.java"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;


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

.field final synthetic val$userConsent:Z


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/IronSource;Z)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSource$5;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iput-boolean p2, p0, Lcom/gameloft/adsmanager/IronSource$5;->val$userConsent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adQualitySdkInitFailed(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdQuality sdk failed to init with error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and message "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IronSource.java"

    const-string v0, "adQualitySdkInitFailed"

    invoke-static {p2, v0, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public adQualitySdkInitSuccess()V
    .registers 4

    const-string v0, "IronSource.java"

    const-string v1, "adQualitySdkInitSuccess"

    const-string v2, "AdQuality sdk successfully initialized"

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->getInstance()Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;

    move-result-object v0

    iget-boolean v1, p0, Lcom/gameloft/adsmanager/IronSource$5;->val$userConsent:Z

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->setUserConsent(Z)V

    return-void
.end method

###### Class com.gameloft.adsmanager.IronSourceInitializationHelperClass (com.gameloft.adsmanager.IronSourceInitializationHelperClass)
.class Lcom/gameloft/adsmanager/IronSourceInitializationHelperClass;
.super Ljava/lang/Object;
.source "IronSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field ironSource:Lcom/gameloft/adsmanager/IronSource;


# direct methods
.method public constructor <init>(Lcom/gameloft/adsmanager/IronSource;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSourceInitializationHelperClass;->ironSource:Lcom/gameloft/adsmanager/IronSource;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-wide/16 v0, 0x61a8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceInitializationHelperClass;->ironSource:Lcom/gameloft/adsmanager/IronSource;

    iget-boolean v0, v0, Lcom/gameloft/adsmanager/IronSource;->wasIronSourceSDKSuccessfullyInitialized:Z

    if-nez v0, :cond_1e

    const-string v0, "IronSource.java"

    const-string v1, "IronSourceInitializationHelperClass run"

    const-string v2, "IronSource sdk failed to initialize after 25 seconds"

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceInitializationHelperClass;->ironSource:Lcom/gameloft/adsmanager/IronSource;

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnConfigurationFailed()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1e
    :goto_1e
    return-void
.end method

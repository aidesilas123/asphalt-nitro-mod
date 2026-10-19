###### Class com.gameloft.glads.MoatSDK (com.gameloft.glads.MoatSDK)
.class public Lcom/gameloft/glads/MoatSDK;
.super Ljava/lang/Object;
.source "MoatSDK.java"


# static fields
.field static hasAdvertisingIdClient:Z = true


# instance fields
.field parent:J

.field tracker:Lcom/moat/analytics/mobile/glft/WebAdTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/glads/MoatSDK;->tracker:Lcom/moat/analytics/mobile/glft/WebAdTracker;

    iput-wide p1, p0, Lcom/gameloft/glads/MoatSDK;->parent:J

    return-void
.end method

.method private HandleStopTracking()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/glads/MoatSDK;->tracker:Lcom/moat/analytics/mobile/glft/WebAdTracker;

    if-eqz v0, :cond_a

    :try_start_4
    invoke-interface {v0}, Lcom/moat/analytics/mobile/glft/WebAdTracker;->stopTracking()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/glads/MoatSDK;->tracker:Lcom/moat/analytics/mobile/glft/WebAdTracker;

    :cond_a
    return-void
.end method

.method public static StartAnalytics()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Lcom/gameloft/glads/Utils;->ClassExists(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/gameloft/glads/MoatSDK;->hasAdvertisingIdClient:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_22

    sget-boolean v0, Lcom/gameloft/glads/MoatSDK;->hasAdvertisingIdClient:Z

    if-nez v0, :cond_13

    goto :goto_22

    :cond_13
    :try_start_13
    invoke-static {}, Lcom/moat/analytics/mobile/glft/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/glft/MoatAnalytics;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/glft/MoatAnalytics;->start(Landroid/app/Application;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_22} :catch_22

    :catch_22
    :cond_22
    :goto_22
    return-void
.end method

.method static synthetic access$000(Lcom/gameloft/glads/MoatSDK;)V
    .registers 1

    invoke-direct {p0}, Lcom/gameloft/glads/MoatSDK;->HandleStopTracking()V

    return-void
.end method


# virtual methods
.method public OnStartTracking(Ljava/lang/Object;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_13

    sget-boolean v0, Lcom/gameloft/glads/MoatSDK;->hasAdvertisingIdClient:Z

    if-nez v0, :cond_b

    goto :goto_13

    :cond_b
    new-instance v0, Lcom/gameloft/glads/MoatSDK$a;

    invoke-direct {v0, p0, p1}, Lcom/gameloft/glads/MoatSDK$a;-><init>(Lcom/gameloft/glads/MoatSDK;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/gameloft/glads/Utils;->RunOnMainThread(Ljava/lang/Runnable;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public StopTracking()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_13

    sget-boolean v0, Lcom/gameloft/glads/MoatSDK;->hasAdvertisingIdClient:Z

    if-nez v0, :cond_b

    goto :goto_13

    :cond_b
    new-instance v0, Lcom/gameloft/glads/MoatSDK$b;

    invoke-direct {v0, p0}, Lcom/gameloft/glads/MoatSDK$b;-><init>(Lcom/gameloft/glads/MoatSDK;)V

    invoke-static {v0}, Lcom/gameloft/glads/Utils;->RunOnMainThread(Ljava/lang/Runnable;)V

    :cond_13
    :goto_13
    return-void
.end method

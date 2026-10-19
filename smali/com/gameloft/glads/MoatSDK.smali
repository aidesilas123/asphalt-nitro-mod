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

###### Class com.gameloft.glads.MoatSDK.a (com.gameloft.glads.MoatSDK$a)
.class Lcom/gameloft/glads/MoatSDK$a;
.super Ljava/lang/Object;
.source "MoatSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/MoatSDK;->OnStartTracking(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/gameloft/glads/MoatSDK;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/MoatSDK;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/glads/MoatSDK$a;->b:Lcom/gameloft/glads/MoatSDK;

    iput-object p2, p0, Lcom/gameloft/glads/MoatSDK$a;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/glads/MoatSDK$a;->b:Lcom/gameloft/glads/MoatSDK;

    invoke-static {v0}, Lcom/gameloft/glads/MoatSDK;->access$000(Lcom/gameloft/glads/MoatSDK;)V

    iget-object v0, p0, Lcom/gameloft/glads/MoatSDK$a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/gameloft/glads/AndroidWebView;

    invoke-virtual {v0}, Lcom/gameloft/glads/AndroidWebView;->GetWebView()Landroid/webkit/WebView;

    move-result-object v0

    :try_start_d
    iget-object v1, p0, Lcom/gameloft/glads/MoatSDK$a;->b:Lcom/gameloft/glads/MoatSDK;

    invoke-static {}, Lcom/moat/analytics/mobile/glft/MoatFactory;->create()Lcom/moat/analytics/mobile/glft/MoatFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/moat/analytics/mobile/glft/MoatFactory;->createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/glft/WebAdTracker;

    move-result-object v0

    iput-object v0, v1, Lcom/gameloft/glads/MoatSDK;->tracker:Lcom/moat/analytics/mobile/glft/WebAdTracker;

    iget-object v0, p0, Lcom/gameloft/glads/MoatSDK$a;->b:Lcom/gameloft/glads/MoatSDK;

    iget-object v0, v0, Lcom/gameloft/glads/MoatSDK;->tracker:Lcom/moat/analytics/mobile/glft/WebAdTracker;

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/glft/WebAdTracker;->setActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/gameloft/glads/MoatSDK$a;->b:Lcom/gameloft/glads/MoatSDK;

    iget-object v0, v0, Lcom/gameloft/glads/MoatSDK;->tracker:Lcom/moat/analytics/mobile/glft/WebAdTracker;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/glft/WebAdTracker;->startTracking()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2b} :catch_2b

    :catch_2b
    return-void
.end method

###### Class com.gameloft.glads.MoatSDK.b (com.gameloft.glads.MoatSDK$b)
.class Lcom/gameloft/glads/MoatSDK$b;
.super Ljava/lang/Object;
.source "MoatSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/MoatSDK;->StopTracking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/glads/MoatSDK;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/MoatSDK;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/glads/MoatSDK$b;->a:Lcom/gameloft/glads/MoatSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/glads/MoatSDK$b;->a:Lcom/gameloft/glads/MoatSDK;

    invoke-static {v0}, Lcom/gameloft/glads/MoatSDK;->access$000(Lcom/gameloft/glads/MoatSDK;)V

    return-void
.end method

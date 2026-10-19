###### Class com.gameloft.glads.OmSDK (com.gameloft.glads.OmSDK)
.class public Lcom/gameloft/glads/OmSDK;
.super Ljava/lang/Object;
.source "OmSDK.java"


# static fields
.field static activated:Z

.field static analyticsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field static partner:Lcom/iab/omid/library/gameloft/adsession/Partner;


# instance fields
.field adSession:Lcom/iab/omid/library/gameloft/adsession/AdSession;

.field isVideo:Z

.field parent:J

.field sessionConfig:Lcom/iab/omid/library/gameloft/adsession/AdSessionConfiguration;

.field sessionContext:Lcom/iab/omid/library/gameloft/adsession/AdSessionContext;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/gameloft/glads/OmSDK;->analyticsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    sput-boolean v1, Lcom/gameloft/glads/OmSDK;->activated:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/glads/OmSDK;->partner:Lcom/iab/omid/library/gameloft/adsession/Partner;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/glads/OmSDK;->sessionContext:Lcom/iab/omid/library/gameloft/adsession/AdSessionContext;

    iput-object v0, p0, Lcom/gameloft/glads/OmSDK;->sessionConfig:Lcom/iab/omid/library/gameloft/adsession/AdSessionConfiguration;

    iput-object v0, p0, Lcom/gameloft/glads/OmSDK;->adSession:Lcom/iab/omid/library/gameloft/adsession/AdSession;

    iput-wide p1, p0, Lcom/gameloft/glads/OmSDK;->parent:J

    return-void
.end method

.method private HandleStopTracking()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/glads/OmSDK;->adSession:Lcom/iab/omid/library/gameloft/adsession/AdSession;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/iab/omid/library/gameloft/adsession/AdSession;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/glads/OmSDK;->adSession:Lcom/iab/omid/library/gameloft/adsession/AdSession;

    :cond_a
    return-void
.end method

.method public static native NativeGetPartnerVersion()Ljava/lang/String;
.end method

.method public static native NativeOnSDKActivated(Z)V
.end method

.method public static StartAnalytics()V
    .registers 3

    sget-object v0, Lcom/gameloft/glads/OmSDK;->analyticsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/iab/omid/library/gameloft/Omid;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_1e

    if-eqz v1, :cond_1e

    new-instance v2, Lcom/gameloft/glads/OmSDK$a;

    invoke-direct {v2, v0, v1}, Lcom/gameloft/glads/OmSDK$a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v2}, Lcom/gameloft/glads/Utils;->RunOnMainThreadAsync(Ljava/lang/Runnable;)V

    :cond_1e
    return-void
.end method

.method static synthetic access$000(Lcom/gameloft/glads/OmSDK;)V
    .registers 1

    invoke-direct {p0}, Lcom/gameloft/glads/OmSDK;->HandleStopTracking()V

    return-void
.end method


# virtual methods
.method public Init(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/gameloft/glads/OmSDK;->isVideo:Z

    return-void
.end method

.method public OnCreateWebView(Ljava/lang/Object;)V
    .registers 3

    new-instance v0, Lcom/gameloft/glads/OmSDK$b;

    invoke-direct {v0, p0, p1}, Lcom/gameloft/glads/OmSDK$b;-><init>(Lcom/gameloft/glads/OmSDK;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/gameloft/glads/Utils;->RunOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnStartTracking(Ljava/lang/Object;)V
    .registers 3

    new-instance v0, Lcom/gameloft/glads/OmSDK$c;

    invoke-direct {v0, p0, p1}, Lcom/gameloft/glads/OmSDK$c;-><init>(Lcom/gameloft/glads/OmSDK;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/gameloft/glads/Utils;->RunOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public StopTracking()V
    .registers 2

    new-instance v0, Lcom/gameloft/glads/OmSDK$d;

    invoke-direct {v0, p0}, Lcom/gameloft/glads/OmSDK$d;-><init>(Lcom/gameloft/glads/OmSDK;)V

    invoke-static {v0}, Lcom/gameloft/glads/Utils;->RunOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

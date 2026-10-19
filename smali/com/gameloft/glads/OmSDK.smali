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

###### Class com.gameloft.glads.OmSDK.a (com.gameloft.glads.OmSDK$a)
.class Lcom/gameloft/glads/OmSDK$a;
.super Ljava/lang/Object;
.source "OmSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/OmSDK;->StartAnalytics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/glads/OmSDK$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/gameloft/glads/OmSDK$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/glads/OmSDK$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/gameloft/glads/OmSDK$a;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/iab/omid/library/gameloft/Omid;->activateWithOmidApiVersion(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/gameloft/glads/OmSDK;->activated:Z

    if-eqz v0, :cond_18

    const-string v0, "Gameloft"

    invoke-static {}, Lcom/gameloft/glads/OmSDK;->NativeGetPartnerVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iab/omid/library/gameloft/adsession/Partner;->createPartner(Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/gameloft/adsession/Partner;

    move-result-object v0

    sput-object v0, Lcom/gameloft/glads/OmSDK;->partner:Lcom/iab/omid/library/gameloft/adsession/Partner;

    :cond_18
    sget-boolean v0, Lcom/gameloft/glads/OmSDK;->activated:Z

    invoke-static {v0}, Lcom/gameloft/glads/OmSDK;->NativeOnSDKActivated(Z)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

###### Class com.gameloft.glads.OmSDK.b (com.gameloft.glads.OmSDK$b)
.class Lcom/gameloft/glads/OmSDK$b;
.super Ljava/lang/Object;
.source "OmSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/OmSDK;->OnCreateWebView(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/gameloft/glads/OmSDK;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/OmSDK;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/glads/OmSDK$b;->b:Lcom/gameloft/glads/OmSDK;

    iput-object p2, p0, Lcom/gameloft/glads/OmSDK$b;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/gameloft/glads/OmSDK$b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/gameloft/glads/AndroidWebView;

    invoke-virtual {v0}, Lcom/gameloft/glads/AndroidWebView;->GetWebView()Landroid/webkit/WebView;

    move-result-object v0

    :try_start_8
    iget-object v1, p0, Lcom/gameloft/glads/OmSDK$b;->b:Lcom/gameloft/glads/OmSDK;

    sget-object v2, Lcom/gameloft/glads/OmSDK;->partner:Lcom/iab/omid/library/gameloft/adsession/Partner;

    const-string v3, ""

    invoke-static {v2, v0, v3}, Lcom/iab/omid/library/gameloft/adsession/AdSessionContext;->createHtmlAdSessionContext(Lcom/iab/omid/library/gameloft/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;)Lcom/iab/omid/library/gameloft/adsession/AdSessionContext;

    move-result-object v0

    iput-object v0, v1, Lcom/gameloft/glads/OmSDK;->sessionContext:Lcom/iab/omid/library/gameloft/adsession/AdSessionContext;

    iget-object v0, p0, Lcom/gameloft/glads/OmSDK$b;->b:Lcom/gameloft/glads/OmSDK;

    iget-boolean v1, v0, Lcom/gameloft/glads/OmSDK;->isVideo:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    sget-object v1, Lcom/iab/omid/library/gameloft/adsession/Owner;->JAVASCRIPT:Lcom/iab/omid/library/gameloft/adsession/Owner;

    invoke-static {v1, v1, v2}, Lcom/iab/omid/library/gameloft/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/gameloft/adsession/Owner;Lcom/iab/omid/library/gameloft/adsession/Owner;Z)Lcom/iab/omid/library/gameloft/adsession/AdSessionConfiguration;

    move-result-object v1

    iput-object v1, v0, Lcom/gameloft/glads/OmSDK;->sessionConfig:Lcom/iab/omid/library/gameloft/adsession/AdSessionConfiguration;

    goto :goto_2d

    :cond_24
    sget-object v1, Lcom/iab/omid/library/gameloft/adsession/Owner;->NATIVE:Lcom/iab/omid/library/gameloft/adsession/Owner;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/iab/omid/library/gameloft/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/gameloft/adsession/Owner;Lcom/iab/omid/library/gameloft/adsession/Owner;Z)Lcom/iab/omid/library/gameloft/adsession/AdSessionConfiguration;

    move-result-object v1

    iput-object v1, v0, Lcom/gameloft/glads/OmSDK;->sessionConfig:Lcom/iab/omid/library/gameloft/adsession/AdSessionConfiguration;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2d} :catch_2d

    :catch_2d
    :goto_2d
    return-void
.end method

###### Class com.gameloft.glads.OmSDK.c (com.gameloft.glads.OmSDK$c)
.class Lcom/gameloft/glads/OmSDK$c;
.super Ljava/lang/Object;
.source "OmSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/OmSDK;->OnStartTracking(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/gameloft/glads/OmSDK;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/OmSDK;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/glads/OmSDK$c;->b:Lcom/gameloft/glads/OmSDK;

    iput-object p2, p0, Lcom/gameloft/glads/OmSDK$c;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/gameloft/glads/OmSDK$c;->b:Lcom/gameloft/glads/OmSDK;

    invoke-static {v0}, Lcom/gameloft/glads/OmSDK;->access$000(Lcom/gameloft/glads/OmSDK;)V

    :try_start_5
    iget-object v0, p0, Lcom/gameloft/glads/OmSDK$c;->a:Ljava/lang/Object;

    check-cast v0, Lcom/gameloft/glads/AndroidWebView;

    invoke-virtual {v0}, Lcom/gameloft/glads/AndroidWebView;->GetWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/glads/OmSDK$c;->b:Lcom/gameloft/glads/OmSDK;

    iget-object v2, v1, Lcom/gameloft/glads/OmSDK;->sessionConfig:Lcom/iab/omid/library/gameloft/adsession/AdSessionConfiguration;

    iget-object v3, v1, Lcom/gameloft/glads/OmSDK;->sessionContext:Lcom/iab/omid/library/gameloft/adsession/AdSessionContext;

    invoke-static {v2, v3}, Lcom/iab/omid/library/gameloft/adsession/AdSession;->createAdSession(Lcom/iab/omid/library/gameloft/adsession/AdSessionConfiguration;Lcom/iab/omid/library/gameloft/adsession/AdSessionContext;)Lcom/iab/omid/library/gameloft/adsession/AdSession;

    move-result-object v2

    iput-object v2, v1, Lcom/gameloft/glads/OmSDK;->adSession:Lcom/iab/omid/library/gameloft/adsession/AdSession;

    iget-object v1, p0, Lcom/gameloft/glads/OmSDK$c;->b:Lcom/gameloft/glads/OmSDK;

    iget-object v1, v1, Lcom/gameloft/glads/OmSDK;->adSession:Lcom/iab/omid/library/gameloft/adsession/AdSession;

    invoke-virtual {v1, v0}, Lcom/iab/omid/library/gameloft/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gameloft/glads/OmSDK$c;->b:Lcom/gameloft/glads/OmSDK;

    iget-object v0, v0, Lcom/gameloft/glads/OmSDK;->adSession:Lcom/iab/omid/library/gameloft/adsession/AdSession;

    invoke-virtual {v0}, Lcom/iab/omid/library/gameloft/adsession/AdSession;->start()V

    iget-object v0, p0, Lcom/gameloft/glads/OmSDK$c;->b:Lcom/gameloft/glads/OmSDK;

    iget-boolean v1, v0, Lcom/gameloft/glads/OmSDK;->isVideo:Z

    if-nez v1, :cond_36

    iget-object v0, v0, Lcom/gameloft/glads/OmSDK;->adSession:Lcom/iab/omid/library/gameloft/adsession/AdSession;

    invoke-static {v0}, Lcom/iab/omid/library/gameloft/adsession/AdEvents;->createAdEvents(Lcom/iab/omid/library/gameloft/adsession/AdSession;)Lcom/iab/omid/library/gameloft/adsession/AdEvents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/gameloft/adsession/AdEvents;->impressionOccurred()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_36} :catch_36

    :catch_36
    :cond_36
    return-void
.end method

###### Class com.gameloft.glads.OmSDK.d (com.gameloft.glads.OmSDK$d)
.class Lcom/gameloft/glads/OmSDK$d;
.super Ljava/lang/Object;
.source "OmSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/OmSDK;->StopTracking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/glads/OmSDK;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/OmSDK;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/glads/OmSDK$d;->a:Lcom/gameloft/glads/OmSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/glads/OmSDK$d;->a:Lcom/gameloft/glads/OmSDK;

    invoke-static {v0}, Lcom/gameloft/glads/OmSDK;->access$000(Lcom/gameloft/glads/OmSDK;)V

    return-void
.end method

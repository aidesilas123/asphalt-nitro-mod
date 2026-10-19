###### Class com.kidoz.sdk.omid.b (com.kidoz.sdk.omid.b)
.class public Lcom/kidoz/sdk/omid/b;
.super Ljava/lang/Object;
.source "OMServiceImpl.java"

# interfaces
.implements Lcom/kidoz/sdk/omid/a;


# static fields
.field public static final a:Ljava/lang/String; = "b"

.field public static final b:Lcom/kidoz/sdk/omid/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/kidoz/sdk/omid/b;

    invoke-direct {v0}, Lcom/kidoz/sdk/omid/b;-><init>()V

    sput-object v0, Lcom/kidoz/sdk/omid/b;->b:Lcom/kidoz/sdk/omid/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;)Lcom/kidoz/sdk/omid/c;
    .registers 7

    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iab/omid/library/kidoznet/Omid;->activate(Landroid/content/Context;)V

    invoke-static {}, Lcom/iab/omid/library/kidoznet/Omid;->isActive()Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object p1, Lcom/kidoz/sdk/omid/b;->a:Ljava/lang/String;

    const-string v0, "Could not activate Omid SDK, silently ignoring further calls for this omid session"

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/kidoz/sdk/omid/e;

    invoke-direct {p1}, Lcom/kidoz/sdk/omid/e;-><init>()V

    return-object p1

    :cond_1e
    const-string v0, ""

    sget-object v1, Lcom/iab/omid/library/kidoznet/adsession/CreativeType;->DEFINED_BY_JAVASCRIPT:Lcom/iab/omid/library/kidoznet/adsession/CreativeType;

    sget-object v2, Lcom/iab/omid/library/kidoznet/adsession/ImpressionType;->DEFINED_BY_JAVASCRIPT:Lcom/iab/omid/library/kidoznet/adsession/ImpressionType;

    sget-object v3, Lcom/iab/omid/library/kidoznet/adsession/Owner;->JAVASCRIPT:Lcom/iab/omid/library/kidoznet/adsession/Owner;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v3, v4}, Lcom/iab/omid/library/kidoznet/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/kidoznet/adsession/CreativeType;Lcom/iab/omid/library/kidoznet/adsession/ImpressionType;Lcom/iab/omid/library/kidoznet/adsession/Owner;Lcom/iab/omid/library/kidoznet/adsession/Owner;Z)Lcom/iab/omid/library/kidoznet/adsession/AdSessionConfiguration;

    move-result-object v1

    const-string v2, "kidoznet"

    const-string v3, "9.0.1"

    invoke-static {v2, v3}, Lcom/iab/omid/library/kidoznet/adsession/Partner;->createPartner(Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/kidoznet/adsession/Partner;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3, v0}, Lcom/iab/omid/library/kidoznet/adsession/AdSessionContext;->createHtmlAdSessionContext(Lcom/iab/omid/library/kidoznet/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/kidoznet/adsession/AdSessionContext;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iab/omid/library/kidoznet/adsession/AdSession;->createAdSession(Lcom/iab/omid/library/kidoznet/adsession/AdSessionConfiguration;Lcom/iab/omid/library/kidoznet/adsession/AdSessionContext;)Lcom/iab/omid/library/kidoznet/adsession/AdSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/kidoznet/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    new-instance p1, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator;

    new-instance v1, Lcom/kidoz/sdk/omid/d;

    invoke-direct {v1, v0}, Lcom/kidoz/sdk/omid/d;-><init>(Lcom/iab/omid/library/kidoznet/adsession/AdSession;)V

    invoke-direct {p1, v1}, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator;-><init>(Lcom/kidoz/sdk/omid/c;)V
    :try_end_49
    .catchall {:try_start_0 .. :try_end_49} :catchall_4a

    return-object p1

    :catchall_4a
    move-exception p1

    sget-object v0, Lcom/kidoz/sdk/omid/b;->a:Ljava/lang/String;

    const-string v1, "OMService.createSession failed"

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Lcom/kidoz/sdk/omid/e;

    invoke-direct {p1}, Lcom/kidoz/sdk/omid/e;-><init>()V

    return-object p1
.end method

###### Class com.fyber.inneractive.sdk.mraid.IAMraidKit (com.fyber.inneractive.sdk.mraid.IAMraidKit)
.class public Lcom/fyber/inneractive/sdk/mraid/IAMraidKit;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final sProvider:Lcom/fyber/inneractive/sdk/util/s;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fyber/inneractive/sdk/mraid/IAMraidKit$a;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/mraid/IAMraidKit$a;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/mraid/IAMraidKit;->sProvider:Lcom/fyber/inneractive/sdk/util/s;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/fyber/inneractive/sdk/mraid/IAMraidKit;Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/mraid/IAMraidKit;->isMRaidSpotContent(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;)Z

    move-result p0

    return p0
.end method

.method private isMRaidSpotContent(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;)Z
    .registers 3

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;->getAdContent()Lcom/fyber/inneractive/sdk/flow/q;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;->getAdContent()Lcom/fyber/inneractive/sdk/flow/q;

    move-result-object p1

    instance-of p1, p1, Lcom/fyber/inneractive/sdk/flow/b0;

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "IAMraidKit: onReceive in package: %s"

    invoke-static {p1, p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/fyber/inneractive/sdk/mraid/IAMraidKit;->sProvider:Lcom/fyber/inneractive/sdk/util/s;

    sget-object p2, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->I:Ljava/util/Map;

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/util/s;->a()Lcom/fyber/inneractive/sdk/util/t;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/fyber/inneractive/sdk/mraid/IAMraidKit$b;

    invoke-direct {p1, p0}, Lcom/fyber/inneractive/sdk/mraid/IAMraidKit$b;-><init>(Lcom/fyber/inneractive/sdk/mraid/IAMraidKit;)V

    sget-object p2, Lcom/fyber/inneractive/sdk/factories/b$a;->a:Lcom/fyber/inneractive/sdk/factories/b;

    sget-object v0, Lcom/fyber/inneractive/sdk/response/a;->RETURNED_ADTYPE_HTML:Lcom/fyber/inneractive/sdk/response/a;

    invoke-virtual {p2, v0, p1}, Lcom/fyber/inneractive/sdk/factories/b;->a(Lcom/fyber/inneractive/sdk/response/a;Lcom/fyber/inneractive/sdk/factories/b$b;)V

    sget-object p2, Lcom/fyber/inneractive/sdk/factories/b$a;->a:Lcom/fyber/inneractive/sdk/factories/b;

    sget-object v0, Lcom/fyber/inneractive/sdk/response/a;->RETURNED_ADTYPE_MRAID:Lcom/fyber/inneractive/sdk/response/a;

    invoke-virtual {p2, v0, p1}, Lcom/fyber/inneractive/sdk/factories/b;->a(Lcom/fyber/inneractive/sdk/response/a;Lcom/fyber/inneractive/sdk/factories/b$b;)V

    sget-object p1, Lcom/fyber/inneractive/sdk/factories/c$b;->a:Lcom/fyber/inneractive/sdk/factories/c;

    new-instance p2, Lcom/fyber/inneractive/sdk/mraid/IAMraidKit$c;

    invoke-direct {p2, p0}, Lcom/fyber/inneractive/sdk/mraid/IAMraidKit$c;-><init>(Lcom/fyber/inneractive/sdk/mraid/IAMraidKit;)V

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/factories/c;->a:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/fyber/inneractive/sdk/factories/a$b;->a:Lcom/fyber/inneractive/sdk/factories/a;

    new-instance p2, Lcom/fyber/inneractive/sdk/mraid/IAMraidKit$d;

    invoke-direct {p2, p0}, Lcom/fyber/inneractive/sdk/mraid/IAMraidKit$d;-><init>(Lcom/fyber/inneractive/sdk/mraid/IAMraidKit;)V

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/factories/a;->a:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

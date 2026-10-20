###### Class com.fyber.inneractive.sdk.dv.c (com.fyber.inneractive.sdk.dv.c)
.class public Lcom/fyber/inneractive/sdk/dv/c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Lcom/fyber/inneractive/sdk/dv/c;Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;->getAdContent()Lcom/fyber/inneractive/sdk/flow/q;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;->getAdContent()Lcom/fyber/inneractive/sdk/flow/q;

    move-result-object p0

    instance-of p0, p0, Lcom/fyber/inneractive/sdk/dv/a;

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
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

    const-string p1, "DVKit: onReceive in package: %s"

    invoke-static {p1, p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/fyber/inneractive/sdk/factories/b$a;->a:Lcom/fyber/inneractive/sdk/factories/b;

    sget-object p2, Lcom/fyber/inneractive/sdk/response/a;->RETURNED_ADTYPE_MOBILE_ADS:Lcom/fyber/inneractive/sdk/response/a;

    new-instance v0, Lcom/fyber/inneractive/sdk/dv/c$a;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/dv/c$a;-><init>(Lcom/fyber/inneractive/sdk/dv/c;)V

    invoke-virtual {p1, p2, v0}, Lcom/fyber/inneractive/sdk/factories/b;->a(Lcom/fyber/inneractive/sdk/response/a;Lcom/fyber/inneractive/sdk/factories/b$b;)V

    sget-object p1, Lcom/fyber/inneractive/sdk/factories/c$b;->a:Lcom/fyber/inneractive/sdk/factories/c;

    new-instance p2, Lcom/fyber/inneractive/sdk/dv/c$b;

    invoke-direct {p2, p0}, Lcom/fyber/inneractive/sdk/dv/c$b;-><init>(Lcom/fyber/inneractive/sdk/dv/c;)V

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/factories/c;->a:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/fyber/inneractive/sdk/factories/a$b;->a:Lcom/fyber/inneractive/sdk/factories/a;

    new-instance p2, Lcom/fyber/inneractive/sdk/dv/c$c;

    invoke-direct {p2, p0}, Lcom/fyber/inneractive/sdk/dv/c$c;-><init>(Lcom/fyber/inneractive/sdk/dv/c;)V

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/factories/a;->a:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

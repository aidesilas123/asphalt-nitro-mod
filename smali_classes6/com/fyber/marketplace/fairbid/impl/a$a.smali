###### Class com.fyber.marketplace.fairbid.impl.a.RunnableC0204a (com.fyber.marketplace.fairbid.impl.a$a)
.class public Lcom/fyber/marketplace/fairbid/impl/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/marketplace/fairbid/impl/a;->b(Lcom/fyber/inneractive/sdk/external/InneractiveUnitController;Lcom/fyber/marketplace/fairbid/bridge/a;Lcom/fyber/inneractive/sdk/response/e;Lcom/fyber/inneractive/sdk/interfaces/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/response/e;

.field public final synthetic b:Lcom/fyber/inneractive/sdk/interfaces/a;

.field public final synthetic c:Lcom/fyber/inneractive/sdk/external/InneractiveUnitController;

.field public final synthetic d:Lcom/fyber/marketplace/fairbid/bridge/a;

.field public final synthetic e:Lcom/fyber/marketplace/fairbid/impl/a;


# direct methods
.method public constructor <init>(Lcom/fyber/marketplace/fairbid/impl/a;Lcom/fyber/inneractive/sdk/response/e;Lcom/fyber/inneractive/sdk/interfaces/a;Lcom/fyber/inneractive/sdk/external/InneractiveUnitController;Lcom/fyber/marketplace/fairbid/bridge/a;)V
    .registers 6

    iput-object p1, p0, Lcom/fyber/marketplace/fairbid/impl/a$a;->e:Lcom/fyber/marketplace/fairbid/impl/a;

    iput-object p2, p0, Lcom/fyber/marketplace/fairbid/impl/a$a;->a:Lcom/fyber/inneractive/sdk/response/e;

    iput-object p3, p0, Lcom/fyber/marketplace/fairbid/impl/a$a;->b:Lcom/fyber/inneractive/sdk/interfaces/a;

    iput-object p4, p0, Lcom/fyber/marketplace/fairbid/impl/a$a;->c:Lcom/fyber/inneractive/sdk/external/InneractiveUnitController;

    iput-object p5, p0, Lcom/fyber/marketplace/fairbid/impl/a$a;->d:Lcom/fyber/marketplace/fairbid/bridge/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/fyber/marketplace/fairbid/impl/a$a;->e:Lcom/fyber/marketplace/fairbid/impl/a;

    iget-object v1, v0, Lcom/fyber/marketplace/fairbid/impl/a;->d:Lcom/fyber/marketplace/fairbid/bridge/b;

    iget-object v0, v0, Lcom/fyber/marketplace/fairbid/impl/a;->c:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/fyber/marketplace/fairbid/bridge/b;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/config/global/s;

    move-result-object v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/fyber/inneractive/sdk/config/global/s;->b()Lcom/fyber/inneractive/sdk/config/global/s;

    move-result-object v0

    :cond_10
    move-object v4, v0

    iget-object v0, p0, Lcom/fyber/marketplace/fairbid/impl/a$a;->a:Lcom/fyber/inneractive/sdk/response/e;

    new-instance v1, Lcom/fyber/inneractive/sdk/config/global/e;

    invoke-direct {v1}, Lcom/fyber/inneractive/sdk/config/global/e;-><init>()V

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/response/e;->r:Lcom/fyber/inneractive/sdk/external/ImpressionData;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/external/ImpressionData;->getDemandId()Ljava/lang/Long;

    move-result-object v0

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    iput-object v0, v1, Lcom/fyber/inneractive/sdk/config/global/e;->a:Ljava/lang/Long;

    :try_start_24
    sget-object v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/fyber/inneractive/sdk/config/global/e;->b:Ljava/lang/Long;
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_37

    :catch_2f
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "invalid publisherId"

    invoke-static {v2, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_37
    invoke-virtual {v4, v1}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Lcom/fyber/inneractive/sdk/config/global/e;)V

    iget-object v0, p0, Lcom/fyber/marketplace/fairbid/impl/a$a;->b:Lcom/fyber/inneractive/sdk/interfaces/a;

    iget-object v3, p0, Lcom/fyber/marketplace/fairbid/impl/a$a;->a:Lcom/fyber/inneractive/sdk/response/e;

    iget-object v1, p0, Lcom/fyber/marketplace/fairbid/impl/a$a;->e:Lcom/fyber/marketplace/fairbid/impl/a;

    invoke-static {v1}, Lcom/fyber/marketplace/fairbid/impl/a;->access$100(Lcom/fyber/marketplace/fairbid/impl/a;)Z

    move-result v1

    new-instance v5, Lcom/fyber/marketplace/fairbid/impl/a$a$a;

    invoke-direct {v5, p0}, Lcom/fyber/marketplace/fairbid/impl/a$a$a;-><init>(Lcom/fyber/marketplace/fairbid/impl/a$a;)V

    check-cast v0, Lcom/fyber/inneractive/sdk/flow/h;

    iput-boolean v1, v0, Lcom/fyber/inneractive/sdk/flow/h;->h:Z

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/fyber/inneractive/sdk/flow/h;->a(Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;Lcom/fyber/inneractive/sdk/config/global/s;Lcom/fyber/inneractive/sdk/interfaces/a$a;Lcom/fyber/inneractive/sdk/interfaces/a$b;)V

    return-void
.end method

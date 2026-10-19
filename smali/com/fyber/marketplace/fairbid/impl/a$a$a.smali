###### Class com.fyber.marketplace.fairbid.impl.a.RunnableC0204a.C0205a (com.fyber.marketplace.fairbid.impl.a$a$a)
.class public Lcom/fyber/marketplace/fairbid/impl/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/interfaces/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/marketplace/fairbid/impl/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/marketplace/fairbid/impl/a$a;


# direct methods
.method public constructor <init>(Lcom/fyber/marketplace/fairbid/impl/a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/marketplace/fairbid/impl/a$a$a;->a:Lcom/fyber/marketplace/fairbid/impl/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;)V
    .registers 5

    iget-object p1, p0, Lcom/fyber/marketplace/fairbid/impl/a$a$a;->a:Lcom/fyber/marketplace/fairbid/impl/a$a;

    iget-object v0, p1, Lcom/fyber/marketplace/fairbid/impl/a$a;->e:Lcom/fyber/marketplace/fairbid/impl/a;

    new-instance v1, Lcom/fyber/marketplace/fairbid/impl/c;

    iget-object v2, p1, Lcom/fyber/marketplace/fairbid/impl/a$a;->c:Lcom/fyber/inneractive/sdk/external/InneractiveUnitController;

    iget-object p1, p1, Lcom/fyber/marketplace/fairbid/impl/a$a;->b:Lcom/fyber/inneractive/sdk/interfaces/a;

    check-cast p1, Lcom/fyber/inneractive/sdk/flow/h;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/flow/h;->c:Lcom/fyber/inneractive/sdk/flow/q;

    invoke-direct {v1, v2, p1}, Lcom/fyber/marketplace/fairbid/impl/c;-><init>(Lcom/fyber/inneractive/sdk/external/InneractiveUnitController;Lcom/fyber/inneractive/sdk/flow/q;)V

    iput-object v1, v0, Lcom/fyber/marketplace/fairbid/impl/a;->a:Lcom/fyber/marketplace/fairbid/impl/c;

    iget-object p1, p0, Lcom/fyber/marketplace/fairbid/impl/a$a$a;->a:Lcom/fyber/marketplace/fairbid/impl/a$a;

    iget-object p1, p1, Lcom/fyber/marketplace/fairbid/impl/a$a;->e:Lcom/fyber/marketplace/fairbid/impl/a;

    iget-object v0, p1, Lcom/fyber/marketplace/fairbid/impl/a;->a:Lcom/fyber/marketplace/fairbid/impl/c;

    invoke-virtual {p1, p1, v0}, Lcom/fyber/marketplace/fairbid/impl/a;->a(Lcom/fyber/marketplace/fairbid/impl/a;Lcom/fyber/marketplace/fairbid/impl/c;)V

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;)V
    .registers 3

    iget-object p1, p0, Lcom/fyber/marketplace/fairbid/impl/a$a$a;->a:Lcom/fyber/marketplace/fairbid/impl/a$a;

    iget-object p1, p1, Lcom/fyber/marketplace/fairbid/impl/a$a;->d:Lcom/fyber/marketplace/fairbid/bridge/a;

    sget-object v0, Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;->c:Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;

    invoke-interface {p1, v0}, Lcom/fyber/marketplace/fairbid/bridge/a;->a(Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;)V

    return-void
.end method

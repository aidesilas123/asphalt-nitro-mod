###### Class com.fyber.marketplace.fairbid.impl.a (com.fyber.marketplace.fairbid.impl.a)
.class public abstract Lcom/fyber/marketplace/fairbid/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/fyber/marketplace/fairbid/impl/c;

.field private b:Z

.field public c:Ljava/lang/String;

.field public d:Lcom/fyber/marketplace/fairbid/bridge/b;


# direct methods
.method public static synthetic access$000(Lcom/fyber/marketplace/fairbid/impl/a;Lcom/fyber/inneractive/sdk/external/InneractiveUnitController;Lcom/fyber/marketplace/fairbid/bridge/a;Lcom/fyber/inneractive/sdk/response/e;Lcom/fyber/inneractive/sdk/interfaces/a;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fyber/marketplace/fairbid/impl/a;->b(Lcom/fyber/inneractive/sdk/external/InneractiveUnitController;Lcom/fyber/marketplace/fairbid/bridge/a;Lcom/fyber/inneractive/sdk/response/e;Lcom/fyber/inneractive/sdk/interfaces/a;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/fyber/marketplace/fairbid/impl/a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/fyber/marketplace/fairbid/impl/a;->b:Z

    return p0
.end method

.method private b(Lcom/fyber/inneractive/sdk/external/InneractiveUnitController;Lcom/fyber/marketplace/fairbid/bridge/a;Lcom/fyber/inneractive/sdk/response/e;Lcom/fyber/inneractive/sdk/interfaces/a;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/external/InneractiveUnitController<",
            "*>;",
            "Lcom/fyber/marketplace/fairbid/bridge/a<",
            "*>;",
            "Lcom/fyber/inneractive/sdk/response/e;",
            "Lcom/fyber/inneractive/sdk/interfaces/a;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_14

    if-eqz p4, :cond_14

    sget-object v0, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    new-instance v7, Lcom/fyber/marketplace/fairbid/impl/a$a;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/fyber/marketplace/fairbid/impl/a$a;-><init>(Lcom/fyber/marketplace/fairbid/impl/a;Lcom/fyber/inneractive/sdk/response/e;Lcom/fyber/inneractive/sdk/interfaces/a;Lcom/fyber/inneractive/sdk/external/InneractiveUnitController;Lcom/fyber/marketplace/fairbid/bridge/a;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/fyber/marketplace/fairbid/impl/a;Lcom/fyber/marketplace/fairbid/impl/c;)V
.end method

###### Class com.applovin.impl.mediation.debugger.ui.a.m (com.applovin.impl.mediation.debugger.ui.a.m)
.class public final synthetic Lcom/applovin/impl/mediation/debugger/ui/a/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/impl/mediation/debugger/ui/d/d$a;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/debugger/ui/a/d;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/applovin/impl/sdk/n;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/a/d;Ljava/util/List;Lcom/applovin/impl/sdk/n;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/m;->a:Lcom/applovin/impl/mediation/debugger/ui/a/d;

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/a/m;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/applovin/impl/mediation/debugger/ui/a/m;->c:Lcom/applovin/impl/sdk/n;

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/applovin/impl/mediation/debugger/ui/d/a;Lcom/applovin/impl/mediation/debugger/ui/d/c;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/m;->a:Lcom/applovin/impl/mediation/debugger/ui/a/d;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/m;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/applovin/impl/mediation/debugger/ui/a/m;->c:Lcom/applovin/impl/sdk/n;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/applovin/impl/mediation/debugger/ui/a/d;->b(Lcom/applovin/impl/mediation/debugger/ui/a/d;Ljava/util/List;Lcom/applovin/impl/sdk/n;Lcom/applovin/impl/mediation/debugger/ui/d/a;Lcom/applovin/impl/mediation/debugger/ui/d/c;)V

    return-void
.end method

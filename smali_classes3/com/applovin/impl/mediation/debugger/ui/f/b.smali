###### Class com.applovin.impl.mediation.debugger.ui.f.b (com.applovin.impl.mediation.debugger.ui.f.b)
.class public final synthetic Lcom/applovin/impl/mediation/debugger/ui/f/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/impl/mediation/debugger/ui/d/d$a;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/debugger/ui/f/a;

.field public final synthetic b:Lcom/applovin/impl/sdk/n;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/f/a;Lcom/applovin/impl/sdk/n;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/f/b;->a:Lcom/applovin/impl/mediation/debugger/ui/f/a;

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/f/b;->b:Lcom/applovin/impl/sdk/n;

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/applovin/impl/mediation/debugger/ui/d/a;Lcom/applovin/impl/mediation/debugger/ui/d/c;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/f/b;->a:Lcom/applovin/impl/mediation/debugger/ui/f/a;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/f/b;->b:Lcom/applovin/impl/sdk/n;

    invoke-static {v0, v1, p1, p2}, Lcom/applovin/impl/mediation/debugger/ui/f/a;->d(Lcom/applovin/impl/mediation/debugger/ui/f/a;Lcom/applovin/impl/sdk/n;Lcom/applovin/impl/mediation/debugger/ui/d/a;Lcom/applovin/impl/mediation/debugger/ui/d/c;)V

    return-void
.end method

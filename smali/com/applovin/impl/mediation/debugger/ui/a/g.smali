###### Class com.applovin.impl.mediation.debugger.ui.a.g (com.applovin.impl.mediation.debugger.ui.a.g)
.class public final synthetic Lcom/applovin/impl/mediation/debugger/ui/a/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/impl/sdk/utils/b$a;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/debugger/ui/d/c;

.field public final synthetic b:Lcom/applovin/impl/mediation/debugger/b/a/a;

.field public final synthetic c:Lcom/applovin/impl/mediation/debugger/b/a/b;

.field public final synthetic d:Lcom/applovin/impl/sdk/n;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/d/c;Lcom/applovin/impl/mediation/debugger/b/a/a;Lcom/applovin/impl/mediation/debugger/b/a/b;Lcom/applovin/impl/sdk/n;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/g;->a:Lcom/applovin/impl/mediation/debugger/ui/d/c;

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/a/g;->b:Lcom/applovin/impl/mediation/debugger/b/a/a;

    iput-object p3, p0, Lcom/applovin/impl/mediation/debugger/ui/a/g;->c:Lcom/applovin/impl/mediation/debugger/b/a/b;

    iput-object p4, p0, Lcom/applovin/impl/mediation/debugger/ui/a/g;->d:Lcom/applovin/impl/sdk/n;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/g;->a:Lcom/applovin/impl/mediation/debugger/ui/d/c;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/g;->b:Lcom/applovin/impl/mediation/debugger/b/a/a;

    iget-object v2, p0, Lcom/applovin/impl/mediation/debugger/ui/a/g;->c:Lcom/applovin/impl/mediation/debugger/b/a/b;

    iget-object v3, p0, Lcom/applovin/impl/mediation/debugger/ui/a/g;->d:Lcom/applovin/impl/sdk/n;

    check-cast p1, Lcom/applovin/mediation/MaxDebuggerAdUnitDetailActivity;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/applovin/impl/mediation/debugger/ui/a/a;->e(Lcom/applovin/impl/mediation/debugger/ui/d/c;Lcom/applovin/impl/mediation/debugger/b/a/a;Lcom/applovin/impl/mediation/debugger/b/a/b;Lcom/applovin/impl/sdk/n;Lcom/applovin/mediation/MaxDebuggerAdUnitDetailActivity;)V

    return-void
.end method

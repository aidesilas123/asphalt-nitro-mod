###### Class com.applovin.impl.mediation.debugger.ui.a.j (com.applovin.impl.mediation.debugger.ui.a.j)
.class public final synthetic Lcom/applovin/impl/mediation/debugger/ui/a/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/impl/sdk/utils/b$a;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/debugger/b/a/a;

.field public final synthetic b:Lcom/applovin/impl/mediation/debugger/ui/d/a;

.field public final synthetic c:Lcom/applovin/impl/sdk/n;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/debugger/b/a/a;Lcom/applovin/impl/mediation/debugger/ui/d/a;Lcom/applovin/impl/sdk/n;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/j;->a:Lcom/applovin/impl/mediation/debugger/b/a/a;

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/a/j;->b:Lcom/applovin/impl/mediation/debugger/ui/d/a;

    iput-object p3, p0, Lcom/applovin/impl/mediation/debugger/ui/a/j;->c:Lcom/applovin/impl/sdk/n;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/j;->a:Lcom/applovin/impl/mediation/debugger/b/a/a;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/j;->b:Lcom/applovin/impl/mediation/debugger/ui/d/a;

    iget-object v2, p0, Lcom/applovin/impl/mediation/debugger/ui/a/j;->c:Lcom/applovin/impl/sdk/n;

    check-cast p1, Lcom/applovin/mediation/MaxDebuggerWaterfallKeywordsActivity;

    invoke-static {v0, v1, v2, p1}, Lcom/applovin/impl/mediation/debugger/ui/a/c;->d(Lcom/applovin/impl/mediation/debugger/b/a/a;Lcom/applovin/impl/mediation/debugger/ui/d/a;Lcom/applovin/impl/sdk/n;Lcom/applovin/mediation/MaxDebuggerWaterfallKeywordsActivity;)V

    return-void
.end method

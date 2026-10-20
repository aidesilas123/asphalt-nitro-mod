###### Class com.applovin.impl.mediation.debugger.ui.a.o (com.applovin.impl.mediation.debugger.ui.a.o)
.class public final synthetic Lcom/applovin/impl/mediation/debugger/ui/a/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/impl/sdk/utils/b$a;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/debugger/b/a/a;

.field public final synthetic b:Lcom/applovin/impl/sdk/n;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/debugger/b/a/a;Lcom/applovin/impl/sdk/n;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/o;->a:Lcom/applovin/impl/mediation/debugger/b/a/a;

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/a/o;->b:Lcom/applovin/impl/sdk/n;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/o;->a:Lcom/applovin/impl/mediation/debugger/b/a/a;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/o;->b:Lcom/applovin/impl/sdk/n;

    check-cast p1, Lcom/applovin/mediation/MaxDebuggerAdUnitDetailActivity;

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/mediation/debugger/ui/a/d;->d(Lcom/applovin/impl/mediation/debugger/b/a/a;Lcom/applovin/impl/sdk/n;Lcom/applovin/mediation/MaxDebuggerAdUnitDetailActivity;)V

    return-void
.end method

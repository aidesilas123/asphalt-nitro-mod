###### Class com.applovin.impl.mediation.debugger.e (com.applovin.impl.mediation.debugger.e)
.class public final synthetic Lcom/applovin/impl/mediation/debugger/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/debugger/b;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/debugger/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/e;->a:Lcom/applovin/impl/mediation/debugger/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/e;->a:Lcom/applovin/impl/mediation/debugger/b;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/b;->showMediationDebugger()V

    return-void
.end method

###### Class com.applovin.impl.mediation.debugger.d (com.applovin.impl.mediation.debugger.d)
.class public final synthetic Lcom/applovin/impl/mediation/debugger/d;
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

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/d;->a:Lcom/applovin/impl/mediation/debugger/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/d;->a:Lcom/applovin/impl/mediation/debugger/b;

    invoke-static {v0}, Lcom/applovin/impl/mediation/debugger/b;->f(Lcom/applovin/impl/mediation/debugger/b;)V

    return-void
.end method

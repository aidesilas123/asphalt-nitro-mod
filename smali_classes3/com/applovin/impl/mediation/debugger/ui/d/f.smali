###### Class com.applovin.impl.mediation.debugger.ui.d.f (com.applovin.impl.mediation.debugger.ui.d.f)
.class public final synthetic Lcom/applovin/impl/mediation/debugger/ui/d/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/debugger/ui/d/d;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/d/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/d/f;->a:Lcom/applovin/impl/mediation/debugger/ui/d/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/f;->a:Lcom/applovin/impl/mediation/debugger/ui/d/d;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/d/d;->notifyDataSetChanged()V

    return-void
.end method

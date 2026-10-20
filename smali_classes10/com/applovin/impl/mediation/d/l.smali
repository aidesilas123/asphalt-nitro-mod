###### Class com.applovin.impl.mediation.d.l (com.applovin.impl.mediation.d.l)
.class public final synthetic Lcom/applovin/impl/mediation/d/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/d/e;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/d/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/d/l;->a:Lcom/applovin/impl/mediation/d/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/d/l;->a:Lcom/applovin/impl/mediation/d/e;

    invoke-static {v0}, Lcom/applovin/impl/mediation/d/e;->l(Lcom/applovin/impl/mediation/d/e;)V

    return-void
.end method

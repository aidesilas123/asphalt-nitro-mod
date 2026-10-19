###### Class com.applovin.impl.mediation.d.i (com.applovin.impl.mediation.d.i)
.class public final synthetic Lcom/applovin/impl/mediation/d/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/d/a;

.field public final synthetic b:Lcom/applovin/impl/mediation/b/f;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/d/a;Lcom/applovin/impl/mediation/b/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/d/i;->a:Lcom/applovin/impl/mediation/d/a;

    iput-object p2, p0, Lcom/applovin/impl/mediation/d/i;->b:Lcom/applovin/impl/mediation/b/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/d/i;->a:Lcom/applovin/impl/mediation/d/a;

    iget-object v1, p0, Lcom/applovin/impl/mediation/d/i;->b:Lcom/applovin/impl/mediation/b/f;

    invoke-static {v0, v1}, Lcom/applovin/impl/mediation/d/a;->a(Lcom/applovin/impl/mediation/d/a;Lcom/applovin/impl/mediation/b/f;)V

    return-void
.end method

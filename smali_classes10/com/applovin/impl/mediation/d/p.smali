###### Class com.applovin.impl.mediation.d.p (com.applovin.impl.mediation.d.p)
.class public final synthetic Lcom/applovin/impl/mediation/d/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/d/f;

.field public final synthetic b:Lcom/applovin/impl/mediation/MaxErrorImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/d/f;Lcom/applovin/impl/mediation/MaxErrorImpl;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/d/p;->a:Lcom/applovin/impl/mediation/d/f;

    iput-object p2, p0, Lcom/applovin/impl/mediation/d/p;->b:Lcom/applovin/impl/mediation/MaxErrorImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/d/p;->a:Lcom/applovin/impl/mediation/d/f;

    iget-object v1, p0, Lcom/applovin/impl/mediation/d/p;->b:Lcom/applovin/impl/mediation/MaxErrorImpl;

    invoke-static {v0, v1}, Lcom/applovin/impl/mediation/d/f;->j(Lcom/applovin/impl/mediation/d/f;Lcom/applovin/impl/mediation/MaxErrorImpl;)V

    return-void
.end method

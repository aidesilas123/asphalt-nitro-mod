###### Class com.applovin.impl.mediation.d.j (com.applovin.impl.mediation.d.j)
.class public final synthetic Lcom/applovin/impl/mediation/d/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/d/b;

.field public final synthetic b:Lcom/applovin/impl/mediation/b/h;

.field public final synthetic c:Lcom/applovin/impl/mediation/b/g$a;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/d/b;Lcom/applovin/impl/mediation/b/h;Lcom/applovin/impl/mediation/b/g$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/d/j;->a:Lcom/applovin/impl/mediation/d/b;

    iput-object p2, p0, Lcom/applovin/impl/mediation/d/j;->b:Lcom/applovin/impl/mediation/b/h;

    iput-object p3, p0, Lcom/applovin/impl/mediation/d/j;->c:Lcom/applovin/impl/mediation/b/g$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/d/j;->a:Lcom/applovin/impl/mediation/d/b;

    iget-object v1, p0, Lcom/applovin/impl/mediation/d/j;->b:Lcom/applovin/impl/mediation/b/h;

    iget-object v2, p0, Lcom/applovin/impl/mediation/d/j;->c:Lcom/applovin/impl/mediation/b/g$a;

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/mediation/d/b;->d(Lcom/applovin/impl/mediation/d/b;Lcom/applovin/impl/mediation/b/h;Lcom/applovin/impl/mediation/b/g$a;)V

    return-void
.end method

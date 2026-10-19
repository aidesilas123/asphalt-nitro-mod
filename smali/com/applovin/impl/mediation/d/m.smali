###### Class com.applovin.impl.mediation.d.m (com.applovin.impl.mediation.d.m)
.class public final synthetic Lcom/applovin/impl/mediation/d/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/d/e$a$1;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/d/e$a$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/d/m;->a:Lcom/applovin/impl/mediation/d/e$a$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/d/m;->a:Lcom/applovin/impl/mediation/d/e$a$1;

    invoke-static {v0}, Lcom/applovin/impl/mediation/d/e$a$1;->a(Lcom/applovin/impl/mediation/d/e$a$1;)V

    return-void
.end method

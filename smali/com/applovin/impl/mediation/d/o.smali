###### Class com.applovin.impl.mediation.d.o (com.applovin.impl.mediation.d.o)
.class public final synthetic Lcom/applovin/impl/mediation/d/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/d/f;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/d/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/d/o;->a:Lcom/applovin/impl/mediation/d/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/d/o;->a:Lcom/applovin/impl/mediation/d/f;

    invoke-static {v0}, Lcom/applovin/impl/mediation/d/f;->i(Lcom/applovin/impl/mediation/d/f;)V

    return-void
.end method

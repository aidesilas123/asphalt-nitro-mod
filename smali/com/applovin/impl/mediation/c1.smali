###### Class com.applovin.impl.mediation.c1 (com.applovin.impl.mediation.c1)
.class public final synthetic Lcom/applovin/impl/mediation/c1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/g;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/c1;->a:Lcom/applovin/impl/mediation/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/c1;->a:Lcom/applovin/impl/mediation/g;

    invoke-static {v0}, Lcom/applovin/impl/mediation/g;->C(Lcom/applovin/impl/mediation/g;)V

    return-void
.end method

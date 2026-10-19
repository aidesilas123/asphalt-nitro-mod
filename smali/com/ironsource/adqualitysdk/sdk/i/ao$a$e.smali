###### Class com.ironsource.adqualitysdk.sdk.i.ao.a.e (com.ironsource.adqualitysdk.sdk.i.ao$a$e)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ao$a$e;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/ao$a;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ao$a;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/ao$a;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/ao$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->ﻐ(Z)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/ao$a;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->c(Lcom/ironsource/adqualitysdk/sdk/i/ao$a;)Lcom/ironsource/adqualitysdk/sdk/i/aq;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/ao$a;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->c(Lcom/ironsource/adqualitysdk/sdk/i/ao$a;)Lcom/ironsource/adqualitysdk/sdk/i/aq;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/adqualitysdk/sdk/i/aq;->ﻛ()V

    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/ao$a;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->k(Lcom/ironsource/adqualitysdk/sdk/i/ao$a;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/aq;

    invoke-interface {v1}, Lcom/ironsource/adqualitysdk/sdk/i/aq;->ﻛ()V

    goto :goto_26

    :cond_36
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/ao$a;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->k(Lcom/ironsource/adqualitysdk/sdk/i/ao$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/ao$a;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->i(Lcom/ironsource/adqualitysdk/sdk/i/ao$a;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/aq;

    invoke-interface {v1}, Lcom/ironsource/adqualitysdk/sdk/i/aq;->ﻛ()V

    goto :goto_4e

    :cond_5e
    return-void
.end method

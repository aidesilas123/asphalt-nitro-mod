###### Class com.json.db (com.ironsource.db)
.class public Lcom/ironsource/db;
.super Lcom/ironsource/x;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/va;->b()V

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 3

    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/va;->b(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;Z)V
    .registers 3

    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/va;->d(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 4

    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/va;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 4

    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/va;->a(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void
.end method

.method public a(ZLcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 4

    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/va;->a(ZLcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void
.end method

.method public b()V
    .registers 2

    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/va;->c()V

    return-void
.end method

.method public b(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 4

    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/va;->b(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void
.end method

.method public d(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 3

    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/va;->c(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void
.end method

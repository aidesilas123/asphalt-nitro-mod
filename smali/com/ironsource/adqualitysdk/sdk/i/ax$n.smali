###### Class com.ironsource.adqualitysdk.sdk.i.ax.n (com.ironsource.adqualitysdk.sdk.i.ax$n)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ax$n;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ax;->ﻐ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/ax;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ax;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$n;->d:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$n;->d:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->p(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﾒ()V

    goto :goto_a

    :cond_1a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$n;->d:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->V(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$n;->d:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->u(Lcom/ironsource/adqualitysdk/sdk/i/ax;Ljava/util/List;)Ljava/util/List;

    return-void
.end method

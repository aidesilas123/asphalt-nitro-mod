###### Class com.ironsource.adqualitysdk.sdk.i.ax.g (com.ironsource.adqualitysdk.sdk.i.ax$g)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ax$g;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ax;->q(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/ax;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ax;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$g;->e:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$g;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$g;->e:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻛ()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->L(Lcom/ironsource/adqualitysdk/sdk/i/ax;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$g;->e:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$g;->d:Landroid/content/Context;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->g()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ax$g$b;

    invoke-direct {v3, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax$g$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ax$g;)V

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->Q(Lcom/ironsource/adqualitysdk/sdk/i/ax;Landroid/content/Context;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ax$g$a;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax$g$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ax$g;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/aq;)V

    return-void
.end method

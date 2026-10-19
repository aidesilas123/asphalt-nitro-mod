###### Class com.ironsource.adqualitysdk.sdk.i.ax.g.b (com.ironsource.adqualitysdk.sdk.i.ax$g$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ax$g$b;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ax$g;->ﻛ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/ax$g;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ax$g;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$g$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/ax$g;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$g$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/ax$g;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$g;->e:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->C(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$g$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/ax$g;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$g;->e:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->e(Lcom/ironsource/adqualitysdk/sdk/i/ax;)V

    :cond_11
    return-void
.end method

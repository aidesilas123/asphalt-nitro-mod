###### Class com.ironsource.adqualitysdk.sdk.i.ax.c.a (com.ironsource.adqualitysdk.sdk.i.ax$c$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ax$c$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ax$c;->ﻛ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/ax$c;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ax$c;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$c$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/ax$c;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$c$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/ax$c;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$c;->d:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->C(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$c$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/ax$c;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$c;->d:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->e(Lcom/ironsource/adqualitysdk/sdk/i/ax;)V

    return-void

    :cond_12
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$c$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/ax$c;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$c;->d:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->g(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Z

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.ao.a.b (com.ironsource.adqualitysdk.sdk.i.ao$a$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ao$a$b;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/aq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/aq;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/ao$a;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ao$a;Lcom/ironsource/adqualitysdk/sdk/i/aq;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/ao$a;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/aq;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/ao$a;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/aq;

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->j(Lcom/ironsource/adqualitysdk/sdk/i/ao$a;Lcom/ironsource/adqualitysdk/sdk/i/aq;)Lcom/ironsource/adqualitysdk/sdk/i/aq;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/ao$a;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﺙ()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/aq;

    invoke-interface {v0}, Lcom/ironsource/adqualitysdk/sdk/i/aq;->ﻛ()V

    :cond_14
    return-void
.end method

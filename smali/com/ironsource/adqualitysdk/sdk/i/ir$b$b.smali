###### Class com.ironsource.adqualitysdk.sdk.i.ir.b.C0346b (com.ironsource.adqualitysdk.sdk.i.ir$b$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ir$b$b;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ir$b;->a(Lcom/ironsource/adqualitysdk/sdk/i/is;Lcom/ironsource/adqualitysdk/sdk/i/ir$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/is;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/ip;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/is;Lcom/ironsource/adqualitysdk/sdk/i/ip;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ir$b$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/is;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ir$b$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/ip;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ir$b$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/is;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ir$b$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/ip;

    invoke-interface {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/is;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ip;)V

    return-void
.end method

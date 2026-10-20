###### Class com.ironsource.adqualitysdk.sdk.i.iq.b (com.ironsource.adqualitysdk.sdk.i.iq$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iq$b;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iq;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/iw;Lcom/ironsource/adqualitysdk/sdk/i/ih;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/iw;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/ih;

.field private synthetic f:Lcom/ironsource/adqualitysdk/sdk/i/iq;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iq;Lcom/ironsource/adqualitysdk/sdk/i/iw;Lcom/ironsource/adqualitysdk/sdk/i/ih;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$b;->f:Lcom/ironsource/adqualitysdk/sdk/i/iq;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/iw;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/ih;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$b;->f:Lcom/ironsource/adqualitysdk/sdk/i/iq;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/iw;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/ih;

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/iq;->f(Lcom/ironsource/adqualitysdk/sdk/i/iq;Lcom/ironsource/adqualitysdk/sdk/i/iw;Lcom/ironsource/adqualitysdk/sdk/i/ih;)V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.iq.c.a.b (com.ironsource.adqualitysdk.sdk.i.iq$c$a$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/in;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->c(Lcom/ironsource/adqualitysdk/sdk/i/iw;Lcom/ironsource/adqualitysdk/sdk/i/ih;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/iw;

.field private synthetic b:Lcom/ironsource/adqualitysdk/sdk/i/ih;

.field private synthetic c:Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;Lcom/ironsource/adqualitysdk/sdk/i/iw;Lcom/ironsource/adqualitysdk/sdk/i/ih;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a$b;->c:Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/iw;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a$b;->b:Lcom/ironsource/adqualitysdk/sdk/i/ih;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾇ()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a$b;->c:Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/iq$c;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c;->e:Lcom/ironsource/adqualitysdk/sdk/i/iq;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iq;->d(Lcom/ironsource/adqualitysdk/sdk/i/iq;)Lcom/ironsource/adqualitysdk/sdk/i/ir;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ir;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/iu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/in;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a$b;->c:Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/iq$c;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c;->e:Lcom/ironsource/adqualitysdk/sdk/i/iq;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/iw;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a$b;->b:Lcom/ironsource/adqualitysdk/sdk/i/ih;

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/iq;->f(Lcom/ironsource/adqualitysdk/sdk/i/iq;Lcom/ironsource/adqualitysdk/sdk/i/iw;Lcom/ironsource/adqualitysdk/sdk/i/ih;)V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.ag.a.C0333a.b (com.ironsource.adqualitysdk.sdk.i.ag$a$a$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$b;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ip;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/ip;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;Lcom/ironsource/adqualitysdk/sdk/i/ip;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/ip;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/ag$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a;->c:Lcom/ironsource/adqualitysdk/sdk/i/is;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/ip;

    invoke-interface {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/is;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ip;)V

    return-void
.end method

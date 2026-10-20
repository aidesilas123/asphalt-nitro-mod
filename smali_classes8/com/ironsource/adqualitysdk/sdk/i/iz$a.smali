###### Class com.ironsource.adqualitysdk.sdk.i.iz.a (com.ironsource.adqualitysdk.sdk.i.iz$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iz$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iz;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/iv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/iv;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/iz;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iz;Lcom/ironsource/adqualitysdk/sdk/i/iv;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/iz;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iv;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/iz;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iz;->g(Lcom/ironsource/adqualitysdk/sdk/i/iz;)Lcom/ironsource/adqualitysdk/sdk/i/ix;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/iz;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iv;

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/iz;->i(Lcom/ironsource/adqualitysdk/sdk/i/iz;Lcom/ironsource/adqualitysdk/sdk/i/iv;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ix;->ﻐ(Ljava/lang/String;)V

    return-void
.end method

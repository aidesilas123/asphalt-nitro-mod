###### Class com.ironsource.adqualitysdk.sdk.i.iz.f.a (com.ironsource.adqualitysdk.sdk.i.iz$f$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iz$f$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iz$f;->ﻐ(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/iz$f;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iz$f;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$f$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iz$f;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$f$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iz$f;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/iz$f;->i:Lcom/ironsource/adqualitysdk/sdk/i/iz$c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iz$c;->ﻛ(Ljava/util/List;)V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.iz.f.b (com.ironsource.adqualitysdk.sdk.i.iz$f$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iz$f$b;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iz$f;->ﻛ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Ljava/util/List;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/iz$f;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iz$f;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$f$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/iz$f;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$f$b;->d:Ljava/util/List;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$f$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/iz$f;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/iz$f;->i:Lcom/ironsource/adqualitysdk/sdk/i/iz$c;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$f$b;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iz$c;->ﻛ(Ljava/util/List;)V

    return-void
.end method

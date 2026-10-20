###### Class com.ironsource.adqualitysdk.sdk.i.da.a (com.ironsource.adqualitysdk.sdk.i.da$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/da$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/da;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/dr;)Lcom/ironsource/adqualitysdk/sdk/i/il;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Ljava/util/List;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/dn;

.field private synthetic f:Lcom/ironsource/adqualitysdk/sdk/i/dr;

.field private synthetic g:Lcom/ironsource/adqualitysdk/sdk/i/cj;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/dn;Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/da$a;->d:Ljava/util/List;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/da$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/dn;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/da$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/da$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/da$a;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/da$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/dn;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/da$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/da$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/da$a;->d:Ljava/util/List;

    invoke-virtual {v0, v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dn;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/da$a;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

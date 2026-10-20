###### Class com.ironsource.adqualitysdk.sdk.i.cj.p (com.ironsource.adqualitysdk.sdk.i.cj$p)
.class final Lcom/ironsource/adqualitysdk/sdk/i/cj$p;
.super Lcom/ironsource/adqualitysdk/sdk/i/ig;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/cj;->n(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Ljava/util/List;

.field private synthetic f:Lcom/ironsource/adqualitysdk/sdk/i/cj;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$p;->f:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$p;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$p;->e:Ljava/util/List;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ig;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$p;->f:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$p;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$p;->e:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v3, v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->K(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/lang/String;ZZLjava/util/List;)V

    return-void
.end method

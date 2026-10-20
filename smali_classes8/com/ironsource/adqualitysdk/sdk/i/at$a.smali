###### Class com.ironsource.adqualitysdk.sdk.i.at.a (com.ironsource.adqualitysdk.sdk.i.at$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/at$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/at;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/at;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/at$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/at;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/at$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/at;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/at;->b(Lcom/ironsource/adqualitysdk/sdk/i/at;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/at$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/at;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/at;->c(Lcom/ironsource/adqualitysdk/sdk/i/at;Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method

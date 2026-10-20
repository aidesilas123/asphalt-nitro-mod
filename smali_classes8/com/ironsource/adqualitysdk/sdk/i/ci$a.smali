###### Class com.ironsource.adqualitysdk.sdk.i.ci.a (com.ironsource.adqualitysdk.sdk.i.ci$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ci$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﾒ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/ci;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ci;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ci$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ci$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->c(Lcom/ironsource/adqualitysdk/sdk/i/ci;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

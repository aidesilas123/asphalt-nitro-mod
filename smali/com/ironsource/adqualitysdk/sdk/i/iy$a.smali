###### Class com.ironsource.adqualitysdk.sdk.i.iy.a (com.ironsource.adqualitysdk.sdk.i.iy$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iy$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iy;->ﾇ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/iy;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iy;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->g(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Lcom/ironsource/adqualitysdk/sdk/i/je;

    move-result-object v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iy$a;)V

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->i(Lcom/ironsource/adqualitysdk/sdk/i/iy;Lcom/ironsource/adqualitysdk/sdk/i/je;)Lcom/ironsource/adqualitysdk/sdk/i/je;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->d(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iy$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_20
    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.iy.a.C0348a (com.ironsource.adqualitysdk.sdk.i.iy$a$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iy$a;->ﻛ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/iy$a;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iy$a;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy$a;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/jb;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy$a;

    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/iy$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->g(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Lcom/ironsource/adqualitysdk/sdk/i/je;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/jc;)V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a$a;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    return-void
.end method

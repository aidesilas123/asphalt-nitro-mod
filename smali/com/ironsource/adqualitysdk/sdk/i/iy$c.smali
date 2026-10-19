###### Class com.ironsource.adqualitysdk.sdk.i.iy.c (com.ironsource.adqualitysdk.sdk.i.iy$c)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iy$c;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iy;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ij;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/ij;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/iy;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iy;Lcom/ironsource/adqualitysdk/sdk/i/ij;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$c;->e:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$c;->d:Lcom/ironsource/adqualitysdk/sdk/i/ij;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$c;->e:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->f(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$c;->d:Lcom/ironsource/adqualitysdk/sdk/i/ij;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$c;->e:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->j(Lcom/ironsource/adqualitysdk/sdk/i/iy;)V

    return-void
.end method

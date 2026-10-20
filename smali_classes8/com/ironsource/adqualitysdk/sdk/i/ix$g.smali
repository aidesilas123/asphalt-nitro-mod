###### Class com.ironsource.adqualitysdk.sdk.i.ix.g (com.ironsource.adqualitysdk.sdk.i.ix$g)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ix$g;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ix;->ｋ(Ljava/lang/String;JLcom/ironsource/adqualitysdk/sdk/i/ix$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Ljava/lang/String;

.field private synthetic e:J

.field final synthetic f:Lcom/ironsource/adqualitysdk/sdk/i/ix$e;

.field private synthetic g:Lcom/ironsource/adqualitysdk/sdk/i/ix;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ix;Ljava/lang/String;JLcom/ironsource/adqualitysdk/sdk/i/ix$e;)V
    .registers 6

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$g;->g:Lcom/ironsource/adqualitysdk/sdk/i/ix;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$g;->d:Ljava/lang/String;

    iput-wide p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$g;->e:J

    iput-object p5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$g;->f:Lcom/ironsource/adqualitysdk/sdk/i/ix$e;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$g;->g:Lcom/ironsource/adqualitysdk/sdk/i/ix;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$g;->d:Ljava/lang/String;

    iget-wide v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$g;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ix;->ﻛ(Ljava/lang/String;J)Z

    move-result v0

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ix$g$a;

    invoke-direct {v1, p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ix$g$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ix$g;Z)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.ix.f (com.ironsource.adqualitysdk.sdk.i.ix$f)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ix$f;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ix;->ﾇ(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ix$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Ljava/lang/String;

.field private synthetic f:Lcom/ironsource/adqualitysdk/sdk/i/ix$d;

.field private synthetic g:Lcom/ironsource/adqualitysdk/sdk/i/ix;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ix;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ix$d;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$f;->g:Lcom/ironsource/adqualitysdk/sdk/i/ix;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$f;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$f;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$f;->f:Lcom/ironsource/adqualitysdk/sdk/i/ix$d;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$f;->g:Lcom/ironsource/adqualitysdk/sdk/i/ix;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$f;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ix;->ﻐ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$f;->g:Lcom/ironsource/adqualitysdk/sdk/i/ix;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$f;->f:Lcom/ironsource/adqualitysdk/sdk/i/ix$d;

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ix;->b(Lcom/ironsource/adqualitysdk/sdk/i/ix;Lcom/ironsource/adqualitysdk/sdk/i/ix$d;)V

    return-void
.end method

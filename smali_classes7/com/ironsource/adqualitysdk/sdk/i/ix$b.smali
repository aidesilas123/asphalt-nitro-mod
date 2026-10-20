###### Class com.ironsource.adqualitysdk.sdk.i.ix.b (com.ironsource.adqualitysdk.sdk.i.ix$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ix$b;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ix;->ﻛ(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ix$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/ix$a;

.field private synthetic f:Lcom/ironsource/adqualitysdk/sdk/i/ix;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ix;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ix$a;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$b;->f:Lcom/ironsource/adqualitysdk/sdk/i/ix;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$b;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/ix$a;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$b;->f:Lcom/ironsource/adqualitysdk/sdk/i/ix;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ix;->ﾇ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ix$b$a;

    invoke-direct {v1, p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ix$b$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ix$b;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.ix.b.a (com.ironsource.adqualitysdk.sdk.i.ix$b$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ix$b$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ix$b;->ﻛ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/ix$b;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ix$b;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$b$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/ix$b;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$b$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$b$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/ix$b;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ix$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/ix$a;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ix$b$a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ix$a;->ﻐ(Ljava/lang/String;)V

    return-void
.end method

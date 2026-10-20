###### Class com.ironsource.adqualitysdk.sdk.i.iz.e.a (com.ironsource.adqualitysdk.sdk.i.iz$e$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iz$e$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iz$e;->ﻛ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:I

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/iz$e;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iz$e;I)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$e$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/iz$e;

    iput p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$e$a;->d:I

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$e$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/iz$e;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/iz$e;->h:Lcom/ironsource/adqualitysdk/sdk/i/iz$d;

    iget v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$e$a;->d:I

    invoke-interface {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iz$d;->ﾒ(I)V

    return-void
.end method

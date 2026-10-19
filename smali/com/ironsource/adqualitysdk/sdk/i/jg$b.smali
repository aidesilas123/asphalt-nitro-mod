###### Class com.ironsource.adqualitysdk.sdk.i.jg.b (com.ironsource.adqualitysdk.sdk.i.jg$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/jg$b;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/jg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Landroid/app/Activity;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/jg;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/jg;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/jg;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg$b;->d:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/jg;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jg;->d(Lcom/ironsource/adqualitysdk/sdk/i/jg;)Z

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/jg;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jg;->a(Lcom/ironsource/adqualitysdk/sdk/i/jg;)Lcom/ironsource/adqualitysdk/sdk/i/jf;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/jg;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jg;->a(Lcom/ironsource/adqualitysdk/sdk/i/jg;)Lcom/ironsource/adqualitysdk/sdk/i/jf;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jg$b;->d:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jf;->ｋ(Landroid/app/Activity;)V

    :cond_18
    return-void
.end method

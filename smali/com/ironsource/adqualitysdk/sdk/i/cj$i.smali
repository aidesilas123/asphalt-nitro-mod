###### Class com.ironsource.adqualitysdk.sdk.i.cj.i (com.ironsource.adqualitysdk.sdk.i.cj$i)
.class final Lcom/ironsource/adqualitysdk/sdk/i/cj$i;
.super Lcom/ironsource/adqualitysdk/sdk/i/je;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/cj;->b()Lcom/ironsource/adqualitysdk/sdk/i/je;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/cj;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/cj;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$i;->a:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/je;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$i;->a:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->Ḽ:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->u(Lcom/ironsource/adqualitysdk/sdk/i/cj;Landroid/app/Activity;Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﾇ(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$i;->a:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->Ῡ:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->u(Lcom/ironsource/adqualitysdk/sdk/i/cj;Landroid/app/Activity;Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﾇ(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.id.a (com.ironsource.adqualitysdk.sdk.i.id$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/id$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/id;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/id;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/id;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/id$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/id;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_9
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/id$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/id;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/id;->c(Lcom/ironsource/adqualitysdk/sdk/i/id;)V

    return-void
.end method

###### Class com.gameloft.ingamebrowser.InGameBrowser.c (com.gameloft.ingamebrowser.InGameBrowser$c)
.class Lcom/gameloft/ingamebrowser/InGameBrowser$c;
.super Ljava/lang/Thread;
.source "InGameBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/ingamebrowser/InGameBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/ingamebrowser/InGameBrowser;


# direct methods
.method constructor <init>(Lcom/gameloft/ingamebrowser/InGameBrowser;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$c;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :goto_0
    sget-boolean v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->B:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$c;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    const v1, 0x1000010

    invoke-static {v0, v1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$500(Lcom/gameloft/ingamebrowser/InGameBrowser;I)Landroid/view/InputDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$402(Lcom/gameloft/ingamebrowser/InGameBrowser;Landroid/view/InputDevice;)Landroid/view/InputDevice;

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$c;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    new-instance v1, Lcom/gameloft/ingamebrowser/InGameBrowser$c$a;

    invoke-direct {v1, p0}, Lcom/gameloft/ingamebrowser/InGameBrowser$c$a;-><init>(Lcom/gameloft/ingamebrowser/InGameBrowser$c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x2710

    :try_start_1c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_0

    :catch_20
    nop

    goto :goto_0

    :cond_22
    return-void
.end method

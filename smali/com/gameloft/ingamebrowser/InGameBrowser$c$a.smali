###### Class com.gameloft.ingamebrowser.InGameBrowser.c.a (com.gameloft.ingamebrowser.InGameBrowser$c$a)
.class Lcom/gameloft/ingamebrowser/InGameBrowser$c$a;
.super Ljava/lang/Object;
.source "InGameBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/ingamebrowser/InGameBrowser$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/ingamebrowser/InGameBrowser$c;


# direct methods
.method constructor <init>(Lcom/gameloft/ingamebrowser/InGameBrowser$c;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$c$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$c$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$c;

    iget-object v0, v0, Lcom/gameloft/ingamebrowser/InGameBrowser$c;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$600(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/widget/AbsoluteLayout;

    move-result-object v0

    if-eqz v0, :cond_23

    :try_start_a
    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$c$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$c;

    iget-object v0, v0, Lcom/gameloft/ingamebrowser/InGameBrowser$c;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$600(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/widget/AbsoluteLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$c$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$c;

    iget-object v1, v1, Lcom/gameloft/ingamebrowser/InGameBrowser$c;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$400(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x0

    goto :goto_20

    :cond_1e
    const/16 v1, 0x8

    :goto_20
    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_23} :catch_23

    :catch_23
    :cond_23
    return-void
.end method

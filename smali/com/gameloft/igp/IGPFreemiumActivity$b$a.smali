###### Class com.gameloft.igp.IGPFreemiumActivity.b.a (com.gameloft.igp.IGPFreemiumActivity$b$a)
.class Lcom/gameloft/igp/IGPFreemiumActivity$b$a;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/igp/IGPFreemiumActivity$b;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity$b;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$b$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$b$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity$b;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$b;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$200(Lcom/gameloft/igp/IGPFreemiumActivity;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$b$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity$b;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$b;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;

    move-result-object v0

    if-eqz v0, :cond_21

    :try_start_14
    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$b$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity$b;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$b;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    nop

    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$b$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity$b;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$b;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$000(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$b$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity$b;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$b;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$000(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$b$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity$b;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$b;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$000(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$b$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity$b;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$b;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$000(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:onResume()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_4e
    return-void
.end method

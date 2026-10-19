###### Class com.gameloft.igp.IGPFreemiumActivity.a (com.gameloft.igp.IGPFreemiumActivity$a)
.class Lcom/gameloft/igp/IGPFreemiumActivity$a;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/igp/IGPFreemiumActivity;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$100(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$000(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$000(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$000(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$002(Lcom/gameloft/igp/IGPFreemiumActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_27

    :catch_27
    return-void
.end method

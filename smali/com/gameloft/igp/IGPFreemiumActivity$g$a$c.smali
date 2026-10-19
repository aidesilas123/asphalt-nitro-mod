###### Class com.gameloft.igp.IGPFreemiumActivity.g.a.c (com.gameloft.igp.IGPFreemiumActivity$g$a$c)
.class Lcom/gameloft/igp/IGPFreemiumActivity$g$a$c;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity$g$a;Landroid/app/ProgressDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$c;->b:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iput-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$c;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$c;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$c;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_d
    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$c;->b:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$202(Lcom/gameloft/igp/IGPFreemiumActivity;Z)Z

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$c;->b:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$100(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$c;->b:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$000(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$c;->b:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object v1, v1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

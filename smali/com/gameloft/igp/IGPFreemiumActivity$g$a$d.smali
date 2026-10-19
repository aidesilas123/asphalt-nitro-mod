###### Class com.gameloft.igp.IGPFreemiumActivity.g.a.d (com.gameloft.igp.IGPFreemiumActivity$g$a$d)
.class Lcom/gameloft/igp/IGPFreemiumActivity$g$a$d;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity$g$a;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$d;->a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_59

    iget-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$d;->a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p2, p2, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p2, p2, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p2, p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$202(Lcom/gameloft/igp/IGPFreemiumActivity;Z)Z

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$d;->a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$100(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$d;->a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$d;->a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$302(Lcom/gameloft/igp/IGPFreemiumActivity;Landroid/widget/VideoView;)Landroid/widget/VideoView;

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$d;->a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$000(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "javascript:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$d;->a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p3, p3, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "()"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    :cond_59
    return p1
.end method

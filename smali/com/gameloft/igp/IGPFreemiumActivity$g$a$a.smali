###### Class com.gameloft.igp.IGPFreemiumActivity.g.a.C0218a (com.gameloft.igp.IGPFreemiumActivity$g$a$a)
.class Lcom/gameloft/igp/IGPFreemiumActivity$g$a$a;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$a;->b:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iput-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$a;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 2

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_d
    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$a;->b:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    return-void
.end method

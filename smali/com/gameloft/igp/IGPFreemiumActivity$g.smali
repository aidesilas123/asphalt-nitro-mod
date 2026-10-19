###### Class com.gameloft.igp.IGPFreemiumActivity.g (com.gameloft.igp.IGPFreemiumActivity$g)
.class Lcom/gameloft/igp/IGPFreemiumActivity$g;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/igp/IGPFreemiumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/gameloft/igp/IGPFreemiumActivity;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 4

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->b:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public checkBackPressed(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_11

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$902(Lcom/gameloft/igp/IGPFreemiumActivity;Z)Z

    return-void

    :cond_11
    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$902(Lcom/gameloft/igp/IGPFreemiumActivity;Z)Z

    return-void
.end method

.method public playVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$200(Lcom/gameloft/igp/IGPFreemiumActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0, p4}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$500(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object p4, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    new-instance v0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity$g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {p4, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

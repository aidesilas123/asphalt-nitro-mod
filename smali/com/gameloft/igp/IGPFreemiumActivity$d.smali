###### Class com.gameloft.igp.IGPFreemiumActivity.d (com.gameloft.igp.IGPFreemiumActivity$d)
.class Lcom/gameloft/igp/IGPFreemiumActivity$d;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity;->o(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/gameloft/igp/IGPFreemiumActivity;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$d;->b:Lcom/gameloft/igp/IGPFreemiumActivity;

    iput-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$d;->b:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1100(Lcom/gameloft/igp/IGPFreemiumActivity;)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$d;->b:Lcom/gameloft/igp/IGPFreemiumActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$d;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1902(Lcom/gameloft/igp/IGPFreemiumActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$d;->b:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1900(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1b

    :catch_1b
    return-void
.end method

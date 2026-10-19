###### Class com.gameloft.igp.IGPFreemiumActivity.e (com.gameloft.igp.IGPFreemiumActivity$e)
.class Lcom/gameloft/igp/IGPFreemiumActivity$e;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity;->f()V
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

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$e;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$e;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1900(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$e;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1900(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_11
    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$e;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1902(Lcom/gameloft/igp/IGPFreemiumActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1a

    :catch_1a
    return-void
.end method

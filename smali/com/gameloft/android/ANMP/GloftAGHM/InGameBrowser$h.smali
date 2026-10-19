###### Class com.gameloft.android.ANMP.GloftAGHM.InGameBrowser.h (com.gameloft.android.ANMP.GloftAGHM.InGameBrowser$h)
.class Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$h;
.super Ljava/lang/Object;
.source "InGameBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$h;->a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$h;->a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->access$2300(Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$h;->a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->access$2300(Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_11
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$h;->a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->access$2302(Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1a

    :catch_1a
    return-void
.end method

###### Class com.gameloft.android.ANMP.GloftAGHM.PopUpsManager.a (com.gameloft.android.ANMP.GloftAGHM.PopUpsManager$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;
.super Ljava/lang/Object;
.source "PopUpsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->l(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;ZLjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    iput-boolean p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->a:Z

    iput-object p3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->a:Z

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-static {v2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->access$100(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->access$002(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_64

    :cond_4d
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->access$002(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_64
    :goto_64
    return-void
.end method

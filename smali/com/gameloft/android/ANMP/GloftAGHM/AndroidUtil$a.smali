###### Class com.gameloft.android.ANMP.GloftAGHM.AndroidUtil.a (com.gameloft.android.ANMP.GloftAGHM.AndroidUtil$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/AndroidUtil$a;
.super Ljava/lang/Object;
.source "AndroidUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/AndroidUtil;->ShowAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/AndroidUtil$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/AndroidUtil$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/AndroidUtil$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/AndroidUtil$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/AndroidUtil$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/AndroidUtil$a;->c:Ljava/lang/String;

    new-instance v2, Lcom/gameloft/android/ANMP/GloftAGHM/AndroidUtil$a$a;

    invoke-direct {v2, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/AndroidUtil$a$a;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/AndroidUtil$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/AndroidUtil;->access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    monitor-enter p0

    :try_start_2d
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_32
    move-exception v0

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_32

    throw v0
.end method

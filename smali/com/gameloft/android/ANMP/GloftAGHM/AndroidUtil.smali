###### Class com.gameloft.android.ANMP.GloftAGHM.AndroidUtil (com.gameloft.android.ANMP.GloftAGHM.AndroidUtil)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/AndroidUtil;
.super Ljava/lang/Object;
.source "AndroidUtil.java"

# interfaces
.implements Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;


# static fields
.field private static a:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetDeviceRegion()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->retrieveDeviceRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static IsAlertVisible()Z
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/AndroidUtil;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static ShowAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/AndroidUtil$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/AndroidUtil$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_12

    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    :catch_10
    :try_start_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_12

    throw p0
.end method

.method static synthetic access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 1

    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/AndroidUtil;->a:Landroid/app/AlertDialog;

    return-object p0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public onPluginStart(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 3

    return-void
.end method

.method public onPostNativePause()V
    .registers 1

    return-void
.end method

.method public onPostNativeResume()V
    .registers 1

    return-void
.end method

.method public onPreNativePause()V
    .registers 1

    return-void
.end method

.method public onPreNativeResume()V
    .registers 1

    return-void
.end method

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

###### Class com.gameloft.android.ANMP.GloftAGHM.AndroidUtil.a.DialogInterfaceOnClickListenerC0209a (com.gameloft.android.ANMP.GloftAGHM.AndroidUtil$a$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/AndroidUtil$a$a;
.super Ljava/lang/Object;
.source "AndroidUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/AndroidUtil$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android/ANMP/GloftAGHM/AndroidUtil$a;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/AndroidUtil$a;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/AndroidUtil$a$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/AndroidUtil$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/AndroidUtil;->access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method

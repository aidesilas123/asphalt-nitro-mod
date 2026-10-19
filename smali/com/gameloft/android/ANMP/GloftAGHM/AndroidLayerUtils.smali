###### Class com.gameloft.android.ANMP.GloftAGHM.AndroidLayerUtils (com.gameloft.android.ANMP.GloftAGHM.AndroidLayerUtils)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/AndroidLayerUtils;
.super Ljava/lang/Object;
.source "AndroidLayerUtils.java"

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

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/AndroidLayerUtils;->a:Landroid/app/AlertDialog;

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

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/AndroidLayerUtils$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/AndroidLayerUtils$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/AndroidLayerUtils;->a:Landroid/app/AlertDialog;

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

    check-cast p2, Landroid/widget/RelativeLayout;

    invoke-static {p1, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->InitBridgeLibrary(Landroid/app/Activity;Landroid/widget/RelativeLayout;)V

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

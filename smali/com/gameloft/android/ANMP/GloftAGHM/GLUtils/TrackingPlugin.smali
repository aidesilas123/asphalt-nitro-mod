###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.TrackingPlugin (com.gameloft.android.ANMP.GloftAGHM.GLUtils.TrackingPlugin)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TrackingPlugin;
.super Ljava/lang/Object;
.source "TrackingPlugin.java"

# interfaces
.implements Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public onPluginStart(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 3

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->init()V

    return-void
.end method

.method public onPostNativePause()V
    .registers 1

    return-void
.end method

.method public onPostNativeResume()V
    .registers 2

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->setFlag(I)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->onLaunchGame(I)V

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

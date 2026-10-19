###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.GoogleAdIdPlugin (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.GoogleAdIdPlugin)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/GoogleAdIdPlugin;
.super Ljava/lang/Object;
.source "GoogleAdIdPlugin.java"

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

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->resetGoogleAdIdStatus()V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->initGoogleAdId()V

    return-void
.end method

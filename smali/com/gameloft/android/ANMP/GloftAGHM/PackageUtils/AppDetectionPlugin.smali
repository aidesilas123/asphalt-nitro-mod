###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.AppDetectionPlugin (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.AppDetectionPlugin)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AppDetectionPlugin;
.super Ljava/lang/Object;
.source "AppDetectionPlugin.java"

# interfaces
.implements Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;


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


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public onPluginStart(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 3

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/AppDetection;->init(Landroid/content/Context;)V

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

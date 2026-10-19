###### Class com.gameloft.adsmanager.AdsManagerPlugin (com.gameloft.adsmanager.AdsManagerPlugin)
.class public Lcom/gameloft/adsmanager/AdsManagerPlugin;
.super Ljava/lang/Object;
.source "AdsManagerPlugin.java"

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

    invoke-static {p1, p2}, Lcom/gameloft/adsmanager/AdsManager;->Init(Landroid/app/Activity;Landroid/view/ViewGroup;)V

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

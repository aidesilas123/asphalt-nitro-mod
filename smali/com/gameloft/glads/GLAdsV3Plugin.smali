###### Class com.gameloft.glads.GLAdsV3Plugin (com.gameloft.glads.GLAdsV3Plugin)
.class public Lcom/gameloft/glads/GLAdsV3Plugin;
.super Ljava/lang/Object;
.source "GLAdsV3Plugin.java"

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

    invoke-static {p1, p2, p3}, Lcom/gameloft/glads/GLAdsV3;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onPluginStart(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/gameloft/glads/GLAdsV3;->Initialize(Landroid/app/Activity;Landroid/view/ViewGroup;)V

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

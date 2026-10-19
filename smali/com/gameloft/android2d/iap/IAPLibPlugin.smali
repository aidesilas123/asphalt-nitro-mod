###### Class com.gameloft.android2d.iap.IAPLibPlugin (com.gameloft.android2d.iap.IAPLibPlugin)
.class public Lcom/gameloft/android2d/iap/IAPLibPlugin;
.super Ljava/lang/Object;
.source "IAPLibPlugin.java"

# interfaces
.implements Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android2d/iap/IAPLibPlugin;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/gameloft/android2d/iap/IAPLib;->handleActivityResult(IILandroid/content/Intent;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public onPluginStart(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLibPlugin;->a:Landroid/app/Activity;

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

###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.VirtualKeyboardPlugin (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.VirtualKeyboardPlugin)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/VirtualKeyboardPlugin;
.super Ljava/lang/Object;
.source "VirtualKeyboardPlugin.java"

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
    .registers 4

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    invoke-direct {v0, p1, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

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
    .registers 2

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->HideKeyboard()V

    :cond_9
    return-void
.end method

.method public onPreNativeResume()V
    .registers 1

    return-void
.end method

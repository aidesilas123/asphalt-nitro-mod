###### Class com.gameloft.GLSocialLib.SocialPlugin (com.gameloft.GLSocialLib.SocialPlugin)
.class public Lcom/gameloft/GLSocialLib/SocialPlugin;
.super Ljava/lang/Object;
.source "SocialPlugin.java"

# interfaces
.implements Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;


# instance fields
.field private a:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;

.field private b:Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/GLSocialLib/SocialPlugin;->a:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;

    iput-object v0, p0, Lcom/gameloft/GLSocialLib/SocialPlugin;->b:Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 6

    const/4 v0, 0x1

    const v1, 0xface

    if-eq p1, v1, :cond_40

    const v1, 0xfacf

    if-eq p1, v1, :cond_40

    const v1, 0xfad2

    if-eq p1, v1, :cond_40

    const v1, 0xfad1

    if-ne p1, v1, :cond_16

    goto :goto_40

    :cond_16
    const/16 v1, 0x2329

    if-ne p1, v1, :cond_20

    iget-object v1, p0, Lcom/gameloft/GLSocialLib/SocialPlugin;->b:Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;

    invoke-virtual {v1, p1, p2, p3}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->onActivityResult(IILandroid/content/Intent;)V

    return v0

    :cond_20
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_2a

    iget-object v1, p0, Lcom/gameloft/GLSocialLib/SocialPlugin;->b:Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;

    invoke-virtual {v1, p1, p2, p3}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->onActivityResult(IILandroid/content/Intent;)V

    return v0

    :cond_2a
    const/16 v1, 0x3ea

    if-ne p1, v1, :cond_34

    iget-object v1, p0, Lcom/gameloft/GLSocialLib/SocialPlugin;->b:Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;

    invoke-virtual {v1, p1, p2, p3}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->onActivityResult(IILandroid/content/Intent;)V

    return v0

    :cond_34
    const/16 v1, 0x3ec

    if-ne p1, v1, :cond_3e

    iget-object v1, p0, Lcom/gameloft/GLSocialLib/SocialPlugin;->b:Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;

    invoke-virtual {v1, p1, p2, p3}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->onActivityResult(IILandroid/content/Intent;)V

    return v0

    :cond_3e
    const/4 p1, 0x0

    return p1

    :cond_40
    :goto_40
    iget-object v1, p0, Lcom/gameloft/GLSocialLib/SocialPlugin;->a:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;

    invoke-virtual {v1, p1, p2, p3}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->onActivityResult(IILandroid/content/Intent;)V

    return v0
.end method

.method public onPluginStart(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 4

    new-instance v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;

    invoke-direct {v0, p1, p1, p2}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/gameloft/GLSocialLib/SocialPlugin;->a:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;

    new-instance v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;

    invoke-direct {v0, p1, p2}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/gameloft/GLSocialLib/SocialPlugin;->b:Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;

    return-void
.end method

.method public onPostNativePause()V
    .registers 1

    return-void
.end method

.method public onPostNativeResume()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/SocialPlugin;->b:Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->onResume()V

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

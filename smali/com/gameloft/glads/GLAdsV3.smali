###### Class com.gameloft.glads.GLAdsV3 (com.gameloft.glads.GLAdsV3)
.class public Lcom/gameloft/glads/GLAdsV3;
.super Ljava/lang/Object;
.source "GLAdsV3.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Initialize(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 2

    invoke-static {p0}, Lcom/gameloft/glads/Utils;->SetActivity(Landroid/app/Activity;)V

    invoke-static {p1}, Lcom/gameloft/glads/Utils;->SetParentView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/gameloft/glads/WebViewFileChooser;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p0

    return p0
.end method

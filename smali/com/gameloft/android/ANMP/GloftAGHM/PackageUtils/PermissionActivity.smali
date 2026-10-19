###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.PermissionActivity (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.PermissionActivity)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionActivity;
.super Landroid/app/Activity;
.source "PermissionActivity.java"

# interfaces
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionActivity;->a:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionActivity;->b:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionActivity;->c:I

    iput v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionActivity;->d:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_21

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "permissionType"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/16 p1, 0x2bd

    invoke-static {p0, v1, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    iput v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionActivity;->d:I

    goto :goto_28

    :cond_21
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_28
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    const/4 p2, 0x3

    iput p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionActivity;->d:I

    const/16 p2, 0x2bd

    if-eq p1, p2, :cond_8

    return-void

    :cond_8
    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_16

    :cond_12
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    :goto_16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onResume()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionActivity;->d:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    iput v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionActivity;->d:I

    goto :goto_14

    :cond_c
    if-ne v0, v1, :cond_14

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_14
    :goto_14
    return-void
.end method

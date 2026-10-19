###### Class com.gameloft.glads.RequestPermissionActivity (com.gameloft.glads.RequestPermissionActivity)
.class public Lcom/gameloft/glads/RequestPermissionActivity;
.super Landroid/app/Activity;
.source "RequestPermissionActivity.java"

# interfaces
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static native nativeRequestPermissionResponse(Z)V
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/gameloft/glads/RequestPermissionActivity;->a:Z

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2bd

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget-boolean v0, Lcom/gameloft/glads/RequestPermissionActivity;->a:Z

    invoke-static {v0}, Lcom/gameloft/glads/RequestPermissionActivity;->nativeRequestPermissionResponse(Z)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    const/16 p2, 0x2bd

    if-eq p1, p2, :cond_5

    return-void

    :cond_5
    array-length p1, p3

    if-lez p1, :cond_10

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_10

    const/4 p1, 0x1

    sput-boolean p1, Lcom/gameloft/glads/RequestPermissionActivity;->a:Z

    :cond_10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

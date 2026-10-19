###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.PermissionPlugin.b (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.PermissionPlugin$b)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$b;
.super Ljava/lang/Object;
.source "PermissionPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->showPermissionsMessage(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$b;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$b;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->access$000()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$b$a;

    invoke-direct {v3, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$b$a;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$b;)V

    const v4, 0x7f1200de

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-boolean v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$b;->c:Z

    if-eqz v1, :cond_35

    const v1, 0x7f1200e0

    new-instance v3, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$b$b;

    invoke-direct {v3, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$b$b;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$b;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_40

    :cond_35
    const v1, 0x7f1200e1

    new-instance v3, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$b$c;

    invoke-direct {v3, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$b$c;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$b;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_40
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

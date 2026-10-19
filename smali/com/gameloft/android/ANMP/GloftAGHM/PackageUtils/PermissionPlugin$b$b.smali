###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.PermissionPlugin.b.DialogInterfaceOnClickListenerC0214b (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.PermissionPlugin$b$b)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$b$b;
.super Ljava/lang/Object;
.source "PermissionPlugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$b;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$b;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$b$b;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    const/4 p1, 0x3

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->access$202(I)I

    const/high16 p1, 0x10000000

    :try_start_6
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "package:com.gameloft.android.ANMP.GloftAGHM"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->access$000()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_20} :catch_21

    goto :goto_32

    :catch_21
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->access$000()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_32
    return-void
.end method

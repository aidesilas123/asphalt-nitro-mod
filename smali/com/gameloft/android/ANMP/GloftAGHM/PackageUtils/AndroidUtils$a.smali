###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.AndroidUtils.a (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.AndroidUtils$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils$a;
.super Ljava/lang/Object;
.source "AndroidUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->ShowGameDialog(Ljava/lang/String;Ljava/lang/String;Z)Z
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

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils$a;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils$a;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils$a$a;

    invoke-direct {v1, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils$a$a;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils$a;)V

    const v3, 0x7f1200df

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-boolean v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils$a;->c:Z

    if-eqz v1, :cond_33

    const v1, 0x7f1200de

    new-instance v3, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils$a$b;

    invoke-direct {v3, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils$a$b;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils$a;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_33
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

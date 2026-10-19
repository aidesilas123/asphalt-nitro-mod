###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.LogoViewPlugin.a (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.LogoViewPlugin$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin$a;
.super Ljava/lang/Object;
.source "LogoViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->b(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->access$100(Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;)Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;)Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    return-void
.end method

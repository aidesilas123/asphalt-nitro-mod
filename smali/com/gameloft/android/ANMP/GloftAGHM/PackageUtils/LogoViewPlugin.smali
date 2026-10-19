###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.LogoViewPlugin (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.LogoViewPlugin)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;
.super Ljava/lang/Object;
.source "LogoViewPlugin.java"

# interfaces
.implements Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;


# static fields
.field private static a:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;


# instance fields
.field private b:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/c;

.field private c:Landroid/app/Activity;

.field private d:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->b:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/c;

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->c:Landroid/app/Activity;

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->d:Landroid/view/ViewGroup;

    return-void
.end method

.method public static CloseLogo()V
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;

    invoke-direct {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->a()V

    return-void
.end method

.method public static IsLogoShowing()Z
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;

    iget-object v0, v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->b:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/c;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static ShowLogo(III)V
    .registers 4

    if-gtz p0, :cond_5

    const p0, 0x7f080150

    :cond_5
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;

    invoke-direct {v0, p0, p1, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->b(III)V

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->b:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/c;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->c:Landroid/app/Activity;

    new-instance v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin$b;

    invoke-direct {v1, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin$b;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;)Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/c;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->b:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/c;

    return-object p0
.end method

.method static synthetic access$002(Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/c;)Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/c;
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->b:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/c;

    return-object p1
.end method

.method static synthetic access$100(Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->d:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private b(III)V
    .registers 6

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->b:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/c;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/c;

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->c:Landroid/app/Activity;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/c;-><init>(Landroid/app/Activity;III)V

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->b:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/c;

    iget-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->c:Landroid/app/Activity;

    new-instance p2, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin$a;

    invoke-direct {p2, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin$a;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public onPluginStart(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->c:Landroid/app/Activity;

    iput-object p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->d:Landroid/view/ViewGroup;

    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LogoViewPlugin;

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

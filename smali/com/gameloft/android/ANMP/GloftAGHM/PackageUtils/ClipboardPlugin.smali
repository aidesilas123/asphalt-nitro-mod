###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.ClipboardPlugin (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.ClipboardPlugin)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/ClipboardPlugin;
.super Ljava/lang/Object;
.source "ClipboardPlugin.java"

# interfaces
.implements Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;


# static fields
.field private static a:Landroid/app/Activity;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CopyToClipboard(Ljava/lang/String;)V
    .registers 2

    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/ClipboardPlugin;->b:Ljava/lang/String;

    sget-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/ClipboardPlugin;->a:Landroid/app/Activity;

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/ClipboardPlugin$a;

    invoke-direct {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/ClipboardPlugin$a;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static PasteFromClipboard()Ljava/lang/String;
    .registers 2

    :try_start_0
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/ClipboardPlugin;->a:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object v0

    :catch_1c
    const-string v0, ""

    return-object v0
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/ClipboardPlugin;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public onPluginStart(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 3

    sput-object p1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/ClipboardPlugin;->a:Landroid/app/Activity;

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

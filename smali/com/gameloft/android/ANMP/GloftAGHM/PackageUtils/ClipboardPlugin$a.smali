###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.ClipboardPlugin.a (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.ClipboardPlugin$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/ClipboardPlugin$a;
.super Ljava/lang/Object;
.source "ClipboardPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/ClipboardPlugin;->CopyToClipboard(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/ClipboardPlugin;->access$000()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "text label"

    sget-object v2, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/ClipboardPlugin;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_17

    :catch_17
    return-void
.end method

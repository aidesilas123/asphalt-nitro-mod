###### Class com.gameloft.android.ANMP.GloftAGHM.InGameBrowser.j.a (com.gameloft.android.ANMP.GloftAGHM.InGameBrowser$j$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j$a;
.super Ljava/lang/Object;
.source "InGameBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j;Landroid/webkit/WebView;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j$a;->b:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j;

    iput-object p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j$a;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j$a;->a:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :try_start_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j$a;->b:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j;

    iget-object v1, v1, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j;->a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j$a;->b:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j;

    iget-object v1, v1, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j;->a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->access$3600(Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;)[I

    move-result-object v2

    sget v3, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->j:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j$a$b;

    invoke-direct {v2, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j$a$b;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j$a$a;

    invoke-direct {v1, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j$a$a;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j$a;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j$a;->b:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j;

    iget-object v1, v1, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j;->a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->access$3400(Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;)[I

    move-result-object v2

    sget v3, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->j:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_50} :catch_50

    :catch_50
    return-void
.end method

###### Class com.gameloft.android.ANMP.GloftAGHM.InGameBrowser.j.a.DialogInterfaceOnCancelListenerC0211a (com.gameloft.android.ANMP.GloftAGHM.InGameBrowser$j$a$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j$a$a;
.super Ljava/lang/Object;
.source "InGameBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j$a;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j$a;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j$a$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    const-string p1, "LoadPageFailed"

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->access$3502(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j$a$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j$a;

    iget-object p1, p1, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j$a;->b:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j;

    iget-object p1, p1, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$j;->a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->access$100(Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;)V

    return-void
.end method

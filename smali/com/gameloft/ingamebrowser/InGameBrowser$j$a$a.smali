###### Class com.gameloft.ingamebrowser.InGameBrowser.j.a.DialogInterfaceOnCancelListenerC0220a (com.gameloft.ingamebrowser.InGameBrowser$j$a$a)
.class Lcom/gameloft/ingamebrowser/InGameBrowser$j$a$a;
.super Ljava/lang/Object;
.source "InGameBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/ingamebrowser/InGameBrowser$j$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/ingamebrowser/InGameBrowser$j$a;


# direct methods
.method constructor <init>(Lcom/gameloft/ingamebrowser/InGameBrowser$j$a;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$j$a$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    const-string p1, "LoadPageFailed"

    invoke-static {p1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$3502(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$j$a$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$j$a;

    iget-object p1, p1, Lcom/gameloft/ingamebrowser/InGameBrowser$j$a;->b:Lcom/gameloft/ingamebrowser/InGameBrowser$j;

    iget-object p1, p1, Lcom/gameloft/ingamebrowser/InGameBrowser$j;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {p1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$100(Lcom/gameloft/ingamebrowser/InGameBrowser;)V

    return-void
.end method

###### Class com.gameloft.glads.WebViewFileChooser.b (com.gameloft.glads.WebViewFileChooser$b)
.class Lcom/gameloft/glads/WebViewFileChooser$b;
.super Ljava/lang/Object;
.source "WebViewFileChooser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/WebViewFileChooser;->ShowSelectionMenu()V
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
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/gameloft/glads/WebViewFileChooser;->access$200([Landroid/net/Uri;)V

    return-void
.end method

###### Class com.gameloft.glads.WebViewFileChooser.a (com.gameloft.glads.WebViewFileChooser$a)
.class Lcom/gameloft/glads/WebViewFileChooser$a;
.super Ljava/lang/Object;
.source "WebViewFileChooser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    if-eqz p2, :cond_a

    const/4 p1, 0x1

    if-eq p2, p1, :cond_6

    goto :goto_d

    :cond_6
    invoke-static {}, Lcom/gameloft/glads/WebViewFileChooser;->access$100()V

    goto :goto_d

    :cond_a
    invoke-static {}, Lcom/gameloft/glads/WebViewFileChooser;->access$000()V

    :goto_d
    return-void
.end method

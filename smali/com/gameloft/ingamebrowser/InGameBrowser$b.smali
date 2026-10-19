###### Class com.gameloft.ingamebrowser.InGameBrowser.b (com.gameloft.ingamebrowser.InGameBrowser$b)
.class Lcom/gameloft/ingamebrowser/InGameBrowser$b;
.super Ljava/lang/Object;
.source "InGameBrowser.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/ingamebrowser/InGameBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/gameloft/ingamebrowser/InGameBrowser;


# direct methods
.method constructor <init>(Lcom/gameloft/ingamebrowser/InGameBrowser;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$b;->b:Lcom/gameloft/ingamebrowser/InGameBrowser;

    iput-object p2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$b;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$b;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1b

    :goto_19
    const/4 v0, 0x1

    goto :goto_29

    :cond_1b
    int-to-double v4, v1

    int-to-double v0, v0

    div-double/2addr v4, v0

    const-wide v0, 0x3fe999999999999aL    # 0.8

    cmpl-double v6, v4, v0

    if-lez v6, :cond_28

    goto :goto_19

    :cond_28
    const/4 v0, 0x0

    :goto_29
    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$b;->b:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v0, v3}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$202(Lcom/gameloft/ingamebrowser/InGameBrowser;Z)Z

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$b;->b:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$300(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_49

    :cond_3b
    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$b;->b:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v0, v2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$202(Lcom/gameloft/ingamebrowser/InGameBrowser;Z)Z

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$b;->b:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$300(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_49
    return-void
.end method

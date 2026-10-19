###### Class com.gameloft.glads.AndroidWebView.h (com.gameloft.glads.AndroidWebView$h)
.class Lcom/gameloft/glads/AndroidWebView$h;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->SetButtonBounds(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;IIIII)V
    .registers 7

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$h;->f:Lcom/gameloft/glads/AndroidWebView;

    iput p2, p0, Lcom/gameloft/glads/AndroidWebView$h;->a:I

    iput p3, p0, Lcom/gameloft/glads/AndroidWebView$h;->b:I

    iput p4, p0, Lcom/gameloft/glads/AndroidWebView$h;->c:I

    iput p5, p0, Lcom/gameloft/glads/AndroidWebView$h;->d:I

    iput p6, p0, Lcom/gameloft/glads/AndroidWebView$h;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$h;->f:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->buttons:Ljava/util/HashMap;

    iget v1, p0, Lcom/gameloft/glads/AndroidWebView$h;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_22

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v2, p0, Lcom/gameloft/glads/AndroidWebView$h;->b:I

    iget v3, p0, Lcom/gameloft/glads/AndroidWebView$h;->c:I

    iget v4, p0, Lcom/gameloft/glads/AndroidWebView$h;->d:I

    iget v5, p0, Lcom/gameloft/glads/AndroidWebView$h;->e:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_22
    return-void
.end method

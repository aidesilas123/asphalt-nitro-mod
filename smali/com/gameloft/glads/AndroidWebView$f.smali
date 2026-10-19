###### Class com.gameloft.glads.AndroidWebView.f (com.gameloft.glads.AndroidWebView$f)
.class Lcom/gameloft/glads/AndroidWebView$f;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->AddButton([BIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:[B

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;I[BIIII)V
    .registers 8

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$f;->g:Lcom/gameloft/glads/AndroidWebView;

    iput p2, p0, Lcom/gameloft/glads/AndroidWebView$f;->a:I

    iput-object p3, p0, Lcom/gameloft/glads/AndroidWebView$f;->b:[B

    iput p4, p0, Lcom/gameloft/glads/AndroidWebView$f;->c:I

    iput p5, p0, Lcom/gameloft/glads/AndroidWebView$f;->d:I

    iput p6, p0, Lcom/gameloft/glads/AndroidWebView$f;->e:I

    iput p7, p0, Lcom/gameloft/glads/AndroidWebView$f;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$f;->g:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Landroid/widget/ImageButton;

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/gameloft/glads/AndroidWebView$f;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    new-instance v1, Lcom/gameloft/glads/AndroidWebView$f$a;

    invoke-direct {v1, p0}, Lcom/gameloft/glads/AndroidWebView$f$a;-><init>(Lcom/gameloft/glads/AndroidWebView$f;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v2, p0, Lcom/gameloft/glads/AndroidWebView$f;->b:[B

    array-length v3, v2

    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/gameloft/glads/AndroidWebView$f;->g:Lcom/gameloft/glads/AndroidWebView;

    iget-object v1, v1, Lcom/gameloft/glads/AndroidWebView;->buttons:Ljava/util/HashMap;

    iget v2, p0, Lcom/gameloft/glads/AndroidWebView$f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/gameloft/glads/AndroidWebView$f;->g:Lcom/gameloft/glads/AndroidWebView;

    iget-object v1, v1, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v3, p0, Lcom/gameloft/glads/AndroidWebView$f;->c:I

    iget v4, p0, Lcom/gameloft/glads/AndroidWebView$f;->d:I

    iget v5, p0, Lcom/gameloft/glads/AndroidWebView$f;->e:I

    iget v6, p0, Lcom/gameloft/glads/AndroidWebView$f;->f:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

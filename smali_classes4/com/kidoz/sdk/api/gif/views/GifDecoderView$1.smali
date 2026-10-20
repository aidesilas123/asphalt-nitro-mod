###### Class com.kidoz.sdk.api.gif.views.GifDecoderView.AnonymousClass1 (com.kidoz.sdk.api.gif.views.GifDecoderView$1)
.class Lcom/kidoz/sdk/api/gif/views/GifDecoderView$1;
.super Ljava/lang/Object;
.source "GifDecoderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->initUiUpdateMechanism()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$1;->this$0:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$1;->this$0:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->access$300(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$1;->this$0:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->access$300(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$1;->this$0:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->access$300(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1d
    return-void
.end method

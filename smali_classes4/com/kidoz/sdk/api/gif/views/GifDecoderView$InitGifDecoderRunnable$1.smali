###### Class com.kidoz.sdk.api.gif.views.GifDecoderView.InitGifDecoderRunnable.AnonymousClass1 (com.kidoz.sdk.api.gif.views.GifDecoderView$InitGifDecoderRunnable$1)
.class Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable$1;
.super Ljava/lang/Object;
.source "GifDecoderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable$1;->this$1:Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable$1;->this$1:Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable;

    iget-object v0, v0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable;->this$0:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->access$100(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable$1;->this$1:Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable;

    invoke-static {v0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable;->access$200(Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable;)Lcom/kidoz/sdk/api/gif/views/GifDecoderView$IGifDecoderViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$IGifDecoderViewCallback;->gifDecoderViewReady()V

    return-void
.end method

###### Class com.kidoz.sdk.api.gif.views.GifDecoderView.InitGifDecoderRunnable (com.kidoz.sdk.api.gif.views.GifDecoderView$InitGifDecoderRunnable)
.class Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable;
.super Ljava/lang/Object;
.source "GifDecoderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/gif/views/GifDecoderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitGifDecoderRunnable"
.end annotation


# instance fields
.field private mIGifDecoderViewCallback:Lcom/kidoz/sdk/api/gif/views/GifDecoderView$IGifDecoderViewCallback;

.field private mInputStream:Ljava/io/InputStream;

.field final synthetic this$0:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;


# direct methods
.method public constructor <init>(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;Lcom/kidoz/sdk/api/gif/views/GifDecoderView$IGifDecoderViewCallback;Ljava/io/InputStream;)V
    .registers 4

    iput-object p1, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable;->this$0:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable;->mIGifDecoderViewCallback:Lcom/kidoz/sdk/api/gif/views/GifDecoderView$IGifDecoderViewCallback;

    iput-object p3, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable;->mInputStream:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic access$200(Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable;)Lcom/kidoz/sdk/api/gif/views/GifDecoderView$IGifDecoderViewCallback;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable;->mIGifDecoderViewCallback:Lcom/kidoz/sdk/api/gif/views/GifDecoderView$IGifDecoderViewCallback;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable;->this$0:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    iget-object v1, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable;->mInputStream:Ljava/io/InputStream;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->access$000(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;Ljava/io/InputStream;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable$1;-><init>(Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.kidoz.sdk.api.gif.views.GifDecoderView (com.kidoz.sdk.api.gif.views.GifDecoderView)
.class public Lcom/kidoz/sdk/api/gif/views/GifDecoderView;
.super Landroid/widget/ImageView;
.source "GifDecoderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable;,
        Lcom/kidoz/sdk/api/gif/views/GifDecoderView$IGifDecoderViewCallback;,
        Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread;
    }
.end annotation


# static fields
.field private static final BACKGROUND_COLOR:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGifDecoder:Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;

.field private mHandler:Landroid/os/Handler;

.field private mIsPaused:Z

.field private mLastAnimationThread:Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread;

.field private mTmpBitmap:Landroid/graphics/Bitmap;

.field private mUpdateResults:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->mIsPaused:Z

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-direct {p0, p2}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->initGifDecoder(Ljava/io/InputStream;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->initUiUpdateMechanism()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/InputStream;Lcom/kidoz/sdk/api/gif/views/GifDecoderView$IGifDecoderViewCallback;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->mIsPaused:Z

    iput-object p1, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable;

    invoke-direct {v0, p0, p3, p2}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$InitGifDecoderRunnable;-><init>(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;Lcom/kidoz/sdk/api/gif/views/GifDecoderView$IGifDecoderViewCallback;Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;Ljava/io/InputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->initGifDecoder(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->initUiUpdateMechanism()V

    return-void
.end method

.method static synthetic access$300(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->mTmpBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$302(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->mTmpBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->mGifDecoder:Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->mIsPaused:Z

    return p0
.end method

.method static synthetic access$700(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->mUpdateResults:Ljava/lang/Runnable;

    return-object p0
.end method

.method private initGifDecoder(Ljava/io/InputStream;)V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;

    invoke-direct {v0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->mGifDecoder:Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->read(Ljava/io/InputStream;)I

    return-void
.end method

.method private initUiUpdateMechanism()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$1;-><init>(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->mUpdateResults:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public declared-synchronized clean()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, ""

    const-string v1, "GifDecoderView | clean"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->mLastAnimationThread:Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread;->requestStop()V

    :cond_f
    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->mUpdateResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_18
    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->mTmpBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPlaying()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->mLastAnimationThread:Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread;

    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread;->access$400(Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isVisible()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, ""

    const-string v1, "GifDecoderView | pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->mIsPaused:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, ""

    const-string v1, "GifDecoderView | resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->mIsPaused:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->mGifDecoder:Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->mLastAnimationThread:Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread;->requestStop()V

    :cond_c
    new-instance v0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread;-><init>(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->mLastAnimationThread:Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->mLastAnimationThread:Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread;->requestStop()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    :cond_8
    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

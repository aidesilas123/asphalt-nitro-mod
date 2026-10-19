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

###### Class com.kidoz.sdk.api.gif.views.GifDecoderView.AnimationThread (com.kidoz.sdk.api.gif.views.GifDecoderView$AnimationThread)
.class Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread;
.super Ljava/lang/Thread;
.source "GifDecoderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/gif/views/GifDecoderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationThread"
.end annotation


# instance fields
.field private mRequestStop:Z

.field final synthetic this$0:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;


# direct methods
.method public constructor <init>(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread;->this$0:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    new-instance v0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread$1;

    invoke-direct {v0, p1}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread$1;-><init>(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)V

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread;->mRequestStop:Z

    return-void
.end method

.method static synthetic access$400(Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread;->mRequestStop:Z

    return p0
.end method


# virtual methods
.method public requestStop()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread;->mRequestStop:Z

    return-void
.end method

###### Class com.kidoz.sdk.api.gif.views.GifDecoderView.AnimationThread.AnonymousClass1 (com.kidoz.sdk.api.gif.views.GifDecoderView$AnimationThread$1)
.class Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread$1;
.super Ljava/lang/Object;
.source "GifDecoderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread;-><init>(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$this$0:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread$1;->val$this$0:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const-string v0, "GifDecoderView | exception "

    const-string v1, ""

    iget-object v2, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread$1;->val$this$0:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    invoke-static {v2}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->access$500(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->getFrameCount()I

    move-result v2

    iget-object v3, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread$1;->val$this$0:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    invoke-static {v3}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->access$500(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->getLoopCount()I

    move-result v3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_21
    iget-object v6, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread$1;->val$this$0:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    invoke-static {v6}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->access$600(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)Z

    move-result v6

    if-nez v6, :cond_ab

    const/4 v6, 0x0

    :goto_2a
    if-ge v6, v2, :cond_a7

    :try_start_2c
    iget-object v7, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread$1;->val$this$0:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    invoke-static {v7}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->access$500(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->access$302(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_39
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2c .. :try_end_39} :catch_3a

    goto :goto_58

    :catch_3a
    move-exception v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/ArrayIndexOutOfBoundsException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/ArrayIndexOutOfBoundsException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    :goto_58
    iget-object v7, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread$1;->val$this$0:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    invoke-static {v7}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->access$500(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->getDelay(I)I

    move-result v7

    iget-object v8, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread$1;->val$this$0:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    invoke-static {v8}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->access$700(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)Landroid/os/Handler;

    move-result-object v8

    if-eqz v8, :cond_81

    iget-object v8, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread$1;->val$this$0:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    invoke-static {v8}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->access$800(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)Ljava/lang/Runnable;

    move-result-object v8

    if-eqz v8, :cond_81

    iget-object v8, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread$1;->val$this$0:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    invoke-static {v8}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->access$700(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread$1;->val$this$0:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    invoke-static {v9}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->access$800(Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_81
    int-to-long v7, v7

    :try_start_82
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_85
    .catch Ljava/lang/InterruptedException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_a4

    :catch_86
    move-exception v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    :goto_a4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :cond_a7
    if-eqz v3, :cond_ab

    add-int/lit8 v5, v5, 0x1

    :cond_ab
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    check-cast v6, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread;

    invoke-static {v6}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread;->access$400(Lcom/kidoz/sdk/api/gif/views/GifDecoderView$AnimationThread;)Z

    move-result v6

    if-nez v6, :cond_b9

    if-le v5, v3, :cond_21

    :cond_b9
    return-void
.end method

###### Class com.kidoz.sdk.api.gif.views.GifDecoderView.IGifDecoderViewCallback (com.kidoz.sdk.api.gif.views.GifDecoderView$IGifDecoderViewCallback)
.class public interface abstract Lcom/kidoz/sdk/api/gif/views/GifDecoderView$IGifDecoderViewCallback;
.super Ljava/lang/Object;
.source "GifDecoderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/gif/views/GifDecoderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IGifDecoderViewCallback"
.end annotation


# virtual methods
.method public abstract gifDecoderViewReady()V
.end method

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

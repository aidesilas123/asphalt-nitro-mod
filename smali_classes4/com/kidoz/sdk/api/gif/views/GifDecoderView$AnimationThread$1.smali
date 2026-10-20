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

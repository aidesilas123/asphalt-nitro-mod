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

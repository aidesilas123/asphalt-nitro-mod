###### Class com.mbridge.msdk.playercommon.VideoFeedsPlayer.AnonymousClass6 (com.mbridge.msdk.playercommon.VideoFeedsPlayer$6)
.class Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$6;
.super Ljava/lang/Object;
.source "VideoFeedsPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayProgressOnMainThread(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;

.field final synthetic val$allDurationSecond:I

.field final synthetic val$curPlayPosition:I


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;II)V
    .registers 4

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$6;->this$0:Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    iput p2, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$6;->val$curPlayPosition:I

    iput p3, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$6;->val$allDurationSecond:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$6;->this$0:Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$1100(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    if-eqz v0, :cond_20

    :try_start_a
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$6;->this$0:Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$1100(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    iget v2, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$6;->val$curPlayPosition:I

    iget v3, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$6;->val$allDurationSecond:I

    invoke-interface {v0, v2, v3}, Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onPlayProgress(II)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_18

    goto :goto_20

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$6;->this$0:Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$1200(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_3e

    :try_start_28
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$6;->this$0:Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$1200(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    iget v2, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$6;->val$curPlayPosition:I

    iget v3, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$6;->val$allDurationSecond:I

    invoke-interface {v0, v2, v3}, Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onPlayProgress(II)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_35} :catch_36

    goto :goto_3e

    :catch_36
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    return-void
.end method

###### Class com.mbridge.msdk.playercommon.VideoFeedsPlayer.AnonymousClass3 (com.mbridge.msdk.playercommon.VideoFeedsPlayer$3)
.class Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$3;
.super Ljava/util/TimerTask;
.source "VideoFeedsPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->startBufferIngTimer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;

.field final synthetic val$bufferMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$3;->this$0:Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    iput-object p2, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$3;->val$bufferMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$3;->this$0:Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$700(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$3;->this$0:Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$400(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_10
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$3;->this$0:Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$3;->val$bufferMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$800(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_22

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    :goto_22
    return-void
.end method

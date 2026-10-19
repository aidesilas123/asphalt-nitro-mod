###### Class com.mbridge.msdk.playercommon.VideoNativePlayer (com.mbridge.msdk.playercommon.VideoNativePlayer)
.class public Lcom/mbridge/msdk/playercommon/VideoNativePlayer;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Lcom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;


# static fields
.field public static final INTERVAL_TIME_PLAY_TIME_CD_THREAD:I = 0x3e8

.field public static final INTERVAL_TIME_PLAY_TIME_PROGRESS:I = 0x64

.field public static final TAG:Ljava/lang/String; = "VideoNativePlayer"


# instance fields
.field private exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

.field private mBufferTime:I

.field private mBufferTimeoutTimer:Ljava/util/Timer;

.field private mCurrentPosition:J

.field private final mHandler:Landroid/os/Handler;

.field private mHasChaoDi:Z

.field private mHasPrepare:Z

.field private mInnerVFPLisener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

.field private mIsAllowLoopPlay:Z

.field private mIsBuffering:Z

.field private mIsComplete:Z

.field private mIsFrontDesk:Z

.field private mIsNeedBufferingTimeout:Z

.field private mIsOpenSound:Z

.field private mIsPlaying:Z

.field private mIsStartPlay:Z

.field private mLoadingView:Landroid/view/View;

.field private mNetUrl:Ljava/lang/String;

.field private mOutterVFListener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

.field private mPlayUrl:Ljava/lang/String;

.field private mSurfaceHolder:Landroid/view/Surface;

.field private mediaSource:Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

.field private playProgressMSRunnable:Ljava/lang/Runnable;

.field private playProgressRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsComplete:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsStartPlay:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsAllowLoopPlay:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasChaoDi:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsBuffering:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsNeedBufferingTimeout:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsFrontDesk:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mBufferTime:I

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsOpenSound:Z

    new-instance v0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$1;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$2;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$2;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->playProgressRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$3;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$3;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->playProgressMSRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mCurrentPosition:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    return p0
.end method

.method static synthetic access$102(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;J)J
    .registers 3

    iput-wide p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mCurrentPosition:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnBufferingStarOnMainThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mLoadingView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mOutterVFListener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mInnerVFPLisener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsStartPlay:Z

    return p0
.end method

.method static synthetic access$202(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsStartPlay:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayStartOnMainThread(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayProgressOnMainThread(II)V

    return-void
.end method

.method static synthetic access$502(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsComplete:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsBuffering:Z

    return p0
.end method

.method static synthetic access$700(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    return-void
.end method

.method static synthetic access$800(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayProgressMSOnMainThread(JJ)V

    return-void
.end method

.method private cancelBufferTimeoutTimer()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mBufferTimeoutTimer:Ljava/util/Timer;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_12
    return-void
.end method

.method private cancelPlayProgressTimer()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->playProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->playProgressMSRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_19

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    return-void
.end method

.method private hideLoading()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$6;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$6;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_18

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    return-void
.end method

.method private postOnBufferinEndOnMainThread()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_17

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$10;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$10;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_17

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_17
    return-void
.end method

.method private postOnBufferingStarOnMainThread(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_17

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$9;

    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$9;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_17

    :catch_d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_17
    return-void
.end method

.method private postOnPlayCompletedOnMainThread()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_17

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$14;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$14;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_17

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_17
    return-void
.end method

.method private postOnPlayErrorOnMainThread(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$12;

    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$12;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    const/16 v0, 0x2a

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/mbridge/msdk/foundation/same/report/q;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1e

    :catch_14
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    return-void
.end method

.method private postOnPlayProgressMSOnMainThread(JJ)V
    .registers 13

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    new-instance v7, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$8;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$8;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;JJ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_1b

    :catch_11
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoNativePlayer"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method private postOnPlayProgressOnMainThread(II)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_17

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$7;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_17

    :catch_d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoNativePlayer"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_17
    return-void
.end method

.method private postOnPlaySetDataSourceError2MainThread(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_17

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$13;

    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$13;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_17

    :catch_d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_17
    return-void
.end method

.method private postOnPlayStartOnMainThread(I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_17

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$11;

    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$11;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_17

    :catch_d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_17
    return-void
.end method

.method private startBufferingTimer(Ljava/lang/String;)V
    .registers 6

    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsNeedBufferingTimeout:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->cancelBufferTimeoutTimer()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mBufferTimeoutTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$4;

    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$4;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V

    iget p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mBufferTime:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private startPlayProgressTimer()V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->cancelPlayProgressTimer()V

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->playProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->playProgressMSRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_1c

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    return-void
.end method


# virtual methods
.method public closeSound()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVolume(F)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_14

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    return-void
.end method

.method public exoPlayerIsPlaying()Z
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public getCurPosition()I
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mCurrentPosition:J

    long-to-int v1, v0

    return v1
.end method

.method public hasPrepare()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    return v0
.end method

.method public initBufferIngParam(I)V
    .registers 2

    if-lez p1, :cond_4

    iput p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mBufferTime:I

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsNeedBufferingTimeout:Z

    return-void
.end method

.method public initParameter(Ljava/lang/String;ZZLandroid/view/View;Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)Z
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1f

    const-string v2, "MediaPlayer init error"

    if-eqz v1, :cond_d

    :try_start_9
    invoke-direct {p0, v2}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    return v0

    :cond_d
    if-nez p4, :cond_13

    invoke-direct {p0, v2}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    return v0

    :cond_13
    iput-boolean p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsOpenSound:Z

    iput-boolean p3, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsAllowLoopPlay:Z

    iput-object p4, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mLoadingView:Landroid/view/View;

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mNetUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mOutterVFListener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_1f

    const/4 v0, 0x1

    goto :goto_30

    :catchall_1f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "VideoNativePlayer"

    invoke-static {p3, p2}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    :goto_30
    return v0
.end method

.method public isComplete()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsComplete:Z

    return v0
.end method

.method public isPlayIng()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_c

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v0

    return v0
.end method

.method public loadingViewIsVisible()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mLoadingView:Landroid/view/View;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_c

    if-nez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :catchall_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public onCompletion()V
    .registers 3

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsComplete:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mCurrentPosition:J

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayCompletedOnMainThread()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_11

    goto :goto_1b

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    return-void
.end method

.method public onError(ILjava/lang/String;)Z
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z

    invoke-direct {p0, p2}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_16

    :catch_c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoNativePlayer"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_16
    const/4 p1, 0x1

    return p1
.end method

.method public onLoadingChanged(Z)V
    .registers 2

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlaybackParametersChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->speed:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayerError(Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;)V
    .registers 5

    if-eqz p1, :cond_16

    iget v0, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->type:I

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    goto :goto_16

    :cond_d
    const-string v0, "Play error, because have a UnexpectedException."

    goto :goto_18

    :cond_10
    const-string v0, "Play error, because have a RendererException."

    goto :goto_18

    :cond_13
    const-string v0, "Play error, because have a SourceException."

    goto :goto_18

    :cond_16
    :goto_16
    const-string v0, "Play error and ExoPlayer have not message."

    :goto_18
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoNativePlayer"

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->type:I

    invoke-virtual {p0, p1, v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->onError(ILjava/lang/String;)Z

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .registers 5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPlaybackStateChanged : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_57

    const/4 v1, 0x2

    if-eq p2, v1, :cond_47

    const/4 p1, 0x3

    const/4 v1, 0x0

    if-eq p2, p1, :cond_36

    const/4 p1, 0x4

    if-eq p2, p1, :cond_24

    goto :goto_5c

    :cond_24
    const-string p1, "onPlaybackStateChanged : Ended : PLAY ENDED"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->cancelPlayProgressTimer()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->onCompletion()V

    iget-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsAllowLoopPlay:Z

    if-nez p1, :cond_5c

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    goto :goto_5c

    :cond_36
    const-string p1, "onPlaybackStateChanged : READY"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsBuffering:Z

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnBufferinEndOnMainThread()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->onPrepared()V

    goto :goto_5c

    :cond_47
    const-string p2, "onPlaybackStateChanged : Buffering"

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsBuffering:Z

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V

    const-string p1, "play buffering tiemout"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->startBufferingTimer(Ljava/lang/String;)V

    goto :goto_5c

    :cond_57
    const-string p1, "onPlaybackStateChanged : IDLE"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPositionDiscontinuity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1b

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->onCompletion()V

    :cond_1b
    return-void
.end method

.method public onPrepared()V
    .registers 3

    :try_start_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsFrontDesk:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnBufferinEndOnMainThread()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->startPlayProgressTimer()V

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_1e

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    goto :goto_1e

    :catchall_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .registers 2

    return-void
.end method

.method public onSeekProcessed()V
    .registers 1

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .registers 2

    return-void
.end method

.method public onTimelineChanged(Lcom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .registers 4

    return-void
.end method

.method public onTracksChanged(Lcom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lcom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;)V
    .registers 3

    return-void
.end method

.method public openSound()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVolume(F)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_15

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    return-void
.end method

.method public pause()V
    .registers 3

    :try_start_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_25

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public play()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->startPlayProgressTimer()V

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_16

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_16
    return-void
.end method

.method public play(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6

    int-to-long v0, p3

    :try_start_1
    iput-wide v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mCurrentPosition:J

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_f

    const-string p1, "play url is null"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V

    iput-object p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsFrontDesk:Z

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->setDataSource(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1e

    goto :goto_33

    :catch_1e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoNativePlayer"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->releasePlayer()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    const-string p1, "mediaplayer cannot play"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    :goto_33
    return-void
.end method

.method public play(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V
    .registers 5

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "play url is null"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V

    iput-object p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsFrontDesk:Z

    iput-object p3, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mSurfaceHolder:Landroid/view/Surface;

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->setDataSource(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_32

    :catch_1d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoNativePlayer"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->releasePlayer()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    const-string p1, "mediaplayer cannot play"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    :goto_32
    return-void
.end method

.method public releasePlayer()V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->cancelPlayProgressTimer()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->cancelBufferTimeoutTimer()V

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->stop()V

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->removeListener(Lcom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;)V

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->release()V

    iput-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z

    :cond_1d
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mOutterVFListener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    if-eqz v0, :cond_2e

    iput-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mOutterVFListener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    goto :goto_2e

    :catchall_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoNativePlayer"

    invoke-static {v2, v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2e
    :goto_2e
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    return-void
.end method

.method public replaySameSource(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsFrontDesk:Z

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_1a

    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mediaSource:Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    if-eqz v2, :cond_1a

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->prepare(Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V

    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_33

    :cond_1a
    invoke-virtual {p0, p1, p2, p3}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->play(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_33

    :catch_1e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoNativePlayer"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->releasePlayer()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    const-string p1, "mediaplayer cannot play"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    :goto_33
    return-void
.end method

.method public setDataSource(Landroid/content/Context;)V
    .registers 8

    const-string v0, "VideoNativePlayer"

    const/4 v1, 0x1

    :try_start_3
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5} :catch_ae

    if-eqz v2, :cond_20

    :try_start_7
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->stop()V

    :cond_12
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->release()V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_18

    goto :goto_20

    :catchall_18
    move-exception v2

    :try_start_19
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    :goto_20
    iget-boolean v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsOpenSound:Z

    if-nez v2, :cond_27

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->closeSound()V

    :cond_27
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9f

    new-instance v2, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v2, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;-><init>()V

    new-instance v4, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;

    invoke-direct {v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lcom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lcom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lcom/mbridge/msdk/playercommon/exoplayer2/LoadControl;)Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_52} :catch_ae

    const-string v4, "MBridge_ExoPlayer"

    if-nez v3, :cond_72

    :try_start_56
    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    const-string v5, "https"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_61

    goto :goto_72

    :cond_61
    new-instance v3, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;

    new-instance v5, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-direct {v5, p1, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mediaSource:Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    goto :goto_82

    :cond_72
    :goto_72
    new-instance v3, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;

    new-instance v5, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    invoke-direct {v5, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mediaSource:Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    :goto_82
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    iget-boolean v3, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsAllowLoopPlay:Z

    if-eqz v3, :cond_8a

    const/4 v3, 0x2

    goto :goto_8b

    :cond_8a
    const/4 v3, 0x0

    :goto_8b
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mediaSource:Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->prepare(Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V

    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->addListener(Lcom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;)V

    :cond_9f
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mSurfaceHolder:Landroid/view/Surface;

    if-eqz v2, :cond_a8

    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    :cond_a8
    const-string v2, "mediaplayer prepare timeout"

    invoke-direct {p0, v2}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->startBufferingTimer(Ljava/lang/String;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_ad} :catch_ae

    goto :goto_eb

    :catch_ae
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "set data source error"

    const-string v3, "mediaplayer cannot play"

    if-eqz v0, :cond_cc

    invoke-direct {p0, v3}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlaySetDataSourceError2MainThread(Ljava/lang/String;)V

    goto :goto_e8

    :cond_cc
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mNetUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e5

    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasChaoDi:Z

    if-nez v0, :cond_e5

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasChaoDi:Z

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mNetUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->setDataSource(Landroid/content/Context;)V

    goto :goto_e8

    :cond_e5
    invoke-direct {p0, v3}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    :goto_e8
    invoke-direct {p0, v2}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlaySetDataSourceError2MainThread(Ljava/lang/String;)V

    :goto_eb
    return-void
.end method

.method public setIsComplete(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsComplete:Z

    return-void
.end method

.method public setIsFrontDesk(Z)V
    .registers 3

    :try_start_0
    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsFrontDesk:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    goto :goto_d

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void
.end method

.method public setSelfVideoFeedsPlayerListener(Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mInnerVFPLisener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    return-void
.end method

.method public setVideoFeedsPlayerListener(Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mOutterVFListener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    return-void
.end method

.method public showLoading()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$5;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$5;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_18

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    return-void
.end method

.method public start()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->start(Landroid/view/Surface;)V

    return-void
.end method

.method public start(I)V
    .registers 5

    :try_start_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v0

    if-nez v0, :cond_2b

    if-lez p1, :cond_17

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    :cond_17
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->play()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->startPlayProgressTimer()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_2b

    :catch_21
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public start(Landroid/view/Surface;)V
    .registers 3

    :try_start_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V

    if-eqz p1, :cond_1b

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mSurfaceHolder:Landroid/view/Surface;

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    :cond_1b
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->play()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->startPlayProgressTimer()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_2f

    :catch_25
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public stop()V
    .registers 3

    :try_start_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->stop()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->cancelPlayProgressTimer()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_28

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    :goto_28
    return-void
.end method

###### Class com.mbridge.msdk.playercommon.VideoNativePlayer.AnonymousClass1 (com.mbridge.msdk.playercommon.VideoNativePlayer$1)
.class Lcom/mbridge/msdk/playercommon/VideoNativePlayer$1;
.super Landroid/os/Handler;
.source "VideoNativePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/playercommon/VideoNativePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$1;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

###### Class com.mbridge.msdk.playercommon.VideoNativePlayer.AnonymousClass10 (com.mbridge.msdk.playercommon.VideoNativePlayer$10)
.class Lcom/mbridge/msdk/playercommon/VideoNativePlayer$10;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnBufferinEndOnMainThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$10;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$10;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$10;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onBufferingEnd()V

    :cond_11
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$10;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$10;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onBufferingEnd()V

    :cond_22
    return-void
.end method

###### Class com.mbridge.msdk.playercommon.VideoNativePlayer.AnonymousClass11 (com.mbridge.msdk.playercommon.VideoNativePlayer$11)
.class Lcom/mbridge/msdk/playercommon/VideoNativePlayer$11;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayStartOnMainThread(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

.field final synthetic val$allDuration:I


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;I)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$11;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    iput p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$11;->val$allDuration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$11;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$11;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    iget v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$11;->val$allDuration:I

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onPlayStarted(I)V

    :cond_13
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$11;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$11;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    iget v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$11;->val$allDuration:I

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onPlayStarted(I)V

    :cond_26
    return-void
.end method

###### Class com.mbridge.msdk.playercommon.VideoNativePlayer.AnonymousClass12 (com.mbridge.msdk.playercommon.VideoNativePlayer$12)
.class Lcom/mbridge/msdk/playercommon/VideoNativePlayer$12;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

.field final synthetic val$errStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$12;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    iput-object p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$12;->val$errStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$12;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$12;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$12;->val$errStr:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onPlayError(Ljava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$12;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$12;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$12;->val$errStr:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onPlayError(Ljava/lang/String;)V

    :cond_26
    return-void
.end method

###### Class com.mbridge.msdk.playercommon.VideoNativePlayer.AnonymousClass13 (com.mbridge.msdk.playercommon.VideoNativePlayer$13)
.class Lcom/mbridge/msdk/playercommon/VideoNativePlayer$13;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlaySetDataSourceError2MainThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

.field final synthetic val$errStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$13;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    iput-object p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$13;->val$errStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$13;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$13;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$13;->val$errStr:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onPlaySetDataSourceError(Ljava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$13;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$13;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$13;->val$errStr:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onPlaySetDataSourceError(Ljava/lang/String;)V

    :cond_26
    return-void
.end method

###### Class com.mbridge.msdk.playercommon.VideoNativePlayer.AnonymousClass14 (com.mbridge.msdk.playercommon.VideoNativePlayer$14)
.class Lcom/mbridge/msdk/playercommon/VideoNativePlayer$14;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayCompletedOnMainThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$14;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$14;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$14;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onPlayCompleted()V

    :cond_11
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$14;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$14;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onPlayCompleted()V

    :cond_22
    return-void
.end method

###### Class com.mbridge.msdk.playercommon.VideoNativePlayer.AnonymousClass2 (com.mbridge.msdk.playercommon.VideoNativePlayer$2)
.class Lcom/mbridge/msdk/playercommon/VideoNativePlayer$2;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/playercommon/VideoNativePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$000(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$000(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$102(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;J)J

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$100(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$000(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$000(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_4d

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$000(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v5

    div-long/2addr v5, v2

    long-to-int v0, v5

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    iget-object v5, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v5}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$200(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Z

    move-result v5

    if-eqz v5, :cond_60

    iget-object v5, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v5, v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$300(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;I)V

    iget-object v5, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v5, v4}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$202(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Z)Z

    :cond_60
    if-ltz v1, :cond_71

    if-lez v0, :cond_71

    iget-object v5, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {v5}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v5

    if-eqz v5, :cond_71

    iget-object v5, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v5, v1, v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$400(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;II)V

    :cond_71
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0, v4}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$502(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Z)Z

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$600(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Z

    move-result v0

    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$700(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    :cond_83
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$800(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8c} :catch_8d

    goto :goto_97

    :catch_8d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    :goto_97
    return-void
.end method

###### Class com.mbridge.msdk.playercommon.VideoNativePlayer.AnonymousClass3 (com.mbridge.msdk.playercommon.VideoNativePlayer$3)
.class Lcom/mbridge/msdk/playercommon/VideoNativePlayer$3;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/playercommon/VideoNativePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$3;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$3;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$000(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$3;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$3;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$000(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$102(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;J)J

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$3;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$100(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iget-object v4, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$3;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v4}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$000(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_4a

    iget-object v4, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$3;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v4}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$000(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-lez v4, :cond_4a

    iget-object v4, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$3;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v4}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$000(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v7

    div-long/2addr v7, v2

    goto :goto_4b

    :cond_4a
    move-wide v7, v5

    :goto_4b
    cmp-long v4, v0, v5

    if-ltz v4, :cond_65

    cmp-long v0, v7, v5

    if-lez v0, :cond_65

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$3;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$3;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$100(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v0, v4, v5, v7, v8}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$900(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;JJ)V

    :cond_65
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$3;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$800(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6e} :catch_6f

    goto :goto_79

    :catch_6f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_79
    :goto_79
    return-void
.end method

###### Class com.mbridge.msdk.playercommon.VideoNativePlayer.AnonymousClass4 (com.mbridge.msdk.playercommon.VideoNativePlayer$4)
.class Lcom/mbridge/msdk/playercommon/VideoNativePlayer$4;
.super Ljava/util/TimerTask;
.source "VideoNativePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->startBufferingTimer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

.field final synthetic val$bufferMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$4;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    iput-object p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$4;->val$bufferMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$4;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1000(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$4;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$600(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_10
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$4;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$4;->val$bufferMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1100(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_22

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    :goto_22
    return-void
.end method

###### Class com.mbridge.msdk.playercommon.VideoNativePlayer.AnonymousClass5 (com.mbridge.msdk.playercommon.VideoNativePlayer$5)
.class Lcom/mbridge/msdk/playercommon/VideoNativePlayer$5;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$5;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$5;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1200(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$5;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1200(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    return-void
.end method

###### Class com.mbridge.msdk.playercommon.VideoNativePlayer.AnonymousClass6 (com.mbridge.msdk.playercommon.VideoNativePlayer$6)
.class Lcom/mbridge/msdk/playercommon/VideoNativePlayer$6;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$6;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$6;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1200(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$6;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1200(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return-void
.end method

###### Class com.mbridge.msdk.playercommon.VideoNativePlayer.AnonymousClass7 (com.mbridge.msdk.playercommon.VideoNativePlayer$7)
.class Lcom/mbridge/msdk/playercommon/VideoNativePlayer$7;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayProgressOnMainThread(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

.field final synthetic val$allDurationSecond:I

.field final synthetic val$curPlayPosition:I


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;II)V
    .registers 4

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$7;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    iput p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$7;->val$curPlayPosition:I

    iput p3, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$7;->val$allDurationSecond:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$7;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$7;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    iget v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$7;->val$curPlayPosition:I

    iget v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$7;->val$allDurationSecond:I

    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onPlayProgress(II)V

    :cond_15
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$7;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$7;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    iget v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$7;->val$curPlayPosition:I

    iget v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$7;->val$allDurationSecond:I

    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onPlayProgress(II)V

    :cond_2a
    return-void
.end method

###### Class com.mbridge.msdk.playercommon.VideoNativePlayer.AnonymousClass8 (com.mbridge.msdk.playercommon.VideoNativePlayer$8)
.class Lcom/mbridge/msdk/playercommon/VideoNativePlayer$8;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayProgressMSOnMainThread(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

.field final synthetic val$allDurationSecond:J

.field final synthetic val$curPlayPosition:J


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;JJ)V
    .registers 6

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$8;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    iput-wide p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$8;->val$curPlayPosition:J

    iput-wide p4, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$8;->val$allDurationSecond:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$8;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$8;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    iget-wide v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$8;->val$curPlayPosition:J

    long-to-int v2, v1

    iget-wide v3, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$8;->val$allDurationSecond:J

    long-to-int v1, v3

    invoke-interface {v0, v2, v1}, Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onPlayProgressMS(II)V

    :cond_17
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$8;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$8;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    iget-wide v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$8;->val$curPlayPosition:J

    long-to-int v2, v1

    iget-wide v3, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$8;->val$allDurationSecond:J

    long-to-int v1, v3

    invoke-interface {v0, v2, v1}, Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onPlayProgressMS(II)V

    :cond_2e
    return-void
.end method

###### Class com.mbridge.msdk.playercommon.VideoNativePlayer.AnonymousClass9 (com.mbridge.msdk.playercommon.VideoNativePlayer$9)
.class Lcom/mbridge/msdk/playercommon/VideoNativePlayer$9;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnBufferingStarOnMainThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

.field final synthetic val$bufferMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$9;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    iput-object p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$9;->val$bufferMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$9;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$9;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$9;->val$bufferMsg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onBufferingStart(Ljava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$9;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$9;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$9;->val$bufferMsg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onBufferingStart(Ljava/lang/String;)V

    :cond_26
    return-void
.end method

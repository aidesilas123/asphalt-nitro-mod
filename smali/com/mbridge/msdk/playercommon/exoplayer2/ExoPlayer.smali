###### Class com.mbridge.msdk.playercommon.exoplayer2.ExoPlayer (com.mbridge.msdk.playercommon.exoplayer2.ExoPlayer)
.class public interface abstract Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;
.super Ljava/lang/Object;
.source "ExoPlayer.java"

# interfaces
.implements Lcom/mbridge/msdk/playercommon/exoplayer2/Player;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerMessage;,
        Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerComponent;,
        Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$EventListener;
    }
.end annotation


# static fields
.field public static final REPEAT_MODE_ALL:I = 0x2

.field public static final REPEAT_MODE_OFF:I = 0x0

.field public static final REPEAT_MODE_ONE:I = 0x1

.field public static final STATE_BUFFERING:I = 0x2

.field public static final STATE_ENDED:I = 0x4

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_READY:I = 0x3


# virtual methods
.method public varargs abstract blockingSendMessages([Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
.end method

.method public abstract createMessage(Lcom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Target;)Lcom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;
.end method

.method public abstract getPlaybackLooper()Landroid/os/Looper;
.end method

.method public abstract prepare(Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V
.end method

.method public abstract prepare(Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;ZZ)V
.end method

.method public varargs abstract sendMessages([Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
.end method

.method public abstract setSeekParameters(Lcom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;)V
.end method

###### Class com.mbridge.msdk.playercommon.exoplayer2.ExoPlayer.EventListener (com.mbridge.msdk.playercommon.exoplayer2.ExoPlayer$EventListener)
.class public interface abstract Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$EventListener;
.super Ljava/lang/Object;
.source "ExoPlayer.java"

# interfaces
.implements Lcom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation

###### Class com.mbridge.msdk.playercommon.exoplayer2.ExoPlayer.ExoPlayerComponent (com.mbridge.msdk.playercommon.exoplayer2.ExoPlayer$ExoPlayerComponent)
.class public interface abstract Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerComponent;
.super Ljava/lang/Object;
.source "ExoPlayer.java"

# interfaces
.implements Lcom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExoPlayerComponent"
.end annotation

###### Class com.mbridge.msdk.playercommon.exoplayer2.ExoPlayer.ExoPlayerMessage (com.mbridge.msdk.playercommon.exoplayer2.ExoPlayer$ExoPlayerMessage)
.class public final Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerMessage;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExoPlayerMessage"
.end annotation


# instance fields
.field public final message:Ljava/lang/Object;

.field public final messageType:I

.field public final target:Lcom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Target;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Target;ILjava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerMessage;->target:Lcom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Target;

    iput p2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerMessage;->messageType:I

    iput-object p3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerMessage;->message:Ljava/lang/Object;

    return-void
.end method

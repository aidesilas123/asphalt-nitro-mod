###### Class com.mbridge.msdk.playercommon.exoplayer2.upstream.LoaderErrorThrower (com.mbridge.msdk.playercommon.exoplayer2.upstream.LoaderErrorThrower)
.class public interface abstract Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/LoaderErrorThrower;
.super Ljava/lang/Object;
.source "LoaderErrorThrower.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/LoaderErrorThrower$Dummy;
    }
.end annotation


# virtual methods
.method public abstract maybeThrowError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract maybeThrowError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class com.mbridge.msdk.playercommon.exoplayer2.upstream.LoaderErrorThrower.Dummy (com.mbridge.msdk.playercommon.exoplayer2.upstream.LoaderErrorThrower$Dummy)
.class public final Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/LoaderErrorThrower$Dummy;
.super Ljava/lang/Object;
.source "LoaderErrorThrower.java"

# interfaces
.implements Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/LoaderErrorThrower;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/LoaderErrorThrower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dummy"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final maybeThrowError()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final maybeThrowError(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

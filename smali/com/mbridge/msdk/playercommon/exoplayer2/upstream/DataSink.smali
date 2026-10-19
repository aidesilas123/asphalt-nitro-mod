###### Class com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSink (com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSink)
.class public interface abstract Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;
.super Ljava/lang/Object;
.source "DataSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink$Factory;
    }
.end annotation


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract open(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSink.Factory (com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSink$Factory)
.class public interface abstract Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink$Factory;
.super Ljava/lang/Object;
.source "DataSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createDataSink()Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;
.end method

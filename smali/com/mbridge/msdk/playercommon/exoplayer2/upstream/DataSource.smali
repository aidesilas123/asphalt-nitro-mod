###### Class com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource (com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource)
.class public interface abstract Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;
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

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract open(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract read([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource.Factory (com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource$Factory)
.class public interface abstract Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;
.super Ljava/lang/Object;
.source "DataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createDataSource()Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;
.end method

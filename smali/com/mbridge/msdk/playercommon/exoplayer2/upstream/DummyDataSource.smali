###### Class com.mbridge.msdk.playercommon.exoplayer2.upstream.DummyDataSource (com.mbridge.msdk.playercommon.exoplayer2.upstream.DummyDataSource)
.class public final Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DummyDataSource;
.super Ljava/lang/Object;
.source "DummyDataSource.java"

# interfaces
.implements Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;


# static fields
.field public static final FACTORY:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;

.field public static final INSTANCE:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DummyDataSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DummyDataSource;

    invoke-direct {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DummyDataSource;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DummyDataSource;->INSTANCE:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DummyDataSource;

    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DummyDataSource$1;

    invoke-direct {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DummyDataSource$1;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DummyDataSource;->FACTORY:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DummyDataSource$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DummyDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final open(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Dummy source"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final read([BII)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

###### Class com.mbridge.msdk.playercommon.exoplayer2.upstream.DummyDataSource.AnonymousClass1 (com.mbridge.msdk.playercommon.exoplayer2.upstream.DummyDataSource$1)
.class final Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DummyDataSource$1;
.super Ljava/lang/Object;
.source "DummyDataSource.java"

# interfaces
.implements Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DummyDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDataSource()Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;
    .registers 3

    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DummyDataSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DummyDataSource;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DummyDataSource$1;)V

    return-object v0
.end method

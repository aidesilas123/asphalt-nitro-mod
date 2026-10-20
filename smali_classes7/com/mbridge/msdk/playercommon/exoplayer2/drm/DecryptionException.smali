###### Class com.mbridge.msdk.playercommon.exoplayer2.drm.DecryptionException (com.mbridge.msdk.playercommon.exoplayer2.drm.DecryptionException)
.class public Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DecryptionException;
.super Ljava/lang/Exception;
.source "DecryptionException.java"


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DecryptionException;->errorCode:I

    return-void
.end method

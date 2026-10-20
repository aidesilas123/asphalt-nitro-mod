###### Class com.fyber.inneractive.sdk.player.exoplayer2.b (com.fyber.inneractive.sdk.player.exoplayer2.b)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:Ljava/util/UUID;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    sget v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_9

    const/16 v0, 0x3fc

    goto :goto_b

    :cond_9
    const/16 v0, 0x18fc

    :goto_b
    sput v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/b;->a:I

    new-instance v0, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/b;->b:Ljava/util/UUID;

    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x1077efecc0b24d02L

    const-wide v3, -0x531cc3e1ad1d04b5L    # -1.8442503140481377E-92

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v3, -0x5c37d8232ae2de13L

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x65fb0f8667bfbd7aL

    const-wide v3, -0x546d19a41f77a06bL    # -8.640911267670052E-99

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    return-void
.end method

.method public static a(J)J
    .registers 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    if-nez v2, :cond_a

    goto :goto_e

    :cond_a
    const-wide/16 v0, 0x3e8

    mul-long v0, v0, p0

    :goto_e
    return-wide v0
.end method

.method public static b(J)J
    .registers 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    if-nez v2, :cond_a

    goto :goto_e

    :cond_a
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    :goto_e
    return-wide v0
.end method

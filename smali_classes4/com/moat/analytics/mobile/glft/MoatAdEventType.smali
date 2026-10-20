###### Class com.moat.analytics.mobile.glft.MoatAdEventType (com.moat.analytics.mobile.glft.MoatAdEventType)
.class public final enum Lcom/moat/analytics/mobile/glft/MoatAdEventType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moat/analytics/mobile/glft/MoatAdEventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

.field public static final enum AD_EVT_ENTER_FULLSCREEN:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

.field public static final enum AD_EVT_EXIT_FULLSCREEN:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

.field public static final enum AD_EVT_FIRST_QUARTILE:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

.field public static final enum AD_EVT_MID_POINT:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

.field public static final enum AD_EVT_PAUSED:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

.field public static final enum AD_EVT_PLAYING:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

.field public static final enum AD_EVT_SKIPPED:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

.field public static final enum AD_EVT_START:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

.field public static final enum AD_EVT_STOPPED:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

.field public static final enum AD_EVT_THIRD_QUARTILE:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

.field public static final enum AD_EVT_VOLUME_CHANGE:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

.field private static final synthetic b:[Lcom/moat/analytics/mobile/glft/MoatAdEventType;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    const-string v1, "AD_EVT_FIRST_QUARTILE"

    const/4 v2, 0x0

    const-string v3, "AdVideoFirstQuartile"

    invoke-direct {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/glft/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_FIRST_QUARTILE:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    new-instance v1, Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    const-string v3, "AD_EVT_MID_POINT"

    const/4 v4, 0x1

    const-string v5, "AdVideoMidpoint"

    invoke-direct {v1, v3, v4, v5}, Lcom/moat/analytics/mobile/glft/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_MID_POINT:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    new-instance v3, Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    const-string v5, "AD_EVT_THIRD_QUARTILE"

    const/4 v6, 0x2

    const-string v7, "AdVideoThirdQuartile"

    invoke-direct {v3, v5, v6, v7}, Lcom/moat/analytics/mobile/glft/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_THIRD_QUARTILE:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    new-instance v5, Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    const-string v7, "AD_EVT_COMPLETE"

    const/4 v8, 0x3

    const-string v9, "AdVideoComplete"

    invoke-direct {v5, v7, v8, v9}, Lcom/moat/analytics/mobile/glft/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    new-instance v7, Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    const-string v9, "AD_EVT_PAUSED"

    const/4 v10, 0x4

    const-string v11, "AdPaused"

    invoke-direct {v7, v9, v10, v11}, Lcom/moat/analytics/mobile/glft/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_PAUSED:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    new-instance v9, Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    const-string v11, "AD_EVT_PLAYING"

    const/4 v12, 0x5

    const-string v13, "AdPlaying"

    invoke-direct {v9, v11, v12, v13}, Lcom/moat/analytics/mobile/glft/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_PLAYING:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    new-instance v11, Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    const-string v13, "AD_EVT_START"

    const/4 v14, 0x6

    const-string v15, "AdVideoStart"

    invoke-direct {v11, v13, v14, v15}, Lcom/moat/analytics/mobile/glft/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_START:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    new-instance v13, Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    const-string v15, "AD_EVT_STOPPED"

    const/4 v14, 0x7

    const-string v12, "AdStopped"

    invoke-direct {v13, v15, v14, v12}, Lcom/moat/analytics/mobile/glft/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    new-instance v12, Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    const-string v15, "AD_EVT_SKIPPED"

    const/16 v14, 0x8

    const-string v10, "AdSkipped"

    invoke-direct {v12, v15, v14, v10}, Lcom/moat/analytics/mobile/glft/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_SKIPPED:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    new-instance v10, Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    const-string v15, "AD_EVT_VOLUME_CHANGE"

    const/16 v14, 0x9

    const-string v8, "AdVolumeChange"

    invoke-direct {v10, v15, v14, v8}, Lcom/moat/analytics/mobile/glft/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_VOLUME_CHANGE:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    new-instance v8, Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    const-string v15, "AD_EVT_ENTER_FULLSCREEN"

    const/16 v14, 0xa

    const-string v6, "fullScreen"

    invoke-direct {v8, v15, v14, v6}, Lcom/moat/analytics/mobile/glft/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_ENTER_FULLSCREEN:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    new-instance v6, Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    const-string v15, "AD_EVT_EXIT_FULLSCREEN"

    const/16 v14, 0xb

    const-string v4, "exitFullscreen"

    invoke-direct {v6, v15, v14, v4}, Lcom/moat/analytics/mobile/glft/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_EXIT_FULLSCREEN:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    const/16 v4, 0xc

    new-array v4, v4, [Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    aput-object v6, v4, v14

    sput-object v4, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->b:[Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->a:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/moat/analytics/mobile/glft/MoatAdEventType;
    .registers 6

    if-eqz p0, :cond_1a

    invoke-static {}, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->values()[Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    return-object v3

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moat/analytics/mobile/glft/MoatAdEventType;
    .registers 2

    const-class v0, Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    return-object p0
.end method

.method public static values()[Lcom/moat/analytics/mobile/glft/MoatAdEventType;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->b:[Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    invoke-virtual {v0}, [Lcom/moat/analytics/mobile/glft/MoatAdEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->a:Ljava/lang/String;

    return-object v0
.end method

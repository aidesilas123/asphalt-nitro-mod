###### Class com.fyber.inneractive.sdk.model.vast.t (com.fyber.inneractive.sdk.model.vast.t)
.class public final enum Lcom/fyber/inneractive/sdk/model/vast/t;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/inneractive/sdk/model/vast/t;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/inneractive/sdk/model/vast/t;

.field public static final enum EVENT_CLICK:Lcom/fyber/inneractive/sdk/model/vast/t;

.field public static final enum EVENT_CLOSE:Lcom/fyber/inneractive/sdk/model/vast/t;

.field public static final enum EVENT_CLOSE_LINEAR:Lcom/fyber/inneractive/sdk/model/vast/t;

.field public static final enum EVENT_COLLAPSE:Lcom/fyber/inneractive/sdk/model/vast/t;

.field public static final enum EVENT_COMPLETE:Lcom/fyber/inneractive/sdk/model/vast/t;

.field public static final enum EVENT_CREATIVE_VIEW:Lcom/fyber/inneractive/sdk/model/vast/t;

.field public static final enum EVENT_ERROR:Lcom/fyber/inneractive/sdk/model/vast/t;

.field public static final enum EVENT_EXIT_FULLSCREEN:Lcom/fyber/inneractive/sdk/model/vast/t;

.field public static final enum EVENT_EXPAND:Lcom/fyber/inneractive/sdk/model/vast/t;

.field public static final enum EVENT_FINAL_RETURN:Lcom/fyber/inneractive/sdk/model/vast/t;

.field public static final enum EVENT_FIRSTQ:Lcom/fyber/inneractive/sdk/model/vast/t;

.field public static final enum EVENT_FULLSCREEN:Lcom/fyber/inneractive/sdk/model/vast/t;

.field public static final enum EVENT_IMPRESSION:Lcom/fyber/inneractive/sdk/model/vast/t;

.field public static final enum EVENT_MID:Lcom/fyber/inneractive/sdk/model/vast/t;

.field public static final enum EVENT_MUTE:Lcom/fyber/inneractive/sdk/model/vast/t;

.field public static final enum EVENT_PAUSE:Lcom/fyber/inneractive/sdk/model/vast/t;

.field public static final enum EVENT_PROGRESS:Lcom/fyber/inneractive/sdk/model/vast/t;

.field public static final enum EVENT_RESUME:Lcom/fyber/inneractive/sdk/model/vast/t;

.field public static final enum EVENT_REWIND:Lcom/fyber/inneractive/sdk/model/vast/t;

.field public static final enum EVENT_START:Lcom/fyber/inneractive/sdk/model/vast/t;

.field public static final enum EVENT_THIRDQ:Lcom/fyber/inneractive/sdk/model/vast/t;

.field public static final enum EVENT_UNMUTE:Lcom/fyber/inneractive/sdk/model/vast/t;

.field public static final enum EVENT_VERIFICATION_NOT_EXECUTED:Lcom/fyber/inneractive/sdk/model/vast/t;

.field public static final enum UNKNOWN:Lcom/fyber/inneractive/sdk/model/vast/t;

.field private static final sEventsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fyber/inneractive/sdk/model/vast/t;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mKey:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 27

    new-instance v0, Lcom/fyber/inneractive/sdk/model/vast/t;

    const-string v1, "EVENT_FINAL_RETURN"

    const/4 v2, 0x0

    const-string v3, "finalReturn"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/model/vast/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_FINAL_RETURN:Lcom/fyber/inneractive/sdk/model/vast/t;

    new-instance v1, Lcom/fyber/inneractive/sdk/model/vast/t;

    const-string v3, "EVENT_IMPRESSION"

    const/4 v4, 0x1

    const-string v5, "impression"

    invoke-direct {v1, v3, v4, v5}, Lcom/fyber/inneractive/sdk/model/vast/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_IMPRESSION:Lcom/fyber/inneractive/sdk/model/vast/t;

    new-instance v3, Lcom/fyber/inneractive/sdk/model/vast/t;

    const-string v5, "EVENT_START"

    const/4 v6, 0x2

    const-string v7, "start"

    invoke-direct {v3, v5, v6, v7}, Lcom/fyber/inneractive/sdk/model/vast/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_START:Lcom/fyber/inneractive/sdk/model/vast/t;

    new-instance v5, Lcom/fyber/inneractive/sdk/model/vast/t;

    const-string v7, "EVENT_FIRSTQ"

    const/4 v8, 0x3

    const-string v9, "firstQuartile"

    invoke-direct {v5, v7, v8, v9}, Lcom/fyber/inneractive/sdk/model/vast/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_FIRSTQ:Lcom/fyber/inneractive/sdk/model/vast/t;

    new-instance v7, Lcom/fyber/inneractive/sdk/model/vast/t;

    const-string v9, "EVENT_MID"

    const/4 v10, 0x4

    const-string v11, "midpoint"

    invoke-direct {v7, v9, v10, v11}, Lcom/fyber/inneractive/sdk/model/vast/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_MID:Lcom/fyber/inneractive/sdk/model/vast/t;

    new-instance v9, Lcom/fyber/inneractive/sdk/model/vast/t;

    const-string v11, "EVENT_THIRDQ"

    const/4 v12, 0x5

    const-string v13, "thirdQuartile"

    invoke-direct {v9, v11, v12, v13}, Lcom/fyber/inneractive/sdk/model/vast/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_THIRDQ:Lcom/fyber/inneractive/sdk/model/vast/t;

    new-instance v11, Lcom/fyber/inneractive/sdk/model/vast/t;

    const-string v13, "EVENT_COMPLETE"

    const/4 v14, 0x6

    const-string v15, "complete"

    invoke-direct {v11, v13, v14, v15}, Lcom/fyber/inneractive/sdk/model/vast/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_COMPLETE:Lcom/fyber/inneractive/sdk/model/vast/t;

    new-instance v13, Lcom/fyber/inneractive/sdk/model/vast/t;

    const-string v15, "EVENT_MUTE"

    const/4 v14, 0x7

    const-string v12, "mute"

    invoke-direct {v13, v15, v14, v12}, Lcom/fyber/inneractive/sdk/model/vast/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_MUTE:Lcom/fyber/inneractive/sdk/model/vast/t;

    new-instance v12, Lcom/fyber/inneractive/sdk/model/vast/t;

    const-string v15, "EVENT_UNMUTE"

    const/16 v14, 0x8

    const-string v10, "unmute"

    invoke-direct {v12, v15, v14, v10}, Lcom/fyber/inneractive/sdk/model/vast/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_UNMUTE:Lcom/fyber/inneractive/sdk/model/vast/t;

    new-instance v10, Lcom/fyber/inneractive/sdk/model/vast/t;

    const-string v15, "EVENT_PAUSE"

    const/16 v14, 0x9

    const-string v8, "pause"

    invoke-direct {v10, v15, v14, v8}, Lcom/fyber/inneractive/sdk/model/vast/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_PAUSE:Lcom/fyber/inneractive/sdk/model/vast/t;

    new-instance v8, Lcom/fyber/inneractive/sdk/model/vast/t;

    const-string v15, "EVENT_RESUME"

    const/16 v14, 0xa

    const-string v6, "resume"

    invoke-direct {v8, v15, v14, v6}, Lcom/fyber/inneractive/sdk/model/vast/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_RESUME:Lcom/fyber/inneractive/sdk/model/vast/t;

    new-instance v6, Lcom/fyber/inneractive/sdk/model/vast/t;

    const-string v15, "EVENT_FULLSCREEN"

    const/16 v14, 0xb

    const-string v4, "fullscreen"

    invoke-direct {v6, v15, v14, v4}, Lcom/fyber/inneractive/sdk/model/vast/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_FULLSCREEN:Lcom/fyber/inneractive/sdk/model/vast/t;

    new-instance v4, Lcom/fyber/inneractive/sdk/model/vast/t;

    const-string v15, "EVENT_EXIT_FULLSCREEN"

    const/16 v14, 0xc

    const-string v2, "exitFullscreen"

    invoke-direct {v4, v15, v14, v2}, Lcom/fyber/inneractive/sdk/model/vast/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_EXIT_FULLSCREEN:Lcom/fyber/inneractive/sdk/model/vast/t;

    new-instance v2, Lcom/fyber/inneractive/sdk/model/vast/t;

    const-string v15, "EVENT_CREATIVE_VIEW"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "creativeView"

    invoke-direct {v2, v15, v14, v4}, Lcom/fyber/inneractive/sdk/model/vast/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_CREATIVE_VIEW:Lcom/fyber/inneractive/sdk/model/vast/t;

    new-instance v4, Lcom/fyber/inneractive/sdk/model/vast/t;

    const-string v15, "EVENT_CLICK"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "click"

    invoke-direct {v4, v15, v14, v2}, Lcom/fyber/inneractive/sdk/model/vast/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_CLICK:Lcom/fyber/inneractive/sdk/model/vast/t;

    new-instance v2, Lcom/fyber/inneractive/sdk/model/vast/t;

    const-string v15, "EVENT_ERROR"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "error"

    invoke-direct {v2, v15, v14, v4}, Lcom/fyber/inneractive/sdk/model/vast/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_ERROR:Lcom/fyber/inneractive/sdk/model/vast/t;

    new-instance v4, Lcom/fyber/inneractive/sdk/model/vast/t;

    const-string v15, "EVENT_REWIND"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "rewind"

    invoke-direct {v4, v15, v14, v2}, Lcom/fyber/inneractive/sdk/model/vast/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_REWIND:Lcom/fyber/inneractive/sdk/model/vast/t;

    new-instance v2, Lcom/fyber/inneractive/sdk/model/vast/t;

    const-string v15, "EVENT_CLOSE"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "close"

    invoke-direct {v2, v15, v14, v4}, Lcom/fyber/inneractive/sdk/model/vast/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_CLOSE:Lcom/fyber/inneractive/sdk/model/vast/t;

    new-instance v4, Lcom/fyber/inneractive/sdk/model/vast/t;

    const-string v15, "EVENT_VERIFICATION_NOT_EXECUTED"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const-string v2, "verificationNotExecuted"

    invoke-direct {v4, v15, v14, v2}, Lcom/fyber/inneractive/sdk/model/vast/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_VERIFICATION_NOT_EXECUTED:Lcom/fyber/inneractive/sdk/model/vast/t;

    new-instance v2, Lcom/fyber/inneractive/sdk/model/vast/t;

    const-string v15, "EVENT_EXPAND"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string v4, "expand"

    invoke-direct {v2, v15, v14, v4}, Lcom/fyber/inneractive/sdk/model/vast/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_EXPAND:Lcom/fyber/inneractive/sdk/model/vast/t;

    new-instance v4, Lcom/fyber/inneractive/sdk/model/vast/t;

    const-string v15, "EVENT_COLLAPSE"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const-string v2, "collapse"

    invoke-direct {v4, v15, v14, v2}, Lcom/fyber/inneractive/sdk/model/vast/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_COLLAPSE:Lcom/fyber/inneractive/sdk/model/vast/t;

    new-instance v2, Lcom/fyber/inneractive/sdk/model/vast/t;

    const-string v15, "EVENT_CLOSE_LINEAR"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const-string v4, "closeLinear"

    invoke-direct {v2, v15, v14, v4}, Lcom/fyber/inneractive/sdk/model/vast/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_CLOSE_LINEAR:Lcom/fyber/inneractive/sdk/model/vast/t;

    new-instance v4, Lcom/fyber/inneractive/sdk/model/vast/t;

    const-string v15, "EVENT_PROGRESS"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const-string v2, "progress"

    invoke-direct {v4, v15, v14, v2}, Lcom/fyber/inneractive/sdk/model/vast/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_PROGRESS:Lcom/fyber/inneractive/sdk/model/vast/t;

    new-instance v2, Lcom/fyber/inneractive/sdk/model/vast/t;

    const-string v14, "UNKNOWN"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const-string v4, "UnkownEvent"

    invoke-direct {v2, v14, v15, v4}, Lcom/fyber/inneractive/sdk/model/vast/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/fyber/inneractive/sdk/model/vast/t;->UNKNOWN:Lcom/fyber/inneractive/sdk/model/vast/t;

    const/16 v4, 0x18

    new-array v4, v4, [Lcom/fyber/inneractive/sdk/model/vast/t;

    const/4 v14, 0x0

    aput-object v0, v4, v14

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

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v2, v4, v0

    sput-object v4, Lcom/fyber/inneractive/sdk/model/vast/t;->$VALUES:[Lcom/fyber/inneractive/sdk/model/vast/t;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/model/vast/t;->sEventsMap:Ljava/util/Map;

    invoke-static {}, Lcom/fyber/inneractive/sdk/model/vast/t;->values()[Lcom/fyber/inneractive/sdk/model/vast/t;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1b1
    if-ge v2, v1, :cond_1bf

    aget-object v3, v0, v2

    sget-object v4, Lcom/fyber/inneractive/sdk/model/vast/t;->sEventsMap:Ljava/util/Map;

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/model/vast/t;->mKey:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b1

    :cond_1bf
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/model/vast/t;->mKey:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/model/vast/t;
    .registers 3

    sget-object v0, Lcom/fyber/inneractive/sdk/model/vast/t;->sEventsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/model/vast/t;

    goto :goto_11

    :cond_f
    sget-object p0, Lcom/fyber/inneractive/sdk/model/vast/t;->UNKNOWN:Lcom/fyber/inneractive/sdk/model/vast/t;

    :goto_11
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/model/vast/t;
    .registers 2

    const-class v0, Lcom/fyber/inneractive/sdk/model/vast/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/model/vast/t;

    return-object p0
.end method

.method public static values()[Lcom/fyber/inneractive/sdk/model/vast/t;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/model/vast/t;->$VALUES:[Lcom/fyber/inneractive/sdk/model/vast/t;

    invoke-virtual {v0}, [Lcom/fyber/inneractive/sdk/model/vast/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/model/vast/t;

    return-object v0
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/model/vast/t;->mKey:Ljava/lang/String;

    return-object v0
.end method

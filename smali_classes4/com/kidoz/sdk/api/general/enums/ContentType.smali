###### Class com.kidoz.sdk.api.general.enums.ContentType (com.kidoz.sdk.api.general.enums.ContentType)
.class public final enum Lcom/kidoz/sdk/api/general/enums/ContentType;
.super Ljava/lang/Enum;
.source "ContentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/general/enums/ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/general/enums/ContentType;

.field public static final enum EXTERNAL_BROWSER_URL:Lcom/kidoz/sdk/api/general/enums/ContentType;

.field public static final enum GOOGLE_PLAY_APPLICATION:Lcom/kidoz/sdk/api/general/enums/ContentType;

.field public static final enum HTML:Lcom/kidoz/sdk/api/general/enums/ContentType;

.field public static final enum NONE:Lcom/kidoz/sdk/api/general/enums/ContentType;

.field public static final enum PROMOTED_PLAY_APPLICATION:Lcom/kidoz/sdk/api/general/enums/ContentType;

.field public static final enum ROVIO_ITEM:Lcom/kidoz/sdk/api/general/enums/ContentType;

.field public static final enum STREAMING_VIDEO:Lcom/kidoz/sdk/api/general/enums/ContentType;

.field public static final enum VIMEO_VIDEO:Lcom/kidoz/sdk/api/general/enums/ContentType;

.field public static final enum WEBSITE_URL:Lcom/kidoz/sdk/api/general/enums/ContentType;

.field public static final enum WEB_GAME_URL:Lcom/kidoz/sdk/api/general/enums/ContentType;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/kidoz/sdk/api/general/enums/ContentType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final reverseLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/kidoz/sdk/api/general/enums/ContentType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/general/enums/ContentType;
    .registers 3

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/kidoz/sdk/api/general/enums/ContentType;

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/ContentType;->NONE:Lcom/kidoz/sdk/api/general/enums/ContentType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/ContentType;->GOOGLE_PLAY_APPLICATION:Lcom/kidoz/sdk/api/general/enums/ContentType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/ContentType;->PROMOTED_PLAY_APPLICATION:Lcom/kidoz/sdk/api/general/enums/ContentType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/ContentType;->WEB_GAME_URL:Lcom/kidoz/sdk/api/general/enums/ContentType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/ContentType;->WEBSITE_URL:Lcom/kidoz/sdk/api/general/enums/ContentType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/ContentType;->STREAMING_VIDEO:Lcom/kidoz/sdk/api/general/enums/ContentType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/ContentType;->VIMEO_VIDEO:Lcom/kidoz/sdk/api/general/enums/ContentType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/ContentType;->EXTERNAL_BROWSER_URL:Lcom/kidoz/sdk/api/general/enums/ContentType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/ContentType;->HTML:Lcom/kidoz/sdk/api/general/enums/ContentType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/ContentType;->ROVIO_ITEM:Lcom/kidoz/sdk/api/general/enums/ContentType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 23

    new-instance v0, Lcom/kidoz/sdk/api/general/enums/ContentType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/enums/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/enums/ContentType;->NONE:Lcom/kidoz/sdk/api/general/enums/ContentType;

    new-instance v1, Lcom/kidoz/sdk/api/general/enums/ContentType;

    const-string v2, "GOOGLE_PLAY_APPLICATION"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3}, Lcom/kidoz/sdk/api/general/enums/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kidoz/sdk/api/general/enums/ContentType;->GOOGLE_PLAY_APPLICATION:Lcom/kidoz/sdk/api/general/enums/ContentType;

    new-instance v2, Lcom/kidoz/sdk/api/general/enums/ContentType;

    const-string v3, "PROMOTED_PLAY_APPLICATION"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v3, v5}, Lcom/kidoz/sdk/api/general/enums/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/kidoz/sdk/api/general/enums/ContentType;->PROMOTED_PLAY_APPLICATION:Lcom/kidoz/sdk/api/general/enums/ContentType;

    new-instance v3, Lcom/kidoz/sdk/api/general/enums/ContentType;

    const-string v5, "WEB_GAME_URL"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v3, v5, v7}, Lcom/kidoz/sdk/api/general/enums/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/kidoz/sdk/api/general/enums/ContentType;->WEB_GAME_URL:Lcom/kidoz/sdk/api/general/enums/ContentType;

    new-instance v5, Lcom/kidoz/sdk/api/general/enums/ContentType;

    const-string v7, "WEBSITE_URL"

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v5, v7, v9}, Lcom/kidoz/sdk/api/general/enums/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/kidoz/sdk/api/general/enums/ContentType;->WEBSITE_URL:Lcom/kidoz/sdk/api/general/enums/ContentType;

    new-instance v7, Lcom/kidoz/sdk/api/general/enums/ContentType;

    const-string v9, "STREAMING_VIDEO"

    const/4 v11, 0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v7, v9, v11}, Lcom/kidoz/sdk/api/general/enums/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/kidoz/sdk/api/general/enums/ContentType;->STREAMING_VIDEO:Lcom/kidoz/sdk/api/general/enums/ContentType;

    new-instance v9, Lcom/kidoz/sdk/api/general/enums/ContentType;

    const-string v11, "VIMEO_VIDEO"

    const/4 v13, 0x6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v9, v11, v13}, Lcom/kidoz/sdk/api/general/enums/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/kidoz/sdk/api/general/enums/ContentType;->VIMEO_VIDEO:Lcom/kidoz/sdk/api/general/enums/ContentType;

    new-instance v11, Lcom/kidoz/sdk/api/general/enums/ContentType;

    const-string v13, "EXTERNAL_BROWSER_URL"

    const/4 v15, 0x7

    move-object/from16 v16, v9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v11, v13, v15}, Lcom/kidoz/sdk/api/general/enums/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/kidoz/sdk/api/general/enums/ContentType;->EXTERNAL_BROWSER_URL:Lcom/kidoz/sdk/api/general/enums/ContentType;

    new-instance v13, Lcom/kidoz/sdk/api/general/enums/ContentType;

    const-string v15, "HTML"

    move-object/from16 v17, v9

    const/16 v9, 0x8

    invoke-direct {v13, v15, v9}, Lcom/kidoz/sdk/api/general/enums/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/kidoz/sdk/api/general/enums/ContentType;->HTML:Lcom/kidoz/sdk/api/general/enums/ContentType;

    new-instance v9, Lcom/kidoz/sdk/api/general/enums/ContentType;

    const-string v15, "ROVIO_ITEM"

    move-object/from16 v18, v13

    const/16 v13, 0x9

    invoke-direct {v9, v15, v13}, Lcom/kidoz/sdk/api/general/enums/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/kidoz/sdk/api/general/enums/ContentType;->ROVIO_ITEM:Lcom/kidoz/sdk/api/general/enums/ContentType;

    invoke-static {}, Lcom/kidoz/sdk/api/general/enums/ContentType;->$values()[Lcom/kidoz/sdk/api/general/enums/ContentType;

    move-result-object v13

    sput-object v13, Lcom/kidoz/sdk/api/general/enums/ContentType;->$VALUES:[Lcom/kidoz/sdk/api/general/enums/ContentType;

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    sput-object v13, Lcom/kidoz/sdk/api/general/enums/ContentType;->lookup:Ljava/util/Map;

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    sput-object v15, Lcom/kidoz/sdk/api/general/enums/ContentType;->reverseLookup:Ljava/util/Map;

    const/16 v19, -0x1

    move-object/from16 v20, v15

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v13, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v13, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v13, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v13, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v13, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v7

    move-object/from16 v7, v16

    invoke-interface {v13, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v17

    invoke-interface {v13, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v17, 0xa

    move-object/from16 v21, v7

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v17, v11

    move-object/from16 v11, v18

    invoke-interface {v13, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v18, 0xb

    move-object/from16 v22, v7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v13, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v20

    invoke-interface {v13, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v13, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v13, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v13, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v13, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-interface {v13, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v16

    invoke-interface {v13, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v13, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v22

    invoke-interface {v13, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v13, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getTypeByValue(I)Lcom/kidoz/sdk/api/general/enums/ContentType;
    .registers 2

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/ContentType;->reverseLookup:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/general/enums/ContentType;

    return-object p0
.end method

.method public static getValueFromType(Lcom/kidoz/sdk/api/general/enums/ContentType;)I
    .registers 2

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/ContentType;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/enums/ContentType;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/general/enums/ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/general/enums/ContentType;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/general/enums/ContentType;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/ContentType;->$VALUES:[Lcom/kidoz/sdk/api/general/enums/ContentType;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/general/enums/ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/general/enums/ContentType;

    return-object v0
.end method

###### Class com.kidoz.sdk.api.general.enums.HtmlType (com.kidoz.sdk.api.general.enums.HtmlType)
.class public final enum Lcom/kidoz/sdk/api/general/enums/HtmlType;
.super Ljava/lang/Enum;
.source "HtmlType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/general/enums/HtmlType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/general/enums/HtmlType;

.field public static final enum DOUBLE_CLICK:Lcom/kidoz/sdk/api/general/enums/HtmlType;

.field public static final enum JAVASCRIPT:Lcom/kidoz/sdk/api/general/enums/HtmlType;

.field public static final enum MRAID:Lcom/kidoz/sdk/api/general/enums/HtmlType;

.field public static final enum NONE:Lcom/kidoz/sdk/api/general/enums/HtmlType;

.field public static final enum SUPER_AWESOME:Lcom/kidoz/sdk/api/general/enums/HtmlType;

.field public static final enum VAST:Lcom/kidoz/sdk/api/general/enums/HtmlType;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/kidoz/sdk/api/general/enums/HtmlType;",
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
            "Lcom/kidoz/sdk/api/general/enums/HtmlType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/general/enums/HtmlType;
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/kidoz/sdk/api/general/enums/HtmlType;

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/HtmlType;->NONE:Lcom/kidoz/sdk/api/general/enums/HtmlType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/HtmlType;->VAST:Lcom/kidoz/sdk/api/general/enums/HtmlType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/HtmlType;->MRAID:Lcom/kidoz/sdk/api/general/enums/HtmlType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/HtmlType;->DOUBLE_CLICK:Lcom/kidoz/sdk/api/general/enums/HtmlType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/HtmlType;->SUPER_AWESOME:Lcom/kidoz/sdk/api/general/enums/HtmlType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/HtmlType;->JAVASCRIPT:Lcom/kidoz/sdk/api/general/enums/HtmlType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 14

    new-instance v0, Lcom/kidoz/sdk/api/general/enums/HtmlType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/enums/HtmlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/enums/HtmlType;->NONE:Lcom/kidoz/sdk/api/general/enums/HtmlType;

    new-instance v1, Lcom/kidoz/sdk/api/general/enums/HtmlType;

    const-string v2, "VAST"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v4}, Lcom/kidoz/sdk/api/general/enums/HtmlType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kidoz/sdk/api/general/enums/HtmlType;->VAST:Lcom/kidoz/sdk/api/general/enums/HtmlType;

    new-instance v2, Lcom/kidoz/sdk/api/general/enums/HtmlType;

    const-string v4, "MRAID"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v4, v6}, Lcom/kidoz/sdk/api/general/enums/HtmlType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/kidoz/sdk/api/general/enums/HtmlType;->MRAID:Lcom/kidoz/sdk/api/general/enums/HtmlType;

    new-instance v4, Lcom/kidoz/sdk/api/general/enums/HtmlType;

    const-string v6, "DOUBLE_CLICK"

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v4, v6, v8}, Lcom/kidoz/sdk/api/general/enums/HtmlType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/kidoz/sdk/api/general/enums/HtmlType;->DOUBLE_CLICK:Lcom/kidoz/sdk/api/general/enums/HtmlType;

    new-instance v6, Lcom/kidoz/sdk/api/general/enums/HtmlType;

    const-string v8, "SUPER_AWESOME"

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v6, v8, v10}, Lcom/kidoz/sdk/api/general/enums/HtmlType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/kidoz/sdk/api/general/enums/HtmlType;->SUPER_AWESOME:Lcom/kidoz/sdk/api/general/enums/HtmlType;

    new-instance v8, Lcom/kidoz/sdk/api/general/enums/HtmlType;

    const-string v10, "JAVASCRIPT"

    const/4 v12, 0x5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v8, v10, v12}, Lcom/kidoz/sdk/api/general/enums/HtmlType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/kidoz/sdk/api/general/enums/HtmlType;->JAVASCRIPT:Lcom/kidoz/sdk/api/general/enums/HtmlType;

    invoke-static {}, Lcom/kidoz/sdk/api/general/enums/HtmlType;->$values()[Lcom/kidoz/sdk/api/general/enums/HtmlType;

    move-result-object v10

    sput-object v10, Lcom/kidoz/sdk/api/general/enums/HtmlType;->$VALUES:[Lcom/kidoz/sdk/api/general/enums/HtmlType;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, Lcom/kidoz/sdk/api/general/enums/HtmlType;->lookup:Ljava/util/Map;

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    sput-object v12, Lcom/kidoz/sdk/api/general/enums/HtmlType;->reverseLookup:Ljava/util/Map;

    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v10, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v10, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v10, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v10, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v10, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getTypeByValue(I)Lcom/kidoz/sdk/api/general/enums/HtmlType;
    .registers 2

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/HtmlType;->reverseLookup:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/general/enums/HtmlType;

    return-object p0
.end method

.method public static getValueFromType(Lcom/kidoz/sdk/api/general/enums/HtmlType;)I
    .registers 2

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/HtmlType;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/enums/HtmlType;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/general/enums/HtmlType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/general/enums/HtmlType;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/general/enums/HtmlType;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/HtmlType;->$VALUES:[Lcom/kidoz/sdk/api/general/enums/HtmlType;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/general/enums/HtmlType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/general/enums/HtmlType;

    return-object v0
.end method

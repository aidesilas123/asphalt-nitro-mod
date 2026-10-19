###### Class com.kidoz.sdk.api.general.utils.StorageLife (com.kidoz.sdk.api.general.utils.StorageLife)
.class public final enum Lcom/kidoz/sdk/api/general/utils/StorageLife;
.super Ljava/lang/Enum;
.source "StorageLife.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/general/utils/StorageLife;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/general/utils/StorageLife;

.field public static final enum APP:Lcom/kidoz/sdk/api/general/utils/StorageLife;

.field public static final enum SESSION:Lcom/kidoz/sdk/api/general/utils/StorageLife;

.field public static final enum WIDGET:Lcom/kidoz/sdk/api/general/utils/StorageLife;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/kidoz/sdk/api/general/utils/StorageLife;",
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
            "Lcom/kidoz/sdk/api/general/utils/StorageLife;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/general/utils/StorageLife;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kidoz/sdk/api/general/utils/StorageLife;

    sget-object v1, Lcom/kidoz/sdk/api/general/utils/StorageLife;->WIDGET:Lcom/kidoz/sdk/api/general/utils/StorageLife;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/utils/StorageLife;->SESSION:Lcom/kidoz/sdk/api/general/utils/StorageLife;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/utils/StorageLife;->APP:Lcom/kidoz/sdk/api/general/utils/StorageLife;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/kidoz/sdk/api/general/utils/StorageLife;

    const-string v1, "WIDGET"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/utils/StorageLife;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/utils/StorageLife;->WIDGET:Lcom/kidoz/sdk/api/general/utils/StorageLife;

    new-instance v1, Lcom/kidoz/sdk/api/general/utils/StorageLife;

    const-string v2, "SESSION"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v4}, Lcom/kidoz/sdk/api/general/utils/StorageLife;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kidoz/sdk/api/general/utils/StorageLife;->SESSION:Lcom/kidoz/sdk/api/general/utils/StorageLife;

    new-instance v2, Lcom/kidoz/sdk/api/general/utils/StorageLife;

    const-string v4, "APP"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v4, v6}, Lcom/kidoz/sdk/api/general/utils/StorageLife;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/kidoz/sdk/api/general/utils/StorageLife;->APP:Lcom/kidoz/sdk/api/general/utils/StorageLife;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/StorageLife;->$values()[Lcom/kidoz/sdk/api/general/utils/StorageLife;

    move-result-object v4

    sput-object v4, Lcom/kidoz/sdk/api/general/utils/StorageLife;->$VALUES:[Lcom/kidoz/sdk/api/general/utils/StorageLife;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/kidoz/sdk/api/general/utils/StorageLife;->lookup:Ljava/util/Map;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lcom/kidoz/sdk/api/general/utils/StorageLife;->reverseLookup:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getTypeByValue(I)Lcom/kidoz/sdk/api/general/utils/StorageLife;
    .registers 2

    sget-object v0, Lcom/kidoz/sdk/api/general/utils/StorageLife;->reverseLookup:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/general/utils/StorageLife;

    return-object p0
.end method

.method public static getValueFromType(Lcom/kidoz/sdk/api/general/utils/StorageLife;)I
    .registers 2

    sget-object v0, Lcom/kidoz/sdk/api/general/utils/StorageLife;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/StorageLife;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/general/utils/StorageLife;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/general/utils/StorageLife;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/general/utils/StorageLife;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/general/utils/StorageLife;->$VALUES:[Lcom/kidoz/sdk/api/general/utils/StorageLife;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/general/utils/StorageLife;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/general/utils/StorageLife;

    return-object v0
.end method

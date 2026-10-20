###### Class com.kidoz.sdk.api.server_connect.SdkRequestType (com.kidoz.sdk.api.server_connect.SdkRequestType)
.class public final enum Lcom/kidoz/sdk/api/server_connect/SdkRequestType;
.super Ljava/lang/Enum;
.source "SdkRequestType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/server_connect/SdkRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

.field public static final enum GET_COUNTRY_CODE:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

.field public static final enum GET_SDK_RESOURCES:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

.field public static final enum GET_STYLE:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

.field public static final enum LOAD_PAINTER_STATIC_CONTENT:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

.field public static final enum LOAD_PANDA_STATIC_CONTENT:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

.field public static final enum LOAD_SDK_CONTENT:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

.field public static final enum LOAD_WATERFALL:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

.field public static final enum SEND_EVENT:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

.field public static final enum VALIDATE_SDK:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/server_connect/SdkRequestType;
    .registers 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    sget-object v1, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->GET_COUNTRY_CODE:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->LOAD_SDK_CONTENT:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->LOAD_PAINTER_STATIC_CONTENT:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->LOAD_PANDA_STATIC_CONTENT:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->VALIDATE_SDK:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->GET_SDK_RESOURCES:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->GET_STYLE:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->SEND_EVENT:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->LOAD_WATERFALL:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const-string v1, "GET_COUNTRY_CODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->GET_COUNTRY_CODE:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    new-instance v0, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const-string v1, "LOAD_SDK_CONTENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->LOAD_SDK_CONTENT:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    new-instance v0, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const-string v1, "LOAD_PAINTER_STATIC_CONTENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->LOAD_PAINTER_STATIC_CONTENT:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    new-instance v0, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const-string v1, "LOAD_PANDA_STATIC_CONTENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->LOAD_PANDA_STATIC_CONTENT:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    new-instance v0, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const-string v1, "VALIDATE_SDK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->VALIDATE_SDK:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    new-instance v0, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const-string v1, "GET_SDK_RESOURCES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->GET_SDK_RESOURCES:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    new-instance v0, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const-string v1, "GET_STYLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->GET_STYLE:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    new-instance v0, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const-string v1, "SEND_EVENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->SEND_EVENT:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    new-instance v0, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const-string v1, "LOAD_WATERFALL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->LOAD_WATERFALL:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    invoke-static {}, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->$values()[Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->$VALUES:[Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/server_connect/SdkRequestType;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/server_connect/SdkRequestType;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->$VALUES:[Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    return-object v0
.end method

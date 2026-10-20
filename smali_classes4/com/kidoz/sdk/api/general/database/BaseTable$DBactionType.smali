###### Class com.kidoz.sdk.api.general.database.BaseTable.DBactionType (com.kidoz.sdk.api.general.database.BaseTable$DBactionType)
.class public final enum Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;
.super Ljava/lang/Enum;
.source "BaseTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/general/database/BaseTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DBactionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

.field public static final enum DELETE:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

.field public static final enum INSERT:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

.field public static final enum LOAD:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

.field public static final enum UPDATE:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    sget-object v1, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->INSERT:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->UPDATE:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->DELETE:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->LOAD:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const-string v1, "INSERT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->INSERT:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    new-instance v0, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const-string v1, "UPDATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->UPDATE:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    new-instance v0, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const-string v1, "DELETE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->DELETE:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    new-instance v0, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const-string v1, "LOAD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->LOAD:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    invoke-static {}, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->$values()[Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->$VALUES:[Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->$VALUES:[Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    return-object v0
.end method

###### Class com.fyber.inneractive.sdk.network.x0 (com.fyber.inneractive.sdk.network.x0)
.class public final enum Lcom/fyber/inneractive/sdk/network/x0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/inneractive/sdk/network/x0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/inneractive/sdk/network/x0;

.field public static final enum ERROR_TABLE:Lcom/fyber/inneractive/sdk/network/x0;

.field public static final enum EVENT_TABLE:Lcom/fyber/inneractive/sdk/network/x0;


# instance fields
.field private final tableName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/fyber/inneractive/sdk/network/x0;

    const-string v1, "EVENT_TABLE"

    const/4 v2, 0x0

    const-string v3, "sdk_event_"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/network/x0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/inneractive/sdk/network/x0;->EVENT_TABLE:Lcom/fyber/inneractive/sdk/network/x0;

    new-instance v1, Lcom/fyber/inneractive/sdk/network/x0;

    const-string v3, "ERROR_TABLE"

    const/4 v4, 0x1

    const-string v5, "sdk_error_"

    invoke-direct {v1, v3, v4, v5}, Lcom/fyber/inneractive/sdk/network/x0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/fyber/inneractive/sdk/network/x0;->ERROR_TABLE:Lcom/fyber/inneractive/sdk/network/x0;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/fyber/inneractive/sdk/network/x0;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/fyber/inneractive/sdk/network/x0;->$VALUES:[Lcom/fyber/inneractive/sdk/network/x0;

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

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/network/x0;->tableName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/network/x0;
    .registers 2

    const-class v0, Lcom/fyber/inneractive/sdk/network/x0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/network/x0;

    return-object p0
.end method

.method public static values()[Lcom/fyber/inneractive/sdk/network/x0;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/network/x0;->$VALUES:[Lcom/fyber/inneractive/sdk/network/x0;

    invoke-virtual {v0}, [Lcom/fyber/inneractive/sdk/network/x0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/network/x0;

    return-object v0
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/x0;->tableName:Ljava/lang/String;

    return-object v0
.end method

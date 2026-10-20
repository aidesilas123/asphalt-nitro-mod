###### Class com.fyber.inneractive.sdk.network.o0 (com.fyber.inneractive.sdk.network.o0)
.class public final enum Lcom/fyber/inneractive/sdk/network/o0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/inneractive/sdk/network/o0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/inneractive/sdk/network/o0;

.field public static final enum HIGH:Lcom/fyber/inneractive/sdk/network/o0;

.field public static final enum LOW:Lcom/fyber/inneractive/sdk/network/o0;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/fyber/inneractive/sdk/network/o0;

    const-string v1, "HIGH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fyber/inneractive/sdk/network/o0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/inneractive/sdk/network/o0;->HIGH:Lcom/fyber/inneractive/sdk/network/o0;

    new-instance v1, Lcom/fyber/inneractive/sdk/network/o0;

    const-string v3, "LOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/fyber/inneractive/sdk/network/o0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/fyber/inneractive/sdk/network/o0;->LOW:Lcom/fyber/inneractive/sdk/network/o0;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/fyber/inneractive/sdk/network/o0;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/fyber/inneractive/sdk/network/o0;->$VALUES:[Lcom/fyber/inneractive/sdk/network/o0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/network/o0;
    .registers 2

    const-class v0, Lcom/fyber/inneractive/sdk/network/o0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/network/o0;

    return-object p0
.end method

.method public static values()[Lcom/fyber/inneractive/sdk/network/o0;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/network/o0;->$VALUES:[Lcom/fyber/inneractive/sdk/network/o0;

    invoke-virtual {v0}, [Lcom/fyber/inneractive/sdk/network/o0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/network/o0;

    return-object v0
.end method

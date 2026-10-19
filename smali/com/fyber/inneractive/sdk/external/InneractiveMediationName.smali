###### Class com.fyber.inneractive.sdk.external.InneractiveMediationName (com.fyber.inneractive.sdk.external.InneractiveMediationName)
.class public final enum Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;

.field public static final enum ADMOB:Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;

.field public static final enum DFP:Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;

.field public static final enum FYBER:Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;

.field public static final enum OTHER:Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;


# instance fields
.field public final key:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    new-instance v0, Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;

    const-string v1, "ADMOB"

    const/4 v2, 0x0

    const-string v3, "admob"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;->ADMOB:Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;

    new-instance v1, Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;

    const-string v3, "DFP"

    const/4 v4, 0x1

    const-string v5, "dfp"

    invoke-direct {v1, v3, v4, v5}, Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;->DFP:Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;

    new-instance v3, Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;

    const-string v5, "FYBER"

    const/4 v6, 0x2

    const-string v7, "fyber"

    invoke-direct {v3, v5, v6, v7}, Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;->FYBER:Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;

    new-instance v5, Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;

    const-string v7, "OTHER"

    const/4 v8, 0x3

    const-string v9, "other"

    invoke-direct {v5, v7, v8, v9}, Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;->OTHER:Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;->$VALUES:[Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;

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

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;
    .registers 2

    const-class v0, Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;

    return-object p0
.end method

.method public static values()[Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;->$VALUES:[Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;

    invoke-virtual {v0}, [Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;->key:Ljava/lang/String;

    return-object v0
.end method

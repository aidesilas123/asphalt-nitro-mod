###### Class com.fyber.inneractive.sdk.config.global.features.r.d (com.fyber.inneractive.sdk.config.global.features.r$d)
.class public final enum Lcom/fyber/inneractive/sdk/config/global/features/r$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/config/global/features/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/inneractive/sdk/config/global/features/r$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/inneractive/sdk/config/global/features/r$d;

.field public static final enum EXTRACTOR:Lcom/fyber/inneractive/sdk/config/global/features/r$d;

.field public static final enum LEGACY:Lcom/fyber/inneractive/sdk/config/global/features/r$d;

.field public static final enum NONE:Lcom/fyber/inneractive/sdk/config/global/features/r$d;


# instance fields
.field public key:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/fyber/inneractive/sdk/config/global/features/r$d;

    const-string v1, "LEGACY"

    const/4 v2, 0x0

    const-string v3, "legacy"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/config/global/features/r$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/inneractive/sdk/config/global/features/r$d;->LEGACY:Lcom/fyber/inneractive/sdk/config/global/features/r$d;

    new-instance v1, Lcom/fyber/inneractive/sdk/config/global/features/r$d;

    const-string v3, "EXTRACTOR"

    const/4 v4, 0x1

    const-string v5, "extractor"

    invoke-direct {v1, v3, v4, v5}, Lcom/fyber/inneractive/sdk/config/global/features/r$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/fyber/inneractive/sdk/config/global/features/r$d;->EXTRACTOR:Lcom/fyber/inneractive/sdk/config/global/features/r$d;

    new-instance v3, Lcom/fyber/inneractive/sdk/config/global/features/r$d;

    const-string v5, "NONE"

    const/4 v6, 0x2

    const-string v7, "none"

    invoke-direct {v3, v5, v6, v7}, Lcom/fyber/inneractive/sdk/config/global/features/r$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/fyber/inneractive/sdk/config/global/features/r$d;->NONE:Lcom/fyber/inneractive/sdk/config/global/features/r$d;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/fyber/inneractive/sdk/config/global/features/r$d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/fyber/inneractive/sdk/config/global/features/r$d;->$VALUES:[Lcom/fyber/inneractive/sdk/config/global/features/r$d;

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

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/config/global/features/r$d;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/config/global/features/r$d;
    .registers 2

    const-class v0, Lcom/fyber/inneractive/sdk/config/global/features/r$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/config/global/features/r$d;

    return-object p0
.end method

.method public static values()[Lcom/fyber/inneractive/sdk/config/global/features/r$d;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/config/global/features/r$d;->$VALUES:[Lcom/fyber/inneractive/sdk/config/global/features/r$d;

    invoke-virtual {v0}, [Lcom/fyber/inneractive/sdk/config/global/features/r$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/config/global/features/r$d;

    return-object v0
.end method

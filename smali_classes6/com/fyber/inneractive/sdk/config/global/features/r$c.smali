###### Class com.fyber.inneractive.sdk.config.global.features.r.c (com.fyber.inneractive.sdk.config.global.features.r$c)
.class public final enum Lcom/fyber/inneractive/sdk/config/global/features/r$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/config/global/features/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/inneractive/sdk/config/global/features/r$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/inneractive/sdk/config/global/features/r$c;

.field public static final enum NONE:Lcom/fyber/inneractive/sdk/config/global/features/r$c;

.field public static final enum ZOOM_IN:Lcom/fyber/inneractive/sdk/config/global/features/r$c;


# instance fields
.field public mKey:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/fyber/inneractive/sdk/config/global/features/r$c;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "none"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/config/global/features/r$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/inneractive/sdk/config/global/features/r$c;->NONE:Lcom/fyber/inneractive/sdk/config/global/features/r$c;

    new-instance v1, Lcom/fyber/inneractive/sdk/config/global/features/r$c;

    const-string v3, "ZOOM_IN"

    const/4 v4, 0x1

    const-string v5, "endcard_zoom_in"

    invoke-direct {v1, v3, v4, v5}, Lcom/fyber/inneractive/sdk/config/global/features/r$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/fyber/inneractive/sdk/config/global/features/r$c;->ZOOM_IN:Lcom/fyber/inneractive/sdk/config/global/features/r$c;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/fyber/inneractive/sdk/config/global/features/r$c;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/fyber/inneractive/sdk/config/global/features/r$c;->$VALUES:[Lcom/fyber/inneractive/sdk/config/global/features/r$c;

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

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/config/global/features/r$c;->mKey:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/config/global/features/r$c;
    .registers 2

    const-class v0, Lcom/fyber/inneractive/sdk/config/global/features/r$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/config/global/features/r$c;

    return-object p0
.end method

.method public static values()[Lcom/fyber/inneractive/sdk/config/global/features/r$c;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/config/global/features/r$c;->$VALUES:[Lcom/fyber/inneractive/sdk/config/global/features/r$c;

    invoke-virtual {v0}, [Lcom/fyber/inneractive/sdk/config/global/features/r$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/config/global/features/r$c;

    return-object v0
.end method

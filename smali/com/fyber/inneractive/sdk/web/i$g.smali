###### Class com.fyber.inneractive.sdk.web.i.g (com.fyber.inneractive.sdk.web.i$g)
.class public final enum Lcom/fyber/inneractive/sdk/web/i$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/web/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/inneractive/sdk/web/i$g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/inneractive/sdk/web/i$g;

.field public static final enum INLINE:Lcom/fyber/inneractive/sdk/web/i$g;

.field public static final enum INTERSTITIAL:Lcom/fyber/inneractive/sdk/web/i$g;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/fyber/inneractive/sdk/web/i$g;

    const-string v1, "INLINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fyber/inneractive/sdk/web/i$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/inneractive/sdk/web/i$g;->INLINE:Lcom/fyber/inneractive/sdk/web/i$g;

    new-instance v1, Lcom/fyber/inneractive/sdk/web/i$g;

    const-string v3, "INTERSTITIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/fyber/inneractive/sdk/web/i$g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/fyber/inneractive/sdk/web/i$g;->INTERSTITIAL:Lcom/fyber/inneractive/sdk/web/i$g;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/fyber/inneractive/sdk/web/i$g;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/fyber/inneractive/sdk/web/i$g;->$VALUES:[Lcom/fyber/inneractive/sdk/web/i$g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/web/i$g;
    .registers 2

    const-class v0, Lcom/fyber/inneractive/sdk/web/i$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/web/i$g;

    return-object p0
.end method

.method public static values()[Lcom/fyber/inneractive/sdk/web/i$g;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/web/i$g;->$VALUES:[Lcom/fyber/inneractive/sdk/web/i$g;

    invoke-virtual {v0}, [Lcom/fyber/inneractive/sdk/web/i$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/web/i$g;

    return-object v0
.end method

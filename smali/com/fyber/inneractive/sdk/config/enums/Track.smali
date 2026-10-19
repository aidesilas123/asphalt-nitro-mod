###### Class com.fyber.inneractive.sdk.config.enums.Track (com.fyber.inneractive.sdk.config.enums.Track)
.class public final enum Lcom/fyber/inneractive/sdk/config/enums/Track;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/inneractive/sdk/config/enums/Track;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/inneractive/sdk/config/enums/Track;

.field private static final CONSTANTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fyber/inneractive/sdk/config/enums/Track;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ERRORS:Lcom/fyber/inneractive/sdk/config/enums/Track;

.field public static final enum NETWORKING:Lcom/fyber/inneractive/sdk/config/enums/Track;

.field public static final enum VIEWABILITY:Lcom/fyber/inneractive/sdk/config/enums/Track;


# instance fields
.field private final stringValue:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/fyber/inneractive/sdk/config/enums/Track;

    const-string v1, "ERRORS"

    const/4 v2, 0x0

    const-string v3, "errors"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/config/enums/Track;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/inneractive/sdk/config/enums/Track;->ERRORS:Lcom/fyber/inneractive/sdk/config/enums/Track;

    new-instance v1, Lcom/fyber/inneractive/sdk/config/enums/Track;

    const-string v3, "NETWORKING"

    const/4 v4, 0x1

    const-string v5, "networking"

    invoke-direct {v1, v3, v4, v5}, Lcom/fyber/inneractive/sdk/config/enums/Track;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/fyber/inneractive/sdk/config/enums/Track;->NETWORKING:Lcom/fyber/inneractive/sdk/config/enums/Track;

    new-instance v3, Lcom/fyber/inneractive/sdk/config/enums/Track;

    const-string v5, "VIEWABILITY"

    const/4 v6, 0x2

    const-string v7, "viewability"

    invoke-direct {v3, v5, v6, v7}, Lcom/fyber/inneractive/sdk/config/enums/Track;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/fyber/inneractive/sdk/config/enums/Track;->VIEWABILITY:Lcom/fyber/inneractive/sdk/config/enums/Track;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/fyber/inneractive/sdk/config/enums/Track;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/fyber/inneractive/sdk/config/enums/Track;->$VALUES:[Lcom/fyber/inneractive/sdk/config/enums/Track;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/config/enums/Track;->CONSTANTS:Ljava/util/Map;

    invoke-static {}, Lcom/fyber/inneractive/sdk/config/enums/Track;->values()[Lcom/fyber/inneractive/sdk/config/enums/Track;

    move-result-object v0

    array-length v1, v0

    :goto_3b
    if-ge v2, v1, :cond_49

    aget-object v3, v0, v2

    sget-object v4, Lcom/fyber/inneractive/sdk/config/enums/Track;->CONSTANTS:Ljava/util/Map;

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/config/enums/Track;->stringValue:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_49
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/config/enums/Track;->stringValue:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/config/enums/Track;
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    sget-object v0, Lcom/fyber/inneractive/sdk/config/enums/Track;->CONSTANTS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/config/enums/Track;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/config/enums/Track;
    .registers 2

    const-class v0, Lcom/fyber/inneractive/sdk/config/enums/Track;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/config/enums/Track;

    return-object p0
.end method

.method public static values()[Lcom/fyber/inneractive/sdk/config/enums/Track;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/config/enums/Track;->$VALUES:[Lcom/fyber/inneractive/sdk/config/enums/Track;

    invoke-virtual {v0}, [Lcom/fyber/inneractive/sdk/config/enums/Track;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/config/enums/Track;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/enums/Track;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/enums/Track;->stringValue:Ljava/lang/String;

    return-object v0
.end method

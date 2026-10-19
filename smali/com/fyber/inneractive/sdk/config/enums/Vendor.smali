###### Class com.fyber.inneractive.sdk.config.enums.Vendor (com.fyber.inneractive.sdk.config.enums.Vendor)
.class public final enum Lcom/fyber/inneractive/sdk/config/enums/Vendor;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/inneractive/sdk/config/enums/Vendor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/inneractive/sdk/config/enums/Vendor;

.field private static final CONSTANTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fyber/inneractive/sdk/config/enums/Vendor;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum MOAT:Lcom/fyber/inneractive/sdk/config/enums/Vendor;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/fyber/inneractive/sdk/config/enums/Vendor;

    const-string v1, "MOAT"

    const/4 v2, 0x0

    const-string v3, "moat"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/config/enums/Vendor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/inneractive/sdk/config/enums/Vendor;->MOAT:Lcom/fyber/inneractive/sdk/config/enums/Vendor;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/fyber/inneractive/sdk/config/enums/Vendor;

    aput-object v0, v1, v2

    sput-object v1, Lcom/fyber/inneractive/sdk/config/enums/Vendor;->$VALUES:[Lcom/fyber/inneractive/sdk/config/enums/Vendor;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/config/enums/Vendor;->CONSTANTS:Ljava/util/Map;

    invoke-static {}, Lcom/fyber/inneractive/sdk/config/enums/Vendor;->values()[Lcom/fyber/inneractive/sdk/config/enums/Vendor;

    move-result-object v0

    array-length v1, v0

    :goto_1f
    if-ge v2, v1, :cond_2d

    aget-object v3, v0, v2

    sget-object v4, Lcom/fyber/inneractive/sdk/config/enums/Vendor;->CONSTANTS:Ljava/util/Map;

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/config/enums/Vendor;->value:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_2d
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

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/config/enums/Vendor;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/config/enums/Vendor;
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    sget-object v0, Lcom/fyber/inneractive/sdk/config/enums/Vendor;->CONSTANTS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/config/enums/Vendor;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/config/enums/Vendor;
    .registers 2

    const-class v0, Lcom/fyber/inneractive/sdk/config/enums/Vendor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/config/enums/Vendor;

    return-object p0
.end method

.method public static values()[Lcom/fyber/inneractive/sdk/config/enums/Vendor;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/config/enums/Vendor;->$VALUES:[Lcom/fyber/inneractive/sdk/config/enums/Vendor;

    invoke-virtual {v0}, [Lcom/fyber/inneractive/sdk/config/enums/Vendor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/config/enums/Vendor;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/enums/Vendor;->value:Ljava/lang/String;

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/enums/Vendor;->value:Ljava/lang/String;

    return-object v0
.end method

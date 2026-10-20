###### Class com.fyber.inneractive.sdk.ignite.k (com.fyber.inneractive.sdk.ignite.k)
.class public final enum Lcom/fyber/inneractive/sdk/ignite/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/inneractive/sdk/ignite/k;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/inneractive/sdk/ignite/k;

.field private static final CONSTANTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fyber/inneractive/sdk/ignite/k;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NONE:Lcom/fyber/inneractive/sdk/ignite/k;

.field public static final enum SINGLE_TAP:Lcom/fyber/inneractive/sdk/ignite/k;

.field public static final enum TRUE_SINGLE_TAP:Lcom/fyber/inneractive/sdk/ignite/k;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/fyber/inneractive/sdk/ignite/k;

    const-string v1, "TRUE_SINGLE_TAP"

    const/4 v2, 0x0

    const-string v3, "tst"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/ignite/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/inneractive/sdk/ignite/k;->TRUE_SINGLE_TAP:Lcom/fyber/inneractive/sdk/ignite/k;

    new-instance v1, Lcom/fyber/inneractive/sdk/ignite/k;

    const-string v3, "SINGLE_TAP"

    const/4 v4, 0x1

    const-string v5, "st"

    invoke-direct {v1, v3, v4, v5}, Lcom/fyber/inneractive/sdk/ignite/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/fyber/inneractive/sdk/ignite/k;->SINGLE_TAP:Lcom/fyber/inneractive/sdk/ignite/k;

    new-instance v3, Lcom/fyber/inneractive/sdk/ignite/k;

    const-string v5, "NONE"

    const/4 v6, 0x2

    const-string v7, "none"

    invoke-direct {v3, v5, v6, v7}, Lcom/fyber/inneractive/sdk/ignite/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/fyber/inneractive/sdk/ignite/k;->NONE:Lcom/fyber/inneractive/sdk/ignite/k;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/fyber/inneractive/sdk/ignite/k;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/fyber/inneractive/sdk/ignite/k;->$VALUES:[Lcom/fyber/inneractive/sdk/ignite/k;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/ignite/k;->CONSTANTS:Ljava/util/Map;

    invoke-static {}, Lcom/fyber/inneractive/sdk/ignite/k;->values()[Lcom/fyber/inneractive/sdk/ignite/k;

    move-result-object v0

    array-length v1, v0

    :goto_3b
    if-ge v2, v1, :cond_49

    aget-object v3, v0, v2

    sget-object v4, Lcom/fyber/inneractive/sdk/ignite/k;->CONSTANTS:Ljava/util/Map;

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/ignite/k;->value:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_49
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

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/ignite/k;->value:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/ignite/k;
    .registers 2

    sget-object v0, Lcom/fyber/inneractive/sdk/ignite/k;->CONSTANTS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/ignite/k;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/ignite/k;
    .registers 2

    const-class v0, Lcom/fyber/inneractive/sdk/ignite/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/ignite/k;

    return-object p0
.end method

.method public static values()[Lcom/fyber/inneractive/sdk/ignite/k;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/ignite/k;->$VALUES:[Lcom/fyber/inneractive/sdk/ignite/k;

    invoke-virtual {v0}, [Lcom/fyber/inneractive/sdk/ignite/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/ignite/k;

    return-object v0
.end method


# virtual methods
.method public e()Z
    .registers 2

    sget-object v0, Lcom/fyber/inneractive/sdk/ignite/k;->TRUE_SINGLE_TAP:Lcom/fyber/inneractive/sdk/ignite/k;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/ignite/k;->value:Ljava/lang/String;

    return-object v0
.end method

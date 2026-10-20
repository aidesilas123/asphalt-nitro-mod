###### Class com.fyber.inneractive.sdk.model.vast.i (com.fyber.inneractive.sdk.model.vast.i)
.class public final enum Lcom/fyber/inneractive/sdk/model/vast/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/inneractive/sdk/model/vast/i;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/inneractive/sdk/model/vast/i;

.field public static final enum Gif:Lcom/fyber/inneractive/sdk/model/vast/i;

.field public static final enum Jpeg:Lcom/fyber/inneractive/sdk/model/vast/i;

.field public static final enum Jpg:Lcom/fyber/inneractive/sdk/model/vast/i;

.field public static final enum Png:Lcom/fyber/inneractive/sdk/model/vast/i;

.field private static final sCreativeTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fyber/inneractive/sdk/model/vast/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMimeType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    new-instance v0, Lcom/fyber/inneractive/sdk/model/vast/i;

    const-string v1, "Jpeg"

    const/4 v2, 0x0

    const-string v3, "image/jpeg"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/model/vast/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/inneractive/sdk/model/vast/i;->Jpeg:Lcom/fyber/inneractive/sdk/model/vast/i;

    new-instance v1, Lcom/fyber/inneractive/sdk/model/vast/i;

    const-string v3, "Jpg"

    const/4 v4, 0x1

    const-string v5, "image/jpg"

    invoke-direct {v1, v3, v4, v5}, Lcom/fyber/inneractive/sdk/model/vast/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/fyber/inneractive/sdk/model/vast/i;->Jpg:Lcom/fyber/inneractive/sdk/model/vast/i;

    new-instance v3, Lcom/fyber/inneractive/sdk/model/vast/i;

    const-string v5, "Gif"

    const/4 v6, 0x2

    const-string v7, "image/gif"

    invoke-direct {v3, v5, v6, v7}, Lcom/fyber/inneractive/sdk/model/vast/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/fyber/inneractive/sdk/model/vast/i;->Gif:Lcom/fyber/inneractive/sdk/model/vast/i;

    new-instance v5, Lcom/fyber/inneractive/sdk/model/vast/i;

    const-string v7, "Png"

    const/4 v8, 0x3

    const-string v9, "image/png"

    invoke-direct {v5, v7, v8, v9}, Lcom/fyber/inneractive/sdk/model/vast/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/fyber/inneractive/sdk/model/vast/i;->Png:Lcom/fyber/inneractive/sdk/model/vast/i;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/fyber/inneractive/sdk/model/vast/i;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/fyber/inneractive/sdk/model/vast/i;->$VALUES:[Lcom/fyber/inneractive/sdk/model/vast/i;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/model/vast/i;->sCreativeTypeMap:Ljava/util/Map;

    invoke-static {}, Lcom/fyber/inneractive/sdk/model/vast/i;->values()[Lcom/fyber/inneractive/sdk/model/vast/i;

    move-result-object v0

    array-length v1, v0

    :goto_49
    if-ge v2, v1, :cond_57

    aget-object v3, v0, v2

    sget-object v4, Lcom/fyber/inneractive/sdk/model/vast/i;->sCreativeTypeMap:Ljava/util/Map;

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/model/vast/i;->mMimeType:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    :cond_57
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

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/model/vast/i;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/model/vast/i;
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/fyber/inneractive/sdk/model/vast/i;->sCreativeTypeMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/model/vast/i;

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/model/vast/i;
    .registers 2

    const-class v0, Lcom/fyber/inneractive/sdk/model/vast/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/model/vast/i;

    return-object p0
.end method

.method public static values()[Lcom/fyber/inneractive/sdk/model/vast/i;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/model/vast/i;->$VALUES:[Lcom/fyber/inneractive/sdk/model/vast/i;

    invoke-virtual {v0}, [Lcom/fyber/inneractive/sdk/model/vast/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/model/vast/i;

    return-object v0
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/model/vast/i;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

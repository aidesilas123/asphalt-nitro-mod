###### Class com.fyber.inneractive.sdk.model.vast.q (com.fyber.inneractive.sdk.model.vast.q)
.class public final enum Lcom/fyber/inneractive/sdk/model/vast/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/inneractive/sdk/model/vast/q;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/inneractive/sdk/model/vast/q;

.field public static final enum MEDIA_TYPE_3GPP:Lcom/fyber/inneractive/sdk/model/vast/q;

.field public static final enum MEDIA_TYPE_MP4:Lcom/fyber/inneractive/sdk/model/vast/q;

.field public static final enum MEDIA_TYPE_WEBM:Lcom/fyber/inneractive/sdk/model/vast/q;

.field public static final enum MEDIA_TYPE_X_MPEG:Lcom/fyber/inneractive/sdk/model/vast/q;

.field public static final enum UNKNOWN:Lcom/fyber/inneractive/sdk/model/vast/q;

.field private static final sMediaTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fyber/inneractive/sdk/model/vast/q;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mimeType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    new-instance v0, Lcom/fyber/inneractive/sdk/model/vast/q;

    const-string v1, "MEDIA_TYPE_MP4"

    const/4 v2, 0x0

    const-string v3, "video/mp4"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/model/vast/q;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/inneractive/sdk/model/vast/q;->MEDIA_TYPE_MP4:Lcom/fyber/inneractive/sdk/model/vast/q;

    new-instance v1, Lcom/fyber/inneractive/sdk/model/vast/q;

    const-string v3, "MEDIA_TYPE_3GPP"

    const/4 v4, 0x1

    const-string v5, "video/3gpp"

    invoke-direct {v1, v3, v4, v5}, Lcom/fyber/inneractive/sdk/model/vast/q;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/fyber/inneractive/sdk/model/vast/q;->MEDIA_TYPE_3GPP:Lcom/fyber/inneractive/sdk/model/vast/q;

    new-instance v3, Lcom/fyber/inneractive/sdk/model/vast/q;

    const-string v5, "MEDIA_TYPE_WEBM"

    const/4 v6, 0x2

    const-string v7, "video/webm"

    invoke-direct {v3, v5, v6, v7}, Lcom/fyber/inneractive/sdk/model/vast/q;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/fyber/inneractive/sdk/model/vast/q;->MEDIA_TYPE_WEBM:Lcom/fyber/inneractive/sdk/model/vast/q;

    new-instance v5, Lcom/fyber/inneractive/sdk/model/vast/q;

    const-string v7, "MEDIA_TYPE_X_MPEG"

    const/4 v8, 0x3

    const-string v9, "application/x-mpegURL"

    invoke-direct {v5, v7, v8, v9}, Lcom/fyber/inneractive/sdk/model/vast/q;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/fyber/inneractive/sdk/model/vast/q;->MEDIA_TYPE_X_MPEG:Lcom/fyber/inneractive/sdk/model/vast/q;

    new-instance v7, Lcom/fyber/inneractive/sdk/model/vast/q;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    const-string v11, "unknown"

    invoke-direct {v7, v9, v10, v11}, Lcom/fyber/inneractive/sdk/model/vast/q;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/fyber/inneractive/sdk/model/vast/q;->UNKNOWN:Lcom/fyber/inneractive/sdk/model/vast/q;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/fyber/inneractive/sdk/model/vast/q;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/fyber/inneractive/sdk/model/vast/q;->$VALUES:[Lcom/fyber/inneractive/sdk/model/vast/q;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/model/vast/q;->sMediaTypeMap:Ljava/util/Map;

    invoke-static {}, Lcom/fyber/inneractive/sdk/model/vast/q;->values()[Lcom/fyber/inneractive/sdk/model/vast/q;

    move-result-object v0

    array-length v1, v0

    :goto_57
    if-ge v2, v1, :cond_65

    aget-object v3, v0, v2

    sget-object v4, Lcom/fyber/inneractive/sdk/model/vast/q;->sMediaTypeMap:Ljava/util/Map;

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/model/vast/q;->mimeType:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    :cond_65
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

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/model/vast/q;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/model/vast/q;
    .registers 3

    sget-object v0, Lcom/fyber/inneractive/sdk/model/vast/q;->sMediaTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/model/vast/q;

    goto :goto_11

    :cond_f
    sget-object p0, Lcom/fyber/inneractive/sdk/model/vast/q;->UNKNOWN:Lcom/fyber/inneractive/sdk/model/vast/q;

    :goto_11
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/model/vast/q;
    .registers 2

    const-class v0, Lcom/fyber/inneractive/sdk/model/vast/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/model/vast/q;

    return-object p0
.end method

.method public static values()[Lcom/fyber/inneractive/sdk/model/vast/q;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/model/vast/q;->$VALUES:[Lcom/fyber/inneractive/sdk/model/vast/q;

    invoke-virtual {v0}, [Lcom/fyber/inneractive/sdk/model/vast/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/model/vast/q;

    return-object v0
.end method

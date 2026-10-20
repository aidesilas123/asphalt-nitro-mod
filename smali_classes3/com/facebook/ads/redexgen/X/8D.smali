###### Class com.facebook.ads.redexgen.X.C8D (com.facebook.ads.redexgen.X.8D)
.class public final Lcom/facebook/ads/redexgen/X/8D;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/8H;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A03:Lorg/json/JSONObject;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "MRuBx"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "tnrUNtkj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "pjyIxrC6Yt5E7Bc8e3CsDS5x0xMg"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2xISKY0hJDtdJSu4Q6JXzE3xpGdbyGij"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ditV1dZQcpc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LaRPF5Qegj7e827D6k5bX2o3j9w5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "b"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ieJW9hY3GIu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8D;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8D;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8D;->A02:Ljava/util/Map;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8D;->A00:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8D;->A01:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/8D;->A03:Lorg/json/JSONObject;

    if-eqz p4, :cond_18

    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_19

    :cond_18
    return-void

    :cond_19
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8H;->values()[Lcom/facebook/ads/redexgen/X/8H;

    move-result-object v5

    array-length v4, v5

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v4, :cond_30

    aget-object v2, v5, v3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8D;->A02:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_30
    const/4 v4, 0x0

    :goto_31
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_73

    :try_start_37
    invoke-virtual {p4, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8D;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x4

    const/4 v1, 0x3

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8D;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8H;->valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/8H;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_70

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8D;->A02:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_70

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_70} :catch_70

    :catch_70
    :cond_70
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_73
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/8D;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x9

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .registers 4

    const/4 v0, 0x7

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/8D;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1b
    sget-object v2, Lcom/facebook/ads/redexgen/X/8D;->A05:[Ljava/lang/String;

    const-string v1, "sekG1ort6wl"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "5zf1LSqUL7z"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    fill-array-data v3, :array_2e

    sput-object v3, Lcom/facebook/ads/redexgen/X/8D;->A04:[B

    return-void

    nop

    :array_2e
    .array-data 1
        -0x17t
        -0x12t
        -0x1bt
        -0x26t
        -0x45t
        -0x48t
        -0x4et
    .end array-data
.end method


# virtual methods
.method public final A02()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8D;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/8H;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/8H;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8D;->A02:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final A04()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8D;->A03:Lorg/json/JSONObject;

    return-object v0
.end method

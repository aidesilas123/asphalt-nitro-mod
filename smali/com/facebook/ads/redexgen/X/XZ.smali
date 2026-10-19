###### Class com.facebook.ads.redexgen.X.XZ (com.facebook.ads.redexgen.X.XZ)
.class public final Lcom/facebook/ads/redexgen/X/XZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Id;


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Y9;

.field public A01:Lcom/facebook/ads/redexgen/X/Xa;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "T62Ry0cHQcXSDxKL7NhTV4RGJa1EK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DJGQMadZkB17LVbr"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "iOkG4K13Hjl0NUqXuJlVUejicjlk1nzW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "33srKXABt3KwFUuhEJwkq3ZAZBzDwUgt"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "PLu8UfSRSTd2rcgSm6FUEhoaf9WcktnC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1tfjOobuNxYUsDgE6aIuCnswgchDbiIE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "3cN0JgpVgSdwOhRQcWnO1AlK5DQJr2L6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ilEunU5aQdATmqkKFrVV7R1hAU4VbdID"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/XZ;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XZ;->A01()V

    const-class v0, Lcom/facebook/ads/redexgen/X/XZ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/XZ;->A04:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Y9;Lcom/facebook/ads/redexgen/X/Xa;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/XZ;->A01:Lcom/facebook/ads/redexgen/X/Xa;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/XZ;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x48

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
    .registers 1

    const/16 v0, 0x1b7

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/XZ;->A02:[B

    return-void

    :array_a
    .array-data 1
        0x56t
        0x10t
        0x19t
        0x4t
        0x56t
        0x13t
        0x0t
        0x13t
        0x18t
        0x2t
        0x3ft
        0x12t
        0x56t
        0x73t
        0x20t
        0x26t
        0x30t
        0x30t
        0x36t
        0x20t
        0x20t
        0x35t
        0x26t
        0x3ft
        0x3ft
        0x2at
        0x7dt
        0x20t
        0x22t
        0x3t
        0xat
        0x3t
        0x12t
        0x3t
        0x2t
        0x46t
        0x3t
        0x10t
        0x3t
        0x8t
        0x12t
        0x15t
        0x46t
        0x3t
        0x1et
        0x5t
        0x3t
        0x3t
        0x2t
        0x3t
        0x2t
        0x46t
        0x14t
        0x3t
        0x12t
        0x14t
        0x1ft
        0x46t
        0xat
        0xft
        0xbt
        0xft
        0x12t
        0x48t
        0x46t
        0x25t
        0x9t
        0x13t
        0x8t
        0x12t
        0x5ct
        0x46t
        0x41t
        0x66t
        0x6et
        0x6bt
        0x62t
        0x63t
        0x27t
        0x73t
        0x68t
        0x27t
        0x77t
        0x66t
        0x75t
        0x74t
        0x62t
        0x27t
        0x66t
        0x69t
        0x27t
        0x62t
        0x71t
        0x62t
        0x69t
        0x73t
        0x27t
        0x6et
        0x69t
        0x27t
        0x62t
        0x71t
        0x62t
        0x69t
        0x73t
        0x74t
        0x27t
        0x66t
        0x75t
        0x75t
        0x66t
        0x7et
        0x27t
        0x61t
        0x68t
        0x75t
        0x27t
        0x63t
        0x6et
        0x74t
        0x77t
        0x66t
        0x73t
        0x64t
        0x6ft
        0x27t
        0x61t
        0x66t
        0x6et
        0x6bt
        0x72t
        0x75t
        0x62t
        0x29t
        0x70t
        0x57t
        0x5ft
        0x5at
        0x53t
        0x52t
        0x16t
        0x42t
        0x59t
        0x16t
        0x46t
        0x57t
        0x44t
        0x45t
        0x53t
        0x16t
        0x57t
        0x58t
        0x16t
        0x53t
        0x40t
        0x53t
        0x58t
        0x42t
        0x16t
        0x5ft
        0x58t
        0x16t
        0x53t
        0x40t
        0x53t
        0x58t
        0x42t
        0x45t
        0x16t
        0x5at
        0x5ft
        0x45t
        0x42t
        0x16t
        0x41t
        0x5et
        0x53t
        0x58t
        0x16t
        0x46t
        0x44t
        0x53t
        0x46t
        0x57t
        0x44t
        0x5ft
        0x58t
        0x51t
        0x16t
        0x52t
        0x5ft
        0x45t
        0x46t
        0x57t
        0x42t
        0x55t
        0x5et
        0x16t
        0x46t
        0x57t
        0x4ft
        0x5at
        0x59t
        0x57t
        0x52t
        0x18t
        0x7t
        0x31t
        0x26t
        0x22t
        0x31t
        0x26t
        0x74t
        0x24t
        0x26t
        0x3bt
        0x37t
        0x31t
        0x27t
        0x27t
        0x31t
        0x30t
        0x74t
        0x31t
        0x22t
        0x31t
        0x3at
        0x20t
        0x1dt
        0x30t
        0x74t
        0x11t
        0x27t
        0x30t
        0x34t
        0x27t
        0x30t
        0x62t
        0x30t
        0x27t
        0x36t
        0x37t
        0x30t
        0x2ct
        0x27t
        0x26t
        0x62t
        0x2ct
        0x2dt
        0x2ct
        0x6ft
        0x30t
        0x27t
        0x36t
        0x30t
        0x3bt
        0x23t
        0x20t
        0x2et
        0x27t
        0x62t
        0x27t
        0x30t
        0x30t
        0x2dt
        0x30t
        0x62t
        0x21t
        0x2dt
        0x26t
        0x27t
        0x62t
        0x58t
        0x6et
        0x79t
        0x7dt
        0x6et
        0x79t
        0x2bt
        0x79t
        0x6et
        0x7ft
        0x7et
        0x79t
        0x65t
        0x6et
        0x6ft
        0x2bt
        0x79t
        0x6et
        0x7ft
        0x79t
        0x72t
        0x6at
        0x69t
        0x67t
        0x6et
        0x2bt
        0x6et
        0x79t
        0x79t
        0x64t
        0x79t
        0x2bt
        0x68t
        0x64t
        0x6ft
        0x6et
        0x2bt
        0x44t
        0x7ft
        0x70t
        0x73t
        0x7dt
        0x74t
        0x31t
        0x65t
        0x7et
        0x31t
        0x61t
        0x70t
        0x63t
        0x62t
        0x74t
        0x31t
        0x62t
        0x74t
        0x63t
        0x67t
        0x74t
        0x63t
        0x31t
        0x63t
        0x74t
        0x62t
        0x61t
        0x7et
        0x7ft
        0x62t
        0x74t
        0x31t
        0x70t
        0x65t
        0x31t
        0x61t
        0x7et
        0x62t
        0x78t
        0x65t
        0x78t
        0x7et
        0x7ft
        0x31t
        0x75t
        0x79t
        0x72t
        0x73t
        0xdt
        0x1et
        0xdt
        0x6t
        0x1ct
        0x1bt
        0x38t
        0x3bt
        0x3ft
        0x2at
        0x2bt
        0x2ct
        0x3bt
        0x73t
        0x3dt
        0x31t
        0x30t
        0x38t
        0x37t
        0x39t
        0x73t
        0x3bt
        0x28t
        0x3bt
        0x30t
        0x2at
        0x73t
        0x33t
        0x3ft
        0x39t
        0x37t
        0x3dt
        0x5ft
        0x5ct
        0x58t
        0x4dt
        0x4ct
        0x4bt
        0x5ct
        0x66t
        0x5at
        0x56t
        0x57t
        0x5ft
        0x50t
        0x5et
        0x74t
        0x79t
        0x75t
        0x62t
        0x64t
        0x68t
        0x75t
        0x63t
        0x58t
        0x63t
        0x66t
        0x73t
        0x66t
        0x65t
        0x66t
        0x74t
        0x62t
        0x3ct
        0x27t
        0x23t
        0x2dt
        0x26t
        0x3at
        0x21t
        0x25t
        0x2bt
        0x20t
        0x11t
        0x27t
        0x2at
        0x20t
        0x3bt
        0x3ft
        0x31t
        0x3at
        0x27t
    .end array-data
.end method

.method private A02(Ljava/util/Set;Ljava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IR;->A0G(Landroid/content/Context;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A01:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/ads/redexgen/X/Xa;->A0B(ILjava/util/Set;Ljava/util/Set;)I

    move-result v6

    if-lez v6, :cond_43

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/7x;->A10:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1c

    const/16 v1, 0x2c

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x195

    const/16 v1, 0xf

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    :cond_43
    return-void
.end method


# virtual methods
.method public final A4X()Lorg/json/JSONObject;
    .registers 10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IR;->A0F(Landroid/content/Context;)I

    move-result v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A01:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Xa;->A0C(I)Ljava/util/List;

    move-result-object v7

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_15
    :goto_15
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    :try_start_21
    const/16 v2, 0x1a4

    const/4 v1, 0x5

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v2, 0x1a9

    const/16 v1, 0x8

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_15
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_45} :catch_6e

    :cond_45
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IR;->A0P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IR;->A08(Landroid/content/Context;)I

    move-result v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-static {v0, v7}, Lcom/facebook/ads/redexgen/X/7z;->A04(Lcom/facebook/ads/redexgen/X/7S;I)Lorg/json/JSONArray;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/XZ;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_a8

    goto :goto_84

    :catch_6e
    move-exception v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A04()Lcom/facebook/ads/redexgen/X/7X;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/XZ;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6a

    if-eq v1, v0, :cond_8a

    :goto_84
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8a
    sget-object v2, Lcom/facebook/ads/redexgen/X/XZ;->A03:[Ljava/lang/String;

    const-string v1, "eMFgGe3BwzjIEwfr0eq56CqWHHfmSWyD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/7X;->A8o()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v3, Lcom/facebook/ads/redexgen/X/XZ;->A04:Ljava/lang/String;

    const/16 v2, 0x86

    const/16 v1, 0x48

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    :cond_a8
    sget-object v2, Lcom/facebook/ads/redexgen/X/XZ;->A03:[Ljava/lang/String;

    const-string v1, "31pn7rS79XEbH8v4aDva0zyRbLn9ex8z"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "3BqVDGT4msLu1Rtl2iVh8DraLvTqVCKW"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_c3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_c3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    add-int/2addr v6, v7

    invoke-static {v0, v3, v4, v6}, Lcom/facebook/ads/redexgen/X/Ug;->A02(Lcom/facebook/ads/redexgen/X/Y9;Lorg/json/JSONArray;Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v4

    :cond_c3
    const/4 v3, 0x0

    :try_start_c4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_ed

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_e1

    const/16 v2, 0x1b1

    const/4 v1, 0x6

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e1
    const/16 v2, 0x165

    const/4 v1, 0x6

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_ed
    return-object v3
    :try_end_ee
    .catch Lorg/json/JSONException; {:try_start_c4 .. :try_end_ee} :catch_ee

    :catch_ee
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A8y()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A01:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A0A()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final AAT()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7z;->A0F(Lcom/facebook/ads/redexgen/X/7S;)Z

    return-void
.end method

.method public final AB3(Lorg/json/JSONArray;)V
    .registers 10

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(I)V

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v7, :cond_4c

    :try_start_c
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/16 v2, 0x193

    const/4 v1, 0x2

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/7z;->A0I(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/7z;->A0B(Lcom/facebook/ads/redexgen/X/Y9;Ljava/lang/String;)V

    goto :goto_49

    :cond_29
    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_49
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_2d} :catch_2d

    :catch_2d
    move-exception v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A04()Lcom/facebook/ads/redexgen/X/7X;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7X;->A8o()Z

    move-result v0

    if-eqz v0, :cond_49

    sget-object v3, Lcom/facebook/ads/redexgen/X/XZ;->A04:Ljava/lang/String;

    const/16 v2, 0x48

    const/16 v1, 0x3e

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_49
    :goto_49
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_4c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v6, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A02(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public final AB5(Lorg/json/JSONArray;)Z
    .registers 16

    const/16 v2, 0x1b

    const/4 v1, 0x1

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IR;->A0P(Landroid/content/Context;)Z

    move-result v12

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    :goto_1b
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_18a

    :try_start_21
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const/16 v2, 0x193

    const/4 v1, 0x2

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x16b

    const/16 v1, 0x1a

    const/16 v0, 0x16

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    const/16 v2, 0x185

    const/16 v1, 0xe

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A0Q(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/IP;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IP;->A2S(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A03()Lcom/facebook/ads/redexgen/X/7V;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7V;->AA1()V

    goto/16 :goto_186

    :cond_64
    const/16 v3, 0x161

    const/4 v1, 0x4

    const/16 v0, 0x5e

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    const/4 v0, 0x1

    if-ne v11, v0, :cond_b2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A04()Lcom/facebook/ads/redexgen/X/7X;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7X;->A8o()Z

    move-result v0

    if-eqz v0, :cond_a8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xce

    const/16 v1, 0x19

    const/16 v0, 0x1c

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0xd

    const/16 v1, 0xe

    const/16 v0, 0x1b

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_a8
    if-eqz v12, :cond_ad

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/7z;->A0D(Ljava/lang/String;)V

    :cond_ad
    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_186
    :try_end_b2
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_b2} :catch_152

    :cond_b2
    const/16 v4, 0x3e8

    const/4 v3, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x3e

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v10

    const/16 v0, 0x7d0

    if-lt v11, v4, :cond_10b

    if-ge v11, v0, :cond_10b

    :try_start_c3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A04()Lcom/facebook/ads/redexgen/X/7X;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7X;->A8o()Z

    move-result v0

    if-eqz v0, :cond_fb

    sget-object v1, Lcom/facebook/ads/redexgen/X/XZ;->A04:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x110

    const/16 v3, 0x25

    const/16 v0, 0x43

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fb
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/7z;->A0I(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/7z;->A0B(Lcom/facebook/ads/redexgen/X/Y9;Ljava/lang/String;)V

    goto :goto_185

    :cond_107
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_185

    :cond_10b
    if-lt v11, v0, :cond_186

    const/16 v0, 0xbb8

    if-ge v11, v0, :cond_186

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A04()Lcom/facebook/ads/redexgen/X/7X;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7X;->A8o()Z

    move-result v0

    if-eqz v0, :cond_149

    sget-object v1, Lcom/facebook/ads/redexgen/X/XZ;->A04:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xe7

    const/16 v3, 0x29

    const/16 v0, 0xa

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_149
    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v12, :cond_186

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/7z;->A0D(Ljava/lang/String;)V

    goto :goto_186
    :try_end_152
    .catch Lorg/json/JSONException; {:try_start_c3 .. :try_end_152} :catch_152

    :catch_152
    move-exception v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A04()Lcom/facebook/ads/redexgen/X/7X;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7X;->A8o()Z

    move-result v0

    if-eqz v0, :cond_183

    sget-object v3, Lcom/facebook/ads/redexgen/X/XZ;->A04:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x135

    const/16 v1, 0x2c

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_183
    const/4 v13, 0x0

    goto :goto_186

    :goto_185
    const/4 v13, 0x0

    :cond_186
    :goto_186
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1b

    :cond_18a
    invoke-direct {p0, v6, v7}, Lcom/facebook/ads/redexgen/X/XZ;->A02(Ljava/util/Set;Ljava/util/Set;)V

    return v13
.end method

.method public final ACd()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A01:Lcom/facebook/ads/redexgen/X/Xa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xa;->A4G()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7z;->A07(Landroid/content/Context;)V

    return-void
.end method

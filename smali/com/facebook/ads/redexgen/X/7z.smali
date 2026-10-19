###### Class com.facebook.ads.redexgen.X.C08437z (com.facebook.ads.redexgen.X.7z)
.class public final Lcom/facebook/ads/redexgen/X/7z;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Ljava/lang/Object;

.field public static final A04:Ljava/lang/String;

.field public static final A05:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final A06:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "TEIgz1GSUxi0w6HxI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WqDufwBE7AlvD41n6qdN4YbCXU2LtDad"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "95AkSvnB6didgYS0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "q9Pm9O4XheyxpjJIaV85netzFUNpUTJ1"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "laKi0sQOm1cRNFPmXQKezZzTFfBBOlTJ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "R9By8R7rHrFXxi8d0eZrOpOQKJFwFXXr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DNKj97yZe49oXEmfRz7aINNiwqbkjDQZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HsAQREGxpVIGFVt11mTJ2r8ajNtMZb1h"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7z;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7z;->A06()V

    const-class v0, Lcom/facebook/ads/redexgen/X/7z;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7z;->A04:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/7z;->A03:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7z;->A06:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7z;->A05:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/7z;->A00:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Landroid/content/Context;)I
    .registers 6

    const/16 v2, 0x41

    const/16 v1, 0xa

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const/16 v2, 0x4b

    const/16 v1, 0xa

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public static A01(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/7S;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/81;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/7S;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/81;"
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_1
    const/4 v0, 0x1

    new-instance v1, Lcom/facebook/ads/redexgen/X/7l;

    invoke-direct {v1, p0, p2, v0}, Lcom/facebook/ads/redexgen/X/7l;-><init>(Ljava/lang/String;Ljava/util/Map;Z)V

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7S;->A08()Lcom/facebook/ads/redexgen/X/8N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8N;->A01()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7S;->A08()Lcom/facebook/ads/redexgen/X/8N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8N;->A02()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/7l;->A02()Ljava/util/Map;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/81;

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/facebook/ads/redexgen/X/81;-><init>(DLjava/lang/String;Ljava/util/Map;)V

    move-object v5, v0

    invoke-static {v5, p1}, Lcom/facebook/ads/redexgen/X/7z;->A0C(Lcom/facebook/ads/redexgen/X/81;Lcom/facebook/ads/redexgen/X/7S;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_24

    :catch_24
    return-object v5
.end method

.method public static A02(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/7z;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/7S;)Lorg/json/JSONArray;
    .registers 2

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/7z;->A04(Lcom/facebook/ads/redexgen/X/7S;I)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/7S;I)Lorg/json/JSONArray;
    .registers 13

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    sget-object v10, Lcom/facebook/ads/redexgen/X/7z;->A03:Ljava/lang/Object;

    monitor-enter v10

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    :try_start_b
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_be

    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7S;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v6, v0

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v9, v0

    :cond_46
    :goto_46
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_be

    if-eqz p1, :cond_be

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_73

    const/16 v2, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_73
    const/16 v2, 0x157

    const/4 v1, 0x2

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A06:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    const/16 v2, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v3, Lcom/facebook/ads/redexgen/X/7z;->A05:Ljava/util/Map;

    invoke-interface {v3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    const/16 v2, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_b1
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_b9

    :cond_b5
    invoke-static {v8, v1}, Lcom/facebook/ads/redexgen/X/7z;->A0E(Ljava/lang/String;I)V

    goto :goto_b1

    :goto_b9
    if-lez p1, :cond_46

    add-int/lit8 p1, p1, -0x1

    goto :goto_46

    :cond_be
    if-eqz v9, :cond_c3
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_c0} :catch_d6
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_c0} :catch_d4
    .catchall {:try_start_b .. :try_end_c0} :catchall_f8

    :try_start_c0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    :cond_c3
    if-eqz v6, :cond_c8

    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    :cond_c8
    if-eqz v4, :cond_f6

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_f6
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_ce} :catch_ce
    .catchall {:try_start_c0 .. :try_end_ce} :catchall_112

    :catch_ce
    move-exception v1

    :try_start_cf
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v0

    goto :goto_f3
    :try_end_d4
    .catchall {:try_start_cf .. :try_end_d4} :catchall_112

    :catch_d4
    move-exception v1

    goto :goto_d7

    :catch_d6
    move-exception v1

    :goto_d7
    :try_start_d7
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/7w;->A3Y(Ljava/lang/Throwable;)V

    if-eqz v9, :cond_e3
    :try_end_e0
    .catchall {:try_start_d7 .. :try_end_e0} :catchall_f8

    :try_start_e0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    :cond_e3
    if-eqz v6, :cond_e8

    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    :cond_e8
    if-eqz v4, :cond_f6

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_f6
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_ee} :catch_ee
    .catchall {:try_start_e0 .. :try_end_ee} :catchall_112

    :catch_ee
    move-exception v1

    :try_start_ef
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v0

    :goto_f3
    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/7w;->A3Y(Ljava/lang/Throwable;)V

    :cond_f6
    :goto_f6
    monitor-exit v10

    return-object v5
    :try_end_f8
    .catchall {:try_start_ef .. :try_end_f8} :catchall_112

    :catchall_f8
    move-exception v2

    if-eqz v9, :cond_fe

    :try_start_fb
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    :cond_fe
    if-eqz v6, :cond_103

    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    :cond_103
    if-eqz v4, :cond_111

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_111
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_109} :catch_109
    .catchall {:try_start_fb .. :try_end_109} :catchall_112

    :catch_109
    move-exception v1

    :try_start_10a
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/7w;->A3Y(Ljava/lang/Throwable;)V

    :cond_111
    :goto_111
    throw v2
    :try_end_112
    .catchall {:try_start_10a .. :try_end_112} :catchall_112

    :catchall_112
    move-exception v0

    :try_start_113
    monitor-exit v10
    :try_end_114
    .catchall {:try_start_113 .. :try_end_114} :catchall_112

    throw v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/81;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x157

    const/4 v1, 0x2

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v2, 0x196

    const/4 v1, 0x4

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/81;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/81;->A01()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LM;->A02(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x192

    const/4 v1, 0x4

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/81;->A00()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LM;->A02(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x163

    const/16 v1, 0xc

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v2, 0x159

    const/16 v1, 0xa

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/81;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/81;->A04()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/81;->A04()Ljava/util/Map;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    :goto_72
    const/16 v2, 0x10b

    const/4 v1, 0x4

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v4

    :cond_90
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    goto :goto_72
.end method

.method public static A06()V
    .registers 1

    const/16 v0, 0x19a

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/7z;->A01:[B

    return-void

    :array_a
    .array-data 1
        0x7t
        0x5ft
        0x53t
        0x37t
        0x1t
        0x1ct
        0x3t
        0x30t
        0x1ct
        0x6t
        0x1dt
        0x7t
        0x16t
        0x1t
        0x49t
        0x53t
        0x3ft
        0x1dt
        0x12t
        0x5bt
        0x8t
        0x5ct
        0x18t
        0x19t
        0x10t
        0x19t
        0x8t
        0x19t
        0x5ct
        0x18t
        0x19t
        0x1et
        0x9t
        0x1bt
        0x5ct
        0x19t
        0xat
        0x19t
        0x12t
        0x8t
        0xft
        0x5ct
        0x1at
        0x15t
        0x10t
        0x19t
        0x52t
        0xet
        0x2ct
        0x23t
        0x6at
        0x39t
        0x6dt
        0x29t
        0x28t
        0x21t
        0x28t
        0x39t
        0x28t
        0x6dt
        0x2bt
        0x24t
        0x21t
        0x28t
        0x6ct
        0x77t
        0x76t
        0x71t
        0x66t
        0x74t
        0x6ct
        0x63t
        0x61t
        0x76t
        0x75t
        0x2at
        0x19t
        0xat
        0x1t
        0x1bt
        0x2ct
        0x0t
        0x1at
        0x1t
        0x1bt
        0x29t
        0x2dt
        0x2et
        0x1at
        0xbt
        0x6t
        0xat
        0x1t
        0xct
        0xat
        0x21t
        0xat
        0x1bt
        0x18t
        0x0t
        0x1dt
        0x4t
        0x1ft
        0x3at
        0x3dt
        0x28t
        0x2at
        0x6ft
        0x2bt
        0x2at
        0x2dt
        0x3at
        0x28t
        0x6ft
        0x2at
        0x39t
        0x2at
        0x21t
        0x3bt
        0x3ct
        0x6ft
        0x29t
        0x26t
        0x23t
        0x2at
        0x61t
        0x45t
        0x9t
        0x26t
        0x23t
        0x2at
        0x6ft
        0x3ct
        0x26t
        0x35t
        0x2at
        0x75t
        0x6ft
        0x6ft
        0x57t
        0x55t
        0x4ct
        0x4ct
        0x59t
        0x58t
        0x1ct
        0x59t
        0x4at
        0x59t
        0x52t
        0x48t
        0x4ft
        0x12t
        0x28t
        0x10t
        0x12t
        0xbt
        0xbt
        0x12t
        0x15t
        0x1ct
        0x5bt
        0x18t
        0x14t
        0x9t
        0x9t
        0xet
        0xbt
        0xft
        0x1et
        0x1ft
        0x5bt
        0x1ft
        0x1et
        0x19t
        0xet
        0x1ct
        0x5bt
        0x1et
        0xdt
        0x1et
        0x15t
        0xft
        0x5bt
        0x17t
        0x12t
        0x15t
        0x1et
        0x55t
        0x62t
        0x44t
        0x4ft
        0x5ft
        0x58t
        0x51t
        0x16t
        0x42t
        0x59t
        0x16t
        0x43t
        0x46t
        0x52t
        0x57t
        0x42t
        0x53t
        0x16t
        0x43t
        0x58t
        0x44t
        0x53t
        0x55t
        0x59t
        0x44t
        0x52t
        0x53t
        0x52t
        0x16t
        0x52t
        0x53t
        0x54t
        0x43t
        0x51t
        0x7at
        0x59t
        0x51t
        0x73t
        0x40t
        0x53t
        0x58t
        0x42t
        0x18t
        0x16t
        0x57t
        0x52t
        0x52t
        0x5ft
        0x58t
        0x51t
        0x16t
        0x42t
        0x59t
        0x16t
        0x79t
        0x58t
        0x51t
        0x59t
        0x5ft
        0x58t
        0x51t
        0x73t
        0x40t
        0x53t
        0x58t
        0x42t
        0x18t
        0x3at
        0x11t
        0x0t
        0x8t
        0x15t
        0x6t
        0x13t
        0x13t
        0x2t
        0xat
        0x17t
        0x13t
        0x58t
        0x5dt
        0x48t
        0x5dt
        0x7ft
        0x7et
        0x44t
        0x77t
        0x74t
        0x7ct
        0x7ct
        0x72t
        0x75t
        0x7ct
        0x2bt
        0x2at
        0x2dt
        0x3at
        0x28t
        0x23t
        0x20t
        0x28t
        0x3ct
        0x5bt
        0x54t
        0x53t
        0x54t
        0x4et
        0x55t
        0x58t
        0x59t
        0x1dt
        0x58t
        0x4bt
        0x58t
        0x53t
        0x49t
        0x1dt
        0x4et
        0x55t
        0x52t
        0x48t
        0x51t
        0x59t
        0x1dt
        0x53t
        0x52t
        0x49t
        0x1dt
        0x5ft
        0x58t
        0x1dt
        0x48t
        0x4dt
        0x59t
        0x5ct
        0x49t
        0x58t
        0x59t
        0x1dt
        0x49t
        0x52t
        0x1dt
        0x72t
        0x53t
        0x5at
        0x52t
        0x54t
        0x53t
        0x5at
        0x78t
        0x4bt
        0x58t
        0x53t
        0x49t
        0x13t
        0x6bt
        0x66t
        0x7et
        0x68t
        0x7et
        0x7et
        0x64t
        0x62t
        0x63t
        0x52t
        0x64t
        0x69t
        0x48t
        0x5et
        0x48t
        0x48t
        0x52t
        0x54t
        0x55t
        0x64t
        0x4ft
        0x52t
        0x56t
        0x5et
        0x69t
        0x71t
        0x73t
        0x6at
        0x6at
        0x7ft
        0x7et
        0x5ft
        0x6ct
        0x7ft
        0x74t
        0x6et
        0x69t
        0x3at
        0x27t
        0x3at
        0x31t
        0x37t
        0x20t
        0x36t
        0x3bt
        0x32t
        0x27t
        0x4bt
        0x4dt
        0x5at
        0x4ct
        0x41t
        0x48t
        0x5dt
        0x67t
        0x5bt
        0x57t
        0x5ct
        0x5dt
        0x77t
        0x6at
        0x6et
        0x66t
        0x55t
        0x58t
        0x51t
        0x44t
    .end array-data
.end method

.method public static A07(Landroid/content/Context;)V
    .registers 6

    sget-object v4, Lcom/facebook/ads/redexgen/X/7z;->A03:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_23
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/7z;->A09(Landroid/content/Context;I)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A05:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v4

    return-void

    :catchall_33
    move-exception v0

    monitor-exit v4
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public static A08(Landroid/content/Context;)V
    .registers 6

    const/16 v2, 0x41

    const/16 v1, 0xa

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const/16 v2, 0x4b

    const/16 v1, 0xa

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/7z;->A09(Landroid/content/Context;I)V

    return-void
.end method

.method public static A09(Landroid/content/Context;I)V
    .registers 7

    const/16 v2, 0x41

    const/16 v1, 0xa

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    if-gez p1, :cond_2b

    :goto_19
    const/16 v2, 0x4b

    const/16 v1, 0xa

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_2b
    move v4, p1

    goto :goto_19
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object p1

    const/16 p0, 0x2f

    const/16 v1, 0x12

    const/16 v0, 0x31

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A3Y(Ljava/lang/Throwable;)V

    :cond_2b
    return-void
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/Y9;Ljava/lang/String;)V
    .registers 7

    sget-object v4, Lcom/facebook/ads/redexgen/X/7z;->A05:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_36

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->A04()Lcom/facebook/ads/redexgen/X/7X;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7X;->A8o()Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v3, Lcom/facebook/ads/redexgen/X/7z;->A04:Ljava/lang/String;

    const/16 v2, 0xbd

    const/16 v1, 0x42

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_36
    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/81;Lcom/facebook/ads/redexgen/X/7S;)V
    .registers 10

    if-eqz p0, :cond_109

    if-eqz p1, :cond_109

    sget-object v7, Lcom/facebook/ads/redexgen/X/7z;->A03:Ljava/lang/Object;

    monitor-enter v7

    :try_start_7
    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7S;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c6

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IR;->A07(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1

    if-lez v0, :cond_c6

    int-to-long v5, v0

    cmp-long v0, v1, v5

    if-lez v0, :cond_c6

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A09(Landroid/content/Context;I)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A05:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-nez v3, :cond_48

    goto :goto_b0

    :cond_48
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7S;->A03()Lcom/facebook/ads/redexgen/X/7V;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7V;->A4j()Ljava/util/Map;

    move-result-object v4

    const/16 v5, 0x17f

    const/4 v3, 0x7

    const/16 v0, 0x3e

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v6

    const/16 v5, 0x10f

    const/16 v3, 0xa

    const/16 v0, 0x67

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x186

    const/16 v3, 0xc

    const/16 v0, 0x44

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x961

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x66

    const/16 v3, 0x24

    const/16 v0, 0x33

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x1

    const/16 v1, 0xf

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A00:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v4}, Lcom/facebook/ads/redexgen/X/7z;->A01(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/7S;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/81;
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_ae} :catch_fc
    .catchall {:try_start_7 .. :try_end_ae} :catchall_106

    :try_start_ae
    monitor-exit v7

    return-void
    :try_end_b0
    .catchall {:try_start_ae .. :try_end_b0} :catchall_106

    :goto_b0
    :try_start_b0
    const/16 v2, 0x55

    const/16 v1, 0x11

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x10

    const/16 v1, 0x1f

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c6
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/7z;->A05(Lcom/facebook/ads/redexgen/X/81;)Lorg/json/JSONObject;

    move-result-object v2

    const v0, 0x8000

    invoke-virtual {p1, v4, v0}, Lcom/facebook/ads/redexgen/X/7S;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/7z;->A08(Landroid/content/Context;)V

    goto :goto_104
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_fc} :catch_fc
    .catchall {:try_start_b0 .. :try_end_fc} :catchall_106

    :catch_fc
    move-exception v1

    :try_start_fd
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/7w;->A3Y(Ljava/lang/Throwable;)V

    :goto_104
    monitor-exit v7

    goto :goto_109
    :try_end_106
    .catchall {:try_start_fd .. :try_end_106} :catchall_106

    :catchall_106
    move-exception v0

    :try_start_107
    monitor-exit v7
    :try_end_108
    .catchall {:try_start_107 .. :try_end_108} :catchall_106

    throw v0

    :cond_109
    :goto_109
    return-void
.end method

.method public static A0D(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A05:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A06:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static A0E(Ljava/lang/String;I)V
    .registers 7

    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A06:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    sget-object v4, Lcom/facebook/ads/redexgen/X/7z;->A05:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/7z;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_31

    sget-object v2, Lcom/facebook/ads/redexgen/X/7z;->A02:[Ljava/lang/String;

    const-string v1, "rEqe91lv7lznGuMpeMm8YlOivWfc8wjs"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_29

    invoke-interface {v4, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_31
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_37
    const/16 v2, 0x122

    const/16 v1, 0x35

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0F(Lcom/facebook/ads/redexgen/X/7S;)Z
    .registers 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IR;->A0O(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/7z;->A0H(Lcom/facebook/ads/redexgen/X/7S;)Z

    move-result v0

    return v0

    :cond_b
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/7z;->A0G(Lcom/facebook/ads/redexgen/X/7S;)Z

    move-result p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/7z;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2e

    sget-object v2, Lcom/facebook/ads/redexgen/X/7z;->A02:[Ljava/lang/String;

    const-string v1, "3ABJ1YchwKShiC4YrWnTlA0erUDCQvCN"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "wuaZskSkctYpKQ1vHIoiu3NDqUJM9HRQ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return p0

    :cond_2e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0G(Lcom/facebook/ads/redexgen/X/7S;)Z
    .registers 15

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    sget-object v13, Lcom/facebook/ads/redexgen/X/7z;->A03:Ljava/lang/Object;

    monitor-enter v13

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    :try_start_d
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_ed

    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7S;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v7, v0

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v12, v0

    :cond_48
    :goto_48
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_af

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x157

    const/4 v1, 0x2

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A06:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    sget-object v1, Lcom/facebook/ads/redexgen/X/7z;->A05:Ljava/util/Map;

    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_a9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_7c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IR;->A02(Landroid/content/Context;)I

    move-result v2

    const/4 v0, -0x1

    if-le v2, v0, :cond_95

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v0, v2, -0x1

    if-le v1, v0, :cond_95

    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/7z;->A0D(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_48

    :cond_95
    const/16 v2, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_48

    :cond_a9
    const/4 v0, 0x0

    goto :goto_7c

    :cond_ab
    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_48

    :cond_af
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v2, 0x0

    :goto_b9
    if-ge v2, v4, :cond_cf

    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b9

    :cond_cf
    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/7S;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    :cond_ed
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/7z;->A00(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/7z;->A09(Landroid/content/Context;I)V

    if-lez v11, :cond_133

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v10

    const/16 v2, 0x10f

    const/16 v1, 0xa

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v9

    sget v8, Lcom/facebook/ads/redexgen/X/7x;->A2V:I

    const/16 v2, 0x8a

    const/16 v1, 0xf

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x16f

    const/16 v1, 0x10

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v9, v8, v0}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    :cond_133
    if-eqz v12, :cond_138
    :try_end_135
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_135} :catch_15f
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_135} :catch_15d
    .catchall {:try_start_d .. :try_end_135} :catchall_191

    :try_start_135
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    :cond_138
    if-eqz v7, :cond_13d

    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    :cond_13d
    if-eqz v6, :cond_142

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_142
    if-eqz v5, :cond_150

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto :goto_150
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_148} :catch_148
    .catchall {:try_start_135 .. :try_end_148} :catchall_1ba

    :catch_148
    move-exception v1

    :try_start_149
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/7w;->A3Y(Ljava/lang/Throwable;)V

    :cond_150
    :goto_150
    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A05:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v13

    const/4 v0, 0x1

    return v0
    :try_end_15d
    .catchall {:try_start_149 .. :try_end_15d} :catchall_1ba

    :catch_15d
    move-exception v1

    goto :goto_160

    :catch_15f
    move-exception v1

    :goto_160
    :try_start_160
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/7w;->A3Y(Ljava/lang/Throwable;)V

    if-eqz v12, :cond_16c
    :try_end_169
    .catchall {:try_start_160 .. :try_end_169} :catchall_191

    :try_start_169
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    :cond_16c
    if-eqz v7, :cond_171

    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    :cond_171
    if-eqz v6, :cond_176

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_176
    if-eqz v5, :cond_184

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto :goto_184
    :try_end_17c
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_17c} :catch_17c
    .catchall {:try_start_169 .. :try_end_17c} :catchall_1ba

    :catch_17c
    move-exception v1

    :try_start_17d
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/7w;->A3Y(Ljava/lang/Throwable;)V

    :cond_184
    :goto_184
    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A05:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v13

    const/4 v0, 0x0

    return v0
    :try_end_191
    .catchall {:try_start_17d .. :try_end_191} :catchall_1ba

    :catchall_191
    move-exception v2

    if-eqz v12, :cond_197

    :try_start_194
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    :cond_197
    if-eqz v7, :cond_19c

    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    :cond_19c
    if-eqz v6, :cond_1a1

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_1a1
    if-eqz v5, :cond_1af

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1af
    :try_end_1a7
    .catch Ljava/io/IOException; {:try_start_194 .. :try_end_1a7} :catch_1a7
    .catchall {:try_start_194 .. :try_end_1a7} :catchall_1ba

    :catch_1a7
    move-exception v1

    :try_start_1a8
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/7w;->A3Y(Ljava/lang/Throwable;)V

    :cond_1af
    :goto_1af
    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A05:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    throw v2
    :try_end_1ba
    .catchall {:try_start_1a8 .. :try_end_1ba} :catchall_1ba

    :catchall_1ba
    move-exception v0

    :try_start_1bb
    monitor-exit v13
    :try_end_1bc
    .catchall {:try_start_1bb .. :try_end_1bc} :catchall_1ba

    throw v0
.end method

.method public static A0H(Lcom/facebook/ads/redexgen/X/7S;)Z
    .registers 18

    sget-object v16, Lcom/facebook/ads/redexgen/X/7z;->A03:Ljava/lang/Object;

    monitor-enter v16

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    :try_start_a
    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x33

    move-object/from16 v7, p0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/7S;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xff

    const/4 v1, 0x5

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/facebook/ads/redexgen/X/7z;->A0A(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_167

    const v0, 0x8000

    invoke-virtual {v7, v3, v0}, Lcom/facebook/ads/redexgen/X/7S;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9

    invoke-virtual {v7, v11}, Lcom/facebook/ads/redexgen/X/7S;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v8
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_51} :catch_1e1
    .catchall {:try_start_a .. :try_end_51} :catchall_21d

    :try_start_51
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v10, v0
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_57} :catch_165
    .catchall {:try_start_51 .. :try_end_57} :catchall_162

    :try_start_57
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v15, v0
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5d} :catch_15f
    .catchall {:try_start_57 .. :try_end_5d} :catchall_15c

    :cond_5d
    :goto_5d
    :try_start_5d
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12e
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_63} :catch_159
    .catchall {:try_start_5d .. :try_end_63} :catchall_156

    :try_start_63
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x157

    const/4 v1, 0x2

    const/16 v0, 0x7e

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A06:Ljava/util/Set;

    invoke-interface {v0, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    sget-object v1, Lcom/facebook/ads/redexgen/X/7z;->A05:Ljava/util/Map;

    invoke-interface {v1, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2
    :try_end_85
    .catch Lorg/json/JSONException; {:try_start_63 .. :try_end_85} :catch_104
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_85} :catch_159
    .catchall {:try_start_63 .. :try_end_85} :catchall_156

    :try_start_85
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_94
    :try_end_8d
    .catch Lorg/json/JSONException; {:try_start_85 .. :try_end_8d} :catch_e0
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_8d} :catch_12b
    .catchall {:try_start_85 .. :try_end_8d} :catchall_128

    :try_start_8d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_95
    :try_end_92
    .catch Lorg/json/JSONException; {:try_start_8d .. :try_end_92} :catch_92
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_92} :catch_122
    .catchall {:try_start_8d .. :try_end_92} :catchall_11f

    :catch_92
    move-exception v12

    goto :goto_105

    :cond_94
    const/4 v0, 0x0

    :goto_95
    :try_start_95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/IR;->A02(Landroid/content/Context;)I

    move-result v4

    const/4 v0, -0x1

    if-le v4, v0, :cond_b0
    :try_end_a0
    .catch Lorg/json/JSONException; {:try_start_95 .. :try_end_a0} :catch_e0
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_a0} :catch_12b
    .catchall {:try_start_95 .. :try_end_a0} :catchall_128

    :try_start_a0
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v0, v4, -0x1

    if-le v1, v0, :cond_b0
    :try_end_a8
    .catch Lorg/json/JSONException; {:try_start_a0 .. :try_end_a8} :catch_ae
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a8} :catch_125
    .catchall {:try_start_a0 .. :try_end_a8} :catchall_21f

    :try_start_a8
    invoke-static {v14}, Lcom/facebook/ads/redexgen/X/7z;->A0D(Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_5d
    :try_end_ae
    .catch Lorg/json/JSONException; {:try_start_a8 .. :try_end_ae} :catch_102
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ae} :catch_153
    .catchall {:try_start_a8 .. :try_end_ae} :catchall_150

    :catch_ae
    move-exception v12

    goto :goto_105

    :cond_b0
    :try_start_b0
    const/16 v4, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_5d
    :try_end_e0
    .catch Lorg/json/JSONException; {:try_start_b0 .. :try_end_e0} :catch_102
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_e0} :catch_153
    .catchall {:try_start_b0 .. :try_end_e0} :catchall_150

    :catch_e0
    move-exception v12

    goto :goto_105

    :cond_e2
    :try_start_e2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_5d
    :try_end_102
    .catch Lorg/json/JSONException; {:try_start_e2 .. :try_end_102} :catch_102
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_102} :catch_153
    .catchall {:try_start_e2 .. :try_end_102} :catchall_150

    :catch_102
    move-exception v12

    goto :goto_105

    :catch_104
    move-exception v12

    :goto_105
    :try_start_105
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/7S;->A04()Lcom/facebook/ads/redexgen/X/7X;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7X;->A8o()Z

    move-result v0

    if-eqz v0, :cond_5d

    sget-object v4, Lcom/facebook/ads/redexgen/X/7z;->A04:Ljava/lang/String;

    const/16 v2, 0x99

    const/16 v1, 0x24

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5d
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_11f} :catch_153
    .catchall {:try_start_105 .. :try_end_11f} :catchall_150

    :catchall_11f
    move-exception v2

    goto/16 :goto_220

    :catch_122
    move-exception v1

    goto/16 :goto_1e2

    :catch_125
    move-exception v1

    goto/16 :goto_1e2

    :catchall_128
    move-exception v2

    goto/16 :goto_220

    :catch_12b
    move-exception v1

    goto/16 :goto_1e2

    :cond_12e
    :try_start_12e
    invoke-virtual {v7, v3}, Lcom/facebook/ads/redexgen/X/7S;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    const/4 v0, 0x0

    invoke-virtual {v7, v11, v0}, Lcom/facebook/ads/redexgen/X/7S;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    const/16 v0, 0x400

    new-array v2, v0, [B

    :goto_13b
    invoke-virtual {v6, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_146

    const/4 v0, 0x0

    invoke-virtual {v5, v2, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_13b

    :cond_146
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    invoke-static {v7, v3}, Lcom/facebook/ads/redexgen/X/7z;->A0A(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;)V

    goto :goto_167
    :try_end_150
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_150} :catch_153
    .catchall {:try_start_12e .. :try_end_150} :catchall_150

    :catchall_150
    move-exception v2

    goto/16 :goto_220

    :catch_153
    move-exception v1

    goto/16 :goto_1e2

    :catchall_156
    move-exception v2

    goto/16 :goto_220

    :catch_159
    move-exception v1

    goto/16 :goto_1e2

    :catchall_15c
    move-exception v2

    goto/16 :goto_220

    :catch_15f
    move-exception v1

    goto/16 :goto_1e2

    :catchall_162
    move-exception v2

    goto/16 :goto_220

    :catch_165
    move-exception v1

    goto :goto_1e2

    :cond_167
    :goto_167
    :try_start_167
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/7z;->A00(Landroid/content/Context;)I

    move-result v0

    invoke-static {v7, v0}, Lcom/facebook/ads/redexgen/X/7z;->A09(Landroid/content/Context;I)V

    if-lez v13, :cond_1ad

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v11

    const/16 v2, 0x10f

    const/16 v1, 0xa

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/7x;->A2V:I

    const/16 v2, 0x8a

    const/16 v1, 0xf

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x16f

    const/16 v1, 0x10

    const/16 v0, 0x66

    invoke-static {v12, v1, v0}, Lcom/facebook/ads/redexgen/X/7z;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v4, v3, v0}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    :cond_1ad
    if-eqz v15, :cond_1b2
    :try_end_1af
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_1af} :catch_1e1
    .catchall {:try_start_167 .. :try_end_1af} :catchall_21d

    :try_start_1af
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    :cond_1b2
    if-eqz v10, :cond_1b7

    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    :cond_1b7
    if-eqz v8, :cond_1bc

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_1bc
    if-eqz v5, :cond_1c1

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_1c1
    if-eqz v6, :cond_1c6

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_1c6
    if-eqz v9, :cond_1d4

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1d4
    :try_end_1cc
    .catch Ljava/io/IOException; {:try_start_1af .. :try_end_1cc} :catch_1cc
    .catchall {:try_start_1af .. :try_end_1cc} :catchall_252

    :catch_1cc
    move-exception v1

    :try_start_1cd
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/7w;->A3Y(Ljava/lang/Throwable;)V

    :cond_1d4
    :goto_1d4
    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A05:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v16

    const/4 v0, 0x1

    return v0
    :try_end_1e1
    .catchall {:try_start_1cd .. :try_end_1e1} :catchall_252

    :catch_1e1
    move-exception v1

    :goto_1e2
    :try_start_1e2
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/7w;->A3Y(Ljava/lang/Throwable;)V

    if-eqz v15, :cond_1ee
    :try_end_1eb
    .catchall {:try_start_1e2 .. :try_end_1eb} :catchall_21d

    :try_start_1eb
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    :cond_1ee
    if-eqz v10, :cond_1f3

    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    :cond_1f3
    if-eqz v8, :cond_1f8

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_1f8
    if-eqz v5, :cond_1fd

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_1fd
    if-eqz v6, :cond_202

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_202
    if-eqz v9, :cond_210

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    goto :goto_210
    :try_end_208
    .catch Ljava/io/IOException; {:try_start_1eb .. :try_end_208} :catch_208
    .catchall {:try_start_1eb .. :try_end_208} :catchall_252

    :catch_208
    move-exception v1

    :try_start_209
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/7w;->A3Y(Ljava/lang/Throwable;)V

    :cond_210
    :goto_210
    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A05:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v16

    const/4 v0, 0x0

    return v0
    :try_end_21d
    .catchall {:try_start_209 .. :try_end_21d} :catchall_252

    :catchall_21d
    move-exception v2

    goto :goto_220

    :catchall_21f
    move-exception v2

    :goto_220
    if-eqz v15, :cond_225

    :try_start_222
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    :cond_225
    if-eqz v10, :cond_22a

    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    :cond_22a
    if-eqz v8, :cond_22f

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_22f
    if-eqz v5, :cond_234

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_234
    if-eqz v6, :cond_239

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_239
    if-eqz v9, :cond_247

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    goto :goto_247
    :try_end_23f
    .catch Ljava/io/IOException; {:try_start_222 .. :try_end_23f} :catch_23f
    .catchall {:try_start_222 .. :try_end_23f} :catchall_252

    :catch_23f
    move-exception v1

    :try_start_240
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/7w;->A3Y(Ljava/lang/Throwable;)V

    :cond_247
    :goto_247
    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A05:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    throw v2
    :try_end_252
    .catchall {:try_start_240 .. :try_end_252} :catchall_252

    :catchall_252
    move-exception v0

    :try_start_253
    monitor-exit v16
    :try_end_254
    .catchall {:try_start_253 .. :try_end_254} :catchall_252

    throw v0
.end method

.method public static A0I(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A06:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/facebook/ads/redexgen/X/7z;->A05:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

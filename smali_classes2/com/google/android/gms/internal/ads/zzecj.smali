###### Class com.google.android.gms.internal.ads.zzecj (com.google.android.gms.internal.ads.zzecj)
.class public final Lcom/google/android/gms/internal/ads/zzecj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field public zza:I

.field public zzb:Ljava/util/Map;

.field public zzc:Ljava/lang/String;

.field public zzd:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzecj;->zza:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzecj;->zzb:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzecj;->zzc:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzecj;->zzd:J

    return-void
.end method

.method public static zza(Ljava/io/Reader;)Lcom/google/android/gms/internal/ads/zzecj;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfdz;
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    invoke-direct {v0, p0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v2, -0x1

    const-string v4, ""

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v5, 0x0

    :goto_12
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6d

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "response"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v5

    goto :goto_12

    :cond_29
    const-string v7, "body"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    :cond_36
    const-string v7, "latency"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v2

    goto :goto_12

    :cond_43
    const-string v7, "headers"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_53
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_65

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzd(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    :cond_65
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    goto :goto_12

    :cond_69
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_12

    :cond_6d
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzecj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzecj;-><init>()V

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzecj;->zza:I

    if-eqz v4, :cond_7b

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzecj;->zzc:Ljava/lang/String;

    :cond_7b
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzecj;->zzd:J

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzecj;->zzb:Ljava/util/Map;
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7f} :catch_8b
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7f} :catch_89
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7f} :catch_87
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_7f} :catch_85
    .catchall {:try_start_0 .. :try_end_7f} :catchall_83

    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_83
    move-exception v0

    goto :goto_94

    :catch_85
    move-exception v0

    goto :goto_8c

    :catch_87
    move-exception v0

    goto :goto_8c

    :catch_89
    move-exception v0

    goto :goto_8c

    :catch_8b
    move-exception v0

    :goto_8c
    :try_start_8c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfdz;

    const-string v2, "Unable to parse Response"

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfdz;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_94
    .catchall {:try_start_8c .. :try_end_94} :catchall_83

    :goto_94
    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

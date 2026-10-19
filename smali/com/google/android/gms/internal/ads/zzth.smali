###### Class com.google.android.gms.internal.ads.zzth (com.google.android.gms.internal.ads.zzth)
.class public final Lcom/google/android/gms/internal/ads/zzth;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Ljava/util/regex/Pattern;

.field private static final zzc:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "MediaCodecUtil.class"
    .end annotation
.end field

.field private static zzd:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^\\D?(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzth;->zzb:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzth;->zzc:Ljava/util/HashMap;

    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/internal/ads/zzth;->zzd:I

    return-void
.end method

.method public static zza()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztb;
        }
    .end annotation

    sget v0, Lcom/google/android/gms/internal/ads/zzth;->zzd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_66

    const-string v0, "video/avc"

    const/4 v2, 0x0

    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/zzth;->zzc(Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/ads/zzsn;

    move-result-object v0

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsn;->zzh()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_14
    if-ge v2, v3, :cond_51

    aget-object v5, v0, v2

    iget v5, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_48

    const/4 v6, 0x2

    if-eq v5, v6, :cond_48

    sparse-switch v5, :sswitch_data_68

    const/4 v5, -0x1

    goto :goto_4a

    :sswitch_25
    const/high16 v5, 0x2200000

    goto :goto_4a

    :sswitch_28
    const/high16 v5, 0x900000

    goto :goto_4a

    :sswitch_2b
    const v5, 0x564000

    goto :goto_4a

    :sswitch_2f
    const/high16 v5, 0x220000

    goto :goto_4a

    :sswitch_32
    const/high16 v5, 0x200000

    goto :goto_4a

    :sswitch_35
    const/high16 v5, 0x140000

    goto :goto_4a

    :sswitch_38
    const v5, 0xe1000

    goto :goto_4a

    :sswitch_3c
    const v5, 0x65400

    goto :goto_4a

    :sswitch_40
    const v5, 0x31800

    goto :goto_4a

    :sswitch_44
    const v5, 0x18c00

    goto :goto_4a

    :cond_48
    const/16 v5, 0x6300

    :goto_4a
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_51
    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5b

    const v0, 0x54600

    goto :goto_5e

    :cond_5b
    const v0, 0x2a300

    :goto_5e
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_64

    :cond_63
    const/4 v0, 0x0

    :goto_64
    sput v0, Lcom/google/android/gms/internal/ads/zzth;->zzd:I

    :cond_66
    return v0

    nop

    :sswitch_data_68
    .sparse-switch
        0x8 -> :sswitch_44
        0x10 -> :sswitch_44
        0x20 -> :sswitch_44
        0x40 -> :sswitch_40
        0x80 -> :sswitch_3c
        0x100 -> :sswitch_3c
        0x200 -> :sswitch_38
        0x400 -> :sswitch_35
        0x800 -> :sswitch_32
        0x1000 -> :sswitch_32
        0x2000 -> :sswitch_2f
        0x4000 -> :sswitch_2b
        0x8000 -> :sswitch_28
        0x10000 -> :sswitch_28
        0x20000 -> :sswitch_25
        0x40000 -> :sswitch_25
        0x80000 -> :sswitch_25
    .end sparse-switch
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzam;)Landroid/util/Pair;
    .registers 18
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzam;->zzj:Ljava/lang/String;

    if-nez v1, :cond_9

    :cond_6
    :goto_6
    const/4 v2, 0x0

    goto/16 :goto_84a

    :cond_9
    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    const-string v4, "video/dolby-vision"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v7, 0x200

    const/16 v8, 0x100

    const/16 v9, 0x80

    const/16 v10, 0x40

    const/16 v11, 0x20

    const/16 v14, 0x1000

    const/16 v15, 0x8

    const/16 v2, 0x10

    const/4 v5, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x2

    const-string v4, "MediaCodecUtil"

    const/4 v6, 0x1

    if-eqz v3, :cond_1f8

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzam;->zzj:Ljava/lang/String;

    array-length v3, v1

    if-ge v3, v5, :cond_42

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed Dolby Vision codec string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_42
    sget-object v3, Lcom/google/android/gms/internal/ads/zzth;->zzb:Ljava/util/regex/Pattern;

    aget-object v5, v1, v6

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_5e

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed Dolby Vision codec string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_5e
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_67

    :goto_64
    const/4 v3, 0x0

    goto/16 :goto_10c

    :cond_67
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_84c

    goto/16 :goto_d6

    :pswitch_70
    const-string v3, "09"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d6

    const/16 v5, 0x9

    goto :goto_d7

    :pswitch_7b
    const-string v3, "08"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d6

    const/16 v5, 0x8

    goto :goto_d7

    :pswitch_86
    const-string v3, "07"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d6

    const/4 v5, 0x7

    goto :goto_d7

    :pswitch_90
    const-string v3, "06"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d6

    const/4 v5, 0x6

    goto :goto_d7

    :pswitch_9a
    const-string v3, "05"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d6

    const/4 v5, 0x5

    goto :goto_d7

    :pswitch_a4
    const-string v3, "04"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d6

    const/4 v5, 0x4

    goto :goto_d7

    :pswitch_ae
    const-string v3, "03"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d6

    const/4 v5, 0x3

    goto :goto_d7

    :pswitch_b8
    const-string v3, "02"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d6

    const/4 v5, 0x2

    goto :goto_d7

    :pswitch_c2
    const-string v3, "01"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d6

    const/4 v5, 0x1

    goto :goto_d7

    :pswitch_cc
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d6

    const/4 v5, 0x0

    goto :goto_d7

    :cond_d6
    :goto_d6
    const/4 v5, -0x1

    :goto_d7
    packed-switch v5, :pswitch_data_864

    goto :goto_64

    :pswitch_db
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_10c

    :pswitch_e0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_10c

    :pswitch_e5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_10c

    :pswitch_ea
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_10c

    :pswitch_ef
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_10c

    :pswitch_f4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_10c

    :pswitch_f9
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_10c

    :pswitch_fe
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_10c

    :pswitch_103
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_10c

    :pswitch_108
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_10c
    if-nez v3, :cond_11d

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown Dolby Vision profile string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_11d
    aget-object v0, v1, v13

    if-nez v0, :cond_124

    :cond_121
    :goto_121
    const/4 v1, 0x0

    goto/16 :goto_1e0

    :cond_124
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_87c

    packed-switch v1, :pswitch_data_892

    goto :goto_121

    :pswitch_12f
    const-string v1, "13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_1e0

    :pswitch_13d
    const-string v1, "12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_1e0

    :pswitch_14d
    const-string v1, "11"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_1e0

    :pswitch_15d
    const-string v1, "10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_1e0

    :pswitch_16b
    const-string v1, "09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_1e0

    :pswitch_179
    const-string v1, "08"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1e0

    :pswitch_186
    const-string v1, "07"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1e0

    :pswitch_193
    const-string v1, "06"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1e0

    :pswitch_1a0
    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1e0

    :pswitch_1ad
    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1e0

    :pswitch_1ba
    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1e0

    :pswitch_1c7
    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1e0

    :pswitch_1d4
    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1e0
    if-nez v1, :cond_1f1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown Dolby Vision level string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1f1
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_84a

    :cond_1f8
    const/4 v3, 0x0

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_89e

    goto :goto_249

    :sswitch_203
    const-string v3, "vp09"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_249

    const/4 v3, 0x2

    goto :goto_24a

    :sswitch_20d
    const-string v3, "mp4a"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_249

    const/4 v3, 0x6

    goto :goto_24a

    :sswitch_217
    const-string v3, "hvc1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_249

    const/4 v3, 0x4

    goto :goto_24a

    :sswitch_221
    const-string v3, "hev1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_249

    const/4 v3, 0x3

    goto :goto_24a

    :sswitch_22b
    const-string v3, "avc2"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_249

    const/4 v3, 0x1

    goto :goto_24a

    :sswitch_235
    const-string v3, "avc1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_249

    const/4 v3, 0x0

    goto :goto_24a

    :sswitch_23f
    const-string v3, "av01"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_249

    const/4 v3, 0x5

    goto :goto_24a

    :cond_249
    :goto_249
    const/4 v3, -0x1

    :goto_24a
    const/16 v5, 0x2000

    const/16 v10, 0x14

    packed-switch v3, :pswitch_data_8bc

    goto/16 :goto_6

    :pswitch_253
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzam;->zzj:Ljava/lang/String;

    array-length v3, v1

    const/4 v5, 0x3

    if-eq v3, v5, :cond_268

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed MP4A codec string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_268
    :try_start_268
    aget-object v3, v1, v6

    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzce;->zzd(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "audio/mp4a-latm"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    aget-object v1, v1, v13

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_2be

    if-eq v1, v10, :cond_2ba

    const/16 v2, 0x17

    if-eq v1, v2, :cond_2b7

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_2b4

    const/16 v2, 0x27

    if-eq v1, v2, :cond_2b1

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_2ae

    packed-switch v1, :pswitch_data_8ce

    const/4 v1, -0x1

    const/4 v5, -0x1

    goto :goto_2c1

    :pswitch_29c
    const/4 v1, -0x1

    const/4 v5, 0x6

    goto :goto_2c1

    :pswitch_29f
    const/4 v1, -0x1

    const/4 v5, 0x5

    goto :goto_2c1

    :pswitch_2a2
    const/4 v1, -0x1

    const/4 v5, 0x4

    goto :goto_2c1

    :pswitch_2a5
    const/4 v1, -0x1

    const/4 v5, 0x3

    goto :goto_2c1

    :pswitch_2a8
    const/4 v1, -0x1

    const/4 v5, 0x2

    goto :goto_2c1

    :pswitch_2ab
    const/4 v1, -0x1

    const/4 v5, 0x1

    goto :goto_2c1

    :cond_2ae
    const/16 v5, 0x2a

    goto :goto_2c0

    :cond_2b1
    const/16 v5, 0x27

    goto :goto_2c0

    :cond_2b4
    const/16 v5, 0x1d

    goto :goto_2c0

    :cond_2b7
    const/16 v5, 0x17

    goto :goto_2c0

    :cond_2ba
    const/4 v1, -0x1

    const/16 v5, 0x14

    goto :goto_2c1

    :cond_2be
    const/16 v5, 0x11

    :goto_2c0
    const/4 v1, -0x1

    :goto_2c1
    if-eq v5, v1, :cond_6

    new-instance v1, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2d1
    .catch Ljava/lang/NumberFormatException; {:try_start_268 .. :try_end_2d1} :catch_2d3

    goto/16 :goto_633

    :catch_2d3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed MP4A codec string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_2e2
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzam;->zzj:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzam;->zzy:Lcom/google/android/gms/internal/ads/zzs;

    array-length v10, v1

    if-ge v10, v12, :cond_2f8

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed AV1 codec string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_2f8
    :try_start_2f8
    aget-object v10, v1, v6

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aget-object v2, v1, v13

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v8, 0x3

    aget-object v1, v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_310
    .catch Ljava/lang/NumberFormatException; {:try_start_2f8 .. :try_end_310} :catch_3ca

    if-eqz v10, :cond_328

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown AV1 profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_328
    if-eq v1, v15, :cond_357

    const/16 v3, 0xa

    if-eq v1, v3, :cond_344

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown AV1 bit depth: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_344
    if-eqz v0, :cond_355

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzs;->zzg:[B

    if-nez v1, :cond_352

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzs;->zzf:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_352

    const/4 v1, 0x6

    if-ne v0, v1, :cond_355

    :cond_352
    const/16 v0, 0x1000

    goto :goto_358

    :cond_355
    const/4 v0, 0x2

    goto :goto_358

    :cond_357
    const/4 v0, 0x1

    :goto_358
    packed-switch v2, :pswitch_data_8de

    const/4 v1, -0x1

    goto :goto_3a2

    :pswitch_35d
    const/high16 v1, 0x800000

    goto :goto_3a2

    :pswitch_360
    const/high16 v1, 0x400000

    goto :goto_3a2

    :pswitch_363
    const/high16 v1, 0x200000

    goto :goto_3a2

    :pswitch_366
    const/high16 v1, 0x100000

    goto :goto_3a2

    :pswitch_369
    const/high16 v1, 0x80000

    goto :goto_3a2

    :pswitch_36c
    const/high16 v1, 0x40000

    goto :goto_3a2

    :pswitch_36f
    const/high16 v1, 0x20000

    goto :goto_3a2

    :pswitch_372
    const/high16 v1, 0x10000

    goto :goto_3a2

    :pswitch_375
    const v1, 0x8000

    goto :goto_3a2

    :pswitch_379
    const/16 v1, 0x4000

    goto :goto_3a2

    :pswitch_37c
    const/16 v1, 0x2000

    goto :goto_3a2

    :pswitch_37f
    const/16 v1, 0x1000

    goto :goto_3a2

    :pswitch_382
    const/16 v1, 0x800

    goto :goto_3a2

    :pswitch_385
    const/16 v1, 0x400

    goto :goto_3a2

    :pswitch_388
    const/16 v1, 0x200

    goto :goto_3a2

    :pswitch_38b
    const/16 v1, 0x100

    goto :goto_3a2

    :pswitch_38e
    const/16 v1, 0x80

    goto :goto_3a2

    :pswitch_391
    const/16 v1, 0x40

    goto :goto_3a2

    :pswitch_394
    const/16 v1, 0x20

    goto :goto_3a2

    :pswitch_397
    const/16 v1, 0x10

    goto :goto_3a2

    :pswitch_39a
    const/16 v1, 0x8

    goto :goto_3a2

    :pswitch_39d
    const/4 v1, 0x4

    goto :goto_3a2

    :pswitch_39f
    const/4 v1, 0x2

    goto :goto_3a2

    :pswitch_3a1
    const/4 v1, 0x1

    :goto_3a2
    const/4 v3, -0x1

    if-ne v1, v3, :cond_3bb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown AV1 level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_3bb
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_84a

    :catch_3ca
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed AV1 codec string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_3d9
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzam;->zzj:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzam;->zzy:Lcom/google/android/gms/internal/ads/zzs;

    array-length v3, v1

    if-ge v3, v12, :cond_3ef

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed HEVC codec string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_3ef
    sget-object v3, Lcom/google/android/gms/internal/ads/zzth;->zzb:Ljava/util/regex/Pattern;

    aget-object v8, v1, v6

    invoke-virtual {v3, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_40c

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed HEVC codec string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_40c
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41b

    const/4 v0, 0x1

    :goto_419
    const/4 v2, 0x3

    goto :goto_42f

    :cond_41b
    const-string v3, "2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_636

    if-eqz v0, :cond_42d

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzs;->zzf:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_42d

    const/16 v0, 0x1000

    goto :goto_419

    :cond_42d
    const/4 v0, 0x2

    goto :goto_419

    :goto_42f
    aget-object v1, v1, v2

    if-nez v1, :cond_436

    :goto_433
    const/4 v2, 0x0

    goto/16 :goto_619

    :cond_436
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_912

    goto/16 :goto_565

    :sswitch_43f
    const-string v2, "L186"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/16 v2, 0xc

    goto/16 :goto_566

    :sswitch_44b
    const-string v2, "L183"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/16 v2, 0xb

    goto/16 :goto_566

    :sswitch_457
    const-string v2, "L180"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/16 v2, 0xa

    goto/16 :goto_566

    :sswitch_463
    const-string v2, "L156"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/16 v2, 0x9

    goto/16 :goto_566

    :sswitch_46f
    const-string v2, "L153"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/16 v2, 0x8

    goto/16 :goto_566

    :sswitch_47b
    const-string v2, "L150"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/4 v2, 0x7

    goto/16 :goto_566

    :sswitch_486
    const-string v2, "L123"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/4 v2, 0x6

    goto/16 :goto_566

    :sswitch_491
    const-string v2, "L120"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/4 v2, 0x5

    goto/16 :goto_566

    :sswitch_49c
    const-string v2, "H186"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/16 v2, 0x19

    goto/16 :goto_566

    :sswitch_4a8
    const-string v2, "H183"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/16 v2, 0x18

    goto/16 :goto_566

    :sswitch_4b4
    const-string v2, "H180"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/16 v2, 0x17

    goto/16 :goto_566

    :sswitch_4c0
    const-string v2, "H156"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/16 v2, 0x16

    goto/16 :goto_566

    :sswitch_4cc
    const-string v2, "H153"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/16 v2, 0x15

    goto/16 :goto_566

    :sswitch_4d8
    const-string v2, "H150"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/16 v2, 0x14

    goto/16 :goto_566

    :sswitch_4e4
    const-string v2, "H123"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/16 v2, 0x13

    goto/16 :goto_566

    :sswitch_4f0
    const-string v2, "H120"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/16 v2, 0x12

    goto/16 :goto_566

    :sswitch_4fc
    const-string v2, "L93"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/4 v2, 0x4

    goto :goto_566

    :sswitch_506
    const-string v2, "L90"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/4 v2, 0x3

    goto :goto_566

    :sswitch_510
    const-string v2, "L63"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/4 v2, 0x2

    goto :goto_566

    :sswitch_51a
    const-string v2, "L60"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/4 v2, 0x1

    goto :goto_566

    :sswitch_524
    const-string v2, "L30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/4 v2, 0x0

    goto :goto_566

    :sswitch_52e
    const-string v2, "H93"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/16 v2, 0x11

    goto :goto_566

    :sswitch_539
    const-string v2, "H90"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/16 v2, 0x10

    goto :goto_566

    :sswitch_544
    const-string v2, "H63"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/16 v2, 0xf

    goto :goto_566

    :sswitch_54f
    const-string v2, "H60"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/16 v2, 0xe

    goto :goto_566

    :sswitch_55a
    const-string v2, "H30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_565

    const/16 v2, 0xd

    goto :goto_566

    :cond_565
    :goto_565
    const/4 v2, -0x1

    :goto_566
    packed-switch v2, :pswitch_data_97c

    goto/16 :goto_433

    :pswitch_56b
    const/high16 v2, 0x2000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_619

    :pswitch_573
    const/high16 v2, 0x800000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_619

    :pswitch_57b
    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_619

    :pswitch_583
    const/high16 v2, 0x80000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_619

    :pswitch_58b
    const/high16 v2, 0x20000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_619

    :pswitch_593
    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_619

    :pswitch_59c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_619

    :pswitch_5a2
    const/16 v2, 0x800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_619

    :pswitch_5aa
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_619

    :pswitch_5b0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_619

    :pswitch_5b6
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_619

    :pswitch_5bb
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_619

    :pswitch_5c0
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_619

    :pswitch_5c5
    const/high16 v2, 0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_619

    :pswitch_5cc
    const/high16 v2, 0x400000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_619

    :pswitch_5d3
    const/high16 v2, 0x100000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_619

    :pswitch_5da
    const/high16 v2, 0x40000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_619

    :pswitch_5e1
    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_619

    :pswitch_5e8
    const/16 v2, 0x4000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_619

    :pswitch_5ef
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_619

    :pswitch_5f4
    const/16 v3, 0x400

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_619

    :pswitch_5fb
    const/16 v8, 0x100

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_619

    :pswitch_602
    const/16 v16, 0x40

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_619

    :pswitch_609
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_619

    :pswitch_610
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_619

    :pswitch_615
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_619
    if-nez v2, :cond_62a

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown HEVC level string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_62a
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_633
    move-object v2, v1

    goto/16 :goto_84a

    :cond_636
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown HEVC profile string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_645
    const/16 v2, 0x800

    const/16 v16, 0x40

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzam;->zzj:Ljava/lang/String;

    array-length v3, v1

    const/4 v2, 0x3

    if-ge v3, v2, :cond_65e

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed VP9 codec string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_65e
    :try_start_65e
    aget-object v2, v1, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v13

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_66a
    .catch Ljava/lang/NumberFormatException; {:try_start_65e .. :try_end_66a} :catch_718

    if-eqz v2, :cond_67c

    if-eq v2, v6, :cond_67a

    if-eq v2, v13, :cond_678

    const/4 v1, 0x3

    if-eq v2, v1, :cond_675

    const/4 v1, -0x1

    goto :goto_67d

    :cond_675
    const/16 v1, 0x8

    goto :goto_67d

    :cond_678
    const/4 v1, 0x4

    goto :goto_67d

    :cond_67a
    const/4 v1, 0x2

    goto :goto_67d

    :cond_67c
    const/4 v1, 0x1

    :goto_67d
    const/4 v3, -0x1

    if-ne v1, v3, :cond_696

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown VP9 profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_696
    const/16 v2, 0xa

    if-eq v0, v2, :cond_6f0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_6ed

    if-eq v0, v10, :cond_6ea

    const/16 v2, 0x15

    if-eq v0, v2, :cond_6e6

    const/16 v2, 0x1e

    if-eq v0, v2, :cond_6e2

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_6de

    const/16 v2, 0x28

    if-eq v0, v2, :cond_6da

    const/16 v2, 0x29

    if-eq v0, v2, :cond_6d6

    const/16 v2, 0x32

    if-eq v0, v2, :cond_6d2

    const/16 v2, 0x33

    if-eq v0, v2, :cond_6ce

    packed-switch v0, :pswitch_data_9b4

    const/4 v2, -0x1

    const/4 v6, -0x1

    goto :goto_6f1

    :pswitch_6c2
    const/4 v2, -0x1

    const/16 v6, 0x2000

    goto :goto_6f1

    :pswitch_6c6
    const/4 v2, -0x1

    const/16 v6, 0x1000

    goto :goto_6f1

    :pswitch_6ca
    const/4 v2, -0x1

    const/16 v6, 0x800

    goto :goto_6f1

    :cond_6ce
    const/4 v2, -0x1

    const/16 v6, 0x200

    goto :goto_6f1

    :cond_6d2
    const/4 v2, -0x1

    const/16 v6, 0x100

    goto :goto_6f1

    :cond_6d6
    const/4 v2, -0x1

    const/16 v6, 0x80

    goto :goto_6f1

    :cond_6da
    const/4 v2, -0x1

    const/16 v6, 0x40

    goto :goto_6f1

    :cond_6de
    const/4 v2, -0x1

    const/16 v6, 0x20

    goto :goto_6f1

    :cond_6e2
    const/4 v2, -0x1

    const/16 v6, 0x10

    goto :goto_6f1

    :cond_6e6
    const/4 v2, -0x1

    const/16 v6, 0x8

    goto :goto_6f1

    :cond_6ea
    const/4 v2, -0x1

    const/4 v6, 0x4

    goto :goto_6f1

    :cond_6ed
    const/4 v2, -0x1

    const/4 v6, 0x2

    goto :goto_6f1

    :cond_6f0
    const/4 v2, -0x1

    :goto_6f1
    if-ne v6, v2, :cond_709

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown VP9 level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_709
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_84a

    :catch_718
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed VP9 codec string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_727
    const/16 v3, 0x400

    const/16 v16, 0x40

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzam;->zzj:Ljava/lang/String;

    array-length v2, v1

    if-ge v2, v13, :cond_73f

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed AVC codec string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_73f
    :try_start_73f
    aget-object v10, v1, v6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v3, 0x6

    if-ne v10, v3, :cond_760

    aget-object v2, v1, v6

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    aget-object v1, v1, v6

    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_771

    :cond_760
    const/16 v3, 0x10

    const/4 v10, 0x3

    if-lt v2, v10, :cond_825

    aget-object v2, v1, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v13

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_771
    .catch Ljava/lang/NumberFormatException; {:try_start_73f .. :try_end_771} :catch_83b

    :goto_771
    const/16 v1, 0x42

    if-eq v2, v1, :cond_7a5

    const/16 v1, 0x4d

    if-eq v2, v1, :cond_7a3

    const/16 v1, 0x58

    if-eq v2, v1, :cond_7a0

    const/16 v1, 0x64

    if-eq v2, v1, :cond_79c

    const/16 v1, 0x6e

    if-eq v2, v1, :cond_798

    const/16 v1, 0x7a

    if-eq v2, v1, :cond_794

    const/16 v1, 0xf4

    if-eq v2, v1, :cond_790

    const/4 v1, -0x1

    const/4 v13, -0x1

    goto :goto_7a7

    :cond_790
    const/4 v1, -0x1

    const/16 v13, 0x40

    goto :goto_7a7

    :cond_794
    const/4 v1, -0x1

    const/16 v13, 0x20

    goto :goto_7a7

    :cond_798
    const/4 v1, -0x1

    const/16 v13, 0x10

    goto :goto_7a7

    :cond_79c
    const/4 v1, -0x1

    const/16 v13, 0x8

    goto :goto_7a7

    :cond_7a0
    const/4 v1, -0x1

    const/4 v13, 0x4

    goto :goto_7a7

    :cond_7a3
    const/4 v1, -0x1

    goto :goto_7a7

    :cond_7a5
    const/4 v1, -0x1

    const/4 v13, 0x1

    :goto_7a7
    if-ne v13, v1, :cond_7bf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown AVC profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_7bf
    packed-switch v0, :pswitch_data_9be

    packed-switch v0, :pswitch_data_9ca

    packed-switch v0, :pswitch_data_9d4

    packed-switch v0, :pswitch_data_9de

    packed-switch v0, :pswitch_data_9e8

    const/4 v1, -0x1

    goto :goto_7fe

    :pswitch_7d0
    const/high16 v1, 0x10000

    goto :goto_7fe

    :pswitch_7d3
    const v1, 0x8000

    goto :goto_7fe

    :pswitch_7d7
    const/16 v1, 0x4000

    goto :goto_7fe

    :pswitch_7da
    const/16 v1, 0x2000

    goto :goto_7fe

    :pswitch_7dd
    const/16 v1, 0x1000

    goto :goto_7fe

    :pswitch_7e0
    const/16 v1, 0x800

    goto :goto_7fe

    :pswitch_7e3
    const/16 v1, 0x400

    goto :goto_7fe

    :pswitch_7e6
    const/16 v1, 0x200

    goto :goto_7fe

    :pswitch_7e9
    const/16 v1, 0x100

    goto :goto_7fe

    :pswitch_7ec
    const/16 v1, 0x80

    goto :goto_7fe

    :pswitch_7ef
    const/16 v1, 0x40

    goto :goto_7fe

    :pswitch_7f2
    const/16 v1, 0x20

    goto :goto_7fe

    :pswitch_7f5
    const/16 v1, 0x10

    goto :goto_7fe

    :pswitch_7f8
    const/16 v1, 0x8

    goto :goto_7fe

    :pswitch_7fb
    const/4 v1, 0x4

    goto :goto_7fe

    :pswitch_7fd
    const/4 v1, 0x1

    :goto_7fe
    const/4 v2, -0x1

    if-ne v1, v2, :cond_817

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown AVC level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_817
    new-instance v2, Landroid/util/Pair;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_84a

    :cond_825
    :try_start_825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring malformed AVC codec string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_839
    .catch Ljava/lang/NumberFormatException; {:try_start_825 .. :try_end_839} :catch_83b

    goto/16 :goto_6

    :catch_83b
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed AVC codec string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :goto_84a
    return-object v2

    nop

    :pswitch_data_84c
    .packed-switch 0x600
        :pswitch_cc
        :pswitch_c2
        :pswitch_b8
        :pswitch_ae
        :pswitch_a4
        :pswitch_9a
        :pswitch_90
        :pswitch_86
        :pswitch_7b
        :pswitch_70
    .end packed-switch

    :pswitch_data_864
    .packed-switch 0x0
        :pswitch_108
        :pswitch_103
        :pswitch_fe
        :pswitch_f9
        :pswitch_f4
        :pswitch_ef
        :pswitch_ea
        :pswitch_e5
        :pswitch_e0
        :pswitch_db
    .end packed-switch

    :pswitch_data_87c
    .packed-switch 0x601
        :pswitch_1d4
        :pswitch_1c7
        :pswitch_1ba
        :pswitch_1ad
        :pswitch_1a0
        :pswitch_193
        :pswitch_186
        :pswitch_179
        :pswitch_16b
    .end packed-switch

    :pswitch_data_892
    .packed-switch 0x61f
        :pswitch_15d
        :pswitch_14d
        :pswitch_13d
        :pswitch_12f
    .end packed-switch

    :sswitch_data_89e
    .sparse-switch
        0x2dd8f6 -> :sswitch_23f
        0x2ddf23 -> :sswitch_235
        0x2ddf24 -> :sswitch_22b
        0x30d038 -> :sswitch_221
        0x310dbc -> :sswitch_217
        0x333790 -> :sswitch_20d
        0x374e43 -> :sswitch_203
    .end sparse-switch

    :pswitch_data_8bc
    .packed-switch 0x0
        :pswitch_727
        :pswitch_727
        :pswitch_645
        :pswitch_3d9
        :pswitch_3d9
        :pswitch_2e2
        :pswitch_253
    .end packed-switch

    :pswitch_data_8ce
    .packed-switch 0x1
        :pswitch_2ab
        :pswitch_2a8
        :pswitch_2a5
        :pswitch_2a2
        :pswitch_29f
        :pswitch_29c
    .end packed-switch

    :pswitch_data_8de
    .packed-switch 0x0
        :pswitch_3a1
        :pswitch_39f
        :pswitch_39d
        :pswitch_39a
        :pswitch_397
        :pswitch_394
        :pswitch_391
        :pswitch_38e
        :pswitch_38b
        :pswitch_388
        :pswitch_385
        :pswitch_382
        :pswitch_37f
        :pswitch_37c
        :pswitch_379
        :pswitch_375
        :pswitch_372
        :pswitch_36f
        :pswitch_36c
        :pswitch_369
        :pswitch_366
        :pswitch_363
        :pswitch_360
        :pswitch_35d
    .end packed-switch

    :sswitch_data_912
    .sparse-switch
        0x114a5 -> :sswitch_55a
        0x11502 -> :sswitch_54f
        0x11505 -> :sswitch_544
        0x1155f -> :sswitch_539
        0x11562 -> :sswitch_52e
        0x123a9 -> :sswitch_524
        0x12406 -> :sswitch_51a
        0x12409 -> :sswitch_510
        0x12463 -> :sswitch_506
        0x12466 -> :sswitch_4fc
        0x2178e7 -> :sswitch_4f0
        0x2178ea -> :sswitch_4e4
        0x217944 -> :sswitch_4d8
        0x217947 -> :sswitch_4cc
        0x21794a -> :sswitch_4c0
        0x2179a1 -> :sswitch_4b4
        0x2179a4 -> :sswitch_4a8
        0x2179a7 -> :sswitch_49c
        0x234a63 -> :sswitch_491
        0x234a66 -> :sswitch_486
        0x234ac0 -> :sswitch_47b
        0x234ac3 -> :sswitch_46f
        0x234ac6 -> :sswitch_463
        0x234b1d -> :sswitch_457
        0x234b20 -> :sswitch_44b
        0x234b23 -> :sswitch_43f
    .end sparse-switch

    :pswitch_data_97c
    .packed-switch 0x0
        :pswitch_615
        :pswitch_610
        :pswitch_609
        :pswitch_602
        :pswitch_5fb
        :pswitch_5f4
        :pswitch_5ef
        :pswitch_5e8
        :pswitch_5e1
        :pswitch_5da
        :pswitch_5d3
        :pswitch_5cc
        :pswitch_5c5
        :pswitch_5c0
        :pswitch_5bb
        :pswitch_5b6
        :pswitch_5b0
        :pswitch_5aa
        :pswitch_5a2
        :pswitch_59c
        :pswitch_593
        :pswitch_58b
        :pswitch_583
        :pswitch_57b
        :pswitch_573
        :pswitch_56b
    .end packed-switch

    :pswitch_data_9b4
    .packed-switch 0x3c
        :pswitch_6ca
        :pswitch_6c6
        :pswitch_6c2
    .end packed-switch

    :pswitch_data_9be
    .packed-switch 0xa
        :pswitch_7fd
        :pswitch_7fb
        :pswitch_7f8
        :pswitch_7f5
    .end packed-switch

    :pswitch_data_9ca
    .packed-switch 0x14
        :pswitch_7f2
        :pswitch_7ef
        :pswitch_7ec
    .end packed-switch

    :pswitch_data_9d4
    .packed-switch 0x1e
        :pswitch_7e9
        :pswitch_7e6
        :pswitch_7e3
    .end packed-switch

    :pswitch_data_9de
    .packed-switch 0x28
        :pswitch_7e0
        :pswitch_7dd
        :pswitch_7da
    .end packed-switch

    :pswitch_data_9e8
    .packed-switch 0x32
        :pswitch_7d7
        :pswitch_7d3
        :pswitch_7d0
    .end packed-switch
.end method

.method public static zzc(Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/ads/zzsn;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztb;
        }
    .end annotation

    const/4 p1, 0x0

    invoke-static {p0, p1, p1}, Lcom/google/android/gms/internal/ads/zzth;->zzg(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzsn;

    return-object p0
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzsn;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztb;
        }
    .end annotation

    const-string v0, "audio/raw"

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzth;->zzc(Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/ads/zzsn;

    move-result-object v0

    return-object v0
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzam;)Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    const-string v1, "audio/eac3-joc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, "audio/eac3"

    return-object p0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    const-string v1, "video/dolby-vision"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzth;->zzb(Lcom/google/android/gms/internal/ads/zzam;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_38

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_35

    const/16 v0, 0x100

    if-ne p0, v0, :cond_2e

    goto :goto_35

    :cond_2e
    const/16 v0, 0x200

    if-ne p0, v0, :cond_38

    const-string p0, "video/avc"

    return-object p0

    :cond_35
    :goto_35
    const-string p0, "video/hevc"

    return-object p0

    :cond_38
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zzf(Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzam;ZZ)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztb;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzth;->zze(Lcom/google/android/gms/internal/ads/zzam;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_b

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwu;->zzl()Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzth;->zzg(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized zzg(Ljava/lang/String;ZZ)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztb;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-class v3, Lcom/google/android/gms/internal/ads/zzth;

    monitor-enter v3

    :try_start_9
    new-instance v4, Lcom/google/android/gms/internal/ads/zzsz;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzsz;-><init>(Ljava/lang/String;ZZ)V

    sget-object v5, Lcom/google/android/gms/internal/ads/zzth;->zzc:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_115

    if-eqz v6, :cond_1a

    monitor-exit v3

    return-object v6

    :cond_1a
    :try_start_1a
    sget v6, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/4 v7, 0x0

    const/16 v8, 0x15

    if-lt v6, v8, :cond_27

    new-instance v9, Lcom/google/android/gms/internal/ads/zztf;

    invoke-direct {v9, v1, v2}, Lcom/google/android/gms/internal/ads/zztf;-><init>(ZZ)V

    goto :goto_2c

    :cond_27
    new-instance v9, Lcom/google/android/gms/internal/ads/zzte;

    invoke-direct {v9, v7}, Lcom/google/android/gms/internal/ads/zzte;-><init>(Lcom/google/android/gms/internal/ads/zztd;)V

    :goto_2c
    invoke-static {v4, v9}, Lcom/google/android/gms/internal/ads/zzth;->zzj(Lcom/google/android/gms/internal/ads/zzsz;Lcom/google/android/gms/internal/ads/zztc;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v9, 0x0

    if-eqz v1, :cond_74

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_74

    if-lt v6, v8, :cond_74

    const/16 v1, 0x17

    if-gt v6, v1, :cond_74

    new-instance v1, Lcom/google/android/gms/internal/ads/zzte;

    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/ads/zzte;-><init>(Lcom/google/android/gms/internal/ads/zztd;)V

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzth;->zzj(Lcom/google/android/gms/internal/ads/zzsz;Lcom/google/android/gms/internal/ads/zztc;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_74

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzsn;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzsn;->zza:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ". Assuming: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "MediaCodecUtil"

    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_bc

    const/16 v0, 0x1a

    if-ge v6, v0, :cond_b7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfs;->zzb:Ljava/lang/String;

    const-string v7, "R9"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_b7

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsn;->zza:Ljava/lang/String;

    const-string v7, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    const-string v10, "OMX.google.raw.decoder"

    const-string v11, "audio/raw"

    const-string v12, "audio/raw"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v10 .. v18}, Lcom/google/android/gms/internal/ads/zzsn;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzsn;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzsw;->zza:Lcom/google/android/gms/internal/ads/zzsw;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzth;->zzk(Ljava/util/List;Lcom/google/android/gms/internal/ads/zztg;)V

    :cond_bc
    if-ge v6, v8, :cond_e9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_e9

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsn;->zza:Ljava/lang/String;

    const-string v7, "OMX.SEC.mp3.dec"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e4

    const-string v7, "OMX.SEC.MP3.Decoder"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e4

    const-string v7, "OMX.brcm.audio.mp3.decoder"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    :cond_e4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzsx;->zza:Lcom/google/android/gms/internal/ads/zzsx;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzth;->zzk(Ljava/util/List;Lcom/google/android/gms/internal/ads/zztg;)V

    :cond_e9
    const/16 v0, 0x20

    if-ge v6, v0, :cond_10c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_10c

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsn;->zza:Ljava/lang/String;

    const-string v1, "OMX.qti.audio.decoder.flac"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsn;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10c
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfwu;->zzj(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_113
    .catchall {:try_start_1a .. :try_end_113} :catchall_115

    monitor-exit v3

    return-object v0

    :catchall_115
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static zzh(Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzam;ZZ)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztb;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzth;->zzg(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzth;->zzf(Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzam;ZZ)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfwr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfwr;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfwr;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfwr;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzfwr;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfwr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfwr;->zzi()Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object p0

    return-object p0
.end method

.method public static zzi(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzam;)Ljava/util/List;
    .registers 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzsy;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsy;-><init>(Lcom/google/android/gms/internal/ads/zzam;)V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzth;->zzk(Ljava/util/List;Lcom/google/android/gms/internal/ads/zztg;)V

    return-object v0
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzsz;Lcom/google/android/gms/internal/ads/zztc;)Ljava/util/ArrayList;
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztb;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "secure-playback"

    const-string v4, "tunneled-playback"

    :try_start_8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zztc;->zza()I

    move-result v14

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zztc;->zze()Z

    move-result v16

    const/16 v17, 0x0

    const/4 v13, 0x0

    :goto_1a
    if-ge v13, v14, :cond_2fe

    invoke-interface {v2, v13}, Lcom/google/android/gms/internal/ads/zztc;->zzb(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    sget v7, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_34

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isAlias()Z

    move-result v9

    if-eqz v9, :cond_34

    :cond_2c
    :goto_2c
    move/from16 v24, v13

    move/from16 v25, v14

    move-object/from16 v26, v15

    goto/16 :goto_2f4

    :cond_34
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v9
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3c} :catch_2ff

    if-nez v9, :cond_2c

    const-string v9, ".secure"

    if-nez v16, :cond_48

    :try_start_42
    invoke-virtual {v12, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2c

    :cond_48
    const/16 v10, 0x15

    if-ge v7, v10, :cond_7c

    const-string v10, "CIPAACDecoder"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2c

    const-string v10, "CIPMP3Decoder"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2c

    const-string v10, "CIPVorbisDecoder"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2c

    const-string v10, "CIPAMRNBDecoder"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2c

    const-string v10, "AACDecoder"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2c

    const-string v10, "MP3Decoder"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_7a} :catch_2ff

    if-nez v10, :cond_2c

    :cond_7c
    const/16 v10, 0x18

    const-string v11, "samsung"

    if-ge v7, v10, :cond_dc

    :try_start_82
    const-string v10, "OMX.SEC.aac.dec"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_92

    const-string v10, "OMX.Exynos.AAC.Decoder"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_dc

    :cond_92
    sget-object v10, Lcom/google/android/gms/internal/ads/zzfs;->zzc:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_dc

    sget-object v10, Lcom/google/android/gms/internal/ads/zzfs;->zzb:Ljava/lang/String;

    const-string v5, "zeroflte"

    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2c

    const-string v5, "zerolte"

    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2c

    const-string v5, "zenlte"

    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2c

    const-string v5, "SC-05G"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    const-string v5, "marinelteatt"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    const-string v5, "404SC"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    const-string v5, "SC-04G"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    const-string v5, "SCV31"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_da} :catch_2ff

    if-nez v5, :cond_2c

    :cond_dc
    const-string v5, "jflte"

    const/16 v10, 0x13

    if-gt v7, v10, :cond_11a

    :try_start_e2
    const-string v8, "OMX.SEC.vp8.dec"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11a

    sget-object v8, Lcom/google/android/gms/internal/ads/zzfs;->zzc:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11a

    sget-object v8, Lcom/google/android/gms/internal/ads/zzfs;->zzb:Ljava/lang/String;

    const-string v11, "d2"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2c

    const-string v11, "serrano"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2c

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2c

    const-string v11, "santos"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2c

    const-string v11, "t0"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2c

    :cond_11a
    if-gt v7, v10, :cond_12c

    sget-object v8, Lcom/google/android/gms/internal/ads/zzfs;->zzb:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12c

    const-string v5, "OMX.qcom.video.decoder.vp8"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    :cond_12c
    const/16 v5, 0x17

    if-gt v7, v5, :cond_140

    const-string v7, "audio/eac3-joc"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_140

    const-string v7, "OMX.MTK.AUDIO.DECODER.DSPAC3"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2c

    :cond_140
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v10, 0x0

    :goto_146
    if-ge v10, v8, :cond_154

    aget-object v11, v7, v10

    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_151

    goto :goto_1b4

    :cond_151
    add-int/lit8 v10, v10, 0x1

    goto :goto_146

    :cond_154
    const-string v7, "video/dolby-vision"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17a

    const-string v7, "OMX.MS.HEVCDV.Decoder"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_167

    const-string v11, "video/hevcdv"

    goto :goto_1b4

    :cond_167
    const-string v7, "OMX.RTK.video.decoder"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_177

    const-string v7, "OMX.realtek.video.decoder.tunneled"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b3

    :cond_177
    const-string v11, "video/dv_hevc"

    goto :goto_1b4

    :cond_17a
    const-string v7, "audio/alac"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18d

    const-string v7, "OMX.lge.alac.decoder"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18d

    const-string v11, "audio/x-lg-alac"

    goto :goto_1b4

    :cond_18d
    const-string v7, "audio/flac"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a0

    const-string v7, "OMX.lge.flac.decoder"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a0

    const-string v11, "audio/x-lg-flac"

    goto :goto_1b4

    :cond_1a0
    const-string v7, "audio/ac3"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b3

    const-string v7, "OMX.lge.ac3.decoder"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b3

    const-string v11, "audio/lg-ac3"
    :try_end_1b2
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_1b2} :catch_2ff

    goto :goto_1b4

    :cond_1b3
    const/4 v11, 0x0

    :goto_1b4
    if-eqz v11, :cond_2c

    :try_start_1b6
    invoke-virtual {v0, v11}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v10

    invoke-interface {v2, v4, v11, v10}, Lcom/google/android/gms/internal/ads/zztc;->zzd(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v7

    invoke-interface {v2, v4, v11, v10}, Lcom/google/android/gms/internal/ads/zztc;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v8

    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzsz;->zzc:Z

    if-nez v5, :cond_1c9

    if-nez v8, :cond_2c

    goto :goto_1cd

    :cond_1c9
    if-nez v7, :cond_1cd

    goto/16 :goto_2c

    :cond_1cd
    :goto_1cd
    invoke-interface {v2, v3, v11, v10}, Lcom/google/android/gms/internal/ads/zztc;->zzd(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v5

    invoke-interface {v2, v3, v11, v10}, Lcom/google/android/gms/internal/ads/zztc;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v7

    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzsz;->zzb:Z

    const/16 v20, 0x1

    if-nez v8, :cond_1de

    if-nez v7, :cond_2c

    goto :goto_1e1

    :cond_1de
    if-eqz v5, :cond_2c

    const/4 v5, 0x1

    :goto_1e1
    sget v7, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_1ee

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v8

    move/from16 v21, v8

    goto :goto_1f9

    :cond_1ee
    invoke-static {v0, v15}, Lcom/google/android/gms/internal/ads/zzth;->zzl(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1f7

    const/16 v21, 0x1

    goto :goto_1f9

    :cond_1f7
    const/16 v21, 0x0

    :goto_1f9
    invoke-static {v0, v15}, Lcom/google/android/gms/internal/ads/zzth;->zzl(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v22

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_206

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isVendor()Z

    move-result v0

    goto :goto_229

    :cond_206
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzftf;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "omx.google."

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_228

    const-string v7, "c2.android."

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_228

    const-string v7, "c2.google."

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_228

    const/4 v0, 0x1

    goto :goto_229

    :cond_228
    const/4 v0, 0x0

    :goto_229
    if-eqz v16, :cond_22f

    iget-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzsz;->zzb:Z
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_22d} :catch_29e

    if-eq v7, v5, :cond_235

    :cond_22f
    if-nez v16, :cond_265

    :try_start_231
    iget-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzsz;->zzb:Z
    :try_end_233
    .catch Ljava/lang/Exception; {:try_start_231 .. :try_end_233} :catch_25a

    if-nez v7, :cond_265

    :cond_235
    const/4 v5, 0x0

    const/16 v18, 0x0

    move-object v7, v12

    move-object v8, v15

    move-object v9, v11

    move-object/from16 v20, v11

    move/from16 v11, v21

    move-object/from16 v23, v12

    move/from16 v12, v22

    move/from16 v24, v13

    move v13, v0

    move/from16 v25, v14

    move v14, v5

    move-object/from16 v26, v15

    move/from16 v15, v18

    :try_start_24d
    invoke-static/range {v7 .. v15}, Lcom/google/android/gms/internal/ads/zzsn;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzsn;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2f4

    :catch_256
    move-exception v0

    move-object/from16 v1, v23

    goto :goto_2a8

    :catch_25a
    move-exception v0

    move-object/from16 v20, v11

    move/from16 v24, v13

    move/from16 v25, v14

    move-object/from16 v26, v15

    move-object v1, v12

    goto :goto_2a8

    :cond_265
    move-object/from16 v20, v11

    move-object/from16 v23, v12

    move/from16 v24, v13

    move/from16 v25, v14

    move-object/from16 v26, v15

    if-nez v16, :cond_2f4

    if-eqz v5, :cond_2f4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_278
    .catch Ljava/lang/Exception; {:try_start_24d .. :try_end_278} :catch_256

    move-object/from16 v15, v23

    :try_start_27a
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_284
    .catch Ljava/lang/Exception; {:try_start_27a .. :try_end_284} :catch_29b

    const/4 v14, 0x0

    const/4 v5, 0x1

    move-object/from16 v8, v26

    move-object/from16 v9, v20

    move/from16 v11, v21

    move/from16 v12, v22

    move v13, v0

    move-object v1, v15

    move v15, v5

    :try_start_291
    invoke-static/range {v7 .. v15}, Lcom/google/android/gms/internal/ads/zzsn;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzsn;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_298
    .catch Ljava/lang/Exception; {:try_start_291 .. :try_end_298} :catch_299

    goto :goto_2fe

    :catch_299
    move-exception v0

    goto :goto_2a8

    :catch_29b
    move-exception v0

    move-object v1, v15

    goto :goto_2a8

    :catch_29e
    move-exception v0

    move-object/from16 v20, v11

    move-object v1, v12

    move/from16 v24, v13

    move/from16 v25, v14

    move-object/from16 v26, v15

    :goto_2a8
    :try_start_2a8
    sget v5, Lcom/google/android/gms/internal/ads/zzfs;->zza:I
    :try_end_2aa
    .catch Ljava/lang/Exception; {:try_start_2a8 .. :try_end_2aa} :catch_2ff

    const-string v7, "MediaCodecUtil"

    const/16 v8, 0x17

    if-gt v5, v8, :cond_2d0

    :try_start_2b0
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2d0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping codec "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (failed to query capabilities)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f4

    :cond_2d0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query codec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v20

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/zzez;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_2f4
    .catch Ljava/lang/Exception; {:try_start_2b0 .. :try_end_2f4} :catch_2ff

    :cond_2f4
    :goto_2f4
    add-int/lit8 v13, v24, 0x1

    move-object/from16 v1, p0

    move/from16 v14, v25

    move-object/from16 v15, v26

    goto/16 :goto_1a

    :cond_2fe
    :goto_2fe
    return-object v6

    :catch_2ff
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zztb;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zztb;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzta;)V

    throw v1
.end method

.method private static zzk(Ljava/util/List;Lcom/google/android/gms/internal/ads/zztg;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzsv;-><init>(Lcom/google/android/gms/internal/ads/zztg;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private static zzl(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z
    .registers 4

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result p0

    return p0

    :cond_b
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzce;->zzf(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_13

    return v0

    :cond_13
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzftf;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "arc."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_25

    return v1

    :cond_25
    const-string p1, "omx.google."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_70

    const-string p1, "omx.ffmpeg."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_70

    const-string p1, "omx.sec."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_45

    const-string p1, ".sw."

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_70

    :cond_45
    const-string p1, "omx.qcom.video.decoder.hevcswvdec"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_70

    const-string p1, "c2.android."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_70

    const-string p1, "c2.google."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_70

    const-string p1, "omx."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6f

    const-string p1, "c2."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6e

    goto :goto_70

    :cond_6e
    return v1

    :cond_6f
    const/4 v0, 0x0

    :cond_70
    :goto_70
    return v0
.end method

###### Class com.google.android.gms.internal.ads.zzce (com.google.android.gms.internal.ads.zzce)
.class public final Lcom/google/android/gms/internal/ads/zzce;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Ljava/util/ArrayList;

.field private static final zzc:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzce;->zzb:Ljava/util/ArrayList;

    const-string v0, "^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzce;->zzc:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x7

    const/16 v2, 0x9

    const/4 v3, 0x5

    const/4 v4, 0x6

    const/16 v5, 0x8

    const/4 v6, 0x0

    sparse-switch v0, :sswitch_data_b8

    goto/16 :goto_8f

    :sswitch_11
    const-string v0, "audio/true-hd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8f

    const/16 p0, 0xa

    goto/16 :goto_90

    :sswitch_1d
    const-string v0, "audio/vnd.dts.hd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8f

    const/4 p0, 0x7

    goto/16 :goto_90

    :sswitch_28
    const-string v0, "audio/opus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8f

    const/16 p0, 0xb

    goto :goto_90

    :sswitch_33
    const-string v0, "audio/mpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8f

    const/4 p0, 0x0

    goto :goto_90

    :sswitch_3d
    const-string v0, "audio/eac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8f

    const/4 p0, 0x3

    goto :goto_90

    :sswitch_47
    const-string v0, "audio/vnd.dts.uhd;profile=p2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8f

    const/16 p0, 0x9

    goto :goto_90

    :sswitch_52
    const-string v0, "audio/ac4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8f

    const/4 p0, 0x5

    goto :goto_90

    :sswitch_5c
    const-string v0, "audio/ac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8f

    const/4 p0, 0x2

    goto :goto_90

    :sswitch_66
    const-string v0, "audio/mp4a-latm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8f

    const/4 p0, 0x1

    goto :goto_90

    :sswitch_70
    const-string v0, "audio/vnd.dts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8f

    const/4 p0, 0x6

    goto :goto_90

    :sswitch_7a
    const-string v0, "audio/vnd.dts.hd;profile=lbr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8f

    const/16 p0, 0x8

    goto :goto_90

    :sswitch_85
    const-string v0, "audio/eac3-joc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8f

    const/4 p0, 0x4

    goto :goto_90

    :cond_8f
    :goto_8f
    const/4 p0, -0x1

    :goto_90
    packed-switch p0, :pswitch_data_ea

    return v6

    :pswitch_94
    const/16 p0, 0x14

    return p0

    :pswitch_97
    const/16 p0, 0xe

    return p0

    :pswitch_9a
    const/16 p0, 0x1e

    return p0

    :pswitch_9d
    return v5

    :pswitch_9e
    return v1

    :pswitch_9f
    const/16 p0, 0x11

    return p0

    :pswitch_a2
    const/16 p0, 0x12

    return p0

    :pswitch_a5
    return v4

    :pswitch_a6
    return v3

    :pswitch_a7
    if-nez p1, :cond_aa

    return v6

    :cond_aa
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzce;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcd;

    move-result-object p0

    if-nez p0, :cond_b1

    return v6

    :cond_b1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcd;->zza()I

    move-result p0

    return p0

    :pswitch_b6
    return v2

    nop

    :sswitch_data_b8
    .sparse-switch
        -0x7e929daa -> :sswitch_85
        -0x51617051 -> :sswitch_7a
        -0x41455b98 -> :sswitch_70
        -0x3313c2e -> :sswitch_66
        0xb269698 -> :sswitch_5c
        0xb269699 -> :sswitch_52
        0x20d04866 -> :sswitch_47
        0x59ae0c65 -> :sswitch_3d
        0x59b1e81e -> :sswitch_33
        0x59b2d2d8 -> :sswitch_28
        0x59c2dc42 -> :sswitch_1d
        0x5cc95062 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9d
        :pswitch_9a
        :pswitch_97
        :pswitch_94
    .end packed-switch
.end method

.method public static zzb(Ljava/lang/String;)I
    .registers 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzce;->zzf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzce;->zzg(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzce;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "text"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    const-string v0, "application/x-media3-cues"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    const-string v0, "application/cea-608"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    const-string v0, "application/cea-708"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    const-string v0, "application/x-mp4-cea-608"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    const-string v0, "application/x-subrip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    const-string v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    const-string v0, "application/x-quicktime-tx3g"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    const-string v0, "application/x-mp4-vtt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    const-string v0, "application/x-rawcc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    const-string v0, "application/vobsub"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    const-string v0, "application/pgs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    const-string v0, "application/dvbsubs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    goto :goto_e0

    :cond_83
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzce;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "image"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_de

    const-string v0, "application/x-image-uri"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    goto :goto_de

    :cond_98
    const-string v0, "application/id3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dc

    const-string v0, "application/x-emsg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dc

    const-string v0, "application/x-scte35"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    goto :goto_dc

    :cond_b1
    const-string v0, "application/x-camera-motion"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_da

    sget-object v0, Lcom/google/android/gms/internal/ads/zzce;->zzb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c1
    if-ge v3, v0, :cond_d9

    sget-object v4, Lcom/google/android/gms/internal/ads/zzce;->zzb:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzcc;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzcc;->zza:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d6

    const/4 v1, 0x0

    goto :goto_d9

    :cond_d6
    add-int/lit8 v3, v3, 0x1

    goto :goto_c1

    :cond_d9
    :goto_d9
    return v1

    :cond_da
    const/4 p0, 0x6

    return p0

    :cond_dc
    :goto_dc
    const/4 p0, 0x5

    return p0

    :cond_de
    :goto_de
    const/4 p0, 0x4

    return p0

    :cond_e0
    :goto_e0
    const/4 p0, 0x3

    return p0

    :cond_e2
    const/4 p0, 0x2

    return p0
.end method

.method static zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcd;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzce;->zzc:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2e

    :cond_d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x10

    :try_start_1c
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz p0, :cond_27

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_26} :catch_2e

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcd;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/ads/zzcd;-><init>(II)V

    return-object v1

    :catch_2e
    :goto_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zzd(I)Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/16 v0, 0x20

    if-eq p0, v0, :cond_59

    const/16 v0, 0x21

    if-eq p0, v0, :cond_56

    const/16 v0, 0x23

    if-eq p0, v0, :cond_53

    const/16 v0, 0x40

    if-eq p0, v0, :cond_50

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_4d

    const/16 v0, 0xb1

    if-eq p0, v0, :cond_4a

    const/16 v0, 0xdd

    if-eq p0, v0, :cond_47

    const/16 v0, 0xa5

    if-eq p0, v0, :cond_44

    const/16 v0, 0xa6

    if-eq p0, v0, :cond_41

    packed-switch p0, :pswitch_data_5c

    packed-switch p0, :pswitch_data_78

    const/4 p0, 0x0

    return-object p0

    :pswitch_2c
    const-string p0, "audio/ac4"

    return-object p0

    :pswitch_2f
    const-string p0, "audio/opus"

    return-object p0

    :pswitch_32
    const-string p0, "audio/vnd.dts.hd"

    return-object p0

    :pswitch_35
    const-string p0, "audio/vnd.dts"

    return-object p0

    :pswitch_38
    const-string p0, "video/mpeg"

    return-object p0

    :pswitch_3b
    const-string p0, "audio/mpeg"

    return-object p0

    :pswitch_3e
    const-string p0, "video/mpeg2"

    return-object p0

    :cond_41
    const-string p0, "audio/eac3"

    return-object p0

    :cond_44
    const-string p0, "audio/ac3"

    return-object p0

    :cond_47
    const-string p0, "audio/vorbis"

    return-object p0

    :cond_4a
    const-string p0, "video/x-vnd.on2.vp9"

    return-object p0

    :cond_4d
    const-string p0, "video/wvc1"

    return-object p0

    :cond_50
    :pswitch_50
    const-string p0, "audio/mp4a-latm"

    return-object p0

    :cond_53
    const-string p0, "video/hevc"

    return-object p0

    :cond_56
    const-string p0, "video/avc"

    return-object p0

    :cond_59
    const-string p0, "video/mp4v-es"

    return-object p0

    :pswitch_data_5c
    .packed-switch 0x60
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_3b
        :pswitch_38
        :pswitch_3b
    .end packed-switch

    :pswitch_data_78
    .packed-switch 0xa9
        :pswitch_35
        :pswitch_32
        :pswitch_32
        :pswitch_35
        :pswitch_2f
        :pswitch_2c
    .end packed-switch
.end method

.method public static zze(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_9c

    goto/16 :goto_80

    :sswitch_e
    const-string v1, "audio/g711-mlaw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    const/4 p0, 0x5

    goto/16 :goto_81

    :sswitch_19
    const-string v1, "audio/g711-alaw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    const/4 p0, 0x4

    goto :goto_81

    :sswitch_23
    const-string v1, "audio/mpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    const/4 p0, 0x0

    goto :goto_81

    :sswitch_2d
    const-string v1, "audio/flac"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    const/4 p0, 0x6

    goto :goto_81

    :sswitch_37
    const-string v1, "audio/eac3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    const/16 p0, 0x8

    goto :goto_81

    :sswitch_42
    const-string v1, "audio/raw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    const/4 p0, 0x3

    goto :goto_81

    :sswitch_4c
    const-string v1, "audio/ac3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    const/4 p0, 0x7

    goto :goto_81

    :sswitch_56
    const-string v1, "audio/mp4a-latm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    const/16 p0, 0xa

    goto :goto_81

    :sswitch_61
    const-string v1, "audio/mpeg-L2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    const/4 p0, 0x2

    goto :goto_81

    :sswitch_6b
    const-string v1, "audio/mpeg-L1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    const/4 p0, 0x1

    goto :goto_81

    :sswitch_75
    const-string v1, "audio/eac3-joc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    const/16 p0, 0x9

    goto :goto_81

    :cond_80
    :goto_80
    const/4 p0, -0x1

    :goto_81
    packed-switch p0, :pswitch_data_ca

    return v0

    :pswitch_85
    if-nez p1, :cond_88

    return v0

    :cond_88
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzce;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcd;

    move-result-object p0

    if-nez p0, :cond_8f

    return v0

    :cond_8f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcd;->zza()I

    move-result p0

    if-eqz p0, :cond_9a

    const/16 p1, 0x10

    if-eq p0, p1, :cond_9a

    return v2

    :cond_9a
    return v0

    :pswitch_9b
    return v2

    :sswitch_data_9c
    .sparse-switch
        -0x7e929daa -> :sswitch_75
        -0x19cc928c -> :sswitch_6b
        -0x19cc928b -> :sswitch_61
        -0x3313c2e -> :sswitch_56
        0xb269698 -> :sswitch_4c
        0xb26d66f -> :sswitch_42
        0x59ae0c65 -> :sswitch_37
        0x59aeaa01 -> :sswitch_2d
        0x59b1e81e -> :sswitch_23
        0x71710385 -> :sswitch_19
        0x717677f9 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_85
    .end packed-switch
.end method

.method public static zzf(Ljava/lang/String;)Z
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzce;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "audio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static zzg(Ljava/lang/String;)Z
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzce;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "video"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static zzh(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_3

    goto :goto_12

    :cond_3
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return-object p0
.end method

###### Class com.google.android.gms.internal.ads.zzabz (com.google.android.gms.internal.ads.zzabz)
.class public final Lcom/google/android/gms/internal/ads/zzabz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacl;


# static fields
.field private static final zza:[I

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzaby;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzaby;


# instance fields
.field private zze:Lcom/google/android/gms/internal/ads/zzfwu;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/internal/ads/zzajl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabz;->zza:[I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaby;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabv;->zza:Lcom/google/android/gms/internal/ads/zzabv;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaby;-><init>(Lcom/google/android/gms/internal/ads/zzabx;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabz;->zzc:Lcom/google/android/gms/internal/ads/zzaby;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaby;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabw;->zza:Lcom/google/android/gms/internal/ads/zzabw;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaby;-><init>(Lcom/google/android/gms/internal/ads/zzabx;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabz;->zzd:Lcom/google/android/gms/internal/ads/zzaby;

    return-void

    :array_1c
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
        0x11
        0x12
        0x13
        0x14
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzajl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabz;->zzf:Lcom/google/android/gms/internal/ads/zzajl;

    return-void
.end method

.method private final zzb(ILjava/util/List;)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_f8

    :pswitch_5
    goto/16 :goto_f7

    :pswitch_7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaes;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaes;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_10
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaee;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaee;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_19
    new-instance p1, Lcom/google/android/gms/internal/ads/zzalx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzalx;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_22
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzajk;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_2b
    new-instance p1, Lcom/google/android/gms/internal/ads/zzadx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadx;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_34
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabz;->zzd:Lcom/google/android/gms/internal/ads/zzaby;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaby;->zza([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzace;

    move-result-object p1

    if-eqz p1, :cond_f7

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_42
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaet;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzaet;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_4b
    new-instance p1, Lcom/google/android/gms/internal/ads/zzals;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzals;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_54
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabz;->zze:Lcom/google/android/gms/internal/ads/zzfwu;

    if-nez p1, :cond_5e

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwu;->zzl()Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabz;->zze:Lcom/google/android/gms/internal/ads/zzfwu;

    :cond_5e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzalg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfq;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfq;-><init>(J)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzajv;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzabz;->zze:Lcom/google/android/gms/internal/ads/zzfwu;

    invoke-direct {v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzajv;-><init>(ILjava/util/List;)V

    const v1, 0x1b8a0

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzalg;-><init>(ILcom/google/android/gms/internal/ads/zzfq;Lcom/google/android/gms/internal/ads/zzalj;I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_78
    new-instance p1, Lcom/google/android/gms/internal/ads/zzakw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzakw;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_81
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaiz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaiz;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_8a
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaig;

    const/4 v0, 0x0

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzaig;-><init>(ILcom/google/android/gms/internal/ads/zzfq;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzail;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzail;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_9c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzahl;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzahl;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_a5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzahd;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzahd;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_ae
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaen;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaen;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_b7
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabz;->zzc:Lcom/google/android/gms/internal/ads/zzaby;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaby;->zza([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzace;

    move-result-object p1

    if-eqz p1, :cond_cb

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_cb
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaek;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzaek;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_d4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzads;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzads;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_dd
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajt;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzajt;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_e6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzajq;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_ef
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzajn;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f7
    :goto_f7
    return-void

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_ef
        :pswitch_e6
        :pswitch_dd
        :pswitch_d4
        :pswitch_b7
        :pswitch_ae
        :pswitch_a5
        :pswitch_9c
        :pswitch_8a
        :pswitch_81
        :pswitch_78
        :pswitch_54
        :pswitch_4b
        :pswitch_5
        :pswitch_42
        :pswitch_34
        :pswitch_2b
        :pswitch_22
        :pswitch_19
        :pswitch_10
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public final declared-synchronized zza(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzace;
    .registers 25

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v3, "Content-Type"

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_25

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_25

    :cond_1e
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v3, 0x0

    :goto_26
    const/4 v9, 0x4

    const/4 v10, 0x3

    const/16 v11, 0x13

    const/16 v12, 0xe

    const/16 v13, 0xd

    const/16 v14, 0xc

    const/16 v15, 0xb

    const/16 v16, 0x9

    const/16 v17, 0x6

    const/16 v18, 0xf

    const/4 v4, 0x2

    const/16 v19, 0xa

    const/16 v20, 0x8

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-nez v3, :cond_44

    :goto_41
    const/4 v3, -0x1

    goto/16 :goto_222

    :cond_44
    sget v21, Lcom/google/android/gms/internal/ads/zzce;->zza:I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x3c11ec0a

    if-eq v7, v8, :cond_6e

    const v8, -0x22f81362

    if-eq v7, v8, :cond_64

    const v8, 0xb26c537

    if-eq v7, v8, :cond_5a

    goto :goto_78

    :cond_5a
    const-string v7, "audio/mp3"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_78

    const/4 v7, 0x1

    goto :goto_79

    :cond_64
    const-string v7, "audio/x-wav"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_78

    const/4 v7, 0x2

    goto :goto_79

    :cond_6e
    const-string v7, "audio/x-flac"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_78

    const/4 v7, 0x0

    goto :goto_79

    :cond_78
    :goto_78
    const/4 v7, -0x1

    :goto_79
    if-eqz v7, :cond_86

    if-eq v7, v5, :cond_83

    if-eq v7, v4, :cond_80

    goto :goto_88

    :cond_80
    const-string v3, "audio/wav"

    goto :goto_88

    :cond_83
    const-string v3, "audio/mpeg"

    goto :goto_88

    :cond_86
    const-string v3, "audio/flac"

    :goto_88
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_408

    goto/16 :goto_1e8

    :sswitch_91
    const-string v7, "video/x-matroska"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/16 v3, 0xa

    goto/16 :goto_1e9

    :sswitch_9d
    const-string v7, "audio/webm"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/16 v3, 0xd

    goto/16 :goto_1e9

    :sswitch_a9
    const-string v7, "audio/mpeg"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/16 v3, 0xf

    goto/16 :goto_1e9

    :sswitch_b5
    const-string v7, "audio/midi"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/16 v3, 0x9

    goto/16 :goto_1e9

    :sswitch_c1
    const-string v7, "audio/flac"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/4 v3, 0x7

    goto/16 :goto_1e9

    :sswitch_cc
    const-string v7, "audio/eac3"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/4 v3, 0x1

    goto/16 :goto_1e9

    :sswitch_d7
    const-string v7, "audio/3gpp"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/4 v3, 0x5

    goto/16 :goto_1e9

    :sswitch_e2
    const-string v7, "video/mp4"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/16 v3, 0x10

    goto/16 :goto_1e9

    :sswitch_ee
    const-string v7, "audio/wav"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/16 v3, 0x16

    goto/16 :goto_1e9

    :sswitch_fa
    const-string v7, "audio/ogg"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/16 v3, 0x13

    goto/16 :goto_1e9

    :sswitch_106
    const-string v7, "audio/mp4"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/16 v3, 0x11

    goto/16 :goto_1e9

    :sswitch_112
    const-string v7, "audio/amr"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/4 v3, 0x4

    goto/16 :goto_1e9

    :sswitch_11d
    const-string v7, "audio/ac4"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/4 v3, 0x3

    goto/16 :goto_1e9

    :sswitch_128
    const-string v7, "audio/ac3"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/4 v3, 0x0

    goto/16 :goto_1e9

    :sswitch_133
    const-string v7, "video/x-flv"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/16 v3, 0x8

    goto/16 :goto_1e9

    :sswitch_13f
    const-string v7, "application/webm"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/16 v3, 0xe

    goto/16 :goto_1e9

    :sswitch_14b
    const-string v7, "audio/x-matroska"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/16 v3, 0xb

    goto/16 :goto_1e9

    :sswitch_157
    const-string v7, "image/png"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/16 v3, 0x1a

    goto/16 :goto_1e9

    :sswitch_163
    const-string v7, "image/bmp"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/16 v3, 0x1c

    goto/16 :goto_1e9

    :sswitch_16f
    const-string v7, "text/vtt"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/16 v3, 0x17

    goto/16 :goto_1e9

    :sswitch_17b
    const-string v7, "video/x-msvideo"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/16 v3, 0x19

    goto/16 :goto_1e9

    :sswitch_187
    const-string v7, "application/mp4"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/16 v3, 0x12

    goto :goto_1e9

    :sswitch_192
    const-string v7, "image/webp"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/16 v3, 0x1b

    goto :goto_1e9

    :sswitch_19d
    const-string v7, "image/jpeg"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/16 v3, 0x18

    goto :goto_1e9

    :sswitch_1a8
    const-string v7, "image/heif"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/16 v3, 0x1d

    goto :goto_1e9

    :sswitch_1b3
    const-string v7, "audio/amr-wb"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/4 v3, 0x6

    goto :goto_1e9

    :sswitch_1bd
    const-string v7, "video/webm"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/16 v3, 0xc

    goto :goto_1e9

    :sswitch_1c8
    const-string v7, "video/mp2t"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/16 v3, 0x15

    goto :goto_1e9

    :sswitch_1d3
    const-string v7, "video/mp2p"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/16 v3, 0x14

    goto :goto_1e9

    :sswitch_1de
    const-string v7, "audio/eac3-joc"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    const/4 v3, 0x2

    goto :goto_1e9

    :cond_1e8
    :goto_1e8
    const/4 v3, -0x1

    :goto_1e9
    packed-switch v3, :pswitch_data_482

    goto/16 :goto_41

    :pswitch_1ee
    const/16 v3, 0x14

    goto :goto_222

    :pswitch_1f1
    const/16 v3, 0x13

    goto :goto_222

    :pswitch_1f4
    const/16 v3, 0x12

    goto :goto_222

    :pswitch_1f7
    const/16 v3, 0x11

    goto :goto_222

    :pswitch_1fa
    const/16 v3, 0x10

    goto :goto_222

    :pswitch_1fd
    const/16 v3, 0xe

    goto :goto_222

    :pswitch_200
    const/16 v3, 0xd

    goto :goto_222

    :pswitch_203
    const/16 v3, 0xc

    goto :goto_222

    :pswitch_206
    const/16 v3, 0xb

    goto :goto_222

    :pswitch_209
    const/16 v3, 0xa

    goto :goto_222

    :pswitch_20c
    const/16 v3, 0x9

    goto :goto_222

    :pswitch_20f
    const/16 v3, 0x8

    goto :goto_222

    :pswitch_212
    const/4 v3, 0x7

    goto :goto_222

    :pswitch_214
    const/4 v3, 0x6

    goto :goto_222

    :pswitch_216
    const/16 v3, 0xf

    goto :goto_222

    :pswitch_219
    const/4 v3, 0x5

    goto :goto_222

    :pswitch_21b
    const/4 v3, 0x4

    goto :goto_222

    :pswitch_21d
    const/4 v3, 0x3

    goto :goto_222

    :pswitch_21f
    const/4 v3, 0x1

    goto :goto_222

    :pswitch_221
    const/4 v3, 0x0

    :goto_222
    if-eq v3, v6, :cond_227

    invoke-direct {v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzabz;->zzb(ILjava/util/List;)V

    :cond_227
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_230

    :cond_22d
    const/4 v5, -0x1

    goto/16 :goto_3d3

    :cond_230
    const-string v8, ".ac3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3d2

    const-string v8, ".ec3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_242

    goto/16 :goto_3d2

    :cond_242
    const-string v8, ".ac4"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_24c

    goto/16 :goto_3d3

    :cond_24c
    const-string v5, ".adts"

    invoke-virtual {v7, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3d0

    const-string v5, ".aac"

    invoke-virtual {v7, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25e

    goto/16 :goto_3d0

    :cond_25e
    const-string v4, ".amr"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_269

    const/4 v5, 0x3

    goto/16 :goto_3d3

    :cond_269
    const-string v4, ".flac"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_274

    const/4 v5, 0x4

    goto/16 :goto_3d3

    :cond_274
    const-string v4, ".flv"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27f

    const/4 v5, 0x5

    goto/16 :goto_3d3

    :cond_27f
    const-string v4, ".mid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3cd

    const-string v4, ".midi"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3cd

    const-string v4, ".smf"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_299

    goto/16 :goto_3cd

    :cond_299
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, ".mk"

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v7, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3cb

    const-string v4, ".webm"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b1

    goto/16 :goto_3cb

    :cond_2b1
    const-string v4, ".mp3"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2bc

    const/4 v5, 0x7

    goto/16 :goto_3d3

    :cond_2bc
    const-string v4, ".mp4"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3c8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    const-string v5, ".m4"

    invoke-virtual {v7, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3c8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, ".mp4"

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v7, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3c8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    const-string v5, ".cmf"

    invoke-virtual {v7, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2f0

    goto/16 :goto_3c8

    :cond_2f0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    const-string v5, ".og"

    invoke-virtual {v7, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3c5

    const-string v4, ".opus"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_308

    goto/16 :goto_3c5

    :cond_308
    const-string v4, ".ps"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3c2

    const-string v4, ".mpeg"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3c2

    const-string v4, ".mpg"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3c2

    const-string v4, ".m2p"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32a

    goto/16 :goto_3c2

    :cond_32a
    const-string v4, ".ts"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3bf

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    const-string v5, ".ts"

    invoke-virtual {v7, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_342

    goto/16 :goto_3bf

    :cond_342
    const-string v4, ".wav"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3bc

    const-string v4, ".wave"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_354

    goto/16 :goto_3bc

    :cond_354
    const-string v4, ".vtt"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3b9

    const-string v4, ".webvtt"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_365

    goto :goto_3b9

    :cond_365
    const-string v4, ".jpg"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3b6

    const-string v4, ".jpeg"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_376

    goto :goto_3b6

    :cond_376
    const-string v4, ".avi"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_381

    const/16 v5, 0x10

    goto :goto_3d3

    :cond_381
    const-string v4, ".png"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38c

    const/16 v5, 0x11

    goto :goto_3d3

    :cond_38c
    const-string v4, ".webp"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_397

    const/16 v5, 0x12

    goto :goto_3d3

    :cond_397
    const-string v4, ".bmp"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3b3

    const-string v4, ".dib"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a8

    goto :goto_3b3

    :cond_3a8
    const-string v4, ".heic"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22d

    const/16 v5, 0x14

    goto :goto_3d3

    :cond_3b3
    :goto_3b3
    const/16 v5, 0x13

    goto :goto_3d3

    :cond_3b6
    :goto_3b6
    const/16 v5, 0xe

    goto :goto_3d3

    :cond_3b9
    :goto_3b9
    const/16 v5, 0xd

    goto :goto_3d3

    :cond_3bc
    :goto_3bc
    const/16 v5, 0xc

    goto :goto_3d3

    :cond_3bf
    :goto_3bf
    const/16 v5, 0xb

    goto :goto_3d3

    :cond_3c2
    :goto_3c2
    const/16 v5, 0xa

    goto :goto_3d3

    :cond_3c5
    :goto_3c5
    const/16 v5, 0x9

    goto :goto_3d3

    :cond_3c8
    :goto_3c8
    const/16 v5, 0x8

    goto :goto_3d3

    :cond_3cb
    :goto_3cb
    const/4 v5, 0x6

    goto :goto_3d3

    :cond_3cd
    :goto_3cd
    const/16 v5, 0xf

    goto :goto_3d3

    :cond_3d0
    :goto_3d0
    const/4 v5, 0x2

    goto :goto_3d3

    :cond_3d2
    :goto_3d2
    const/4 v5, 0x0

    :goto_3d3
    if-eq v5, v6, :cond_3da

    if-eq v5, v3, :cond_3da

    invoke-direct {v1, v5, v0}, Lcom/google/android/gms/internal/ads/zzabz;->zzb(ILjava/util/List;)V

    :cond_3da
    sget-object v4, Lcom/google/android/gms/internal/ads/zzabz;->zza:[I

    const/4 v6, 0x0

    :goto_3dd
    if-ge v6, v2, :cond_3eb

    aget v7, v4, v6

    if-eq v7, v3, :cond_3e8

    if-eq v7, v5, :cond_3e8

    invoke-direct {v1, v7, v0}, Lcom/google/android/gms/internal/ads/zzabz;->zzb(ILjava/util/List;)V

    :cond_3e8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3dd

    :cond_3eb
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzace;

    const/4 v4, 0x0

    :goto_3f2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_403

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzace;

    aput-object v3, v2, v4
    :try_end_400
    .catchall {:try_start_3 .. :try_end_400} :catchall_405

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f2

    :cond_403
    monitor-exit p0

    return-object v2

    :catchall_405
    move-exception v0

    monitor-exit p0

    throw v0

    :sswitch_data_408
    .sparse-switch
        -0x7e929daa -> :sswitch_1de
        -0x6315f78b -> :sswitch_1d3
        -0x6315f787 -> :sswitch_1c8
        -0x63118f53 -> :sswitch_1bd
        -0x5fc6f775 -> :sswitch_1b3
        -0x58a8e8f2 -> :sswitch_1a8
        -0x58a7d764 -> :sswitch_19d
        -0x58a21830 -> :sswitch_192
        -0x4a681e4e -> :sswitch_187
        -0x405dba54 -> :sswitch_17b
        -0x3be2f26c -> :sswitch_16f
        -0x3468a12f -> :sswitch_163
        -0x34686c8b -> :sswitch_157
        -0x17118226 -> :sswitch_14b
        -0x2974308 -> :sswitch_13f
        0xd45707 -> :sswitch_133
        0xb269698 -> :sswitch_128
        0xb269699 -> :sswitch_11d
        0xb26980d -> :sswitch_112
        0xb26c538 -> :sswitch_106
        0xb26cbd6 -> :sswitch_fa
        0xb26e933 -> :sswitch_ee
        0x4f62635d -> :sswitch_e2
        0x59976a2d -> :sswitch_d7
        0x59ae0c65 -> :sswitch_cc
        0x59aeaa01 -> :sswitch_c1
        0x59b1cdba -> :sswitch_b5
        0x59b1e81e -> :sswitch_a9
        0x59b64a32 -> :sswitch_9d
        0x79909c15 -> :sswitch_91
    .end sparse-switch

    :pswitch_data_482
    .packed-switch 0x0
        :pswitch_221
        :pswitch_221
        :pswitch_221
        :pswitch_21f
        :pswitch_21d
        :pswitch_21d
        :pswitch_21d
        :pswitch_21b
        :pswitch_219
        :pswitch_216
        :pswitch_214
        :pswitch_214
        :pswitch_214
        :pswitch_214
        :pswitch_214
        :pswitch_212
        :pswitch_20f
        :pswitch_20f
        :pswitch_20f
        :pswitch_20c
        :pswitch_209
        :pswitch_206
        :pswitch_203
        :pswitch_200
        :pswitch_1fd
        :pswitch_1fa
        :pswitch_1f7
        :pswitch_1f4
        :pswitch_1f1
        :pswitch_1ee
    .end packed-switch
.end method

###### Class com.google.android.gms.internal.ads.zzabv (com.google.android.gms.internal.ads.zzabv)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzabv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzabx;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzabv;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzabv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzabv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabv;->zza:Lcom/google/android/gms/internal/ads/zzabv;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/reflect/Constructor;
    .registers 5

    const-string v0, "androidx.media3.decoder.flac.FlacLibrary"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "isAvailable"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "androidx.media3.decoder.flac.FlacExtractor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/internal/ads/zzace;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0

    :cond_36
    return-object v3
.end method

###### Class com.google.android.gms.internal.ads.zzabw (com.google.android.gms.internal.ads.zzabw)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzabw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzabx;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzabw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzabw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzabw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabw;->zza:Lcom/google/android/gms/internal/ads/zzabw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/reflect/Constructor;
    .registers 3

    const-string v0, "androidx.media3.decoder.midi.MidiExtractor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/ads/zzace;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

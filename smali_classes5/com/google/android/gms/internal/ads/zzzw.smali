###### Class com.google.android.gms.internal.ads.zzzw (com.google.android.gms.internal.ads.zzzw)
.class public final Lcom/google/android/gms/internal/ads/zzzw;
.super Lcom/google/android/gms/internal/ads/zzss;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaaw;


# static fields
.field private static final zzb:[I

.field private static zzc:Z

.field private static zzd:Z


# instance fields
.field private zzA:I

.field private zzB:J

.field private zzC:Lcom/google/android/gms/internal/ads/zzdu;

.field private zzD:Lcom/google/android/gms/internal/ads/zzdu;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzE:Z

.field private zzF:Z

.field private zzG:I

.field private zzH:Lcom/google/android/gms/internal/ads/zzaaa;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzI:Lcom/google/android/gms/internal/ads/zzaay;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzaai;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzaaz;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzaat;

.field private final zzi:Z

.field private zzj:Lcom/google/android/gms/internal/ads/zzzs;

.field private zzk:Z

.field private zzl:Z

.field private zzm:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzn:Lcom/google/android/gms/internal/ads/zzzz;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzo:Z

.field private zzp:I

.field private zzq:I

.field private zzr:J

.field private zzs:J

.field private zzt:J

.field private zzu:I

.field private zzv:I

.field private zzw:I

.field private zzx:J

.field private zzy:J

.field private zzz:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzzw;->zzb:[I

    return-void

    :array_a
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzsj;Lcom/google/android/gms/internal/ads/zzsu;JZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzaau;IF)V
    .registers 19
    .param p7    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/google/android/gms/internal/ads/zzaau;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v6, p0

    new-instance v7, Lcom/google/android/gms/internal/ads/zzzv;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/ads/zzzv;-><init>(Lcom/google/android/gms/internal/ads/zzzu;)V

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/high16 v5, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzss;-><init>(ILcom/google/android/gms/internal/ads/zzsj;Lcom/google/android/gms/internal/ads/zzsu;ZF)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/gms/internal/ads/zzzw;->zze:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaai;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzaai;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lcom/google/android/gms/internal/ads/zzzw;->zzf:Lcom/google/android/gms/internal/ads/zzaai;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaat;

    move-object v1, p7

    move-object/from16 v2, p8

    invoke-direct {v0, p7, v2}, Lcom/google/android/gms/internal/ads/zzaat;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzaau;)V

    iput-object v0, v6, Lcom/google/android/gms/internal/ads/zzzw;->zzh:Lcom/google/android/gms/internal/ads/zzaat;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzm;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzzg;

    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/ads/zzzg;-><init>(Lcom/google/android/gms/internal/ads/zzdp;)V

    move-object v2, p1

    invoke-direct {v0, p1, v1, p0}, Lcom/google/android/gms/internal/ads/zzzm;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcs;Lcom/google/android/gms/internal/ads/zzaaw;)V

    iput-object v0, v6, Lcom/google/android/gms/internal/ads/zzzw;->zzg:Lcom/google/android/gms/internal/ads/zzaaz;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfs;->zzc:Ljava/lang/String;

    const-string v1, "NVIDIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzzw;->zzi:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, v6, Lcom/google/android/gms/internal/ads/zzzw;->zzs:J

    const/4 v0, 0x1

    iput v0, v6, Lcom/google/android/gms/internal/ads/zzzw;->zzp:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdu;->zza:Lcom/google/android/gms/internal/ads/zzdu;

    iput-object v0, v6, Lcom/google/android/gms/internal/ads/zzzw;->zzC:Lcom/google/android/gms/internal/ads/zzdu;

    const/4 v0, 0x0

    iput v0, v6, Lcom/google/android/gms/internal/ads/zzzw;->zzG:I

    iput v0, v6, Lcom/google/android/gms/internal/ads/zzzw;->zzq:I

    return-void
.end method

.method static bridge synthetic zzaI(Lcom/google/android/gms/internal/ads/zzzw;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzzw;->zzaV()V

    return-void
.end method

.method static bridge synthetic zzaJ(Lcom/google/android/gms/internal/ads/zzzw;Lcom/google/android/gms/internal/ads/zzdu;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzzw;->zzaW(Lcom/google/android/gms/internal/ads/zzdu;)V

    return-void
.end method

.method protected static final zzaR(Ljava/lang/String;)Z
    .registers 18

    const-string v0, "OMX.google"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    const-class v2, Lcom/google/android/gms/internal/ads/zzzw;

    monitor-enter v2

    :try_start_f
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzzw;->zzc:Z

    if-nez v0, :cond_7a6

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v3, 0x1c

    const/4 v4, 0x5

    const/4 v5, 0x6

    const/4 v6, 0x4

    const/4 v7, 0x7

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, -0x1

    const/4 v11, 0x1

    if-gt v0, v3, :cond_83

    sget-object v12, Lcom/google/android/gms/internal/ads/zzfs;->zzb:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_7aa

    sparse-switch v13, :sswitch_data_7ae

    goto :goto_7b

    :sswitch_2b
    const-string v13, "machuca"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7b

    const/4 v12, 0x5

    goto :goto_7c

    :sswitch_35
    const-string v13, "once"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7b

    const/4 v12, 0x6

    goto :goto_7c

    :sswitch_3f
    const-string v13, "magnolia"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7b

    const/4 v12, 0x4

    goto :goto_7c

    :sswitch_49
    const-string v13, "aquaman"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7b

    const/4 v12, 0x0

    goto :goto_7c

    :sswitch_53
    const-string v13, "oneday"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7b

    const/4 v12, 0x7

    goto :goto_7c

    :sswitch_5d
    const-string v13, "dangalUHD"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7b

    const/4 v12, 0x2

    goto :goto_7c

    :sswitch_67
    const-string v13, "dangalFHD"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7b

    const/4 v12, 0x3

    goto :goto_7c

    :sswitch_71
    const-string v13, "dangal"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7b

    const/4 v12, 0x1

    goto :goto_7c

    :cond_7b
    :goto_7b
    const/4 v12, -0x1

    :goto_7c
    packed-switch v12, :pswitch_data_7d0

    goto :goto_83

    :cond_80
    :goto_80
    :pswitch_80
    const/4 v1, 0x1

    goto/16 :goto_7a2

    :cond_83
    :goto_83
    const/16 v12, 0x1b

    if-gt v0, v12, :cond_92

    :try_start_87
    const-string v13, "HWEML"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzfs;->zzb:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_92

    goto :goto_80

    :cond_92
    sget-object v13, Lcom/google/android/gms/internal/ads/zzfs;->zzd:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14
    :try_end_98
    .catchall {:try_start_87 .. :try_end_98} :catchall_7aa

    const/16 v15, 0x8

    sparse-switch v14, :sswitch_data_7e4

    goto :goto_f9

    :sswitch_9e
    const-string v14, "AFTEUFF014"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f9

    const/4 v14, 0x5

    goto :goto_fa

    :sswitch_a8
    const-string v14, "AFTSO001"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f9

    const/16 v14, 0x8

    goto :goto_fa

    :sswitch_b3
    const-string v14, "AFTEU014"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f9

    const/4 v14, 0x4

    goto :goto_fa

    :sswitch_bd
    const-string v14, "AFTEU011"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f9

    const/4 v14, 0x3

    goto :goto_fa

    :sswitch_c7
    const-string v14, "AFTR"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f9

    const/4 v14, 0x2

    goto :goto_fa

    :sswitch_d1
    const-string v14, "AFTN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f9

    const/4 v14, 0x1

    goto :goto_fa

    :sswitch_db
    const-string v14, "AFTA"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f9

    const/4 v14, 0x0

    goto :goto_fa

    :sswitch_e5
    const-string v14, "AFTKMST12"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f9

    const/4 v14, 0x7

    goto :goto_fa

    :sswitch_ef
    const-string v14, "AFTJMST12"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f9

    const/4 v14, 0x6

    goto :goto_fa

    :cond_f9
    :goto_f9
    const/4 v14, -0x1

    :goto_fa
    packed-switch v14, :pswitch_data_80a

    const/16 v14, 0x1a

    if-gt v0, v14, :cond_7a2

    :try_start_101
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfs;->zzb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v16
    :try_end_107
    .catchall {:try_start_101 .. :try_end_107} :catchall_7aa

    sparse-switch v16, :sswitch_data_820

    goto/16 :goto_789

    :sswitch_10c
    const-string v3, "HWWAS-H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x42

    goto/16 :goto_78a

    :sswitch_118
    const-string v3, "HWVNS-H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x41

    goto/16 :goto_78a

    :sswitch_124
    const-string v3, "ELUGA_Prim"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x21

    goto/16 :goto_78a

    :sswitch_130
    const-string v3, "ELUGA_Note"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x20

    goto/16 :goto_78a

    :sswitch_13c
    const-string v3, "ASUS_X00AD_2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0xe

    goto/16 :goto_78a

    :sswitch_148
    const-string v3, "HWCAM-H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x40

    goto/16 :goto_78a

    :sswitch_154
    const-string v3, "HWBLN-H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x3f

    goto/16 :goto_78a

    :sswitch_160
    const-string v3, "DM-01K"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x1d

    goto/16 :goto_78a

    :sswitch_16c
    const-string v3, "BRAVIA_ATV3_4K"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x13

    goto/16 :goto_78a

    :sswitch_178
    const-string v3, "Infinix-X572"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x45

    goto/16 :goto_78a

    :sswitch_184
    const-string v3, "PB2-670M"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x64

    goto/16 :goto_78a

    :sswitch_190
    const-string v3, "santoni"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x75

    goto/16 :goto_78a

    :sswitch_19c
    const-string v3, "iball8735_9806"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x44

    goto/16 :goto_78a

    :sswitch_1a8
    const-string v3, "CPH1715"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x18

    goto/16 :goto_78a

    :sswitch_1b4
    const-string v3, "CPH1609"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x17

    goto/16 :goto_78a

    :sswitch_1c0
    const-string v3, "woods_f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x85

    goto/16 :goto_78a

    :sswitch_1cc
    const-string v3, "htc_e56ml_dtul"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x3d

    goto/16 :goto_78a

    :sswitch_1d8
    const-string v3, "EverStar_S"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x23

    goto/16 :goto_78a

    :sswitch_1e4
    const-string v3, "hwALE-H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x3e

    goto/16 :goto_78a

    :sswitch_1f0
    const-string v3, "itel_S41"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x47

    goto/16 :goto_78a

    :sswitch_1fc
    const-string v3, "LS-5017"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x4e

    goto/16 :goto_78a

    :sswitch_208
    const-string v3, "panell_d"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x60

    goto/16 :goto_78a

    :sswitch_214
    const-string v3, "j2xlteins"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x48

    goto/16 :goto_78a

    :sswitch_220
    const-string v3, "A7000plus"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0xa

    goto/16 :goto_78a

    :sswitch_22c
    const-string v3, "manning"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x51

    goto/16 :goto_78a

    :sswitch_238
    const-string v3, "GIONEE_WBL7519"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x3b

    goto/16 :goto_78a

    :sswitch_244
    const-string v3, "GIONEE_WBL7365"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x3a

    goto/16 :goto_78a

    :sswitch_250
    const-string v3, "GIONEE_WBL5708"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x39

    goto/16 :goto_78a

    :sswitch_25c
    const-string v3, "QM16XE_U"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x72

    goto/16 :goto_78a

    :sswitch_268
    const-string v3, "Pixi5-10_4G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x6a

    goto/16 :goto_78a

    :sswitch_274
    const-string v3, "TB3-850M"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x7d

    goto/16 :goto_78a

    :sswitch_280
    const-string v3, "TB3-850F"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x7c

    goto/16 :goto_78a

    :sswitch_28c
    const-string v3, "TB3-730X"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x7b

    goto/16 :goto_78a

    :sswitch_298
    const-string v3, "TB3-730F"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x7a

    goto/16 :goto_78a

    :sswitch_2a4
    const-string v3, "A7020a48"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0xc

    goto/16 :goto_78a

    :sswitch_2b0
    const-string v3, "A7010a48"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0xb

    goto/16 :goto_78a

    :sswitch_2bc
    const-string v3, "griffin"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x3c

    goto/16 :goto_78a

    :sswitch_2c8
    const-string v3, "marino_f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x52

    goto/16 :goto_78a

    :sswitch_2d4
    const-string v3, "CPY83_I00"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x19

    goto/16 :goto_78a

    :sswitch_2e0
    const-string v3, "A2016a40"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x8

    goto/16 :goto_78a

    :sswitch_2ec
    const-string v3, "le_x6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x4d

    goto/16 :goto_78a

    :sswitch_2f8
    const-string v3, "l5460"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x4c

    goto/16 :goto_78a

    :sswitch_304
    const-string v3, "i9031"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x43

    goto/16 :goto_78a

    :sswitch_310
    const-string v3, "X3_HK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x87

    goto/16 :goto_78a

    :sswitch_31c
    const-string v3, "V23GB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x80

    goto/16 :goto_78a

    :sswitch_328
    const-string v3, "Q4310"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x70

    goto/16 :goto_78a

    :sswitch_334
    const-string v3, "Q4260"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x6e

    goto/16 :goto_78a

    :sswitch_340
    const-string v3, "PRO7S"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x6c

    goto/16 :goto_78a

    :sswitch_34c
    const-string v3, "F3311"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x30

    goto/16 :goto_78a

    :sswitch_358
    const-string v3, "F3215"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x2f

    goto/16 :goto_78a

    :sswitch_364
    const-string v3, "F3213"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x2e

    goto/16 :goto_78a

    :sswitch_370
    const-string v3, "F3211"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x2d

    goto/16 :goto_78a

    :sswitch_37c
    const-string v3, "F3116"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x2c

    goto/16 :goto_78a

    :sswitch_388
    const-string v3, "F3113"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x2b

    goto/16 :goto_78a

    :sswitch_394
    const-string v3, "F3111"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x2a

    goto/16 :goto_78a

    :sswitch_3a0
    const-string v3, "E5643"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x1e

    goto/16 :goto_78a

    :sswitch_3ac
    const-string v3, "A1601"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/4 v3, 0x7

    goto/16 :goto_78a

    :sswitch_3b7
    const-string v3, "Aura_Note_2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0xf

    goto/16 :goto_78a

    :sswitch_3c3
    const-string v3, "602LV"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/4 v3, 0x4

    goto/16 :goto_78a

    :sswitch_3ce
    const-string v3, "601LV"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/4 v3, 0x3

    goto/16 :goto_78a

    :sswitch_3d9
    const-string v3, "MEIZU_M5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x53

    goto/16 :goto_78a

    :sswitch_3e5
    const-string v3, "p212"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x5c

    goto/16 :goto_78a

    :sswitch_3f1
    const-string v3, "mido"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x55

    goto/16 :goto_78a

    :sswitch_3fd
    const-string v3, "kate"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x4b

    goto/16 :goto_78a

    :sswitch_409
    const-string v3, "fugu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x32

    goto/16 :goto_78a

    :sswitch_415
    const-string v3, "XE2X"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x88

    goto/16 :goto_78a

    :sswitch_421
    const-string v3, "Q427"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x6f

    goto/16 :goto_78a

    :sswitch_42d
    const-string v3, "Q350"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x6d

    goto/16 :goto_78a

    :sswitch_439
    const-string v3, "P681"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x5d

    goto/16 :goto_78a

    :sswitch_445
    const-string v3, "F04J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x29

    goto/16 :goto_78a

    :sswitch_451
    const-string v3, "F04H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x28

    goto/16 :goto_78a

    :sswitch_45d
    const-string v3, "F03H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x27

    goto/16 :goto_78a

    :sswitch_469
    const-string v3, "F02H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x26

    goto/16 :goto_78a

    :sswitch_475
    const-string v3, "F01J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x25

    goto/16 :goto_78a

    :sswitch_481
    const-string v3, "F01H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x24

    goto/16 :goto_78a

    :sswitch_48d
    const-string v3, "1714"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/4 v3, 0x2

    goto/16 :goto_78a

    :sswitch_498
    const-string v3, "1713"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/4 v3, 0x1

    goto/16 :goto_78a

    :sswitch_4a3
    const-string v3, "1601"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/4 v3, 0x0

    goto/16 :goto_78a

    :sswitch_4ae
    const-string v3, "flo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x31

    goto/16 :goto_78a

    :sswitch_4ba
    const-string v4, "deb"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    goto/16 :goto_78a

    :sswitch_4c4
    const-string v3, "cv3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x1b

    goto/16 :goto_78a

    :sswitch_4d0
    const-string v3, "cv1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x1a

    goto/16 :goto_78a

    :sswitch_4dc
    const-string v3, "Z80"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x8b

    goto/16 :goto_78a

    :sswitch_4e8
    const-string v3, "QX1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x73

    goto/16 :goto_78a

    :sswitch_4f4
    const-string v3, "PLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x6b

    goto/16 :goto_78a

    :sswitch_500
    const-string v3, "P85"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x5e

    goto/16 :goto_78a

    :sswitch_50c
    const-string v3, "MX6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x56

    goto/16 :goto_78a

    :sswitch_518
    const-string v3, "M5c"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x50

    goto/16 :goto_78a

    :sswitch_524
    const-string v3, "M04"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x4f

    goto/16 :goto_78a

    :sswitch_530
    const-string v3, "JGZ"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x49

    goto/16 :goto_78a

    :sswitch_53c
    const-string v3, "mh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x54

    goto/16 :goto_78a

    :sswitch_548
    const-string v3, "b5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x10

    goto/16 :goto_78a

    :sswitch_554
    const-string v3, "V5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x81

    goto/16 :goto_78a

    :sswitch_560
    const-string v3, "V1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x7f

    goto/16 :goto_78a

    :sswitch_56c
    const-string v3, "Q5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x71

    goto/16 :goto_78a

    :sswitch_578
    const-string v3, "C1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x14

    goto/16 :goto_78a

    :sswitch_584
    const-string v3, "woods_fn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x86

    goto/16 :goto_78a

    :sswitch_590
    const-string v3, "ELUGA_A3_Pro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x1f

    goto/16 :goto_78a

    :sswitch_59c
    const-string v3, "Z12_PRO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x8a

    goto/16 :goto_78a

    :sswitch_5a8
    const-string v3, "BLACK-1X"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x11

    goto/16 :goto_78a

    :sswitch_5b4
    const-string v3, "taido_row"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x79

    goto/16 :goto_78a

    :sswitch_5c0
    const-string v3, "Pixi4-7_3G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x69

    goto/16 :goto_78a

    :sswitch_5cc
    const-string v3, "GIONEE_GBL7360"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x35

    goto/16 :goto_78a

    :sswitch_5d8
    const-string v3, "GiONEE_CBL7513"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x33

    goto/16 :goto_78a

    :sswitch_5e4
    const-string v3, "OnePlus5T"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x5b

    goto/16 :goto_78a

    :sswitch_5f0
    const-string v3, "whyred"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x84

    goto/16 :goto_78a

    :sswitch_5fc
    const-string v3, "watson"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x83

    goto/16 :goto_78a

    :sswitch_608
    const-string v3, "SVP-DTV15"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x77

    goto/16 :goto_78a

    :sswitch_614
    const-string v3, "A7000-a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x9

    goto/16 :goto_78a

    :sswitch_620
    const-string v3, "nicklaus_f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x58

    goto/16 :goto_78a

    :sswitch_62c
    const-string v3, "tcl_eu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x7e

    goto/16 :goto_78a

    :sswitch_638
    const-string v3, "ELUGA_Ray_X"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x22

    goto/16 :goto_78a

    :sswitch_644
    const-string v3, "s905x018"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x78

    goto/16 :goto_78a

    :sswitch_650
    const-string v3, "A10-70L"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/4 v3, 0x6

    goto/16 :goto_78a

    :sswitch_65b
    const-string v3, "A10-70F"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/4 v3, 0x5

    goto/16 :goto_78a

    :sswitch_666
    const-string v3, "namath"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x57

    goto/16 :goto_78a

    :sswitch_672
    const-string v3, "Slate_Pro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x76

    goto/16 :goto_78a

    :sswitch_67e
    const-string v3, "iris60"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x46

    goto/16 :goto_78a

    :sswitch_68a
    const-string v3, "BRAVIA_ATV2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x12

    goto/16 :goto_78a

    :sswitch_696
    const-string v3, "GiONEE_GBL7319"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x34

    goto/16 :goto_78a

    :sswitch_6a2
    const-string v3, "panell_dt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x63

    goto/16 :goto_78a

    :sswitch_6ae
    const-string v3, "panell_ds"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x62

    goto/16 :goto_78a

    :sswitch_6ba
    const-string v3, "panell_dl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x61

    goto/16 :goto_78a

    :sswitch_6c6
    const-string v3, "vernee_M5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x82

    goto/16 :goto_78a

    :sswitch_6d2
    const-string v3, "pacificrim"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x5f

    goto/16 :goto_78a

    :sswitch_6de
    const-string v3, "Phantom6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x68

    goto/16 :goto_78a

    :sswitch_6ea
    const-string v3, "ComioS1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x15

    goto/16 :goto_78a

    :sswitch_6f6
    const-string v3, "XT1663"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x89

    goto/16 :goto_78a

    :sswitch_702
    const-string v3, "RAIJIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x74

    goto/16 :goto_78a

    :sswitch_70e
    const-string v3, "AquaPowerM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0xd

    goto/16 :goto_78a

    :sswitch_71a
    const-string v3, "PGN611"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x67

    goto/16 :goto_78a

    :sswitch_726
    const-string v3, "PGN610"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x66

    goto :goto_78a

    :sswitch_731
    const-string v3, "PGN528"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x65

    goto :goto_78a

    :sswitch_73c
    const-string v3, "NX573J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x5a

    goto :goto_78a

    :sswitch_747
    const-string v3, "NX541J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x59

    goto :goto_78a

    :sswitch_752
    const-string v3, "CP8676_I02"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x16

    goto :goto_78a

    :sswitch_75d
    const-string v3, "K50a40"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x4a

    goto :goto_78a

    :sswitch_768
    const-string v3, "GIONEE_SWW1631"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x38

    goto :goto_78a

    :sswitch_773
    const-string v3, "GIONEE_SWW1627"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x37

    goto :goto_78a

    :sswitch_77e
    const-string v3, "GIONEE_SWW1609"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x36

    goto :goto_78a

    :cond_789
    :goto_789
    const/4 v3, -0x1

    :goto_78a
    packed-switch v3, :pswitch_data_a52

    :try_start_78d
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_791
    .catchall {:try_start_78d .. :try_end_791} :catchall_7aa

    const v3, -0x236fe21d

    if-eq v0, v3, :cond_797

    goto :goto_7a0

    :cond_797
    const-string v0, "JSN-L21"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a0

    const/4 v10, 0x0

    :cond_7a0
    :goto_7a0
    if-eqz v10, :cond_80

    :cond_7a2
    :goto_7a2
    :try_start_7a2
    sput-boolean v1, Lcom/google/android/gms/internal/ads/zzzw;->zzd:Z

    sput-boolean v11, Lcom/google/android/gms/internal/ads/zzzw;->zzc:Z

    :cond_7a6
    monitor-exit v2
    :try_end_7a7
    .catchall {:try_start_7a2 .. :try_end_7a7} :catchall_7aa

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzzw;->zzd:Z

    return v0

    :catchall_7aa
    move-exception v0

    :try_start_7ab
    monitor-exit v2
    :try_end_7ac
    .catchall {:try_start_7ab .. :try_end_7ac} :catchall_7aa

    throw v0

    nop

    :sswitch_data_7ae
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_71
        -0x48b8f57f -> :sswitch_67
        -0x48b8bd30 -> :sswitch_5d
        -0x3c588c8a -> :sswitch_53
        -0x2d5172e2 -> :sswitch_49
        -0x3de1850 -> :sswitch_3f
        0x341e81 -> :sswitch_35
        0x31316ffa -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_7d0
    .packed-switch 0x0
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
    .end packed-switch

    :sswitch_data_7e4
    .sparse-switch
        -0x14d76e6c -> :sswitch_ef
        -0x132295cd -> :sswitch_e5
        0x1e9d52 -> :sswitch_db
        0x1e9d5f -> :sswitch_d1
        0x1e9d63 -> :sswitch_c7
        0x6a6b6031 -> :sswitch_bd
        0x6a6b6034 -> :sswitch_b3
        0x6b2deee6 -> :sswitch_a8
        0x7e53ab34 -> :sswitch_9e
    .end sparse-switch

    :pswitch_data_80a
    .packed-switch 0x0
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
    .end packed-switch

    :sswitch_data_820
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_77e
        -0x7fd6c381 -> :sswitch_773
        -0x7fd6c368 -> :sswitch_768
        -0x7d026749 -> :sswitch_75d
        -0x78929d6a -> :sswitch_752
        -0x75f50a1e -> :sswitch_747
        -0x75f4fe9d -> :sswitch_73c
        -0x736f875c -> :sswitch_731
        -0x736f83c2 -> :sswitch_726
        -0x736f83c1 -> :sswitch_71a
        -0x7327ce1c -> :sswitch_70e
        -0x705c574b -> :sswitch_702
        -0x651ebb62 -> :sswitch_6f6
        -0x6423293b -> :sswitch_6ea
        -0x604f5117 -> :sswitch_6de
        -0x5f691e13 -> :sswitch_6d2
        -0x5ca40cc4 -> :sswitch_6c6
        -0x58520ec1 -> :sswitch_6ba
        -0x58520eba -> :sswitch_6ae
        -0x58520eb9 -> :sswitch_6a2
        -0x4eaed329 -> :sswitch_696
        -0x4892fb4f -> :sswitch_68a
        -0x465b3df3 -> :sswitch_67e
        -0x43e6c939 -> :sswitch_672
        -0x3ec0fcc5 -> :sswitch_666
        -0x3b33cca0 -> :sswitch_65b
        -0x3b33cc9a -> :sswitch_650
        -0x398ae3f6 -> :sswitch_644
        -0x391f0fb4 -> :sswitch_638
        -0x346837ae -> :sswitch_62c
        -0x323788e3 -> :sswitch_620
        -0x30f57652 -> :sswitch_614
        -0x2f88a116 -> :sswitch_608
        -0x2f61ed98 -> :sswitch_5fc
        -0x2efd0837 -> :sswitch_5f0
        -0x2e9e9441 -> :sswitch_5e4
        -0x2247b8b1 -> :sswitch_5d8
        -0x1f0fa2b7 -> :sswitch_5cc
        -0x19af3b41 -> :sswitch_5c0
        -0x114fad3e -> :sswitch_5b4
        -0x10dae90b -> :sswitch_5a8
        -0x1084b7b7 -> :sswitch_59c
        -0xa5988e9 -> :sswitch_590
        -0x35f9fbf -> :sswitch_584
        0x84e -> :sswitch_578
        0xa04 -> :sswitch_56c
        0xa9b -> :sswitch_560
        0xa9f -> :sswitch_554
        0xc13 -> :sswitch_548
        0xd9b -> :sswitch_53c
        0x11ebd -> :sswitch_530
        0x12711 -> :sswitch_524
        0x127db -> :sswitch_518
        0x12beb -> :sswitch_50c
        0x1334d -> :sswitch_500
        0x135c9 -> :sswitch_4f4
        0x13aea -> :sswitch_4e8
        0x158d2 -> :sswitch_4dc
        0x1821e -> :sswitch_4d0
        0x18220 -> :sswitch_4c4
        0x18401 -> :sswitch_4ba
        0x18c69 -> :sswitch_4ae
        0x1716e6 -> :sswitch_4a3
        0x171ac8 -> :sswitch_498
        0x171ac9 -> :sswitch_48d
        0x208c61 -> :sswitch_481
        0x208c63 -> :sswitch_475
        0x208c80 -> :sswitch_469
        0x208c9f -> :sswitch_45d
        0x208cbe -> :sswitch_451
        0x208cc0 -> :sswitch_445
        0x252f5f -> :sswitch_439
        0x25981d -> :sswitch_42d
        0x259b88 -> :sswitch_421
        0x290a13 -> :sswitch_415
        0x3021fd -> :sswitch_409
        0x321e47 -> :sswitch_3fd
        0x332327 -> :sswitch_3f1
        0x33ab63 -> :sswitch_3e5
        0x27691fb -> :sswitch_3d9
        0x30f8881 -> :sswitch_3ce
        0x30f8c42 -> :sswitch_3c3
        0x349f581 -> :sswitch_3b7
        0x3ab0ea7 -> :sswitch_3ac
        0x3e53ea5 -> :sswitch_3a0
        0x3f25a44 -> :sswitch_394
        0x3f25a46 -> :sswitch_388
        0x3f25a49 -> :sswitch_37c
        0x3f25e05 -> :sswitch_370
        0x3f25e07 -> :sswitch_364
        0x3f25e09 -> :sswitch_358
        0x3f261c6 -> :sswitch_34c
        0x48dce49 -> :sswitch_340
        0x48dd589 -> :sswitch_334
        0x48dd8af -> :sswitch_328
        0x4d36832 -> :sswitch_31c
        0x4f0b0e7 -> :sswitch_310
        0x5e2479e -> :sswitch_304
        0x60acc05 -> :sswitch_2f8
        0x6214744 -> :sswitch_2ec
        0x9d91379 -> :sswitch_2e0
        0xadc0551 -> :sswitch_2d4
        0xea056b3 -> :sswitch_2c8
        0x1121dbc3 -> :sswitch_2bc
        0x1255818c -> :sswitch_2b0
        0x1263990d -> :sswitch_2a4
        0x12d90f3a -> :sswitch_298
        0x12d90f4c -> :sswitch_28c
        0x12d98b1b -> :sswitch_280
        0x12d98b22 -> :sswitch_274
        0x1844c711 -> :sswitch_268
        0x1e3e8044 -> :sswitch_25c
        0x2f5336ed -> :sswitch_250
        0x2f54115e -> :sswitch_244
        0x2f541849 -> :sswitch_238
        0x31cf010e -> :sswitch_22c
        0x36ad82f4 -> :sswitch_220
        0x391a0b61 -> :sswitch_214
        0x3f3728cd -> :sswitch_208
        0x448ec687 -> :sswitch_1fc
        0x46260f63 -> :sswitch_1f0
        0x4c505106 -> :sswitch_1e4
        0x4de67084 -> :sswitch_1d8
        0x506ac5a9 -> :sswitch_1cc
        0x5abad9cd -> :sswitch_1c0
        0x64d2e6e9 -> :sswitch_1b4
        0x64d2eac5 -> :sswitch_1a8
        0x65e4085b -> :sswitch_19c
        0x6f373556 -> :sswitch_190
        0x719f1dcb -> :sswitch_184
        0x75d9a0f0 -> :sswitch_178
        0x7796d144 -> :sswitch_16c
        0x785bcb26 -> :sswitch_160
        0x78fc0e50 -> :sswitch_154
        0x790521fb -> :sswitch_148
        0x7933207f -> :sswitch_13c
        0x7a05a409 -> :sswitch_130
        0x7a0696bd -> :sswitch_124
        0x7a16dfe7 -> :sswitch_118
        0x7a1f0e95 -> :sswitch_10c
    .end sparse-switch

    :pswitch_data_a52
    .packed-switch 0x0
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
    .end packed-switch
.end method

.method private static zzaS(JJJZFLcom/google/android/gms/internal/ads/zzeg;)J
    .registers 9

    sub-long/2addr p4, p0

    long-to-double p0, p4

    float-to-double p4, p7

    div-double/2addr p0, p4

    double-to-long p0, p0

    if-eqz p6, :cond_11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p4

    invoke-static {p4, p5}, Lcom/google/android/gms/internal/ads/zzfs;->zzq(J)J

    move-result-wide p4

    sub-long/2addr p4, p2

    sub-long/2addr p0, p4

    :cond_11
    return-wide p0
.end method

.method private static zzaT(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzam;ZZ)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztb;
        }
    .end annotation

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwu;->zzl()Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object p0

    return-object p0

    :cond_9
    sget v1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_28

    const-string v1, "video/dolby-vision"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzzr;->zza(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_28

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzth;->zzf(Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzam;ZZ)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    return-object p0

    :cond_28
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzth;->zzh(Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzam;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final zzaU(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzq:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzq:I

    sget p1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    return-void
.end method

.method private final zzaV()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzm:Landroid/view/Surface;

    if-eqz v0, :cond_13

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzq:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_13

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzq:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzh:Lcom/google/android/gms/internal/ads/zzaat;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaat;->zzq(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzo:Z

    :cond_13
    return-void
.end method

.method private final zzaW(Lcom/google/android/gms/internal/ads/zzdu;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdu;->zza:Lcom/google/android/gms/internal/ads/zzdu;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzD:Lcom/google/android/gms/internal/ads/zzdu;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzD:Lcom/google/android/gms/internal/ads/zzdu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzh:Lcom/google/android/gms/internal/ads/zzaat;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaat;->zzt(Lcom/google/android/gms/internal/ads/zzdu;)V

    :cond_17
    return-void
.end method

.method private final zzaX()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzD:Lcom/google/android/gms/internal/ads/zzdu;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzh:Lcom/google/android/gms/internal/ads/zzaat;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaat;->zzt(Lcom/google/android/gms/internal/ads/zzdu;)V

    :cond_9
    return-void
.end method

.method private final zzaY()V
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x11
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzm:Landroid/view/Surface;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzn:Lcom/google/android/gms/internal/ads/zzzz;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzm:Landroid/view/Surface;

    :cond_9
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzzz;->release()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzn:Lcom/google/android/gms/internal/ads/zzzz;

    :cond_10
    return-void
.end method

.method private final zzaZ(Lcom/google/android/gms/internal/ads/zzsk;IJJ)V
    .registers 9

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/internal/ads/zzzw;->zzaN(Lcom/google/android/gms/internal/ads/zzsk;IJJ)V

    return-void

    :cond_a
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzzw;->zzaM(Lcom/google/android/gms/internal/ads/zzsk;IJ)V

    return-void
.end method

.method public static zzab(Lcom/google/android/gms/internal/ads/zzsn;Lcom/google/android/gms/internal/ads/zzam;)I
    .registers 12

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzam;->zzr:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzam;->zzs:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_d2

    if-ne v1, v2, :cond_b

    goto/16 :goto_d2

    :cond_b
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "video/dolby-vision"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, "video/avc"

    const-string v8, "video/hevc"

    if-eqz v4, :cond_37

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzth;->zzb(Lcom/google/android/gms/internal/ads/zzam;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_36

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v3, 0x200

    if-eq p1, v3, :cond_34

    if-eq p1, v6, :cond_34

    if-ne p1, v5, :cond_36

    :cond_34
    move-object v3, v7

    goto :goto_37

    :cond_36
    move-object v3, v8

    :cond_37
    :goto_37
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v4, 0x3

    const/4 v9, 0x4

    sparse-switch p1, :sswitch_data_d4

    goto :goto_82

    :sswitch_41
    const-string p1, "video/x-vnd.on2.vp9"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    const/4 v5, 0x6

    goto :goto_83

    :sswitch_4b
    const-string p1, "video/x-vnd.on2.vp8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    const/4 v5, 0x3

    goto :goto_83

    :sswitch_55
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    const/4 v5, 0x5

    goto :goto_83

    :sswitch_5d
    const-string p1, "video/mp4v-es"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    const/4 v5, 0x1

    goto :goto_83

    :sswitch_67
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    const/4 v5, 0x4

    goto :goto_83

    :sswitch_6f
    const-string p1, "video/av01"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    goto :goto_83

    :sswitch_78
    const-string p1, "video/3gpp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    const/4 v5, 0x0

    goto :goto_83

    :cond_82
    :goto_82
    const/4 v5, -0x1

    :goto_83
    packed-switch v5, :pswitch_data_f2

    goto :goto_d2

    :pswitch_87
    const/16 v9, 0x8

    goto :goto_cc

    :pswitch_8a
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfs;->zzd:Ljava/lang/String;

    const-string v3, "BRAVIA 4K 2015"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfs;->zzc:Ljava/lang/String;

    const-string v4, "Amazon"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    const-string v3, "KFSOWI"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d2

    const-string v3, "AFTS"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b2

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzf:Z

    if-nez p0, :cond_d2

    :cond_b2
    add-int/lit8 v0, v0, 0xf

    add-int/lit8 v1, v1, 0xf

    div-int/lit8 v0, v0, 0x10

    div-int/lit8 v1, v1, 0x10

    mul-int v0, v0, v1

    mul-int/lit16 v0, v0, 0x300

    div-int/2addr v0, v9

    return v0

    :pswitch_c0
    const/high16 p0, 0x200000

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/2addr v0, v9

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :goto_cc
    :pswitch_cc
    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/2addr v0, v9

    return v0

    :cond_d2
    :goto_d2
    return v2

    nop

    :sswitch_data_d4
    .sparse-switch
        -0x63306f58 -> :sswitch_78
        -0x631b55f6 -> :sswitch_6f
        -0x63185e82 -> :sswitch_67
        0x46cdc642 -> :sswitch_5d
        0x4f62373a -> :sswitch_55
        0x5f50bed8 -> :sswitch_4b
        0x5f50bed9 -> :sswitch_41
    .end sparse-switch

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_cc
        :pswitch_cc
        :pswitch_cc
        :pswitch_cc
        :pswitch_c0
        :pswitch_8a
        :pswitch_87
    .end packed-switch
.end method

.method protected static zzac(Lcom/google/android/gms/internal/ads/zzsn;Lcom/google/android/gms/internal/ads/zzam;)I
    .registers 5

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzam;->zzn:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    iget-object p0, p1, Lcom/google/android/gms/internal/ads/zzam;->zzo:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_d
    if-ge v0, p0, :cond_1c

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzam;->zzo:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1c
    iget p0, p1, Lcom/google/android/gms/internal/ads/zzam;->zzn:I

    add-int/2addr p0, v1

    return p0

    :cond_20
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzzw;->zzab(Lcom/google/android/gms/internal/ads/zzsn;Lcom/google/android/gms/internal/ads/zzam;)I

    move-result p0

    return p0
.end method

.method private static zzba(J)Z
    .registers 5

    const-wide/16 v0, -0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private final zzbb(JJ)Z
    .registers 11

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzs:J

    const/4 v2, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_d

    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzbd()I

    move-result v0

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzq:I

    if-eqz v4, :cond_53

    if-eq v4, v3, :cond_52

    if-eq v4, v1, :cond_48

    const/4 p1, 0x3

    if-ne v4, p1, :cond_42

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzh()Lcom/google/android/gms/internal/ads/zzeg;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfs;->zzq(J)J

    move-result-wide p1

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzy:J

    sub-long/2addr p1, v4

    if-eqz v0, :cond_41

    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/zzzw;->zzba(J)Z

    move-result p3

    if-eqz p3, :cond_41

    const-wide/32 p3, 0x186a0

    cmp-long v0, p1, p3

    if-lez v0, :cond_41

    return v3

    :cond_41
    return v2

    :cond_42
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzar()J

    move-result-wide p3

    cmp-long v0, p1, p3

    if-ltz v0, :cond_51

    return v3

    :cond_51
    return v2

    :cond_52
    return v3

    :cond_53
    return v0
.end method

.method private final zzbc(Lcom/google/android/gms/internal/ads/zzsn;)Z
    .registers 6

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1e

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzsn;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzw;->zzaR(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzsn;->zzf:Z

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zze:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzz;->zzb(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_1e

    :cond_1d
    return v1

    :cond_1e
    :goto_1e
    const/4 v1, 0x0

    :cond_1f
    return v1
.end method


# virtual methods
.method protected final zzA()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzA()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_e

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzF:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzn:Lcom/google/android/gms/internal/ads/zzzz;

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzzw;->zzaY()V

    :cond_d
    return-void

    :catchall_e
    move-exception v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzF:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzn:Lcom/google/android/gms/internal/ads/zzzz;

    if-nez v0, :cond_16

    goto :goto_19

    :cond_16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzzw;->zzaY()V

    :goto_19
    throw v1
.end method

.method protected final zzB()V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzu:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzh()Lcom/google/android/gms/internal/ads/zzeg;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzt:J

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfs;->zzq(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzy:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzz:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzA:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzf:Lcom/google/android/gms/internal/ads/zzaai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaai;->zzg()V

    return-void
.end method

.method protected final zzC()V
    .registers 8

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzs:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzu:I

    const/4 v1, 0x0

    if-lez v0, :cond_22

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzh()Lcom/google/android/gms/internal/ads/zzeg;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzt:J

    sub-long v4, v2, v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzh:Lcom/google/android/gms/internal/ads/zzaat;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzu:I

    invoke-virtual {v0, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzaat;->zzd(IJ)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzu:I

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzt:J

    :cond_22
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzA:I

    if-eqz v0, :cond_33

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzh:Lcom/google/android/gms/internal/ads/zzaat;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzz:J

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzaat;->zzr(JI)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzz:J

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzA:I

    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzf:Lcom/google/android/gms/internal/ads/zzaai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaai;->zzh()V

    return-void
.end method

.method public final zzK(FF)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzss;->zzK(FF)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzf:Lcom/google/android/gms/internal/ads/zzaai;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaai;->zze(F)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzI:Lcom/google/android/gms/internal/ads/zzaay;

    if-eqz p2, :cond_f

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzaay;->zzl(F)V

    :cond_f
    return-void
.end method

.method public final zzS()Ljava/lang/String;
    .registers 2

    const-string v0, "MediaCodecVideoRenderer"

    return-object v0
.end method

.method public final zzT(JJ)V
    .registers 6
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzss;->zzT(JJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzI:Lcom/google/android/gms/internal/ads/zzaay;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaay;->zzi(JJ)V

    :cond_a
    return-void
.end method

.method public final zzU()Z
    .registers 3

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzU()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzI:Lcom/google/android/gms/internal/ads/zzaay;

    if-nez v0, :cond_d

    const/4 v1, 0x1

    nop

    :cond_d
    return v1
.end method

.method public final zzV()Z
    .registers 10

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzV()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzI:Lcom/google/android/gms/internal/ads/zzaay;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaay;->zzq()Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_16
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzq:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzn:Lcom/google/android/gms/internal/ads/zzzz;

    if-eqz v0, :cond_23

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzm:Landroid/view/Surface;

    if-eq v4, v0, :cond_2a

    :cond_23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzas()Lcom/google/android/gms/internal/ads/zzsk;

    move-result-object v0

    if-eqz v0, :cond_2a

    goto :goto_2d

    :cond_2a
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzs:J

    return v1

    :cond_2d
    :goto_2d
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzs:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_35

    return v0

    :cond_35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzh()Lcom/google/android/gms/internal/ads/zzeg;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzs:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_43

    return v1

    :cond_43
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzs:J

    return v0
.end method

.method protected final zzX(FLcom/google/android/gms/internal/ads/zzam;[Lcom/google/android/gms/internal/ads/zzam;)F
    .registers 8

    const/high16 p2, -0x40800000    # -1.0f

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    :goto_5
    array-length v2, p3

    if-ge v0, v2, :cond_17

    aget-object v2, p3, v0

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzam;->zzt:F

    cmpl-float v3, v2, p2

    if-eqz v3, :cond_14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_17
    cmpl-float p3, v1, p2

    if-nez p3, :cond_1c

    return p2

    :cond_1c
    mul-float v1, v1, p1

    return v1
.end method

.method protected final zzY(Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzam;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztb;
        }
    .end annotation

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzce;->zzg(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x80

    if-nez v0, :cond_b

    return v1

    :cond_b
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzam;->zzp:Lcom/google/android/gms/internal/ads/zzad;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzzw;->zze:Landroid/content/Context;

    invoke-static {v4, p1, p2, v0, v3}, Lcom/google/android/gms/internal/ads/zzzw;->zzaT(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzam;ZZ)Ljava/util/List;

    move-result-object v4

    if-eqz v0, :cond_28

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_28

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzzw;->zze:Landroid/content/Context;

    invoke-static {v4, p1, p2, v3, v3}, Lcom/google/android/gms/internal/ads/zzzw;->zzaT(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzam;ZZ)Ljava/util/List;

    move-result-object v4

    :cond_28
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2f

    goto :goto_36

    :cond_2f
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzss;->zzaH(Lcom/google/android/gms/internal/ads/zzam;)Z

    move-result v5

    if-nez v5, :cond_39

    const/4 v2, 0x2

    :goto_36
    or-int/lit16 p1, v2, 0x80

    return p1

    :cond_39
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzsn;

    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/ads/zzsn;->zze(Lcom/google/android/gms/internal/ads/zzam;)Z

    move-result v6

    if-nez v6, :cond_5f

    const/4 v7, 0x1

    :goto_46
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5f

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzsn;

    invoke-virtual {v8, p2}, Lcom/google/android/gms/internal/ads/zzsn;->zze(Lcom/google/android/gms/internal/ads/zzam;)Z

    move-result v9

    if-eqz v9, :cond_5c

    move-object v5, v8

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_60

    :cond_5c
    add-int/lit8 v7, v7, 0x1

    goto :goto_46

    :cond_5f
    const/4 v4, 0x1

    :goto_60
    if-eq v2, v6, :cond_64

    const/4 v7, 0x3

    goto :goto_65

    :cond_64
    const/4 v7, 0x4

    :goto_65
    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/ads/zzsn;->zzf(Lcom/google/android/gms/internal/ads/zzam;)Z

    move-result v8

    if-eq v2, v8, :cond_6e

    const/16 v8, 0x8

    goto :goto_70

    :cond_6e
    const/16 v8, 0x10

    :goto_70
    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Z

    if-eq v2, v5, :cond_76

    const/4 v5, 0x0

    goto :goto_78

    :cond_76
    const/16 v5, 0x40

    :goto_78
    if-eq v2, v4, :cond_7b

    const/4 v1, 0x0

    :cond_7b
    sget v4, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v9, 0x1a

    if-lt v4, v9, :cond_95

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    const-string v9, "video/dolby-vision"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_95

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzzw;->zze:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzzr;->zza(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_95

    const/16 v1, 0x100

    :cond_95
    if-eqz v6, :cond_bb

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzzw;->zze:Landroid/content/Context;

    invoke-static {v4, p1, p2, v0, v2}, Lcom/google/android/gms/internal/ads/zzzw;->zzaT(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzam;ZZ)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bb

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzth;->zzi(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzam;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzsn;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzsn;->zze(Lcom/google/android/gms/internal/ads/zzam;)Z

    move-result v0

    if-eqz v0, :cond_bb

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzsn;->zzf(Lcom/google/android/gms/internal/ads/zzam;)Z

    move-result p1

    if-eqz p1, :cond_bb

    const/16 v3, 0x20

    :cond_bb
    or-int p1, v7, v8

    or-int/2addr p1, v3

    or-int/2addr p1, v5

    or-int/2addr p1, v1

    return p1
.end method

.method protected final zzZ(Lcom/google/android/gms/internal/ads/zzsn;Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzam;)Lcom/google/android/gms/internal/ads/zzim;
    .registers 12

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzsn;->zzb(Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzam;)Lcom/google/android/gms/internal/ads/zzim;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzim;->zze:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzj:Lcom/google/android/gms/internal/ads/zzzs;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p3, Lcom/google/android/gms/internal/ads/zzam;->zzr:I

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzzs;->zza:I

    if-gt v3, v4, :cond_17

    iget v3, p3, Lcom/google/android/gms/internal/ads/zzam;->zzs:I

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzzs;->zzb:I

    if-le v3, v4, :cond_19

    :cond_17
    or-int/lit16 v1, v1, 0x100

    :cond_19
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzzw;->zzac(Lcom/google/android/gms/internal/ads/zzsn;Lcom/google/android/gms/internal/ads/zzam;)I

    move-result v3

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzzs;->zzc:I

    if-le v3, v2, :cond_23

    or-int/lit8 v1, v1, 0x40

    :cond_23
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzsn;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzim;

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    move v7, v1

    const/4 v6, 0x0

    goto :goto_31

    :cond_2d
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzim;->zzd:I

    move v6, v0

    const/4 v7, 0x0

    :goto_31
    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzim;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzam;II)V

    return-object p1
.end method

.method protected final zzaA()V
    .registers 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaA()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzw:I

    return-void
.end method

.method protected final zzaG(Lcom/google/android/gms/internal/ads/zzsn;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzm:Landroid/view/Surface;

    if-nez v0, :cond_d

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzzw;->zzbc(Lcom/google/android/gms/internal/ads/zzsn;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    return p1

    :cond_d
    :goto_d
    const/4 p1, 0x1

    return p1
.end method

.method public final zzaK()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzh()Lcom/google/android/gms/internal/ads/zzeg;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->zzq(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzy:J

    return-void
.end method

.method public final zzaL(J)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzf:Lcom/google/android/gms/internal/ads/zzaai;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaai;->zzd(J)V

    return-void
.end method

.method protected final zzaM(Lcom/google/android/gms/internal/ads/zzsk;IJ)V
    .registers 5

    sget p3, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const-string p3, "releaseOutputBuffer"

    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzsk;->zzn(IZ)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzil;

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzil;->zze:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzil;->zze:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzv:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzI:Lcom/google/android/gms/internal/ads/zzaay;

    if-nez p1, :cond_31

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzh()Lcom/google/android/gms/internal/ads/zzeg;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfs;->zzq(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzy:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzC:Lcom/google/android/gms/internal/ads/zzdu;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzzw;->zzaW(Lcom/google/android/gms/internal/ads/zzdu;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzzw;->zzaV()V

    :cond_31
    return-void
.end method

.method protected final zzaN(Lcom/google/android/gms/internal/ads/zzsk;IJJ)V
    .registers 7
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    sget p3, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const-string p3, "releaseOutputBuffer"

    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-interface {p1, p2, p5, p6}, Lcom/google/android/gms/internal/ads/zzsk;->zzm(IJ)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzil;

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzil;->zze:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzil;->zze:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzv:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzI:Lcom/google/android/gms/internal/ads/zzaay;

    if-nez p1, :cond_31

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzh()Lcom/google/android/gms/internal/ads/zzeg;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfs;->zzq(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzy:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzC:Lcom/google/android/gms/internal/ads/zzdu;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzzw;->zzaW(Lcom/google/android/gms/internal/ads/zzdu;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzzw;->zzaV()V

    :cond_31
    return-void
.end method

.method protected final zzaO(Lcom/google/android/gms/internal/ads/zzsk;IJ)V
    .registers 5

    sget p3, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const-string p3, "skipVideoBuffer"

    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzsk;->zzn(IZ)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzil;

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzil;->zzf:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzil;->zzf:I

    return-void
.end method

.method protected final zzaP(II)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzil;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzil;->zzh:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzil;->zzh:I

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzil;->zzg:I

    add-int/2addr p1, p2

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzil;->zzg:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzu:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzu:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzv:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzv:I

    iget p1, v0, Lcom/google/android/gms/internal/ads/zzil;->zzi:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lcom/google/android/gms/internal/ads/zzil;->zzi:I

    return-void
.end method

.method protected final zzaQ(J)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzil;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzil;->zzk:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzil;->zzk:J

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzil;->zzl:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzil;->zzl:I

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzz:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzz:J

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzA:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzA:I

    return-void
.end method

.method protected final zzaa(Lcom/google/android/gms/internal/ads/zzkv;)Lcom/google/android/gms/internal/ads/zzim;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzss;->zzaa(Lcom/google/android/gms/internal/ads/zzkv;)Lcom/google/android/gms/internal/ads/zzim;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzkv;->zza:Lcom/google/android/gms/internal/ads/zzam;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzh:Lcom/google/android/gms/internal/ads/zzaat;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzaat;->zzf(Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzim;)V

    return-object v0
.end method

.method protected final zzad(Lcom/google/android/gms/internal/ads/zzsn;Lcom/google/android/gms/internal/ads/zzam;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzsi;
    .registers 24
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzn:Lcom/google/android/gms/internal/ads/zzzz;

    if-eqz v4, :cond_15

    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzf:Z

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/zzzz;->zza:Z

    if-eq v4, v5, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzzw;->zzaY()V

    :cond_15
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzc:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzik;->zzR()[Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v5

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzam;->zzr:I

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzam;->zzs:I

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/zzzw;->zzac(Lcom/google/android/gms/internal/ads/zzsn;Lcom/google/android/gms/internal/ads/zzam;)I

    move-result v8

    array-length v9, v5

    const/4 v10, -0x1

    const/4 v13, 0x1

    if-ne v9, v13, :cond_3e

    if-eq v8, v10, :cond_3a

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/zzzw;->zzab(Lcom/google/android/gms/internal/ads/zzsn;Lcom/google/android/gms/internal/ads/zzam;)I

    move-result v5

    if-eq v5, v10, :cond_3a

    int-to-float v8, v8

    const/high16 v9, 0x3fc00000    # 1.5f

    mul-float v8, v8, v9

    float-to-int v8, v8

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    :cond_3a
    move-object/from16 v16, v4

    goto/16 :goto_16c

    :cond_3e
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_40
    if-ge v14, v9, :cond_84

    aget-object v11, v5, v14

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzam;->zzy:Lcom/google/android/gms/internal/ads/zzs;

    if-eqz v12, :cond_59

    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzam;->zzy:Lcom/google/android/gms/internal/ads/zzs;

    if-nez v12, :cond_59

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzam;->zzb()Lcom/google/android/gms/internal/ads/zzak;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzam;->zzy:Lcom/google/android/gms/internal/ads/zzs;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/zzak;->zzA(Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v11

    :cond_59
    invoke-virtual {v1, v2, v11}, Lcom/google/android/gms/internal/ads/zzsn;->zzb(Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzam;)Lcom/google/android/gms/internal/ads/zzim;

    move-result-object v12

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzim;->zzd:I

    if-eqz v12, :cond_80

    iget v12, v11, Lcom/google/android/gms/internal/ads/zzam;->zzr:I

    if-eq v12, v10, :cond_6c

    iget v13, v11, Lcom/google/android/gms/internal/ads/zzam;->zzs:I

    if-ne v13, v10, :cond_6a

    goto :goto_6c

    :cond_6a
    const/4 v13, 0x0

    goto :goto_6d

    :cond_6c
    :goto_6c
    const/4 v13, 0x1

    :goto_6d
    or-int/2addr v15, v13

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v12, v11, Lcom/google/android/gms/internal/ads/zzam;->zzs:I

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v1, v11}, Lcom/google/android/gms/internal/ads/zzzw;->zzac(Lcom/google/android/gms/internal/ads/zzsn;Lcom/google/android/gms/internal/ads/zzam;)I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_80
    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x1

    goto :goto_40

    :cond_84
    if-eqz v15, :cond_3a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v10, "MediaCodecVideoRenderer"

    invoke-static {v10, v5}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzam;->zzs:I

    iget v11, v2, Lcom/google/android/gms/internal/ads/zzam;->zzr:I

    if-le v5, v11, :cond_ac

    const/4 v12, 0x1

    goto :goto_ad

    :cond_ac
    const/4 v12, 0x0

    :goto_ad
    if-eqz v12, :cond_b1

    move v13, v5

    goto :goto_b2

    :cond_b1
    move v13, v11

    :goto_b2
    const/4 v14, 0x1

    if-ne v14, v12, :cond_b6

    move v5, v11

    :cond_b6
    sget-object v11, Lcom/google/android/gms/internal/ads/zzzw;->zzb:[I

    const/4 v14, 0x0

    :goto_b9
    const/16 v15, 0x9

    if-ge v14, v15, :cond_12b

    int-to-float v15, v5

    int-to-float v3, v13

    move-object/from16 v16, v4

    aget v4, v11, v14

    move-object/from16 v17, v11

    int-to-float v11, v4

    if-le v4, v13, :cond_12d

    div-float/2addr v15, v3

    mul-float v11, v11, v15

    float-to-int v3, v11

    if-gt v3, v5, :cond_d0

    goto/16 :goto_12d

    :cond_d0
    sget v11, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v15, 0x15

    if-lt v11, v15, :cond_fa

    const/4 v11, 0x1

    if-eq v11, v12, :cond_db

    move v15, v4

    goto :goto_dc

    :cond_db
    move v15, v3

    :goto_dc
    if-ne v11, v12, :cond_df

    goto :goto_e0

    :cond_df
    move v4, v3

    :goto_e0
    invoke-virtual {v1, v15, v4}, Lcom/google/android/gms/internal/ads/zzsn;->zza(II)Landroid/graphics/Point;

    move-result-object v3

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzam;->zzt:F

    if-eqz v3, :cond_f7

    move v11, v5

    float-to-double v4, v4

    iget v15, v3, Landroid/graphics/Point;->x:I

    move/from16 v18, v11

    iget v11, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v15, v11, v4, v5}, Lcom/google/android/gms/internal/ads/zzsn;->zzg(IID)Z

    move-result v4

    if-eqz v4, :cond_120

    goto :goto_12e

    :cond_f7
    move/from16 v18, v5

    goto :goto_120

    :cond_fa
    move/from16 v18, v5

    add-int/lit8 v4, v4, 0xf

    :try_start_fe
    div-int/lit8 v4, v4, 0x10

    mul-int/lit8 v4, v4, 0x10

    add-int/lit8 v3, v3, 0xf

    div-int/lit8 v3, v3, 0x10

    mul-int/lit8 v3, v3, 0x10

    mul-int v5, v4, v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzth;->zza()I

    move-result v11

    if-gt v5, v11, :cond_120

    new-instance v5, Landroid/graphics/Point;

    const/4 v11, 0x1

    if-eq v11, v12, :cond_117

    move v13, v4

    goto :goto_118

    :cond_117
    move v13, v3

    :goto_118
    if-eq v11, v12, :cond_11b

    move v4, v3

    :cond_11b
    invoke-direct {v5, v13, v4}, Landroid/graphics/Point;-><init>(II)V
    :try_end_11e
    .catch Lcom/google/android/gms/internal/ads/zztb; {:try_start_fe .. :try_end_11e} :catch_12d

    move-object v3, v5

    goto :goto_12e

    :cond_120
    :goto_120
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, p4

    move-object/from16 v4, v16

    move-object/from16 v11, v17

    move/from16 v5, v18

    goto :goto_b9

    :cond_12b
    move-object/from16 v16, v4

    :catch_12d
    :cond_12d
    :goto_12d
    const/4 v3, 0x0

    :goto_12e
    if-eqz v3, :cond_16c

    iget v4, v3, Landroid/graphics/Point;->x:I

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzam;->zzb()Lcom/google/android/gms/internal/ads/zzak;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzak;->zzab(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzak;->zzH(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzzw;->zzab(Lcom/google/android/gms/internal/ads/zzsn;Lcom/google/android/gms/internal/ads/zzam;)I

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Codec max resolution adjusted to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16c
    :goto_16c
    new-instance v3, Lcom/google/android/gms/internal/ads/zzzs;

    invoke-direct {v3, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzzs;-><init>(III)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzj:Lcom/google/android/gms/internal/ads/zzzs;

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzi:Z

    new-instance v5, Landroid/media/MediaFormat;

    invoke-direct {v5}, Landroid/media/MediaFormat;-><init>()V

    const-string v6, "mime"

    move-object/from16 v7, v16

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzam;->zzr:I

    const-string v7, "width"

    invoke-virtual {v5, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzam;->zzs:I

    const-string v7, "height"

    invoke-virtual {v5, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzam;->zzo:Ljava/util/List;

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(Landroid/media/MediaFormat;Ljava/util/List;)V

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzam;->zzt:F

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v8, v6, v7

    if-eqz v8, :cond_1a1

    const-string v8, "frame-rate"

    invoke-virtual {v5, v8, v6}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_1a1
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzam;->zzu:I

    const-string v8, "rotation-degrees"

    invoke-static {v5, v8, v6}, Lcom/google/android/gms/internal/ads/zzfc;->zza(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzam;->zzy:Lcom/google/android/gms/internal/ads/zzs;

    if-eqz v6, :cond_1ce

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzs;->zzf:I

    const-string v9, "color-transfer"

    invoke-static {v5, v9, v8}, Lcom/google/android/gms/internal/ads/zzfc;->zza(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzs;->zzd:I

    const-string v9, "color-standard"

    invoke-static {v5, v9, v8}, Lcom/google/android/gms/internal/ads/zzfc;->zza(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzs;->zze:I

    const-string v9, "color-range"

    invoke-static {v5, v9, v8}, Lcom/google/android/gms/internal/ads/zzfc;->zza(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzs;->zzg:[B

    if-eqz v6, :cond_1ce

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    const-string v8, "hdr-static-info"

    invoke-virtual {v5, v8, v6}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_1ce
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    const-string v8, "video/dolby-vision"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzth;->zzb(Lcom/google/android/gms/internal/ads/zzam;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_1eb

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v8, "profile"

    invoke-static {v5, v8, v6}, Lcom/google/android/gms/internal/ads/zzfc;->zza(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    :cond_1eb
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzzs;->zza:I

    const-string v8, "max-width"

    invoke-virtual {v5, v8, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzzs;->zzb:I

    const-string v8, "max-height"

    invoke-virtual {v5, v8, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzzs;->zzc:I

    const-string v6, "max-input-size"

    invoke-static {v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzfc;->zza(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    sget v3, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v6, 0x17

    if-lt v3, v6, :cond_217

    const-string v3, "priority"

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    move/from16 v3, p4

    cmpl-float v6, v3, v7

    if-eqz v6, :cond_217

    const-string v6, "operating-rate"

    invoke-virtual {v5, v6, v3}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_217
    if-eqz v4, :cond_225

    const-string v3, "no-post-process"

    const/4 v4, 0x1

    invoke-virtual {v5, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "auto-frc"

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_225
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzm:Landroid/view/Surface;

    if-nez v3, :cond_248

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzzw;->zzbc(Lcom/google/android/gms/internal/ads/zzsn;)Z

    move-result v3

    if-eqz v3, :cond_242

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzn:Lcom/google/android/gms/internal/ads/zzzz;

    if-nez v3, :cond_23d

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzzw;->zze:Landroid/content/Context;

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzf:Z

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzzz;->zza(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzzz;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzn:Lcom/google/android/gms/internal/ads/zzzz;

    :cond_23d
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzn:Lcom/google/android/gms/internal/ads/zzzz;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzm:Landroid/view/Surface;

    goto :goto_248

    :cond_242
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_248
    :goto_248
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzI:Lcom/google/android/gms/internal/ads/zzaay;

    if-eqz v3, :cond_258

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaay;->zzp()Z

    move-result v3

    if-nez v3, :cond_258

    const-string v3, "allow-frame-drop"

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_258
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzI:Lcom/google/android/gms/internal/ads/zzaay;

    if-eqz v3, :cond_261

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaay;->zzb()Landroid/view/Surface;

    move-result-object v3

    goto :goto_263

    :cond_261
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzm:Landroid/view/Surface;

    :goto_263
    const/4 v4, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzsi;->zzb(Lcom/google/android/gms/internal/ads/zzsn;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzam;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lcom/google/android/gms/internal/ads/zzsi;

    move-result-object v1

    return-object v1
.end method

.method protected final zzae(Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzam;Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztb;
        }
    .end annotation

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzzw;->zze:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p3, p1, p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzzw;->zzaT(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzam;ZZ)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzth;->zzi(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzam;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected final zzaf(Lcom/google/android/gms/internal/ads/zzib;)V
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzl:Z

    if-nez v0, :cond_5

    goto :goto_5b

    :cond_5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzib;->zzf:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_5b

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, -0x4b

    if-ne v0, v6, :cond_5b

    const/16 v0, 0x3c

    if-ne v1, v0, :cond_5b

    const/4 v0, 0x1

    if-ne v2, v0, :cond_5b

    const/4 v1, 0x4

    if-ne v3, v1, :cond_5b

    if-eqz v4, :cond_3b

    if-ne v4, v0, :cond_5b

    :cond_3b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzas()Lcom/google/android/gms/internal/ads/zzsk;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "hdr10-plus-info"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzsk;->zzp(Landroid/os/Bundle;)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method protected final zzag(Ljava/lang/Exception;)V
    .registers 4

    const-string v0, "MediaCodecVideoRenderer"

    const-string v1, "Video codec error"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzez;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzh:Lcom/google/android/gms/internal/ads/zzaat;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaat;->zzs(Ljava/lang/Exception;)V

    return-void
.end method

.method protected final zzah(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzsi;JJ)V
    .registers 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzh:Lcom/google/android/gms/internal/ads/zzaat;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaat;->zza(Ljava/lang/String;JJ)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzw;->zzaR(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzk:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzau()Lcom/google/android/gms/internal/ads/zzsn;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget p2, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 p3, 0x1d

    const/4 p4, 0x0

    if-lt p2, p3, :cond_3b

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzsn;->zzb:Ljava/lang/String;

    const-string p3, "video/x-vnd.on2.vp9"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsn;->zzh()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    :goto_2c
    if-ge p3, p2, :cond_3b

    aget-object p5, p1, p3

    iget p5, p5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 p6, 0x4000

    if-ne p5, p6, :cond_38

    const/4 p4, 0x1

    goto :goto_3b

    :cond_38
    add-int/lit8 p3, p3, 0x1

    goto :goto_2c

    :cond_3b
    :goto_3b
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzl:Z

    return-void
.end method

.method protected final zzai(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzh:Lcom/google/android/gms/internal/ads/zzaat;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaat;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method protected final zzaj(Lcom/google/android/gms/internal/ads/zzam;Landroid/media/MediaFormat;)V
    .registers 11
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzas()Lcom/google/android/gms/internal/ads/zzsk;

    move-result-object v0

    if-eqz v0, :cond_b

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzp:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzsk;->zzq(I)V

    :cond_b
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "crop-top"

    const-string v3, "crop-bottom"

    const-string v4, "crop-left"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_32

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    if-eqz v1, :cond_40

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    goto :goto_46

    :cond_40
    const-string v0, "width"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_46
    if-eqz v1, :cond_53

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v1, p2

    add-int/2addr v1, v5

    goto :goto_59

    :cond_53
    const-string v1, "height"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    :goto_59
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzam;->zzv:F

    sget v2, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_73

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzam;->zzu:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_6b

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_79

    :cond_6b
    const/high16 v2, 0x3f800000    # 1.0f

    div-float p2, v2, p2

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_79

    :cond_73
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzI:Lcom/google/android/gms/internal/ads/zzaay;

    if-nez v2, :cond_79

    iget v6, p1, Lcom/google/android/gms/internal/ads/zzam;->zzu:I

    :cond_79
    :goto_79
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdu;

    invoke-direct {v2, v0, v1, v6, p2}, Lcom/google/android/gms/internal/ads/zzdu;-><init>(IIIF)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzC:Lcom/google/android/gms/internal/ads/zzdu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzf:Lcom/google/android/gms/internal/ads/zzaai;

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzam;->zzt:F

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzaai;->zzc(F)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzI:Lcom/google/android/gms/internal/ads/zzaay;

    if-eqz v2, :cond_a2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzam;->zzb()Lcom/google/android/gms/internal/ads/zzak;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzak;->zzab(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzH(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/zzak;->zzT(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzak;->zzR(F)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object p1

    invoke-interface {v2, v5, p1}, Lcom/google/android/gms/internal/ads/zzaay;->zzg(ILcom/google/android/gms/internal/ads/zzam;)V

    :cond_a2
    return-void
.end method

.method public final zzak(JJJF)J
    .registers 21

    move-object v0, p0

    move-wide/from16 v10, p3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzbd()I

    move-result v1

    const/4 v12, 0x2

    if-ne v1, v12, :cond_d

    const/4 v1, 0x1

    const/4 v7, 0x1

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzh()Lcom/google/android/gms/internal/ads/zzeg;

    move-result-object v9

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    move-wide v5, p1

    move/from16 v8, p7

    invoke-static/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzzw;->zzaS(JJJZFLcom/google/android/gms/internal/ads/zzeg;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzzw;->zzba(J)Z

    move-result v3

    if-eqz v3, :cond_27

    const-wide/16 v1, -0x2

    return-wide v1

    :cond_27
    invoke-direct {p0, v10, v11, v1, v2}, Lcom/google/android/gms/internal/ads/zzzw;->zzbb(JJ)Z

    move-result v3

    if-eqz v3, :cond_30

    const-wide/16 v1, -0x1

    return-wide v1

    :cond_30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzbd()I

    move-result v3

    if-ne v3, v12, :cond_57

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzr:J

    cmp-long v5, v10, v3

    if-eqz v5, :cond_57

    const-wide/32 v3, 0xc350

    cmp-long v5, v1, v3

    if-lez v5, :cond_44

    goto :goto_57

    :cond_44
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzh()Lcom/google/android/gms/internal/ads/zzeg;

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    add-long/2addr v3, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzf:Lcom/google/android/gms/internal/ads/zzaai;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzaai;->zza(J)J

    move-result-wide v1

    return-wide v1

    :cond_57
    :goto_57
    const-wide/16 v1, -0x3

    return-wide v1
.end method

.method protected final zzal()V
    .registers 4

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzzw;->zzaU(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzg:Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaaz;->zzi()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzg:Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaq()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaaz;->zzf(J)V

    :cond_15
    return-void
.end method

.method protected final zzan(JJLcom/google/android/gms/internal/ads/zzsk;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzam;)Z
    .registers 35
    .param p5    # Lcom/google/android/gms/internal/ads/zzsk;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v10, p1

    move-object/from16 v12, p5

    move/from16 v13, p7

    move-wide/from16 v5, p10

    move/from16 v14, p13

    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzr:J

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v15

    if-nez v3, :cond_1c

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzr:J

    :cond_1c
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzx:J

    cmp-long v3, v5, v1

    if-eqz v3, :cond_2d

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzI:Lcom/google/android/gms/internal/ads/zzaay;

    if-nez v1, :cond_2b

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzf:Lcom/google/android/gms/internal/ads/zzaai;

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzaai;->zzd(J)V

    :cond_2b
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzx:J

    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaq()J

    move-result-wide v1

    sub-long v8, v5, v1

    const/4 v7, 0x1

    if-eqz p12, :cond_3d

    if-eqz v14, :cond_39

    goto :goto_3d

    :cond_39
    invoke-virtual {v0, v12, v13, v8, v9}, Lcom/google/android/gms/internal/ads/zzzw;->zzaO(Lcom/google/android/gms/internal/ads/zzsk;IJ)V

    return v7

    :cond_3d
    :goto_3d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzik;->zzbd()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_48

    const/16 v17, 0x1

    goto :goto_4a

    :cond_48
    const/16 v17, 0x0

    :goto_4a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzss;->zzap()F

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzik;->zzh()Lcom/google/android/gms/internal/ads/zzeg;

    move-result-object v19

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p10

    const/4 v15, 0x1

    move/from16 v7, v17

    move-wide v10, v8

    move/from16 v8, v18

    move-object/from16 v9, v19

    invoke-static/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzzw;->zzaS(JJJZFLcom/google/android/gms/internal/ads/zzeg;)J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzm:Landroid/view/Surface;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzn:Lcom/google/android/gms/internal/ads/zzzz;

    if-ne v3, v4, :cond_7a

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzzw;->zzba(J)Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-virtual {v0, v12, v13, v10, v11}, Lcom/google/android/gms/internal/ads/zzzw;->zzaO(Lcom/google/android/gms/internal/ads/zzsk;IJ)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzzw;->zzaQ(J)V

    return v15

    :cond_77
    :goto_77
    const/4 v3, 0x0

    goto/16 :goto_19b

    :cond_7a
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzI:Lcom/google/android/gms/internal/ads/zzaay;

    if-eqz v3, :cond_a3

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide v8, v10

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzaay;->zzi(JJ)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzI:Lcom/google/android/gms/internal/ads/zzaay;

    invoke-interface {v1, v8, v9, v14}, Lcom/google/android/gms/internal/ads/zzaay;->zza(JZ)J

    move-result-wide v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_77

    move-object/from16 p8, p0

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v8

    move-wide/from16 p13, v1

    invoke-direct/range {p8 .. p14}, Lcom/google/android/gms/internal/ads/zzzw;->zzaZ(Lcom/google/android/gms/internal/ads/zzsk;IJJ)V

    return v15

    :cond_a3
    move-wide/from16 v4, p1

    move-wide v8, v10

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzzw;->zzbb(JJ)Z

    move-result v3

    if-eqz v3, :cond_c4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzik;->zzh()Lcom/google/android/gms/internal/ads/zzeg;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    move-object/from16 p8, p0

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v8

    move-wide/from16 p13, v3

    invoke-direct/range {p8 .. p14}, Lcom/google/android/gms/internal/ads/zzzw;->zzaZ(Lcom/google/android/gms/internal/ads/zzsk;IJJ)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzzw;->zzaQ(J)V

    return v15

    :cond_c4
    if-eqz v17, :cond_77

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzr:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_77

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzik;->zzh()Lcom/google/android/gms/internal/ads/zzeg;

    const-wide/16 v6, 0x3e8

    mul-long v1, v1, v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    add-long/2addr v1, v10

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzf:Lcom/google/android/gms/internal/ads/zzaai;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzaai;->zza(J)J

    move-result-wide v1

    sub-long v10, v1, v10

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzs:J

    div-long/2addr v10, v6

    const-wide/32 v16, -0x7a120

    cmp-long v5, v10, v16

    if-gez v5, :cond_123

    if-nez v14, :cond_123

    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzik;->zzd(J)I

    move-result v5

    if-nez v5, :cond_f3

    goto :goto_123

    :cond_f3
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v3, v16

    if-eqz v1, :cond_10b

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzil;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzil;->zzd:I

    add-int/2addr v2, v5

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzil;->zzd:I

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzil;->zzf:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzw:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzil;->zzf:I

    goto :goto_117

    :cond_10b
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzil;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzil;->zzj:I

    add-int/2addr v2, v15

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzil;->zzj:I

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzw:I

    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/ads/zzzw;->zzaP(II)V

    :goto_117
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaC()Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzI:Lcom/google/android/gms/internal/ads/zzaay;

    if-eqz v1, :cond_77

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaay;->zzd()V

    goto/16 :goto_77

    :cond_123
    :goto_123
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzzw;->zzba(J)Z

    move-result v5

    if-eqz v5, :cond_14d

    if-nez v14, :cond_14d

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v3, v16

    if-eqz v1, :cond_138

    invoke-virtual {v0, v12, v13, v8, v9}, Lcom/google/android/gms/internal/ads/zzzw;->zzaO(Lcom/google/android/gms/internal/ads/zzsk;IJ)V

    goto :goto_149

    :cond_138
    sget v1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const-string v1, "dropVideoBuffer"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v12, v13, v3}, Lcom/google/android/gms/internal/ads/zzsk;->zzn(IZ)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {v0, v3, v15}, Lcom/google/android/gms/internal/ads/zzzw;->zzaP(II)V

    :goto_149
    invoke-virtual {v0, v10, v11}, Lcom/google/android/gms/internal/ads/zzzw;->zzaQ(J)V

    return v15

    :cond_14d
    const/4 v3, 0x0

    sget v4, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_178

    const-wide/32 v4, 0xc350

    cmp-long v6, v10, v4

    if-gez v6, :cond_19b

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzB:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_165

    invoke-virtual {v0, v12, v13, v8, v9}, Lcom/google/android/gms/internal/ads/zzzw;->zzaO(Lcom/google/android/gms/internal/ads/zzsk;IJ)V

    goto :goto_172

    :cond_165
    move-object/from16 p8, p0

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v8

    move-wide/from16 p13, v1

    invoke-virtual/range {p8 .. p14}, Lcom/google/android/gms/internal/ads/zzzw;->zzaN(Lcom/google/android/gms/internal/ads/zzsk;IJJ)V

    :goto_172
    invoke-virtual {v0, v10, v11}, Lcom/google/android/gms/internal/ads/zzzw;->zzaQ(J)V

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzzw;->zzB:J

    return v15

    :cond_178
    const-wide/16 v1, 0x7530

    cmp-long v4, v10, v1

    if-gez v4, :cond_19b

    const-wide/16 v1, 0x2af8

    cmp-long v4, v10, v1

    if-lez v4, :cond_194

    const-wide/16 v1, -0x2710

    add-long/2addr v1, v10

    :try_start_187
    div-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18b
    .catch Ljava/lang/InterruptedException; {:try_start_187 .. :try_end_18b} :catch_18c

    goto :goto_194

    :catch_18c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    return v3

    :cond_194
    :goto_194
    invoke-virtual {v0, v12, v13, v8, v9}, Lcom/google/android/gms/internal/ads/zzzw;->zzaM(Lcom/google/android/gms/internal/ads/zzsk;IJ)V

    invoke-virtual {v0, v10, v11}, Lcom/google/android/gms/internal/ads/zzzw;->zzaQ(J)V

    return v15

    :cond_19b
    :goto_19b
    return v3
.end method

.method protected final zzat(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzsn;)Lcom/google/android/gms/internal/ads/zzsl;
    .registers 5
    .param p2    # Lcom/google/android/gms/internal/ads/zzsn;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzm:Landroid/view/Surface;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzzp;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzsn;Landroid/view/Surface;)V

    return-object v0
.end method

.method protected final zzaw(J)V
    .registers 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzss;->zzaw(J)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzw:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzw:I

    return-void
.end method

.method protected final zzax(Lcom/google/android/gms/internal/ads/zzib;)V
    .registers 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzw:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzw:I

    sget p1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    return-void
.end method

.method protected final zzay(Lcom/google/android/gms/internal/ads/zzam;)V
    .registers 5
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzE:Z

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzF:Z

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzg:Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaaz;->zzi()Z

    move-result v0

    if-nez v0, :cond_31

    :try_start_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzg:Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaaz;->zzc(Lcom/google/android/gms/internal/ads/zzam;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzg:Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaq()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaaz;->zzf(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzH:Lcom/google/android/gms/internal/ads/zzaaa;

    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzg:Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzaaz;->zzh(Lcom/google/android/gms/internal/ads/zzaaa;)V
    :try_end_27
    .catch Lcom/google/android/gms/internal/ads/zzaax; {:try_start_10 .. :try_end_27} :catch_28

    goto :goto_31

    :catch_28
    move-exception v0

    const/4 v1, 0x0

    const/16 v2, 0x1b58

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzik;->zzi(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzam;ZI)Lcom/google/android/gms/internal/ads/zzit;

    move-result-object p1

    throw p1

    :cond_31
    :goto_31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzI:Lcom/google/android/gms/internal/ads/zzaay;

    if-nez p1, :cond_51

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzg:Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaaz;->zzi()Z

    move-result p1

    if-eqz p1, :cond_51

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzg:Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaaz;->zza()Lcom/google/android/gms/internal/ads/zzaay;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzI:Lcom/google/android/gms/internal/ads/zzaay;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzzq;-><init>(Lcom/google/android/gms/internal/ads/zzzw;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgbr;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaay;->zzj(Lcom/google/android/gms/internal/ads/zzaav;Ljava/util/concurrent/Executor;)V

    :cond_51
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzF:Z

    return-void
.end method

.method public final zzs()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzq:I

    if-nez v0, :cond_7

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzq:I

    :cond_7
    return-void
.end method

.method public final zzt(ILjava/lang/Object;)V
    .registers 8
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8b

    const/4 v1, 0x7

    if-eq p1, v1, :cond_7e

    const/16 v1, 0xa

    if-eq p1, v1, :cond_6e

    const/4 v1, 0x4

    if-eq p1, v1, :cond_59

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4a

    const/16 v1, 0xd

    if-eq p1, v1, :cond_3d

    const/16 v0, 0xe

    if-eq p1, v0, :cond_1a

    goto/16 :goto_138

    :cond_1a
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzg:Lcom/google/android/gms/internal/ads/zzaaz;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzfk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaaz;->zzi()Z

    move-result p1

    if-eqz p1, :cond_138

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfk;->zzb()I

    move-result p1

    if-eqz p1, :cond_138

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfk;->zza()I

    move-result p1

    if-eqz p1, :cond_138

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzm:Landroid/view/Surface;

    if-eqz p1, :cond_138

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzg:Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaaz;->zze(Landroid/view/Surface;Lcom/google/android/gms/internal/ads/zzfk;)V

    return-void

    :cond_3d
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzg:Lcom/google/android/gms/internal/ads/zzaaz;

    check-cast p2, Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzaaz;->zzg(Ljava/util/List;)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzE:Z

    return-void

    :cond_4a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzf:Lcom/google/android/gms/internal/ads/zzaai;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaai;->zzj(I)V

    return-void

    :cond_59
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzp:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzas()Lcom/google/android/gms/internal/ads/zzsk;

    move-result-object p2

    if-eqz p2, :cond_138

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzsk;->zzq(I)V

    return-void

    :cond_6e
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzG:I

    if-eq p2, p1, :cond_138

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzG:I

    return-void

    :cond_7e
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzaaa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzH:Lcom/google/android/gms/internal/ads/zzaaa;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzg:Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzaaz;->zzh(Lcom/google/android/gms/internal/ads/zzaaa;)V

    return-void

    :cond_8b
    instance-of p1, p2, Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz p1, :cond_93

    check-cast p2, Landroid/view/Surface;

    goto :goto_94

    :cond_93
    move-object p2, v1

    :goto_94
    if-nez p2, :cond_b2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzn:Lcom/google/android/gms/internal/ads/zzzz;

    if-eqz p1, :cond_9c

    move-object p2, p1

    goto :goto_b2

    :cond_9c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzau()Lcom/google/android/gms/internal/ads/zzsn;

    move-result-object p1

    if-eqz p1, :cond_b2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzzw;->zzbc(Lcom/google/android/gms/internal/ads/zzsn;)Z

    move-result v2

    if-eqz v2, :cond_b2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zze:Landroid/content/Context;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzsn;->zzf:Z

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzzz;->zza(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzzz;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzn:Lcom/google/android/gms/internal/ads/zzzz;

    :cond_b2
    :goto_b2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzm:Landroid/view/Surface;

    if-eq p1, p2, :cond_122

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzm:Landroid/view/Surface;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzf:Lcom/google/android/gms/internal/ads/zzaai;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaai;->zzi(Landroid/view/Surface;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzo:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzbd()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzas()Lcom/google/android/gms/internal/ads/zzsk;

    move-result-object v2

    if-eqz v2, :cond_e9

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzg:Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaaz;->zzi()Z

    move-result v3

    if-nez v3, :cond_e9

    sget v3, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_e3

    if-eqz p2, :cond_e2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzk:Z

    if-nez v3, :cond_e3

    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzsk;->zzo(Landroid/view/Surface;)V

    goto :goto_e9

    :cond_e2
    move-object p2, v1

    :cond_e3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaz()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzav()V

    :cond_e9
    :goto_e9
    if-eqz p2, :cond_10f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzn:Lcom/google/android/gms/internal/ads/zzzz;

    if-eq p2, v2, :cond_10f

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzzw;->zzaX()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzzw;->zzaU(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_ff

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzs:J

    :cond_ff
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzg:Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaaz;->zzi()Z

    move-result p1

    if-eqz p1, :cond_138

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzg:Lcom/google/android/gms/internal/ads/zzaaz;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfk;->zza:Lcom/google/android/gms/internal/ads/zzfk;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaaz;->zze(Landroid/view/Surface;Lcom/google/android/gms/internal/ads/zzfk;)V

    return-void

    :cond_10f
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzD:Lcom/google/android/gms/internal/ads/zzdu;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzzw;->zzaU(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzg:Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaaz;->zzi()Z

    move-result p1

    if-eqz p1, :cond_138

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzg:Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaaz;->zzb()V

    return-void

    :cond_122
    if-eqz p2, :cond_138

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzn:Lcom/google/android/gms/internal/ads/zzzz;

    if-eq p2, p1, :cond_138

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzzw;->zzaX()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzm:Landroid/view/Surface;

    if-eqz p1, :cond_138

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzo:Z

    if-eqz p2, :cond_138

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzh:Lcom/google/android/gms/internal/ads/zzaat;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaat;->zzq(Ljava/lang/Object;)V

    :cond_138
    :goto_138
    return-void
.end method

.method protected final zzw()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzD:Lcom/google/android/gms/internal/ads/zzdu;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzzw;->zzaU(I)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzo:Z

    :try_start_9
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzw()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzh:Lcom/google/android/gms/internal/ads/zzaat;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaat;->zzc(Lcom/google/android/gms/internal/ads/zzil;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzh:Lcom/google/android/gms/internal/ads/zzaat;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdu;->zza:Lcom/google/android/gms/internal/ads/zzdu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaat;->zzt(Lcom/google/android/gms/internal/ads/zzdu;)V

    return-void

    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzh:Lcom/google/android/gms/internal/ads/zzaat;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaat;->zzc(Lcom/google/android/gms/internal/ads/zzil;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzh:Lcom/google/android/gms/internal/ads/zzaat;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdu;->zza:Lcom/google/android/gms/internal/ads/zzdu;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaat;->zzt(Lcom/google/android/gms/internal/ads/zzdu;)V

    throw v0
.end method

.method protected final zzx(ZZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzss;->zzx(ZZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzm()Lcom/google/android/gms/internal/ads/zzmc;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzh:Lcom/google/android/gms/internal/ads/zzaat;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaat;->zze(Lcom/google/android/gms/internal/ads/zzil;)V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzq:I

    return-void
.end method

.method protected final zzy(JZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzI:Lcom/google/android/gms/internal/ads/zzaay;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaay;->zzd()V

    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzss;->zzy(JZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzg:Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaaz;->zzi()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzg:Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaq()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaaz;->zzf(J)V

    :cond_1b
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzzw;->zzaU(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzf:Lcom/google/android/gms/internal/ads/zzaai;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaai;->zzf()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzx:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzr:J

    const/4 p3, 0x0

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzv:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzs:J

    return-void
.end method

.method protected final zzz()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzg:Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaaz;->zzi()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzg:Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaaz;->zzd()V

    :cond_d
    return-void
.end method

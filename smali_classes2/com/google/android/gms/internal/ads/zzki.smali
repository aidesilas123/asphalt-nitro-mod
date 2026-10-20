###### Class com.google.android.gms.internal.ads.zzki (com.google.android.gms.internal.ads.zzki)
.class final Lcom/google/android/gms/internal/ads/zzki;
.super Lcom/google/android/gms/internal/ads/zzm;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzjd;


# static fields
.field public static final synthetic zzd:I


# instance fields
.field private final zzA:Lcom/google/android/gms/internal/ads/zzmi;

.field private final zzB:J

.field private zzC:I

.field private zzD:I

.field private zzE:Z

.field private zzF:I

.field private zzG:Lcom/google/android/gms/internal/ads/zzmd;

.field private zzH:Lcom/google/android/gms/internal/ads/zzcn;

.field private zzI:Lcom/google/android/gms/internal/ads/zzby;

.field private zzJ:Lcom/google/android/gms/internal/ads/zzby;

.field private zzK:Lcom/google/android/gms/internal/ads/zzam;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzL:Lcom/google/android/gms/internal/ads/zzam;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzM:Landroid/media/AudioTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzN:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzO:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzP:I

.field private zzQ:Lcom/google/android/gms/internal/ads/zzfk;

.field private zzR:Lcom/google/android/gms/internal/ads/zzil;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzS:Lcom/google/android/gms/internal/ads/zzil;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzT:I

.field private zzU:Lcom/google/android/gms/internal/ads/zzk;

.field private zzV:F

.field private zzW:Z

.field private zzX:Lcom/google/android/gms/internal/ads/zzee;

.field private zzY:Z

.field private zzZ:Z

.field private zzaa:Lcom/google/android/gms/internal/ads/zzz;

.field private zzab:Lcom/google/android/gms/internal/ads/zzdu;

.field private zzac:Lcom/google/android/gms/internal/ads/zzby;

.field private zzad:Lcom/google/android/gms/internal/ads/zzls;

.field private zzae:I

.field private zzaf:J

.field private final zzag:Lcom/google/android/gms/internal/ads/zzje;

.field private zzah:Lcom/google/android/gms/internal/ads/zzwd;

.field final zzb:Lcom/google/android/gms/internal/ads/zzyf;

.field final zzc:Lcom/google/android/gms/internal/ads/zzcn;

.field private final zze:Lcom/google/android/gms/internal/ads/zzei;

.field private final zzf:Landroid/content/Context;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcr;

.field private final zzh:[Lcom/google/android/gms/internal/ads/zzlz;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzye;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzeq;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzkt;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzew;

.field private final zzm:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzcx;

.field private final zzo:Ljava/util/List;

.field private final zzp:Z

.field private final zzq:Lcom/google/android/gms/internal/ads/zzuj;

.field private final zzr:Lcom/google/android/gms/internal/ads/zzmj;

.field private final zzs:Landroid/os/Looper;

.field private final zzt:Lcom/google/android/gms/internal/ads/zzym;

.field private final zzu:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzv:Lcom/google/android/gms/internal/ads/zzke;

.field private final zzw:Lcom/google/android/gms/internal/ads/zzkg;

.field private final zzx:Lcom/google/android/gms/internal/ads/zzif;

.field private final zzy:Lcom/google/android/gms/internal/ads/zzij;

.field private final zzz:Lcom/google/android/gms/internal/ads/zzmh;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "media3.exoplayer"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbt;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzjc;Lcom/google/android/gms/internal/ads/zzcr;)V
    .registers 45
    .param p2    # Lcom/google/android/gms/internal/ads/zzcr;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzm;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzei;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzeg;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzei;-><init>(Lcom/google/android/gms/internal/ads/zzeg;)V

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzki;->zze:Lcom/google/android/gms/internal/ads/zzei;

    :try_start_12
    const-string v4, "ExoPlayerImpl"

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/ads/zzfs;->zze:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Init "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " [AndroidXMedia3/1.2.0-beta01] ["

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzez;->zze(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzjc;->zza:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzki;->zzf:Landroid/content/Context;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjc;->zzh:Lcom/google/android/gms/internal/ads/zzftn;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzjc;->zzb:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/zzftn;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzki;->zzr:Lcom/google/android/gms/internal/ads/zzmj;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzjc;->zzj:Lcom/google/android/gms/internal/ads/zzk;

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzki;->zzU:Lcom/google/android/gms/internal/ads/zzk;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzjc;->zzk:I

    iput v6, v1, Lcom/google/android/gms/internal/ads/zzki;->zzP:I

    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzki;->zzW:Z

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzjc;->zzo:J

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/zzki;->zzB:J

    new-instance v15, Lcom/google/android/gms/internal/ads/zzke;

    const/4 v8, 0x0

    invoke-direct {v15, v1, v8}, Lcom/google/android/gms/internal/ads/zzke;-><init>(Lcom/google/android/gms/internal/ads/zzki;Lcom/google/android/gms/internal/ads/zzkd;)V

    iput-object v15, v1, Lcom/google/android/gms/internal/ads/zzki;->zzv:Lcom/google/android/gms/internal/ads/zzke;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzkg;

    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/ads/zzkg;-><init>(Lcom/google/android/gms/internal/ads/zzkf;)V

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzki;->zzw:Lcom/google/android/gms/internal/ads/zzkg;

    new-instance v14, Landroid/os/Handler;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzjc;->zzi:Landroid/os/Looper;

    invoke-direct {v14, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzjc;->zzc:Lcom/google/android/gms/internal/ads/zzfuo;

    check-cast v9, Lcom/google/android/gms/internal/ads/zziv;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zziv;->zza:Lcom/google/android/gms/internal/ads/zzcgf;

    move-object v10, v14

    move-object v11, v15

    move-object v12, v15

    move-object v13, v15

    move-object/from16 v26, v14

    move-object v14, v15

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzcgf;->zza(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzaau;Lcom/google/android/gms/internal/ads/zzpo;Lcom/google/android/gms/internal/ads/zzwo;Lcom/google/android/gms/internal/ads/zztk;)[Lcom/google/android/gms/internal/ads/zzlz;

    move-result-object v9

    iput-object v9, v1, Lcom/google/android/gms/internal/ads/zzki;->zzh:[Lcom/google/android/gms/internal/ads/zzlz;

    array-length v10, v9

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzjc;->zze:Lcom/google/android/gms/internal/ads/zzfuo;

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzfuo;->zza()Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Lcom/google/android/gms/internal/ads/zzye;

    iput-object v12, v1, Lcom/google/android/gms/internal/ads/zzki;->zzi:Lcom/google/android/gms/internal/ads/zzye;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzjc;->zzd:Lcom/google/android/gms/internal/ads/zzfuo;

    check-cast v10, Lcom/google/android/gms/internal/ads/zziw;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zziw;->zza:Landroid/content/Context;

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzjc;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzuj;

    move-result-object v10

    iput-object v10, v1, Lcom/google/android/gms/internal/ads/zzki;->zzq:Lcom/google/android/gms/internal/ads/zzuj;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzjc;->zzg:Lcom/google/android/gms/internal/ads/zzfuo;

    check-cast v10, Lcom/google/android/gms/internal/ads/zziz;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zziz;->zza:Landroid/content/Context;

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzyq;->zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzyq;

    move-result-object v11

    iput-object v11, v1, Lcom/google/android/gms/internal/ads/zzki;->zzt:Lcom/google/android/gms/internal/ads/zzym;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzjc;->zzl:Z

    iput-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzki;->zzp:Z

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzjc;->zzm:Lcom/google/android/gms/internal/ads/zzmd;

    iput-object v10, v1, Lcom/google/android/gms/internal/ads/zzki;->zzG:Lcom/google/android/gms/internal/ads/zzmd;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzjc;->zzi:Landroid/os/Looper;

    iput-object v10, v1, Lcom/google/android/gms/internal/ads/zzki;->zzs:Landroid/os/Looper;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzjc;->zzb:Lcom/google/android/gms/internal/ads/zzeg;

    iput-object v14, v1, Lcom/google/android/gms/internal/ads/zzki;->zzu:Lcom/google/android/gms/internal/ads/zzeg;

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzki;->zzg:Lcom/google/android/gms/internal/ads/zzcr;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzew;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzjy;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzjy;-><init>(Lcom/google/android/gms/internal/ads/zzki;)V

    invoke-direct {v13, v10, v14, v8}, Lcom/google/android/gms/internal/ads/zzew;-><init>(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzeu;)V

    iput-object v13, v1, Lcom/google/android/gms/internal/ads/zzki;->zzl:Lcom/google/android/gms/internal/ads/zzew;

    new-instance v8, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v8}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzki;->zzm:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzki;->zzo:Ljava/util/List;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzwd;

    move-object/from16 v17, v7

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/zzwd;-><init>(I)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzki;->zzah:Lcom/google/android/gms/internal/ads/zzwd;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzyf;

    array-length v7, v9

    const/4 v7, 0x2

    move-object/from16 v18, v8

    new-array v8, v7, [Lcom/google/android/gms/internal/ads/zzmc;

    move-object/from16 v19, v11

    new-array v11, v7, [Lcom/google/android/gms/internal/ads/zzxy;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzdn;->zza:Lcom/google/android/gms/internal/ads/zzdn;

    move-object/from16 v20, v13

    const/4 v13, 0x0

    invoke-direct {v6, v8, v11, v7, v13}, Lcom/google/android/gms/internal/ads/zzyf;-><init>([Lcom/google/android/gms/internal/ads/zzmc;[Lcom/google/android/gms/internal/ads/zzxy;Lcom/google/android/gms/internal/ads/zzdn;Ljava/lang/Object;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzki;->zzb:Lcom/google/android/gms/internal/ads/zzyf;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcx;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzcx;-><init>()V

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzki;->zzn:Lcom/google/android/gms/internal/ads/zzcx;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcl;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzcl;-><init>()V

    const/16 v8, 0x14

    new-array v11, v8, [I

    const/4 v13, 0x1

    const/16 v22, 0x0

    aput v13, v11, v22

    const/16 v21, 0x2

    aput v21, v11, v13

    const/4 v13, 0x3

    aput v13, v11, v21

    const/16 v23, 0xd

    aput v23, v11, v13

    const/16 v24, 0xe

    const/4 v13, 0x4

    aput v24, v11, v13

    const/16 v27, 0xf

    const/4 v13, 0x5

    aput v27, v11, v13

    const/16 v29, 0x10

    const/4 v13, 0x6

    aput v29, v11, v13

    const/16 v31, 0x11

    const/4 v13, 0x7

    aput v31, v11, v13

    const/16 v33, 0x12

    const/16 v13, 0x8

    aput v33, v11, v13

    const/16 v34, 0x13

    const/16 v13, 0x9

    aput v34, v11, v13

    const/16 v13, 0x1f

    const/16 v8, 0xa

    aput v13, v11, v8

    const/16 v36, 0xb

    const/16 v35, 0x14

    aput v35, v11, v36

    const/16 v35, 0xc

    const/16 v36, 0x1e

    aput v36, v11, v35

    const/16 v13, 0x15

    aput v13, v11, v23

    const/16 v23, 0x23

    aput v23, v11, v24

    const/16 v23, 0x16

    aput v23, v11, v27

    const/16 v23, 0x18

    aput v23, v11, v29

    const/16 v23, 0x1b

    aput v23, v11, v31

    const/16 v23, 0x1c

    aput v23, v11, v33

    const/16 v23, 0x20

    aput v23, v11, v34

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzcl;->zzc([I)Lcom/google/android/gms/internal/ads/zzcl;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzye;->zzm()Z

    const/16 v11, 0x1d

    const/4 v13, 0x1

    invoke-virtual {v7, v11, v13}, Lcom/google/android/gms/internal/ads/zzcl;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzcl;

    const/16 v11, 0x17

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v13}, Lcom/google/android/gms/internal/ads/zzcl;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzcl;

    const/16 v11, 0x19

    invoke-virtual {v7, v11, v13}, Lcom/google/android/gms/internal/ads/zzcl;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzcl;

    const/16 v11, 0x21

    invoke-virtual {v7, v11, v13}, Lcom/google/android/gms/internal/ads/zzcl;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzcl;

    const/16 v11, 0x1a

    invoke-virtual {v7, v11, v13}, Lcom/google/android/gms/internal/ads/zzcl;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzcl;

    const/16 v11, 0x22

    invoke-virtual {v7, v11, v13}, Lcom/google/android/gms/internal/ads/zzcl;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzcl;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzcl;->zze()Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object v7

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzki;->zzc:Lcom/google/android/gms/internal/ads/zzcn;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzcl;

    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzcl;-><init>()V

    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzcl;->zzb(Lcom/google/android/gms/internal/ads/zzcn;)Lcom/google/android/gms/internal/ads/zzcl;

    const/4 v7, 0x4

    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzcl;->zza(I)Lcom/google/android/gms/internal/ads/zzcl;

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/zzcl;->zza(I)Lcom/google/android/gms/internal/ads/zzcl;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzcl;->zze()Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object v11

    iput-object v11, v1, Lcom/google/android/gms/internal/ads/zzki;->zzH:Lcom/google/android/gms/internal/ads/zzcn;

    const/4 v11, 0x0

    invoke-interface {v14, v10, v11}, Lcom/google/android/gms/internal/ads/zzeg;->zzb(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzeq;

    move-result-object v13

    iput-object v13, v1, Lcom/google/android/gms/internal/ads/zzki;->zzj:Lcom/google/android/gms/internal/ads/zzeq;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzje;

    invoke-direct {v13, v1}, Lcom/google/android/gms/internal/ads/zzje;-><init>(Lcom/google/android/gms/internal/ads/zzki;)V

    iput-object v13, v1, Lcom/google/android/gms/internal/ads/zzki;->zzag:Lcom/google/android/gms/internal/ads/zzje;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzls;->zzg(Lcom/google/android/gms/internal/ads/zzyf;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v7

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    invoke-interface {v5, v2, v10}, Lcom/google/android/gms/internal/ads/zzmj;->zzR(Lcom/google/android/gms/internal/ads/zzcr;Landroid/os/Looper;)V

    sget v2, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v7, 0x1f

    if-ge v2, v7, :cond_1cd

    new-instance v7, Lcom/google/android/gms/internal/ads/zzov;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzov;-><init>()V

    :goto_1ca
    move-object/from16 v24, v7

    goto :goto_1d4

    :cond_1cd
    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzjc;->zzp:Z

    invoke-static {v4, v1, v7}, Lcom/google/android/gms/internal/ads/zzjz;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzki;Z)Lcom/google/android/gms/internal/ads/zzov;

    move-result-object v7

    goto :goto_1ca

    :goto_1d4
    new-instance v7, Lcom/google/android/gms/internal/ads/zzkt;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzjc;->zzf:Lcom/google/android/gms/internal/ads/zzfuo;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzfuo;->zza()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v27, v8

    check-cast v27, Lcom/google/android/gms/internal/ads/zzkw;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzki;->zzG:Lcom/google/android/gms/internal/ads/zzmd;

    move-object/from16 v29, v14

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzjc;->zzr:Lcom/google/android/gms/internal/ads/zzio;

    move-object/from16 v33, v14

    move-object/from16 v31, v15

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzjc;->zzn:J

    const/16 v34, 0x0

    move-object/from16 v23, v13

    move-object/from16 v37, v20

    move/from16 v13, v34

    const/16 v20, 0x0

    move-object/from16 v22, v29

    move-object/from16 v28, v33

    move-wide/from16 v29, v14

    move/from16 v14, v20

    const/16 v25, 0x0

    move-object/from16 p2, v7

    move-object/from16 v15, v17

    move-object/from16 v16, v8

    move-object/from16 v11, v18

    move-object v8, v9

    move-object v9, v12

    move-object/from16 v32, v10

    move-object v10, v6

    move-object/from16 v38, v11

    move-object/from16 v6, v19

    move-object/from16 v11, v27

    move-object/from16 v39, v12

    move-object v12, v6

    move-object/from16 v41, v15

    move-object/from16 v40, v31

    move-object v15, v5

    move-object/from16 v17, v28

    move-wide/from16 v18, v29

    move-object/from16 v21, v32

    invoke-direct/range {v7 .. v25}, Lcom/google/android/gms/internal/ads/zzkt;-><init>([Lcom/google/android/gms/internal/ads/zzlz;Lcom/google/android/gms/internal/ads/zzye;Lcom/google/android/gms/internal/ads/zzyf;Lcom/google/android/gms/internal/ads/zzkw;Lcom/google/android/gms/internal/ads/zzym;IZLcom/google/android/gms/internal/ads/zzmj;Lcom/google/android/gms/internal/ads/zzmd;Lcom/google/android/gms/internal/ads/zzio;JZLandroid/os/Looper;Lcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzje;Lcom/google/android/gms/internal/ads/zzov;Landroid/os/Looper;)V

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzki;->zzk:Lcom/google/android/gms/internal/ads/zzkt;

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v1, Lcom/google/android/gms/internal/ads/zzki;->zzV:F

    sget-object v7, Lcom/google/android/gms/internal/ads/zzby;->zza:Lcom/google/android/gms/internal/ads/zzby;

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzki;->zzI:Lcom/google/android/gms/internal/ads/zzby;

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzki;->zzJ:Lcom/google/android/gms/internal/ads/zzby;

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzki;->zzac:Lcom/google/android/gms/internal/ads/zzby;

    const/4 v7, -0x1

    iput v7, v1, Lcom/google/android/gms/internal/ads/zzki;->zzae:I

    const/16 v7, 0x15

    if-lt v2, v7, :cond_24d

    const-string v2, "audio"

    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    if-nez v2, :cond_245

    const/4 v2, -0x1

    goto :goto_249

    :cond_245
    invoke-virtual {v2}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result v2

    :goto_249
    iput v2, v1, Lcom/google/android/gms/internal/ads/zzki;->zzT:I

    const/4 v2, 0x0

    goto :goto_27d

    :cond_24d
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzki;->zzM:Landroid/media/AudioTrack;

    if-eqz v2, :cond_260

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v2

    if-eqz v2, :cond_260

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzki;->zzM:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzki;->zzM:Landroid/media/AudioTrack;

    goto :goto_261

    :cond_260
    const/4 v2, 0x0

    :goto_261
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzki;->zzM:Landroid/media/AudioTrack;

    if-nez v4, :cond_275

    new-instance v4, Landroid/media/AudioTrack;

    const/4 v8, 0x3

    const/16 v9, 0xfa0

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v4

    invoke-direct/range {v7 .. v14}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzki;->zzM:Landroid/media/AudioTrack;

    :cond_275
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzki;->zzM:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v4

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzki;->zzT:I

    :goto_27d
    sget-object v4, Lcom/google/android/gms/internal/ads/zzee;->zza:Lcom/google/android/gms/internal/ads/zzee;

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzki;->zzX:Lcom/google/android/gms/internal/ads/zzee;

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzki;->zzY:Z
    :try_end_284
    .catchall {:try_start_12 .. :try_end_284} :catchall_32a

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v37

    :try_start_289
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzew;->zzb(Ljava/lang/Object;)V

    new-instance v7, Landroid/os/Handler;

    move-object/from16 v8, v32

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzym;->zze(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzyl;)V

    move-object/from16 v6, v38

    move-object/from16 v5, v40

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/google/android/gms/internal/ads/zzif;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzjc;->zza:Landroid/content/Context;

    move-object/from16 v8, v26

    invoke-direct {v6, v7, v8, v5}, Lcom/google/android/gms/internal/ads/zzif;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzie;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzki;->zzx:Lcom/google/android/gms/internal/ads/zzif;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzij;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzjc;->zza:Landroid/content/Context;

    invoke-direct {v6, v7, v8, v5}, Lcom/google/android/gms/internal/ads/zzij;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzii;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzki;->zzy:Lcom/google/android/gms/internal/ads/zzij;

    invoke-static {v2, v2}, Lcom/google/android/gms/internal/ads/zzfs;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/gms/internal/ads/zzmh;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjc;->zza:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/ads/zzmh;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzki;->zzz:Lcom/google/android/gms/internal/ads/zzmh;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzmi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzjc;->zza:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzmi;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzki;->zzA:Lcom/google/android/gms/internal/ads/zzmi;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzx;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzx;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzx;->zza()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzki;->zzaa:Lcom/google/android/gms/internal/ads/zzz;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdu;->zza:Lcom/google/android/gms/internal/ads/zzdu;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzki;->zzab:Lcom/google/android/gms/internal/ads/zzdu;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfk;->zza:Lcom/google/android/gms/internal/ads/zzfk;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzki;->zzQ:Lcom/google/android/gms/internal/ads/zzfk;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzki;->zzU:Lcom/google/android/gms/internal/ads/zzk;

    move-object/from16 v10, v39

    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/zzye;->zzj(Lcom/google/android/gms/internal/ads/zzk;)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzki;->zzT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xa

    invoke-direct {v1, v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzki;->zzag(IILjava/lang/Object;)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzki;->zzT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x2

    invoke-direct {v1, v5, v2, v0}, Lcom/google/android/gms/internal/ads/zzki;->zzag(IILjava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzki;->zzU:Lcom/google/android/gms/internal/ads/zzk;

    const/4 v2, 0x3

    invoke-direct {v1, v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzki;->zzag(IILjava/lang/Object;)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzki;->zzP:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    invoke-direct {v1, v5, v2, v0}, Lcom/google/android/gms/internal/ads/zzki;->zzag(IILjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x5

    invoke-direct {v1, v5, v2, v0}, Lcom/google/android/gms/internal/ads/zzki;->zzag(IILjava/lang/Object;)V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzki;->zzW:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0x9

    invoke-direct {v1, v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzki;->zzag(IILjava/lang/Object;)V

    move-object/from16 v0, v41

    const/4 v2, 0x7

    invoke-direct {v1, v5, v2, v0}, Lcom/google/android/gms/internal/ads/zzki;->zzag(IILjava/lang/Object;)V

    const/16 v2, 0x8

    const/4 v4, 0x6

    invoke-direct {v1, v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzki;->zzag(IILjava/lang/Object;)V
    :try_end_326
    .catchall {:try_start_289 .. :try_end_326} :catchall_32a

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzei;->zze()Z

    return-void

    :catchall_32a
    move-exception v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzki;->zze:Lcom/google/android/gms/internal/ads/zzei;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzei;->zze()Z

    throw v0
.end method

.method static bridge synthetic zzC(ZI)I
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzki;->zzX(ZI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic zzD(Lcom/google/android/gms/internal/ads/zzki;)Lcom/google/android/gms/internal/ads/zzew;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzl:Lcom/google/android/gms/internal/ads/zzew;

    return-object p0
.end method

.method static bridge synthetic zzF(Lcom/google/android/gms/internal/ads/zzki;)Lcom/google/android/gms/internal/ads/zzmj;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzr:Lcom/google/android/gms/internal/ads/zzmj;

    return-object p0
.end method

.method static bridge synthetic zzG(Lcom/google/android/gms/internal/ads/zzki;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzN:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic zzH(Lcom/google/android/gms/internal/ads/zzki;Lcom/google/android/gms/internal/ads/zzil;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzS:Lcom/google/android/gms/internal/ads/zzil;

    return-void
.end method

.method static bridge synthetic zzI(Lcom/google/android/gms/internal/ads/zzki;Lcom/google/android/gms/internal/ads/zzam;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzL:Lcom/google/android/gms/internal/ads/zzam;

    return-void
.end method

.method static bridge synthetic zzJ(Lcom/google/android/gms/internal/ads/zzki;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzW:Z

    return-void
.end method

.method static bridge synthetic zzK(Lcom/google/android/gms/internal/ads/zzki;Lcom/google/android/gms/internal/ads/zzil;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzR:Lcom/google/android/gms/internal/ads/zzil;

    return-void
.end method

.method static bridge synthetic zzL(Lcom/google/android/gms/internal/ads/zzki;Lcom/google/android/gms/internal/ads/zzam;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzK:Lcom/google/android/gms/internal/ads/zzam;

    return-void
.end method

.method static bridge synthetic zzM(Lcom/google/android/gms/internal/ads/zzki;Lcom/google/android/gms/internal/ads/zzdu;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzab:Lcom/google/android/gms/internal/ads/zzdu;

    return-void
.end method

.method static bridge synthetic zzN(Lcom/google/android/gms/internal/ads/zzki;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzki;->zzaf(II)V

    return-void
.end method

.method static bridge synthetic zzO(Lcom/google/android/gms/internal/ads/zzki;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzah()V

    return-void
.end method

.method static bridge synthetic zzP(Lcom/google/android/gms/internal/ads/zzki;Landroid/graphics/SurfaceTexture;)V
    .registers 3

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzki;->zzai(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzO:Landroid/view/Surface;

    return-void
.end method

.method static bridge synthetic zzQ(Lcom/google/android/gms/internal/ads/zzki;Ljava/lang/Object;)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzki;->zzai(Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic zzR(Lcom/google/android/gms/internal/ads/zzki;ZII)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzki;->zzak(ZII)V

    return-void
.end method

.method static bridge synthetic zzV(Lcom/google/android/gms/internal/ads/zzki;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzW:Z

    return p0
.end method

.method private final zzW(Lcom/google/android/gms/internal/ads/zzls;)I
    .registers 4

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v0

    if-eqz v0, :cond_b

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzae:I

    return p1

    :cond_b
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzn:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzcx;->zzd:I

    return p1
.end method

.method private static zzX(ZI)I
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_7

    if-eq p1, v0, :cond_7

    const/4 p0, 0x2

    return p0

    :cond_7
    return v0
.end method

.method private final zzY(Lcom/google/android/gms/internal/ads/zzls;)J
    .registers 9

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzuk;->zzb()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzn:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzls;->zzc:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_33

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzki;->zzW(Lcom/google/android/gms/internal/ads/zzls;)I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzm;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    invoke-virtual {v0, p1, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzda;->zze(ILcom/google/android/gms/internal/ads/zzcz;J)Lcom/google/android/gms/internal/ads/zzcz;

    move-result-object p1

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzcz;->zzn:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzfs;->zzt(J)J

    move-result-wide v0

    goto :goto_3e

    :cond_33
    sget p1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->zzt(J)J

    move-result-wide v0

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzfs;->zzt(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_3e
    return-wide v0

    :cond_3f
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzki;->zzZ(Lcom/google/android/gms/internal/ads/zzls;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->zzt(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzZ(Lcom/google/android/gms/internal/ads/zzls;)J
    .registers 5

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzaf:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->zzq(J)J

    move-result-wide v0

    return-wide v0

    :cond_f
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzls;->zzr:J

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzuk;->zzb()Z

    move-result v2

    if-eqz v2, :cond_1a

    return-wide v0

    :cond_1a
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzki;->zzab(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzuk;J)J

    return-wide v0
.end method

.method private static zzaa(Lcom/google/android/gms/internal/ads/zzls;)J
    .registers 8

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcz;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcx;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcx;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzls;->zzc:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_2a

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzcx;->zzd:I

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzda;->zze(ILcom/google/android/gms/internal/ads/zzcz;J)Lcom/google/android/gms/internal/ads/zzcz;

    move-result-object p0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzn:J

    :cond_2a
    return-wide v2
.end method

.method private final zzab(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzuk;J)J
    .registers 6

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzn:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    return-wide p3
.end method

.method private final zzac(Lcom/google/android/gms/internal/ads/zzda;IJ)Landroid/util/Pair;
    .registers 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_18

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzae:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, p1

    if-nez v0, :cond_14

    move-wide p3, v1

    :cond_14
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzki;->zzaf:J

    const/4 p1, 0x0

    return-object p1

    :cond_18
    const/4 v0, -0x1

    if-eq p2, v0, :cond_21

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzda;->zzc()I

    move-result v0

    if-lt p2, v0, :cond_32

    :cond_21
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzda;->zzg(Z)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzm;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    invoke-virtual {p1, p2, p3, v1, v2}, Lcom/google/android/gms/internal/ads/zzda;->zze(ILcom/google/android/gms/internal/ads/zzcz;J)Lcom/google/android/gms/internal/ads/zzcz;

    move-result-object p3

    iget-wide p3, p3, Lcom/google/android/gms/internal/ads/zzcz;->zzn:J

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfs;->zzt(J)J

    move-result-wide p3

    :cond_32
    move v3, p2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzm;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzn:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/zzfs;->zzq(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzda;->zzl(Lcom/google/android/gms/internal/ads/zzcz;Lcom/google/android/gms/internal/ads/zzcx;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final zzad(Lcom/google/android/gms/internal/ads/zzls;Lcom/google/android/gms/internal/ads/zzda;Landroid/util/Pair;)Lcom/google/android/gms/internal/ads/zzls;
    .registers 26
    .param p3    # Landroid/util/Pair;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_13

    if-eqz v2, :cond_11

    goto :goto_13

    :cond_11
    const/4 v3, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v3, 0x1

    :goto_14
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzd(Z)V

    move-object/from16 v3, p1

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzki;->zzY(Lcom/google/android/gms/internal/ads/zzls;)J

    move-result-wide v7

    invoke-virtual/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/zzls;->zzf(Lcom/google/android/gms/internal/ads/zzda;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzls;->zzh()Lcom/google/android/gms/internal/ads/zzuk;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzki;->zzaf:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfs;->zzq(J)J

    move-result-wide v15

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzki;->zzb:Lcom/google/android/gms/internal/ads/zzyf;

    const-wide/16 v17, 0x0

    sget-object v19, Lcom/google/android/gms/internal/ads/zzwl;->zza:Lcom/google/android/gms/internal/ads/zzwl;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwu;->zzl()Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v21

    move-object v10, v1

    move-wide v11, v15

    move-wide v13, v15

    move-object/from16 v20, v2

    invoke-virtual/range {v9 .. v21}, Lcom/google/android/gms/internal/ads/zzls;->zzb(Lcom/google/android/gms/internal/ads/zzuk;JJJJLcom/google/android/gms/internal/ads/zzwl;Lcom/google/android/gms/internal/ads/zzyf;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzls;->zza(Lcom/google/android/gms/internal/ads/zzuk;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v1

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzls;->zzr:J

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzls;->zzp:J

    return-object v1

    :cond_4f
    iget-object v3, v9, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    sget v10, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v5

    if-eqz v10, :cond_68

    new-instance v11, Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v12, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-wide/16 v13, -0x1

    invoke-direct {v11, v12, v13, v14}, Lcom/google/android/gms/internal/ads/zzuk;-><init>(Ljava/lang/Object;J)V

    goto :goto_6a

    :cond_68
    iget-object v11, v9, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    :goto_6a
    move-object v15, v11

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzfs;->zzq(J)J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v2

    if-nez v2, :cond_82

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzki;->zzn:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v6, v3, v2}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    :cond_82
    if-nez v10, :cond_125

    cmp-long v2, v13, v7

    if-gez v2, :cond_8a

    goto/16 :goto_125

    :cond_8a
    if-nez v2, :cond_ec

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzls;->zzk:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzda;->zza(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_ab

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzki;->zzn:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzda;->zzd(ILcom/google/android/gms/internal/ads/zzcx;Z)Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzcx;->zzd:I

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzki;->zzn:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v3

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzcx;->zzd:I

    if-eq v2, v3, :cond_15c

    :cond_ab
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzki;->zzn:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzuk;->zzb()Z

    move-result v1

    if-eqz v1, :cond_c3

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzki;->zzn:Lcom/google/android/gms/internal/ads/zzcx;

    iget v2, v15, Lcom/google/android/gms/internal/ads/zzuk;->zzb:I

    iget v3, v15, Lcom/google/android/gms/internal/ads/zzuk;->zzc:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcx;->zzh(II)J

    move-result-wide v1

    goto :goto_c7

    :cond_c3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzki;->zzn:Lcom/google/android/gms/internal/ads/zzcx;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzcx;->zze:J

    :goto_c7
    iget-wide v11, v9, Lcom/google/android/gms/internal/ads/zzls;->zzr:J

    iget-wide v13, v9, Lcom/google/android/gms/internal/ads/zzls;->zzr:J

    iget-wide v3, v9, Lcom/google/android/gms/internal/ads/zzls;->zzd:J

    iget-wide v5, v9, Lcom/google/android/gms/internal/ads/zzls;->zzr:J

    sub-long v17, v1, v5

    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzls;->zzh:Lcom/google/android/gms/internal/ads/zzwl;

    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zzls;->zzi:Lcom/google/android/gms/internal/ads/zzyf;

    iget-object v7, v9, Lcom/google/android/gms/internal/ads/zzls;->zzj:Ljava/util/List;

    move-object v10, v15

    move-object v8, v15

    move-wide v15, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-virtual/range {v9 .. v21}, Lcom/google/android/gms/internal/ads/zzls;->zzb(Lcom/google/android/gms/internal/ads/zzuk;JJJJLcom/google/android/gms/internal/ads/zzwl;Lcom/google/android/gms/internal/ads/zzyf;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzls;->zza(Lcom/google/android/gms/internal/ads/zzuk;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v9

    iput-wide v1, v9, Lcom/google/android/gms/internal/ads/zzls;->zzp:J

    goto/16 :goto_15c

    :cond_ec
    move-object v1, v15

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzuk;->zzb()Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    const-wide/16 v2, 0x0

    iget-wide v4, v9, Lcom/google/android/gms/internal/ads/zzls;->zzq:J

    sub-long v6, v13, v7

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    iget-wide v2, v9, Lcom/google/android/gms/internal/ads/zzls;->zzp:J

    iget-object v4, v9, Lcom/google/android/gms/internal/ads/zzls;->zzk:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzuk;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10e

    add-long v2, v13, v17

    :cond_10e
    iget-object v4, v9, Lcom/google/android/gms/internal/ads/zzls;->zzh:Lcom/google/android/gms/internal/ads/zzwl;

    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzls;->zzi:Lcom/google/android/gms/internal/ads/zzyf;

    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zzls;->zzj:Ljava/util/List;

    move-object v10, v1

    move-wide v11, v13

    move-wide v7, v13

    move-wide v15, v7

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    invoke-virtual/range {v9 .. v21}, Lcom/google/android/gms/internal/ads/zzls;->zzb(Lcom/google/android/gms/internal/ads/zzuk;JJJJLcom/google/android/gms/internal/ads/zzwl;Lcom/google/android/gms/internal/ads/zzyf;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v9

    iput-wide v2, v9, Lcom/google/android/gms/internal/ads/zzls;->zzp:J

    goto :goto_15c

    :cond_125
    :goto_125
    move-wide v7, v13

    move-object v1, v15

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzuk;->zzb()Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    if-eqz v10, :cond_134

    sget-object v2, Lcom/google/android/gms/internal/ads/zzwl;->zza:Lcom/google/android/gms/internal/ads/zzwl;

    goto :goto_136

    :cond_134
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzls;->zzh:Lcom/google/android/gms/internal/ads/zzwl;

    :goto_136
    move-object/from16 v19, v2

    if-eqz v10, :cond_13d

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzki;->zzb:Lcom/google/android/gms/internal/ads/zzyf;

    goto :goto_13f

    :cond_13d
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzls;->zzi:Lcom/google/android/gms/internal/ads/zzyf;

    :goto_13f
    move-object/from16 v20, v2

    if-eqz v10, :cond_148

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwu;->zzl()Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v2

    goto :goto_14a

    :cond_148
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzls;->zzj:Ljava/util/List;

    :goto_14a
    move-object/from16 v21, v2

    const-wide/16 v17, 0x0

    move-object v10, v1

    move-wide v11, v7

    move-wide v13, v7

    move-wide v15, v7

    invoke-virtual/range {v9 .. v21}, Lcom/google/android/gms/internal/ads/zzls;->zzb(Lcom/google/android/gms/internal/ads/zzuk;JJJJLcom/google/android/gms/internal/ads/zzwl;Lcom/google/android/gms/internal/ads/zzyf;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzls;->zza(Lcom/google/android/gms/internal/ads/zzuk;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v9

    iput-wide v7, v9, Lcom/google/android/gms/internal/ads/zzls;->zzp:J

    :cond_15c
    :goto_15c
    return-object v9
.end method

.method private final zzae(Lcom/google/android/gms/internal/ads/zzlu;)Lcom/google/android/gms/internal/ads/zzlv;
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzki;->zzW(Lcom/google/android/gms/internal/ads/zzls;)I

    move-result v0

    new-instance v8, Lcom/google/android/gms/internal/ads/zzlv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x0

    const/4 v5, 0x0

    goto :goto_13

    :cond_12
    move v5, v0

    :goto_13
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzki;->zzu:Lcom/google/android/gms/internal/ads/zzeg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzk:Lcom/google/android/gms/internal/ads/zzkt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkt;->zzb()Landroid/os/Looper;

    move-result-object v7

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzlv;-><init>(Lcom/google/android/gms/internal/ads/zzlt;Lcom/google/android/gms/internal/ads/zzlu;Lcom/google/android/gms/internal/ads/zzda;ILcom/google/android/gms/internal/ads/zzeg;Landroid/os/Looper;)V

    return-object v8
.end method

.method private final zzaf(II)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzQ:Lcom/google/android/gms/internal/ads/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfk;->zzb()I

    move-result v0

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzQ:Lcom/google/android/gms/internal/ads/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfk;->zza()I

    move-result v0

    if-eq p2, v0, :cond_11

    goto :goto_12

    :cond_11
    return-void

    :cond_12
    :goto_12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfk;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfk;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzQ:Lcom/google/android/gms/internal/ads/zzfk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzl:Lcom/google/android/gms/internal/ads/zzew;

    const/16 v1, 0x18

    new-instance v2, Lcom/google/android/gms/internal/ads/zzjv;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzjv;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzew;->zzd(ILcom/google/android/gms/internal/ads/zzet;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzew;->zzc()V

    const/4 v0, 0x2

    const/16 v1, 0xe

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfk;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzfk;-><init>(II)V

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzki;->zzag(IILjava/lang/Object;)V

    return-void
.end method

.method private final zzag(IILjava/lang/Object;)V
    .registers 8
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzh:[Lcom/google/android/gms/internal/ads/zzlz;

    array-length v1, v0

    const/4 v1, 0x0

    :goto_4
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1f

    aget-object v2, v0, v1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzlz;->zzb()I

    move-result v3

    if-ne v3, p1, :cond_1c

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzki;->zzae(Lcom/google/android/gms/internal/ads/zzlu;)Lcom/google/android/gms/internal/ads/zzlv;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzlv;->zzf(I)Lcom/google/android/gms/internal/ads/zzlv;

    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/zzlv;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzlv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzlv;->zzd()Lcom/google/android/gms/internal/ads/zzlv;

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1f
    return-void
.end method

.method private final zzah()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzy:Lcom/google/android/gms/internal/ads/zzij;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzV:F

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzij;->zza()F

    move-result v0

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzki;->zzag(IILjava/lang/Object;)V

    return-void
.end method

.method private final zzai(Ljava/lang/Object;)V
    .registers 10
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzh:[Lcom/google/android/gms/internal/ads/zzlz;

    array-length v2, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_29

    aget-object v6, v1, v3

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzlz;->zzb()I

    move-result v7

    if-ne v7, v4, :cond_26

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ads/zzki;->zzae(Lcom/google/android/gms/internal/ads/zzlu;)Lcom/google/android/gms/internal/ads/zzlv;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzlv;->zzf(I)Lcom/google/android/gms/internal/ads/zzlv;

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/zzlv;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzlv;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzlv;->zzd()Lcom/google/android/gms/internal/ads/zzlv;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzN:Ljava/lang/Object;

    if-eqz v1, :cond_5a

    if-eq v1, p1, :cond_5a

    :try_start_2f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzlv;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzki;->zzB:J

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzlv;->zzi(J)Z
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_44} :catch_47
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2f .. :try_end_44} :catch_45

    goto :goto_33

    :catch_45
    const/4 v2, 0x1

    goto :goto_4e

    :catch_47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_4e
    :goto_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzN:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzO:Landroid/view/Surface;

    if-ne v0, v1, :cond_5a

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzO:Landroid/view/Surface;

    :cond_5a
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzN:Ljava/lang/Object;

    if-eqz v2, :cond_6d

    new-instance p1, Lcom/google/android/gms/internal/ads/zzku;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzku;-><init>(I)V

    const/16 v0, 0x3eb

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzit;->zzd(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzit;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzki;->zzaj(Lcom/google/android/gms/internal/ads/zzit;)V

    :cond_6d
    return-void
.end method

.method private final zzaj(Lcom/google/android/gms/internal/ads/zzit;)V
    .registers 14
    .param p1    # Lcom/google/android/gms/internal/ads/zzit;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzls;->zza(Lcom/google/android/gms/internal/ads/zzuk;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v0

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zzr:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zzp:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zzq:J

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzls;->zze(I)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v0

    if-eqz p1, :cond_1b

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzls;->zzd(Lcom/google/android/gms/internal/ads/zzit;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v0

    :cond_1b
    move-object v3, v0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzC:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzC:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzk:Lcom/google/android/gms/internal/ads/zzkt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzkt;->zzn()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/zzki;->zzal(Lcom/google/android/gms/internal/ads/zzls;IIZIJIZ)V

    return-void
.end method

.method private final zzak(ZII)V
    .registers 14

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    const/4 v3, -0x1

    if-eq p2, v3, :cond_9

    const/4 v3, 0x1

    goto :goto_a

    :cond_9
    const/4 v3, 0x0

    :goto_a
    if-eqz v3, :cond_f

    if-eq p2, v1, :cond_f

    const/4 v2, 0x1

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzls;->zzl:Z

    if-ne v4, v3, :cond_1a

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzls;->zzm:I

    if-ne v4, v2, :cond_1a

    return-void

    :cond_1a
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzki;->zzC:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzki;->zzC:I

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzls;->zzc(ZI)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzk:Lcom/google/android/gms/internal/ads/zzkt;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzkt;->zzm(ZI)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move v3, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzki;->zzal(Lcom/google/android/gms/internal/ads/zzls;IIZIJIZ)V

    return-void
.end method

.method private final zzal(Lcom/google/android/gms/internal/ads/zzls;IIZIJIZ)V
    .registers 52

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzda;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v8

    const/4 v10, 0x3

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    if-eqz v8, :cond_35

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v8

    if-eqz v8, :cond_35

    new-instance v6, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v6, v7, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4a

    :cond_35
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v9

    if-eq v8, v9, :cond_4f

    new-instance v6, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4a
    move-object v7, v6

    move/from16 v6, p4

    goto/16 :goto_da

    :cond_4f
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzki;->zzn:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v8

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzcx;->zzd:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzm;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    invoke-virtual {v6, v8, v9, v13, v14}, Lcom/google/android/gms/internal/ads/zzda;->zze(ILcom/google/android/gms/internal/ads/zzcz;J)Lcom/google/android/gms/internal/ads/zzcz;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzcz;->zzc:Ljava/lang/Object;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzki;->zzn:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v8

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzcx;->zzd:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzm;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    invoke-virtual {v7, v8, v9, v13, v14}, Lcom/google/android/gms/internal/ads/zzda;->zze(ILcom/google/android/gms/internal/ads/zzcz;J)Lcom/google/android/gms/internal/ads/zzcz;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzcz;->zzc:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a7

    if-eqz p4, :cond_88

    if-nez v2, :cond_85

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    goto :goto_94

    :cond_85
    const/4 v6, 0x1

    const/4 v7, 0x1

    goto :goto_8a

    :cond_88
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_8a
    if-eqz v6, :cond_91

    if-ne v2, v5, :cond_91

    move v6, v7

    const/4 v7, 0x2

    goto :goto_94

    :cond_91
    if-eqz v4, :cond_a1

    const/4 v7, 0x3

    :goto_94
    new-instance v8, Landroid/util/Pair;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v8, v9, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v8

    goto :goto_da

    :cond_a1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_a7
    if-eqz p4, :cond_cc

    if-nez v2, :cond_c9

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/zzuk;->zzd:J

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget-wide v8, v2, Lcom/google/android/gms/internal/ads/zzuk;->zzd:J

    cmp-long v2, v6, v8

    if-gez v2, :cond_c6

    new-instance v6, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v6

    const/4 v2, 0x0

    const/4 v6, 0x1

    goto :goto_da

    :cond_c6
    const/4 v2, 0x1

    const/4 v6, 0x0

    goto :goto_ce

    :cond_c9
    move v6, v2

    const/4 v2, 0x1

    goto :goto_ce

    :cond_cc
    move v6, v2

    const/4 v2, 0x0

    :goto_ce
    new-instance v7, Landroid/util/Pair;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v7, v8, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move/from16 v41, v6

    move v6, v2

    move/from16 v2, v41

    :goto_da
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v8, :cond_113

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v12

    if-nez v12, :cond_10d

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzki;->zzn:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v12, v9, v10}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v9

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzcx;->zzd:I

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzm;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    invoke-virtual {v10, v9, v12, v13, v14}, Lcom/google/android/gms/internal/ads/zzda;->zze(ILcom/google/android/gms/internal/ads/zzcz;J)Lcom/google/android/gms/internal/ads/zzcz;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzcz;->zze:Lcom/google/android/gms/internal/ads/zzbs;

    goto :goto_10e

    :cond_10d
    const/4 v9, 0x0

    :goto_10e
    sget-object v10, Lcom/google/android/gms/internal/ads/zzby;->zza:Lcom/google/android/gms/internal/ads/zzby;

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzki;->zzac:Lcom/google/android/gms/internal/ads/zzby;

    goto :goto_114

    :cond_113
    const/4 v9, 0x0

    :goto_114
    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzls;->zzj:Ljava/util/List;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzls;->zzj:Ljava/util/List;

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_150

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzki;->zzac:Lcom/google/android/gms/internal/ads/zzby;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzby;->zza()Lcom/google/android/gms/internal/ads/zzbw;

    move-result-object v10

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzls;->zzj:Ljava/util/List;

    const/4 v11, 0x0

    :goto_127
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-ge v11, v15, :cond_14a

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/ads/zzcb;

    const/4 v5, 0x0

    :goto_134
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzcb;->zza()I

    move-result v13

    if-ge v5, v13, :cond_144

    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/ads/zzcb;->zzb(I)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object v13

    invoke-interface {v13, v10}, Lcom/google/android/gms/internal/ads/zzca;->zza(Lcom/google/android/gms/internal/ads/zzbw;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_134

    :cond_144
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x1

    const-wide/16 v13, 0x0

    goto :goto_127

    :cond_14a
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzbw;->zzu()Lcom/google/android/gms/internal/ads/zzby;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzki;->zzac:Lcom/google/android/gms/internal/ads/zzby;

    :cond_150
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzki;->zzn()Lcom/google/android/gms/internal/ads/zzda;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v10

    if-eqz v10, :cond_15d

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzki;->zzac:Lcom/google/android/gms/internal/ads/zzby;

    goto :goto_17a

    :cond_15d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzki;->zzd()I

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzm;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    const-wide/16 v12, 0x0

    invoke-virtual {v5, v10, v11, v12, v13}, Lcom/google/android/gms/internal/ads/zzda;->zze(ILcom/google/android/gms/internal/ads/zzcz;J)Lcom/google/android/gms/internal/ads/zzcz;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzcz;->zze:Lcom/google/android/gms/internal/ads/zzbs;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzki;->zzac:Lcom/google/android/gms/internal/ads/zzby;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzby;->zza()Lcom/google/android/gms/internal/ads/zzbw;

    move-result-object v10

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzbs;->zzg:Lcom/google/android/gms/internal/ads/zzby;

    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/ads/zzbw;->zzb(Lcom/google/android/gms/internal/ads/zzby;)Lcom/google/android/gms/internal/ads/zzbw;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzbw;->zzu()Lcom/google/android/gms/internal/ads/zzby;

    move-result-object v5

    :goto_17a
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzki;->zzI:Lcom/google/android/gms/internal/ads/zzby;

    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/ads/zzby;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    xor-int/2addr v10, v11

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzki;->zzI:Lcom/google/android/gms/internal/ads/zzby;

    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/zzls;->zzl:Z

    iget-boolean v11, v1, Lcom/google/android/gms/internal/ads/zzls;->zzl:Z

    if-eq v5, v11, :cond_18c

    const/4 v11, 0x1

    goto :goto_18d

    :cond_18c
    const/4 v11, 0x0

    :goto_18d
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzls;->zze:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzls;->zze:I

    if-eq v5, v12, :cond_195

    const/4 v5, 0x1

    goto :goto_196

    :cond_195
    const/4 v5, 0x0

    :goto_196
    if-nez v5, :cond_19a

    if-eqz v11, :cond_19d

    :cond_19a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzki;->zzam()V

    :cond_19d
    iget-boolean v12, v3, Lcom/google/android/gms/internal/ads/zzls;->zzg:Z

    iget-boolean v13, v1, Lcom/google/android/gms/internal/ads/zzls;->zzg:Z

    if-eq v12, v13, :cond_1a5

    const/4 v12, 0x1

    goto :goto_1a6

    :cond_1a5
    const/4 v12, 0x0

    :goto_1a6
    if-eqz v4, :cond_1b5

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzki;->zzl:Lcom/google/android/gms/internal/ads/zzew;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzjg;

    move/from16 v14, p2

    invoke-direct {v13, v1, v14}, Lcom/google/android/gms/internal/ads/zzjg;-><init>(Lcom/google/android/gms/internal/ads/zzls;I)V

    const/4 v14, 0x0

    invoke-virtual {v4, v14, v13}, Lcom/google/android/gms/internal/ads/zzew;->zzd(ILcom/google/android/gms/internal/ads/zzet;)V

    :cond_1b5
    if-eqz v6, :cond_2e3

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcx;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzcx;-><init>()V

    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v13

    if-nez v13, :cond_1f6

    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    iget-object v14, v3, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v14, v13, v6}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    iget v14, v6, Lcom/google/android/gms/internal/ads/zzcx;->zzd:I

    iget-object v15, v3, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzda;->zza(Ljava/lang/Object;)I

    move-result v15

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    move-object/from16 p5, v13

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzm;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    move/from16 v17, v11

    move/from16 v18, v12

    const-wide/16 v11, 0x0

    invoke-virtual {v4, v14, v13, v11, v12}, Lcom/google/android/gms/internal/ads/zzda;->zze(ILcom/google/android/gms/internal/ads/zzcz;J)Lcom/google/android/gms/internal/ads/zzcz;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzcz;->zzc:Ljava/lang/Object;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzm;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzcz;->zze:Lcom/google/android/gms/internal/ads/zzbs;

    move-object/from16 v23, p5

    move-object/from16 v20, v4

    move-object/from16 v22, v11

    move/from16 v21, v14

    move/from16 v24, v15

    goto :goto_204

    :cond_1f6
    move/from16 v17, v11

    move/from16 v18, v12

    move/from16 v21, p8

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    :goto_204
    if-nez v2, :cond_22e

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzuk;->zzb()Z

    move-result v4

    if-eqz v4, :cond_21d

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget v11, v4, Lcom/google/android/gms/internal/ads/zzuk;->zzb:I

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzuk;->zzc:I

    invoke-virtual {v6, v11, v4}, Lcom/google/android/gms/internal/ads/zzcx;->zzh(II)J

    move-result-wide v11

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzki;->zzaa(Lcom/google/android/gms/internal/ads/zzls;)J

    move-result-wide v13

    goto :goto_240

    :cond_21d
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzuk;->zze:I

    const/4 v11, -0x1

    if-eq v4, v11, :cond_22b

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzki;->zzaa(Lcom/google/android/gms/internal/ads/zzls;)J

    move-result-wide v11

    goto :goto_23f

    :cond_22b
    iget-wide v11, v6, Lcom/google/android/gms/internal/ads/zzcx;->zze:J

    goto :goto_23f

    :cond_22e
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzuk;->zzb()Z

    move-result v4

    if-eqz v4, :cond_23d

    iget-wide v11, v3, Lcom/google/android/gms/internal/ads/zzls;->zzr:J

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzki;->zzaa(Lcom/google/android/gms/internal/ads/zzls;)J

    move-result-wide v13

    goto :goto_240

    :cond_23d
    iget-wide v11, v3, Lcom/google/android/gms/internal/ads/zzls;->zzr:J

    :goto_23f
    move-wide v13, v11

    :goto_240
    new-instance v4, Lcom/google/android/gms/internal/ads/zzcq;

    sget v6, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget v15, v6, Lcom/google/android/gms/internal/ads/zzuk;->zzb:I

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzuk;->zzc:I

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzfs;->zzt(J)J

    move-result-wide v25

    invoke-static {v13, v14}, Lcom/google/android/gms/internal/ads/zzfs;->zzt(J)J

    move-result-wide v27

    move-object/from16 v19, v4

    move/from16 v29, v15

    move/from16 v30, v6

    invoke-direct/range {v19 .. v30}, Lcom/google/android/gms/internal/ads/zzcq;-><init>(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzbs;Ljava/lang/Object;IJJII)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzki;->zzd()I

    move-result v6

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v11

    if-nez v11, :cond_29c

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzki;->zzn:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/zzda;->zza(Ljava/lang/Object;)I

    move-result v11

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzm;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    move/from16 p4, v11

    move-object v15, v12

    const-wide/16 v11, 0x0

    invoke-virtual {v13, v6, v14, v11, v12}, Lcom/google/android/gms/internal/ads/zzda;->zze(ILcom/google/android/gms/internal/ads/zzcz;J)Lcom/google/android/gms/internal/ads/zzcz;

    move-result-object v13

    iget-object v11, v13, Lcom/google/android/gms/internal/ads/zzcz;->zzc:Ljava/lang/Object;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzm;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzcz;->zze:Lcom/google/android/gms/internal/ads/zzbs;

    move/from16 v34, p4

    move-object/from16 v30, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v15

    goto :goto_2a4

    :cond_29c
    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, -0x1

    :goto_2a4
    invoke-static/range {p6 .. p7}, Lcom/google/android/gms/internal/ads/zzfs;->zzt(J)J

    move-result-wide v35

    new-instance v11, Lcom/google/android/gms/internal/ads/zzcq;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzuk;->zzb()Z

    move-result v12

    if-eqz v12, :cond_2c1

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzki;->zzaa(Lcom/google/android/gms/internal/ads/zzls;)J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzfs;->zzt(J)J

    move-result-wide v12

    move-wide/from16 v37, v12

    goto :goto_2c3

    :cond_2c1
    move-wide/from16 v37, v35

    :goto_2c3
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget v13, v12, Lcom/google/android/gms/internal/ads/zzuk;->zzb:I

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzuk;->zzc:I

    move-object/from16 v29, v11

    move/from16 v31, v6

    move/from16 v39, v13

    move/from16 v40, v12

    invoke-direct/range {v29 .. v40}, Lcom/google/android/gms/internal/ads/zzcq;-><init>(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzbs;Ljava/lang/Object;IJJII)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzki;->zzl:Lcom/google/android/gms/internal/ads/zzew;

    new-instance v12, Lcom/google/android/gms/internal/ads/zzjl;

    invoke-direct {v12, v2, v4, v11}, Lcom/google/android/gms/internal/ads/zzjl;-><init>(ILcom/google/android/gms/internal/ads/zzcq;Lcom/google/android/gms/internal/ads/zzcq;)V

    const/16 v2, 0xb

    invoke-virtual {v6, v2, v12}, Lcom/google/android/gms/internal/ads/zzew;->zzd(ILcom/google/android/gms/internal/ads/zzet;)V

    goto :goto_2e7

    :cond_2e3
    move/from16 v17, v11

    move/from16 v18, v12

    :goto_2e7
    if-eqz v8, :cond_2f5

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzki;->zzl:Lcom/google/android/gms/internal/ads/zzew;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzjn;

    invoke-direct {v4, v9, v7}, Lcom/google/android/gms/internal/ads/zzjn;-><init>(Lcom/google/android/gms/internal/ads/zzbs;I)V

    const/4 v11, 0x1

    invoke-virtual {v2, v11, v4}, Lcom/google/android/gms/internal/ads/zzew;->zzd(ILcom/google/android/gms/internal/ads/zzet;)V

    goto :goto_2f6

    :cond_2f5
    const/4 v11, 0x1

    :goto_2f6
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzls;->zzf:Lcom/google/android/gms/internal/ads/zzit;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzls;->zzf:Lcom/google/android/gms/internal/ads/zzit;

    const/16 v6, 0xa

    if-eq v2, v4, :cond_316

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzki;->zzl:Lcom/google/android/gms/internal/ads/zzew;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzjo;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzjo;-><init>(Lcom/google/android/gms/internal/ads/zzls;)V

    invoke-virtual {v2, v6, v4}, Lcom/google/android/gms/internal/ads/zzew;->zzd(ILcom/google/android/gms/internal/ads/zzet;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzls;->zzf:Lcom/google/android/gms/internal/ads/zzit;

    if-eqz v2, :cond_316

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzki;->zzl:Lcom/google/android/gms/internal/ads/zzew;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzjp;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzjp;-><init>(Lcom/google/android/gms/internal/ads/zzls;)V

    invoke-virtual {v2, v6, v4}, Lcom/google/android/gms/internal/ads/zzew;->zzd(ILcom/google/android/gms/internal/ads/zzet;)V

    :cond_316
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzls;->zzi:Lcom/google/android/gms/internal/ads/zzyf;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzls;->zzi:Lcom/google/android/gms/internal/ads/zzyf;

    if-eq v2, v4, :cond_32e

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzki;->zzi:Lcom/google/android/gms/internal/ads/zzye;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzyf;->zze:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzye;->zzp(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzki;->zzl:Lcom/google/android/gms/internal/ads/zzew;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzjq;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzjq;-><init>(Lcom/google/android/gms/internal/ads/zzls;)V

    const/4 v7, 0x2

    invoke-virtual {v2, v7, v4}, Lcom/google/android/gms/internal/ads/zzew;->zzd(ILcom/google/android/gms/internal/ads/zzet;)V

    :cond_32e
    if-eqz v10, :cond_33e

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzki;->zzI:Lcom/google/android/gms/internal/ads/zzby;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzki;->zzl:Lcom/google/android/gms/internal/ads/zzew;

    const/16 v7, 0xe

    new-instance v8, Lcom/google/android/gms/internal/ads/zzjr;

    invoke-direct {v8, v2}, Lcom/google/android/gms/internal/ads/zzjr;-><init>(Lcom/google/android/gms/internal/ads/zzby;)V

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/ads/zzew;->zzd(ILcom/google/android/gms/internal/ads/zzet;)V

    :cond_33e
    if-eqz v18, :cond_34b

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzki;->zzl:Lcom/google/android/gms/internal/ads/zzew;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzjs;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzjs;-><init>(Lcom/google/android/gms/internal/ads/zzls;)V

    const/4 v7, 0x3

    invoke-virtual {v2, v7, v4}, Lcom/google/android/gms/internal/ads/zzew;->zzd(ILcom/google/android/gms/internal/ads/zzet;)V

    :cond_34b
    if-nez v5, :cond_34f

    if-eqz v17, :cond_35a

    :cond_34f
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzki;->zzl:Lcom/google/android/gms/internal/ads/zzew;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzjt;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzjt;-><init>(Lcom/google/android/gms/internal/ads/zzls;)V

    const/4 v7, -0x1

    invoke-virtual {v2, v7, v4}, Lcom/google/android/gms/internal/ads/zzew;->zzd(ILcom/google/android/gms/internal/ads/zzet;)V

    :cond_35a
    const/4 v2, 0x4

    if-eqz v5, :cond_367

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzki;->zzl:Lcom/google/android/gms/internal/ads/zzew;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzju;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/zzju;-><init>(Lcom/google/android/gms/internal/ads/zzls;)V

    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/internal/ads/zzew;->zzd(ILcom/google/android/gms/internal/ads/zzet;)V

    :cond_367
    const/4 v4, 0x5

    if-eqz v17, :cond_376

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzki;->zzl:Lcom/google/android/gms/internal/ads/zzew;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzjh;

    move/from16 v8, p3

    invoke-direct {v7, v1, v8}, Lcom/google/android/gms/internal/ads/zzjh;-><init>(Lcom/google/android/gms/internal/ads/zzls;I)V

    invoke-virtual {v5, v4, v7}, Lcom/google/android/gms/internal/ads/zzew;->zzd(ILcom/google/android/gms/internal/ads/zzet;)V

    :cond_376
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzls;->zzm:I

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzls;->zzm:I

    const/4 v8, 0x6

    if-eq v5, v7, :cond_387

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzki;->zzl:Lcom/google/android/gms/internal/ads/zzew;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzji;

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/ads/zzji;-><init>(Lcom/google/android/gms/internal/ads/zzls;)V

    invoke-virtual {v5, v8, v7}, Lcom/google/android/gms/internal/ads/zzew;->zzd(ILcom/google/android/gms/internal/ads/zzet;)V

    :cond_387
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzls;->zzi()Z

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzls;->zzi()Z

    move-result v7

    const/4 v9, 0x7

    if-eq v5, v7, :cond_39c

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzki;->zzl:Lcom/google/android/gms/internal/ads/zzew;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzjj;

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/ads/zzjj;-><init>(Lcom/google/android/gms/internal/ads/zzls;)V

    invoke-virtual {v5, v9, v7}, Lcom/google/android/gms/internal/ads/zzew;->zzd(ILcom/google/android/gms/internal/ads/zzet;)V

    :cond_39c
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzls;->zzn:Lcom/google/android/gms/internal/ads/zzcj;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzls;->zzn:Lcom/google/android/gms/internal/ads/zzcj;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzcj;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v5, 0xc

    if-nez v3, :cond_3b2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzki;->zzl:Lcom/google/android/gms/internal/ads/zzew;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzjk;

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/ads/zzjk;-><init>(Lcom/google/android/gms/internal/ads/zzls;)V

    invoke-virtual {v3, v5, v7}, Lcom/google/android/gms/internal/ads/zzew;->zzd(ILcom/google/android/gms/internal/ads/zzet;)V

    :cond_3b2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzki;->zzH:Lcom/google/android/gms/internal/ads/zzcn;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzki;->zzg:Lcom/google/android/gms/internal/ads/zzcr;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzki;->zzc:Lcom/google/android/gms/internal/ads/zzcn;

    sget v10, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcr;->zzx()Z

    move-result v10

    move-object v12, v3

    check-cast v12, Lcom/google/android/gms/internal/ads/zzm;

    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzcr;->zzn()Lcom/google/android/gms/internal/ads/zzda;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v14

    if-nez v14, :cond_3dd

    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzcr;->zzd()I

    move-result v14

    iget-object v15, v12, Lcom/google/android/gms/internal/ads/zzm;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    const-wide/16 v5, 0x0

    invoke-virtual {v13, v14, v15, v5, v6}, Lcom/google/android/gms/internal/ads/zzda;->zze(ILcom/google/android/gms/internal/ads/zzcz;J)Lcom/google/android/gms/internal/ads/zzcz;

    move-result-object v13

    iget-boolean v5, v13, Lcom/google/android/gms/internal/ads/zzcz;->zzi:Z

    if-eqz v5, :cond_3dd

    const/4 v5, 0x1

    goto :goto_3de

    :cond_3dd
    const/4 v5, 0x0

    :goto_3de
    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzcr;->zzn()Lcom/google/android/gms/internal/ads/zzda;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v13

    if-eqz v13, :cond_3ed

    const/4 v13, -0x1

    const/4 v14, 0x0

    :cond_3ea
    const/16 v16, 0x0

    goto :goto_401

    :cond_3ed
    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzcr;->zzd()I

    move-result v13

    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzcr;->zzh()I

    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzcr;->zzw()Z

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14, v14}, Lcom/google/android/gms/internal/ads/zzda;->zzk(IIZ)I

    move-result v6

    const/4 v13, -0x1

    if-eq v6, v13, :cond_3ea

    const/16 v16, 0x1

    :goto_401
    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzcr;->zzn()Lcom/google/android/gms/internal/ads/zzda;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v15

    if-eqz v15, :cond_40d

    :cond_40b
    const/4 v6, 0x0

    goto :goto_41e

    :cond_40d
    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzcr;->zzd()I

    move-result v15

    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzcr;->zzh()I

    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzcr;->zzw()Z

    invoke-virtual {v6, v15, v14, v14}, Lcom/google/android/gms/internal/ads/zzda;->zzj(IIZ)I

    move-result v6

    if-eq v6, v13, :cond_40b

    const/4 v6, 0x1

    :goto_41e
    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzcr;->zzn()Lcom/google/android/gms/internal/ads/zzda;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v15

    if-nez v15, :cond_43c

    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzcr;->zzd()I

    move-result v15

    iget-object v11, v12, Lcom/google/android/gms/internal/ads/zzm;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    const-wide/16 v8, 0x0

    invoke-virtual {v13, v15, v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzda;->zze(ILcom/google/android/gms/internal/ads/zzcz;J)Lcom/google/android/gms/internal/ads/zzcz;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzcz;->zzb()Z

    move-result v11

    if-eqz v11, :cond_43e

    const/4 v11, 0x1

    goto :goto_43f

    :cond_43c
    const-wide/16 v8, 0x0

    :cond_43e
    const/4 v11, 0x0

    :goto_43f
    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzcr;->zzn()Lcom/google/android/gms/internal/ads/zzda;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v15

    if-nez v15, :cond_459

    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzcr;->zzd()I

    move-result v15

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzm;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    invoke-virtual {v13, v15, v12, v8, v9}, Lcom/google/android/gms/internal/ads/zzda;->zze(ILcom/google/android/gms/internal/ads/zzcz;J)Lcom/google/android/gms/internal/ads/zzcz;

    move-result-object v8

    iget-boolean v8, v8, Lcom/google/android/gms/internal/ads/zzcz;->zzj:Z

    if-eqz v8, :cond_459

    const/4 v8, 0x1

    goto :goto_45a

    :cond_459
    const/4 v8, 0x0

    :goto_45a
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcr;->zzn()Lcom/google/android/gms/internal/ads/zzda;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v3

    new-instance v9, Lcom/google/android/gms/internal/ads/zzcl;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzcl;-><init>()V

    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzcl;->zzb(Lcom/google/android/gms/internal/ads/zzcn;)Lcom/google/android/gms/internal/ads/zzcl;

    xor-int/lit8 v7, v10, 0x1

    invoke-virtual {v9, v2, v7}, Lcom/google/android/gms/internal/ads/zzcl;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzcl;

    if-eqz v5, :cond_475

    if-nez v10, :cond_475

    const/4 v2, 0x1

    goto :goto_476

    :cond_475
    const/4 v2, 0x0

    :goto_476
    invoke-virtual {v9, v4, v2}, Lcom/google/android/gms/internal/ads/zzcl;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzcl;

    if-eqz v16, :cond_47f

    if-nez v10, :cond_47f

    const/4 v2, 0x1

    goto :goto_480

    :cond_47f
    const/4 v2, 0x0

    :goto_480
    const/4 v4, 0x6

    invoke-virtual {v9, v4, v2}, Lcom/google/android/gms/internal/ads/zzcl;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzcl;

    if-nez v3, :cond_490

    if-nez v16, :cond_48c

    if-eqz v11, :cond_48c

    if-eqz v5, :cond_490

    :cond_48c
    if-nez v10, :cond_490

    const/4 v2, 0x1

    goto :goto_491

    :cond_490
    const/4 v2, 0x0

    :goto_491
    const/4 v4, 0x7

    invoke-virtual {v9, v4, v2}, Lcom/google/android/gms/internal/ads/zzcl;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzcl;

    if-eqz v6, :cond_49b

    if-nez v10, :cond_49b

    const/4 v2, 0x1

    goto :goto_49c

    :cond_49b
    const/4 v2, 0x0

    :goto_49c
    const/16 v4, 0x8

    invoke-virtual {v9, v4, v2}, Lcom/google/android/gms/internal/ads/zzcl;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzcl;

    if-nez v3, :cond_4ad

    if-nez v6, :cond_4a9

    if-eqz v11, :cond_4ad

    if-eqz v8, :cond_4ad

    :cond_4a9
    if-nez v10, :cond_4ad

    const/4 v11, 0x1

    goto :goto_4ae

    :cond_4ad
    const/4 v11, 0x0

    :goto_4ae
    const/16 v2, 0x9

    invoke-virtual {v9, v2, v11}, Lcom/google/android/gms/internal/ads/zzcl;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzcl;

    const/16 v2, 0xa

    invoke-virtual {v9, v2, v7}, Lcom/google/android/gms/internal/ads/zzcl;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzcl;

    if-eqz v5, :cond_4c0

    if-nez v10, :cond_4c0

    const/16 v2, 0xb

    const/4 v11, 0x1

    goto :goto_4c3

    :cond_4c0
    const/16 v2, 0xb

    const/4 v11, 0x0

    :goto_4c3
    invoke-virtual {v9, v2, v11}, Lcom/google/android/gms/internal/ads/zzcl;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzcl;

    if-eqz v5, :cond_4ce

    if-nez v10, :cond_4ce

    const/16 v2, 0xc

    const/4 v5, 0x1

    goto :goto_4d1

    :cond_4ce
    const/16 v2, 0xc

    const/4 v5, 0x0

    :goto_4d1
    invoke-virtual {v9, v2, v5}, Lcom/google/android/gms/internal/ads/zzcl;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzcl;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzcl;->zze()Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzki;->zzH:Lcom/google/android/gms/internal/ads/zzcn;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzcn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4ec

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzki;->zzl:Lcom/google/android/gms/internal/ads/zzew;

    const/16 v2, 0xd

    new-instance v3, Lcom/google/android/gms/internal/ads/zzjf;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzjf;-><init>(Lcom/google/android/gms/internal/ads/zzki;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzew;->zzd(ILcom/google/android/gms/internal/ads/zzet;)V

    :cond_4ec
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzki;->zzl:Lcom/google/android/gms/internal/ads/zzew;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzew;->zzc()V

    return-void
.end method

.method private final zzam()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzf()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    return-void

    :cond_b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzo:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzv()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzv()Z

    return-void
.end method

.method private final zzan()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zze:Lcom/google/android/gms/internal/ads/zzei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzei;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzs:Landroid/os/Looper;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v1, v0, :cond_51

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzs:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    invoke-static {v1, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzY:Z

    if-nez v1, :cond_4b

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzZ:Z

    if-eqz v1, :cond_3e

    const/4 v1, 0x0

    goto :goto_43

    :cond_3e
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_43
    const-string v3, "ExoPlayerImpl"

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzez;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzZ:Z

    return-void

    :cond_4b
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_51
    return-void
.end method


# virtual methods
.method public final zzA(Lcom/google/android/gms/internal/ads/zzmm;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzr:Lcom/google/android/gms/internal/ads/zzmj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzmj;->zzQ(Lcom/google/android/gms/internal/ads/zzmm;)V

    return-void
.end method

.method public final zzB(Lcom/google/android/gms/internal/ads/zzum;)V
    .registers 13

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzki;->zzW(Lcom/google/android/gms/internal/ads/zzls;)I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzk()J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzC:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzC:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_3e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    :goto_2c
    if-ltz v4, :cond_36

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzki;->zzo:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_2c

    :cond_36
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzki;->zzah:Lcom/google/android/gms/internal/ads/zzwd;

    invoke-virtual {v4, v3, v1}, Lcom/google/android/gms/internal/ads/zzwd;->zzh(II)Lcom/google/android/gms/internal/ads/zzwd;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzah:Lcom/google/android/gms/internal/ads/zzwd;

    :cond_3e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6b

    new-instance v4, Lcom/google/android/gms/internal/ads/zzlp;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzum;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzki;->zzp:Z

    invoke-direct {v4, v6, v7}, Lcom/google/android/gms/internal/ads/zzlp;-><init>(Lcom/google/android/gms/internal/ads/zzum;Z)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzki;->zzo:Ljava/util/List;

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzlp;->zzb:Ljava/lang/Object;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzlp;->zza:Lcom/google/android/gms/internal/ads/zzuf;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzkh;

    invoke-direct {v8, v7, v4}, Lcom/google/android/gms/internal/ads/zzkh;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzuf;)V

    invoke-interface {v6, v1, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzah:Lcom/google/android/gms/internal/ads/zzwd;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzwd;->zzg(II)Lcom/google/android/gms/internal/ads/zzwd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzah:Lcom/google/android/gms/internal/ads/zzwd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzo:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzlx;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzki;->zzah:Lcom/google/android/gms/internal/ads/zzwd;

    invoke-direct {v1, v0, v4}, Lcom/google/android/gms/internal/ads/zzlx;-><init>(Ljava/util/Collection;Lcom/google/android/gms/internal/ads/zzwd;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, -0x1

    if-nez v0, :cond_99

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzda;->zzc()I

    move-result v0

    if-ltz v0, :cond_93

    goto :goto_99

    :cond_93
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaq;

    invoke-direct {v0, v1, v4, v6, v7}, Lcom/google/android/gms/internal/ads/zzaq;-><init>(Lcom/google/android/gms/internal/ads/zzda;IJ)V

    throw v0

    :cond_99
    :goto_99
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzda;->zzg(Z)I

    move-result v0

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    invoke-direct {p0, v1, v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzki;->zzac(Lcom/google/android/gms/internal/ads/zzda;IJ)Landroid/util/Pair;

    move-result-object v9

    invoke-direct {p0, v8, v1, v9}, Lcom/google/android/gms/internal/ads/zzki;->zzad(Lcom/google/android/gms/internal/ads/zzls;Lcom/google/android/gms/internal/ads/zzda;Landroid/util/Pair;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v8

    iget v9, v8, Lcom/google/android/gms/internal/ads/zzls;->zze:I

    const/4 v10, 0x4

    if-eq v0, v4, :cond_be

    if-eq v9, v2, :cond_be

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v4

    if-nez v4, :cond_bd

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzda;->zzc()I

    move-result v1

    if-lt v0, v1, :cond_bb

    goto :goto_bd

    :cond_bb
    const/4 v9, 0x2

    goto :goto_be

    :cond_bd
    :goto_bd
    const/4 v9, 0x4

    :cond_be
    :goto_be
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzls;->zze(I)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzki;->zzk:Lcom/google/android/gms/internal/ads/zzkt;

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzfs;->zzq(J)J

    move-result-wide v7

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzki;->zzah:Lcom/google/android/gms/internal/ads/zzwd;

    move v6, v0

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzkt;->zzp(Ljava/util/List;IJLcom/google/android/gms/internal/ads/zzwd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ea

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v0

    if-nez v0, :cond_ea

    const/4 v4, 0x1

    goto :goto_eb

    :cond_ea
    const/4 v4, 0x0

    :goto_eb
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x4

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzki;->zzZ(Lcom/google/android/gms/internal/ads/zzls;)J

    move-result-wide v6

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzki;->zzal(Lcom/google/android/gms/internal/ads/zzls;IIZIJIZ)V

    return-void
.end method

.method public final zzE()Lcom/google/android/gms/internal/ads/zzit;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzf:Lcom/google/android/gms/internal/ads/zzit;

    return-object v0
.end method

.method final synthetic zzS(Lcom/google/android/gms/internal/ads/zzkr;)V
    .registers 14

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzC:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzkr;->zzb:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzC:I

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzkr;->zzc:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzkr;->zzd:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzD:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzki;->zzE:Z

    :cond_12
    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzkr;->zze:Z

    if-eqz v2, :cond_1a

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzkr;->zzf:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzF:I

    :cond_1a
    if-nez v1, :cond_d1

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzkr;->zza:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v2

    if-nez v2, :cond_37

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzae:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzki;->zzaf:J

    :cond_37
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_72

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzlx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzlx;->zzw()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzki;->zzo:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_53

    const/4 v5, 0x1

    goto :goto_54

    :cond_53
    const/4 v5, 0x0

    :goto_54
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    const/4 v5, 0x0

    :goto_58
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_72

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzki;->zzo:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzkh;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzkh;->zzc(Lcom/google/android/gms/internal/ads/zzda;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    :cond_72
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzE:Z

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_bc

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzkr;->zza:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzuk;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzkr;->zza:Lcom/google/android/gms/internal/ads/zzls;

    iget-wide v7, v2, Lcom/google/android/gms/internal/ads/zzls;->zzd:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-wide v10, v2, Lcom/google/android/gms/internal/ads/zzls;->zzr:J

    cmp-long v2, v7, v10

    if-eqz v2, :cond_96

    goto :goto_97

    :cond_96
    const/4 v3, 0x0

    :cond_97
    :goto_97
    if-eqz v3, :cond_b9

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v2

    if-nez v2, :cond_b4

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzkr;->zza:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzuk;->zzb()Z

    move-result v2

    if-eqz v2, :cond_aa

    goto :goto_b4

    :cond_aa
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzkr;->zza:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/zzls;->zzd:J

    invoke-direct {p0, v1, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzki;->zzab(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzuk;J)J

    goto :goto_ba

    :cond_b4
    :goto_b4
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzkr;->zza:Lcom/google/android/gms/internal/ads/zzls;

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzls;->zzd:J

    goto :goto_ba

    :cond_b9
    move-wide v6, v5

    :goto_ba
    move v5, v3

    goto :goto_be

    :cond_bc
    move-wide v6, v5

    const/4 v5, 0x0

    :goto_be
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzki;->zzE:Z

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzkr;->zza:Lcom/google/android/gms/internal/ads/zzls;

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzki;->zzF:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzki;->zzD:I

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v0, p0

    move v4, v5

    move v5, v8

    move v8, v9

    move v9, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzki;->zzal(Lcom/google/android/gms/internal/ads/zzls;IIZIJIZ)V

    :cond_d1
    return-void
.end method

.method final synthetic zzT(Lcom/google/android/gms/internal/ads/zzkr;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzjx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzjx;-><init>(Lcom/google/android/gms/internal/ads/zzki;Lcom/google/android/gms/internal/ads/zzkr;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzj:Lcom/google/android/gms/internal/ads/zzeq;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final synthetic zzU(Lcom/google/android/gms/internal/ads/zzco;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzH:Lcom/google/android/gms/internal/ads/zzcn;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzco;->zza(Lcom/google/android/gms/internal/ads/zzcn;)V

    return-void
.end method

.method public final zza(IJIZ)V
    .registers 16

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    const/4 p4, 0x1

    if-ltz p1, :cond_8

    const/4 p5, 0x1

    goto :goto_9

    :cond_8
    const/4 p5, 0x0

    :goto_9
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzef;->zzd(Z)V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzki;->zzr:Lcom/google/android/gms/internal/ads/zzmj;

    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/zzmj;->zzu()V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object p5, p5, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzda;->zzc()I

    move-result v0

    if-ge p1, v0, :cond_22

    goto :goto_23

    :cond_22
    return-void

    :cond_23
    :goto_23
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzC:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzC:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzx()Z

    move-result v0

    if-eqz v0, :cond_47

    const-string p1, "ExoPlayerImpl"

    const-string p2, "seekTo ignored because an ad is playing"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzkr;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzkr;-><init>(Lcom/google/android/gms/internal/ads/zzls;)V

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzkr;->zza(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzag:Lcom/google/android/gms/internal/ads/zzje;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzje;->zza:Lcom/google/android/gms/internal/ads/zzki;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzki;->zzT(Lcom/google/android/gms/internal/ads/zzkr;)V

    return-void

    :cond_47
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget v0, p4, Lcom/google/android/gms/internal/ads/zzls;->zze:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_57

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5e

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v0

    if-nez v0, :cond_5e

    :cond_57
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    const/4 v0, 0x2

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzls;->zze(I)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object p4

    :cond_5e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzd()I

    move-result v8

    invoke-direct {p0, p5, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzki;->zzac(Lcom/google/android/gms/internal/ads/zzda;IJ)Landroid/util/Pair;

    move-result-object v0

    invoke-direct {p0, p4, p5, v0}, Lcom/google/android/gms/internal/ads/zzki;->zzad(Lcom/google/android/gms/internal/ads/zzls;Lcom/google/android/gms/internal/ads/zzda;Landroid/util/Pair;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzki;->zzk:Lcom/google/android/gms/internal/ads/zzkt;

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzfs;->zzq(J)J

    move-result-wide p2

    invoke-virtual {p4, p5, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzkt;->zzk(Lcom/google/android/gms/internal/ads/zzda;IJ)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzki;->zzZ(Lcom/google/android/gms/internal/ads/zzls;)J

    move-result-wide v6

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzki;->zzal(Lcom/google/android/gms/internal/ads/zzls;IIZIJIZ)V

    return-void
.end method

.method public final zzb()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzx()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzuk;->zzb:I

    return v0

    :cond_10
    const/4 v0, -0x1

    return v0
.end method

.method public final zzc()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzx()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzuk;->zzc:I

    return v0

    :cond_10
    const/4 v0, -0x1

    return v0
.end method

.method public final zzd()I
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzki;->zzW(Lcom/google/android/gms/internal/ads/zzls;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    :cond_d
    return v0
.end method

.method public final zze()I
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    return v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzda;->zza(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zzf()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zze:I

    return v0
.end method

.method public final zzg()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzm:I

    return v0
.end method

.method public final zzh()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    const/4 v0, 0x0

    return v0
.end method

.method public final zzi()J
    .registers 9

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzx()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zzk:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzuk;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzp:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->zzt(J)J

    move-result-wide v0

    goto :goto_88

    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzl()J

    move-result-wide v0

    goto :goto_88

    :cond_23
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzaf:J

    goto :goto_88

    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zzk:Lcom/google/android/gms/internal/ads/zzuk;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzuk;->zzd:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzuk;->zzd:J

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v3

    if-eqz v7, :cond_56

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzd()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzm;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzda;->zze(ILcom/google/android/gms/internal/ads/zzcz;J)Lcom/google/android/gms/internal/ads/zzcz;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzcz;->zzo:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->zzt(J)J

    move-result-wide v0

    goto :goto_88

    :cond_56
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzp:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzls;->zzk:Lcom/google/android/gms/internal/ads/zzuk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzuk;->zzb()Z

    move-result v2

    if-eqz v2, :cond_7a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzk:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzn:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzls;->zzk:Lcom/google/android/gms/internal/ads/zzuk;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzuk;->zzb:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcx;->zzi(I)J

    goto :goto_7b

    :cond_7a
    move-wide v5, v0

    :goto_7b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzk:Lcom/google/android/gms/internal/ads/zzuk;

    invoke-direct {p0, v1, v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzki;->zzab(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzuk;J)J

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzfs;->zzt(J)J

    move-result-wide v0

    :goto_88
    return-wide v0
.end method

.method public final zzj()J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzki;->zzY(Lcom/google/android/gms/internal/ads/zzls;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzk()J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzki;->zzZ(Lcom/google/android/gms/internal/ads/zzls;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->zzt(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl()J
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzx()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcr;->zzn()Lcom/google/android/gms/internal/ads/zzda;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v1

    if-eqz v1, :cond_19

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_19
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcr;->zzd()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzm;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzda;->zze(ILcom/google/android/gms/internal/ads/zzcz;J)Lcom/google/android/gms/internal/ads/zzcz;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzcz;->zzo:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->zzt(J)J

    move-result-wide v0

    return-wide v0

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzki;->zzn:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzn:Lcom/google/android/gms/internal/ads/zzcx;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzuk;->zzb:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzuk;->zzc:I

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcx;->zzh(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->zzt(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzm()J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzq:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->zzt(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzn()Lcom/google/android/gms/internal/ads/zzda;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    return-object v0
.end method

.method public final zzo()Lcom/google/android/gms/internal/ads/zzdn;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzi:Lcom/google/android/gms/internal/ads/zzyf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzyf;->zzd:Lcom/google/android/gms/internal/ads/zzdn;

    return-object v0
.end method

.method public final zzp()V
    .registers 15

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzy:Lcom/google/android/gms/internal/ads/zzij;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzv()Z

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzij;->zzb(ZI)I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzki;->zzX(ZI)I

    move-result v3

    invoke-direct {p0, v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzki;->zzak(ZII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zze:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1d

    return-void

    :cond_1d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzls;->zzd(Lcom/google/android/gms/internal/ads/zzit;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v1

    if-eq v3, v1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x4

    :goto_2c
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzls;->zze(I)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzC:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzC:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzk:Lcom/google/android/gms/internal/ads/zzkt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkt;->zzj()V

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x5

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v13}, Lcom/google/android/gms/internal/ads/zzki;->zzal(Lcom/google/android/gms/internal/ads/zzls;IIZIJIZ)V

    return-void
.end method

.method public final zzq()V
    .registers 6

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfs;->zze:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbt;->zza()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Release "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [AndroidXMedia3/1.2.0-beta01] ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzez;->zze(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_4c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzM:Landroid/media/AudioTrack;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzM:Landroid/media/AudioTrack;

    :cond_4c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzy:Lcom/google/android/gms/internal/ads/zzij;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzij;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzk:Lcom/google/android/gms/internal/ads/zzkt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkt;->zzo()Z

    move-result v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzl:Lcom/google/android/gms/internal/ads/zzew;

    const/16 v2, 0xa

    sget-object v3, Lcom/google/android/gms/internal/ads/zzjw;->zza:Lcom/google/android/gms/internal/ads/zzjw;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzew;->zzd(ILcom/google/android/gms/internal/ads/zzet;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzew;->zzc()V

    :cond_65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzl:Lcom/google/android/gms/internal/ads/zzew;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzew;->zze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzj:Lcom/google/android/gms/internal/ads/zzeq;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zze(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzt:Lcom/google/android/gms/internal/ads/zzym;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzr:Lcom/google/android/gms/internal/ads/zzmj;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzym;->zzf(Lcom/google/android/gms/internal/ads/zzyl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzls;->zzo:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzls;->zze(I)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzls;->zza(Lcom/google/android/gms/internal/ads/zzuk;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzls;->zzr:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzls;->zzp:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzls;->zzq:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzr:Lcom/google/android/gms/internal/ads/zzmj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzmj;->zzP()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzi:Lcom/google/android/gms/internal/ads/zzye;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzye;->zzi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzO:Landroid/view/Surface;

    if-eqz v0, :cond_a6

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzO:Landroid/view/Surface;

    :cond_a6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzee;->zza:Lcom/google/android/gms/internal/ads/zzee;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzX:Lcom/google/android/gms/internal/ads/zzee;

    return-void
.end method

.method public final zzr(Z)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzf()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzy:Lcom/google/android/gms/internal/ads/zzij;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzij;->zzb(ZI)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzki;->zzX(ZI)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzki;->zzak(ZII)V

    return-void
.end method

.method public final zzs(Landroid/view/Surface;)V
    .registers 2
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzki;->zzai(Ljava/lang/Object;)V

    if-nez p1, :cond_a

    const/4 p1, 0x0

    goto :goto_b

    :cond_a
    const/4 p1, -0x1

    :goto_b
    invoke-direct {p0, p1, p1}, Lcom/google/android/gms/internal/ads/zzki;->zzaf(II)V

    return-void
.end method

.method public final zzt(F)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzV:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_15

    return-void

    :cond_15
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzV:F

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzah()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzl:Lcom/google/android/gms/internal/ads/zzew;

    const/16 v1, 0x16

    new-instance v2, Lcom/google/android/gms/internal/ads/zzjm;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzjm;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzew;->zzd(ILcom/google/android/gms/internal/ads/zzet;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzew;->zzc()V

    return-void
.end method

.method public final zzu()V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzy:Lcom/google/android/gms/internal/ads/zzij;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzv()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzij;->zzb(ZI)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzki;->zzaj(Lcom/google/android/gms/internal/ads/zzit;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzee;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwu;->zzl()Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzls;->zzr:J

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzee;-><init>(Ljava/util/List;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzX:Lcom/google/android/gms/internal/ads/zzee;

    return-void
.end method

.method public final zzv()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzl:Z

    return v0
.end method

.method public final zzw()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    const/4 v0, 0x0

    return v0
.end method

.method public final zzx()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzad:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzuk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzuk;->zzb()Z

    move-result v0

    return v0
.end method

.method public final zzy()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;->zzan()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzh:[Lcom/google/android/gms/internal/ads/zzlz;

    array-length v0, v0

    const/4 v0, 0x2

    return v0
.end method

.method public final zzz(Lcom/google/android/gms/internal/ads/zzmm;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzr:Lcom/google/android/gms/internal/ads/zzmj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzmj;->zzt(Lcom/google/android/gms/internal/ads/zzmm;)V

    return-void
.end method

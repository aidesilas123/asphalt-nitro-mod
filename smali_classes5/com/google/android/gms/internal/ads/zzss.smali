###### Class com.google.android.gms.internal.ads.zzss (com.google.android.gms.internal.ads.zzss)
.class public abstract Lcom/google/android/gms/internal/ads/zzss;
.super Lcom/google/android/gms/internal/ads/zzik;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field private static final zzb:[B


# instance fields
.field private zzA:Lcom/google/android/gms/internal/ads/zzsn;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzB:I

.field private zzC:Z

.field private zzD:Z

.field private zzE:Z

.field private zzF:Z

.field private zzG:Z

.field private zzH:Z

.field private zzI:Z

.field private zzJ:Z

.field private zzK:Z

.field private zzL:J

.field private zzM:I

.field private zzN:I

.field private zzO:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzP:Z

.field private zzQ:Z

.field private zzR:Z

.field private zzS:Z

.field private zzT:Z

.field private zzU:Z

.field private zzV:I

.field private zzW:I

.field private zzX:I

.field private zzY:Z

.field private zzZ:Z

.field protected zza:Lcom/google/android/gms/internal/ads/zzil;

.field private zzaa:Z

.field private zzab:J

.field private zzac:J

.field private zzad:Z

.field private zzae:Z

.field private zzaf:Z

.field private zzag:Lcom/google/android/gms/internal/ads/zzsr;

.field private zzah:J

.field private zzai:Z

.field private zzaj:Lcom/google/android/gms/internal/ads/zzrs;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzak:Lcom/google/android/gms/internal/ads/zzrs;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzsj;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzsu;

.field private final zze:F

.field private final zzf:Lcom/google/android/gms/internal/ads/zzib;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzib;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzib;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzsg;

.field private final zzj:Landroid/media/MediaCodec$BufferInfo;

.field private final zzk:Ljava/util/ArrayDeque;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzrd;

.field private zzm:Lcom/google/android/gms/internal/ads/zzam;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzn:Lcom/google/android/gms/internal/ads/zzam;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzo:Landroid/media/MediaCrypto;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzp:Z

.field private zzq:J

.field private zzr:F

.field private zzs:F

.field private zzt:Lcom/google/android/gms/internal/ads/zzsk;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzu:Lcom/google/android/gms/internal/ads/zzam;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzv:Landroid/media/MediaFormat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzw:Z

.field private zzx:F

.field private zzy:Ljava/util/ArrayDeque;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzz:Lcom/google/android/gms/internal/ads/zzsq;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzss;->zzb:[B

    return-void

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzsj;Lcom/google/android/gms/internal/ads/zzsu;ZF)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzik;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzc:Lcom/google/android/gms/internal/ads/zzsj;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzd:Lcom/google/android/gms/internal/ads/zzsu;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzss;->zze:F

    new-instance p1, Lcom/google/android/gms/internal/ads/zzib;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzib;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzf:Lcom/google/android/gms/internal/ads/zzib;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzib;

    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzib;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzg:Lcom/google/android/gms/internal/ads/zzib;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzib;

    const/4 p3, 0x2

    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzib;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzh:Lcom/google/android/gms/internal/ads/zzib;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzsg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzsg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzi:Lcom/google/android/gms/internal/ads/zzsg;

    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzj:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzr:F

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzs:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzq:J

    new-instance p5, Ljava/util/ArrayDeque;

    invoke-direct {p5}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzss;->zzk:Ljava/util/ArrayDeque;

    sget-object p5, Lcom/google/android/gms/internal/ads/zzsr;->zza:Lcom/google/android/gms/internal/ads/zzsr;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzss;->zzag:Lcom/google/android/gms/internal/ads/zzsr;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzib;->zzi(I)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzib;->zzc:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzrd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzrd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzl:Lcom/google/android/gms/internal/ads/zzrd;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzx:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzB:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzV:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzM:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzN:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzL:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzab:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzac:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzah:J

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzW:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzX:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzil;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzil;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzil;

    return-void
.end method

.method protected static zzaH(Lcom/google/android/gms/internal/ads/zzam;)Z
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzam;->zzH:I

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method private final zzaI(Lcom/google/android/gms/internal/ads/zzsn;Landroid/media/MediaCrypto;)V
    .registers 21
    .param p2    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    const-string v1, "createCodec:"

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzss;->zzm:Lcom/google/android/gms/internal/ads/zzam;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzsn;->zza:Ljava/lang/String;

    sget v4, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v6, 0x17

    if-ge v4, v6, :cond_16

    const/high16 v7, -0x40800000    # -1.0f

    goto :goto_20

    :cond_16
    iget v7, v8, Lcom/google/android/gms/internal/ads/zzss;->zzs:F

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzik;->zzR()[Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v9

    invoke-virtual {v8, v7, v2, v9}, Lcom/google/android/gms/internal/ads/zzss;->zzX(FLcom/google/android/gms/internal/ads/zzam;[Lcom/google/android/gms/internal/ads/zzam;)F

    move-result v7

    :goto_20
    iget v9, v8, Lcom/google/android/gms/internal/ads/zzss;->zze:F

    cmpg-float v9, v7, v9

    if-gtz v9, :cond_28

    const/high16 v7, -0x40800000    # -1.0f

    :cond_28
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzss;->zzay(Lcom/google/android/gms/internal/ads/zzam;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzik;->zzh()Lcom/google/android/gms/internal/ads/zzeg;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-virtual {v8, v0, v2, v11, v7}, Lcom/google/android/gms/internal/ads/zzss;->zzad(Lcom/google/android/gms/internal/ads/zzsn;Lcom/google/android/gms/internal/ads/zzam;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzsi;

    move-result-object v12

    const/16 v13, 0x1f

    if-lt v4, v13, :cond_42

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzik;->zzn()Lcom/google/android/gms/internal/ads/zzov;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/google/android/gms/internal/ads/zzsp;->zza(Lcom/google/android/gms/internal/ads/zzsi;Lcom/google/android/gms/internal/ads/zzov;)V

    :cond_42
    :try_start_42
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v14, 0x0

    if-lt v4, v6, :cond_7a

    if-lt v4, v13, :cond_7a

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzsi;->zzc:Lcom/google/android/gms/internal/ads/zzam;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzce;->zzb(Ljava/lang/String;)I

    move-result v1

    const-string v4, "DMCodecAdapterFactory"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfs;->zzB(I)Ljava/lang/String;

    move-result-object v11

    const-string v13, "Creating an asynchronous MediaCodec adapter for track type "

    invoke-virtual {v13, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/google/android/gms/internal/ads/zzez;->zze(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzrx;

    invoke-direct {v4, v1, v14}, Lcom/google/android/gms/internal/ads/zzrx;-><init>(IZ)V

    invoke-virtual {v4, v12}, Lcom/google/android/gms/internal/ads/zzrx;->zzc(Lcom/google/android/gms/internal/ads/zzsi;)Lcom/google/android/gms/internal/ads/zzrz;

    move-result-object v1
    :try_end_79
    .catchall {:try_start_42 .. :try_end_79} :catchall_44b

    goto :goto_ac

    :cond_7a
    :try_start_7a
    iget-object v4, v12, Lcom/google/android/gms/internal/ads/zzsi;->zza:Lcom/google/android/gms/internal/ads/zzsn;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzsn;->zza:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_8c} :catch_444
    .catch Ljava/lang/RuntimeException; {:try_start_7a .. :try_end_8c} :catch_442
    .catchall {:try_start_7a .. :try_end_8c} :catchall_44b

    :try_start_8c
    const-string v4, "configureCodec"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v4, v12, Lcom/google/android/gms/internal/ads/zzsi;->zzb:Landroid/media/MediaFormat;

    iget-object v13, v12, Lcom/google/android/gms/internal/ads/zzsi;->zzd:Landroid/view/Surface;

    invoke-virtual {v1, v4, v13, v11, v14}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v4, "startCodec"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v4, Lcom/google/android/gms/internal/ads/zztj;

    invoke-direct {v4, v1, v11}, Lcom/google/android/gms/internal/ads/zztj;-><init>(Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzti;)V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_ab} :catch_43f
    .catch Ljava/lang/RuntimeException; {:try_start_8c .. :try_end_ab} :catch_43d
    .catchall {:try_start_8c .. :try_end_ab} :catchall_44b

    move-object v1, v4

    :goto_ac
    :try_start_ac
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzss;->zzt:Lcom/google/android/gms/internal/ads/zzsk;
    :try_end_ae
    .catchall {:try_start_ac .. :try_end_ae} :catchall_44b

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzik;->zzh()Lcom/google/android/gms/internal/ads/zzeg;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzsn;->zze(Lcom/google/android/gms/internal/ads/zzam;)Z

    move-result v1

    const/4 v4, 0x2

    if-nez v1, :cond_258

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id="

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzam;->zzb:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mimeType="

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzam;->zzi:I

    const/4 v14, -0x1

    if-eq v6, v14, :cond_e9

    const-string v6, ", bitrate="

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzam;->zzi:I

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_e9
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzam;->zzj:Ljava/lang/String;

    if-eqz v6, :cond_f7

    const-string v6, ", codecs="

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzam;->zzj:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f7
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzam;->zzp:Lcom/google/android/gms/internal/ads/zzad;

    const-string v4, ","

    if-eqz v6, :cond_18c

    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v11, 0x0

    :goto_103
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzam;->zzp:Lcom/google/android/gms/internal/ads/zzad;

    iget v14, v5, Lcom/google/android/gms/internal/ads/zzad;->zzb:I

    if-ge v11, v14, :cond_17c

    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzad;->zza(I)Lcom/google/android/gms/internal/ads/zzac;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzac;->zza:Ljava/util/UUID;

    sget-object v14, Lcom/google/android/gms/internal/ads/zzo;->zzb:Ljava/util/UUID;

    invoke-virtual {v5, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11f

    const-string v5, "cenc"

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_11c
    move-object/from16 v17, v12

    goto :goto_176

    :cond_11f
    sget-object v14, Lcom/google/android/gms/internal/ads/zzo;->zzc:Ljava/util/UUID;

    invoke-virtual {v5, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12d

    const-string v5, "clearkey"

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11c

    :cond_12d
    sget-object v14, Lcom/google/android/gms/internal/ads/zzo;->zze:Ljava/util/UUID;

    invoke-virtual {v5, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13b

    const-string v5, "playready"

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11c

    :cond_13b
    sget-object v14, Lcom/google/android/gms/internal/ads/zzo;->zzd:Ljava/util/UUID;

    invoke-virtual {v5, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_149

    const-string v5, "widevine"

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11c

    :cond_149
    sget-object v14, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/util/UUID;

    invoke-virtual {v5, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_157

    const-string v5, "universal"

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11c

    :cond_157
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v12

    const-string v12, "unknown ("

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_176
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v12, v17

    const/4 v14, -0x1

    goto :goto_103

    :cond_17c
    move-object/from16 v17, v12

    const-string v5, ", drm=["

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v6, v4}, Lcom/google/android/gms/internal/ads/zzfto;->zzb(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x5d

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_18e

    :cond_18c
    move-object/from16 v17, v12

    :goto_18e
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzam;->zzr:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1ab

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzam;->zzs:I

    if-eq v5, v6, :cond_1ab

    const-string v5, ", res="

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzam;->zzr:I

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzam;->zzs:I

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1ab
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzam;->zzy:Lcom/google/android/gms/internal/ads/zzs;

    if-eqz v5, :cond_1c9

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzs;->zze()Z

    move-result v6

    if-nez v6, :cond_1bb

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzs;->zzf()Z

    move-result v5

    if-eqz v5, :cond_1c9

    :cond_1bb
    const-string v5, ", color="

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzam;->zzy:Lcom/google/android/gms/internal/ads/zzs;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzs;->zzd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c9
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzam;->zzt:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1db

    const-string v5, ", fps="

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzam;->zzt:F

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_1db
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzam;->zzz:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1ea

    const-string v5, ", channels="

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzam;->zzz:I

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1ea
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzam;->zzA:I

    if-eq v5, v6, :cond_1f8

    const-string v5, ", sample_rate="

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzam;->zzA:I

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1f8
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzam;->zzd:Ljava/lang/String;

    if-eqz v5, :cond_206

    const-string v5, ", language="

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzam;->zzd:Ljava/lang/String;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_206
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzam;->zzc:Ljava/lang/String;

    if-eqz v5, :cond_214

    const-string v5, ", label="

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzam;->zzc:Ljava/lang/String;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_214
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzam;->zze:I

    if-eqz v5, :cond_240

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzam;->zze:I

    const/4 v11, 0x1

    and-int/2addr v6, v11

    if-eqz v6, :cond_228

    const-string v6, "default"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_228
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzam;->zze:I

    const/4 v11, 0x2

    and-int/2addr v6, v11

    if-eqz v6, :cond_233

    const-string v6, "forced"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_233
    const-string v6, ", selectionFlags=["

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v5, v4}, Lcom/google/android/gms/internal/ads/zzfto;->zzb(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_240
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    aput-object v4, v1, v11

    const/4 v4, 0x1

    aput-object v3, v1, v4

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Format exceeds selected codec\'s capabilities [%s, %s]"

    invoke-static {v4, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "MediaCodecRenderer"

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25b

    :cond_258
    move-object/from16 v17, v12

    const/4 v11, 0x0

    :goto_25b
    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzss;->zzA:Lcom/google/android/gms/internal/ads/zzsn;

    iput v7, v8, Lcom/google/android/gms/internal/ads/zzss;->zzx:F

    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzss;->zzu:Lcom/google/android/gms/internal/ads/zzam;

    sget v1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const-string v2, "OMX.Exynos.avc.dec.secure"

    const/16 v4, 0x19

    if-gt v1, v4, :cond_293

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_293

    sget-object v5, Lcom/google/android/gms/internal/ads/zzfs;->zzd:Ljava/lang/String;

    const-string v6, "SM-T585"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_291

    const-string v6, "SM-A510"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_291

    const-string v6, "SM-A520"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_291

    const-string v6, "SM-J700"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_293

    :cond_291
    const/4 v5, 0x2

    goto :goto_2cc

    :cond_293
    const/16 v5, 0x18

    if-ge v1, v5, :cond_2cb

    const-string v5, "OMX.Nvidia.h264.decode"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a7

    const-string v5, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2cb

    :cond_2a7
    sget-object v5, Lcom/google/android/gms/internal/ads/zzfs;->zzb:Ljava/lang/String;

    const-string v6, "flounder"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c9

    const-string v6, "flounder_lte"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c9

    const-string v6, "grouper"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c9

    const-string v6, "tilapia"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2cb

    :cond_2c9
    const/4 v5, 0x1

    goto :goto_2cc

    :cond_2cb
    const/4 v5, 0x0

    :goto_2cc
    iput v5, v8, Lcom/google/android/gms/internal/ads/zzss;->zzB:I

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzss;->zzu:Lcom/google/android/gms/internal/ads/zzam;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x15

    if-ge v1, v6, :cond_2e9

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzam;->zzo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2e9

    const-string v5, "OMX.MTK.VIDEO.DECODER.AVC"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e9

    const/4 v5, 0x1

    goto :goto_2ea

    :cond_2e9
    const/4 v5, 0x0

    :goto_2ea
    iput-boolean v5, v8, Lcom/google/android/gms/internal/ads/zzss;->zzC:Z

    const/16 v5, 0x13

    if-ne v1, v5, :cond_30a

    sget-object v7, Lcom/google/android/gms/internal/ads/zzfs;->zzd:Ljava/lang/String;

    const-string v12, "SM-G800"

    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_30a

    const-string v7, "OMX.Exynos.avc.dec"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_308

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30a

    :cond_308
    const/4 v2, 0x1

    goto :goto_30b

    :cond_30a
    const/4 v2, 0x0

    :goto_30b
    iput-boolean v2, v8, Lcom/google/android/gms/internal/ads/zzss;->zzD:Z

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_31b

    const-string v7, "c2.android.aac.decoder"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_31b

    const/4 v7, 0x1

    goto :goto_31c

    :cond_31b
    const/4 v7, 0x0

    :goto_31c
    iput-boolean v7, v8, Lcom/google/android/gms/internal/ads/zzss;->zzE:Z

    const/16 v7, 0x17

    if-gt v1, v7, :cond_32d

    const-string v7, "OMX.google.vorbis.decoder"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_32b

    goto :goto_32d

    :cond_32b
    :goto_32b
    const/4 v5, 0x1

    goto :goto_353

    :cond_32d
    :goto_32d
    if-gt v1, v5, :cond_352

    sget-object v5, Lcom/google/android/gms/internal/ads/zzfs;->zzb:Ljava/lang/String;

    const-string v7, "hb2000"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_341

    const-string v7, "stvm8"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_352

    :cond_341
    const-string v5, "OMX.amlogic.avc.decoder.awesome"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32b

    const-string v5, "OMX.amlogic.avc.decoder.awesome.secure"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_352

    goto :goto_32b

    :cond_352
    const/4 v5, 0x0

    :goto_353
    iput-boolean v5, v8, Lcom/google/android/gms/internal/ads/zzss;->zzF:Z

    if-ne v1, v6, :cond_361

    const-string v5, "OMX.google.aac.decoder"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_361

    const/4 v5, 0x1

    goto :goto_362

    :cond_361
    const/4 v5, 0x0

    :goto_362
    iput-boolean v5, v8, Lcom/google/android/gms/internal/ads/zzss;->zzG:Z

    if-ge v1, v6, :cond_3ac

    const-string v5, "OMX.SEC.mp3.dec"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3ac

    sget-object v5, Lcom/google/android/gms/internal/ads/zzfs;->zzc:Ljava/lang/String;

    const-string v6, "samsung"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3ac

    sget-object v5, Lcom/google/android/gms/internal/ads/zzfs;->zzb:Ljava/lang/String;

    const-string v6, "baffin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3aa

    const-string v6, "grand"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3aa

    const-string v6, "fortuna"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3aa

    const-string v6, "gprimelte"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3aa

    const-string v6, "j2y18lte"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3aa

    const-string v6, "ms01"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3ac

    :cond_3aa
    const/4 v5, 0x1

    goto :goto_3ad

    :cond_3ac
    const/4 v5, 0x0

    :goto_3ad
    iput-boolean v5, v8, Lcom/google/android/gms/internal/ads/zzss;->zzH:Z

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzss;->zzu:Lcom/google/android/gms/internal/ads/zzam;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzsn;->zza:Ljava/lang/String;

    if-gt v1, v4, :cond_3c3

    const-string v4, "OMX.rk.video_decoder.avc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c1

    goto :goto_3c3

    :cond_3c1
    :goto_3c1
    const/4 v14, 0x1

    goto :goto_40f

    :cond_3c3
    :goto_3c3
    if-gt v1, v2, :cond_3f5

    const-string v1, "OMX.broadcom.video_decoder.tunnel"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c1

    const-string v1, "OMX.broadcom.video_decoder.tunnel.secure"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c1

    const-string v1, "OMX.bcm.vdec.avc.tunnel"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c1

    const-string v1, "OMX.bcm.vdec.avc.tunnel.secure"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c1

    const-string v1, "OMX.bcm.vdec.hevc.tunnel"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c1

    const-string v1, "OMX.bcm.vdec.hevc.tunnel.secure"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c1

    :cond_3f5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfs;->zzc:Ljava/lang/String;

    const-string v2, "Amazon"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40e

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfs;->zzd:Ljava/lang/String;

    const-string v2, "AFTS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40e

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzsn;->zzf:Z

    if-eqz v0, :cond_40e

    goto :goto_3c1

    :cond_40e
    const/4 v14, 0x0

    :goto_40f
    iput-boolean v14, v8, Lcom/google/android/gms/internal/ads/zzss;->zzK:Z

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzss;->zzt:Lcom/google/android/gms/internal/ads/zzsk;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzik;->zzbd()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_429

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzik;->zzh()Lcom/google/android/gms/internal/ads/zzeg;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    add-long/2addr v0, v4

    iput-wide v0, v8, Lcom/google/android/gms/internal/ads/zzss;->zzL:J

    :cond_429
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzil;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzil;->zza:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzil;->zza:I

    sub-long v6, v15, v9

    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v3, v17

    move-wide v4, v15

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzss;->zzah(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzsi;JJ)V

    return-void

    :catch_43d
    move-exception v0

    goto :goto_440

    :catch_43f
    move-exception v0

    :goto_440
    move-object v11, v1

    goto :goto_445

    :catch_442
    move-exception v0

    goto :goto_445

    :catch_444
    move-exception v0

    :goto_445
    if-eqz v11, :cond_44a

    :try_start_447
    invoke-virtual {v11}, Landroid/media/MediaCodec;->release()V

    :cond_44a
    throw v0
    :try_end_44b
    .catchall {:try_start_447 .. :try_end_44b} :catchall_44b

    :catchall_44b
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method private final zzaJ()V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzX:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_18

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzae:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzam()V

    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaz()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzav()V

    return-void

    :cond_18
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzak()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaN()V

    return-void

    :cond_1f
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzak()V

    return-void
.end method

.method private final zzaK()V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzM:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzg:Lcom/google/android/gms/internal/ads/zzib;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzib;->zzc:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final zzaL()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzN:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzO:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final zzaM(Lcom/google/android/gms/internal/ads/zzsr;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzag:Lcom/google/android/gms/internal/ads/zzsr;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzsr;->zzd:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzai:Z

    :cond_10
    return-void
.end method

.method private final zzaN()V
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzak:Lcom/google/android/gms/internal/ads/zzrs;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzaj:Lcom/google/android/gms/internal/ads/zzrs;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzW:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzX:I

    return-void
.end method

.method private final zzaO()Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzY:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzW:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzD:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzF:Z

    if-eqz v0, :cond_10

    goto :goto_14

    :cond_10
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzX:I

    goto :goto_1c

    :cond_14
    :goto_14
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzX:I

    const/4 v0, 0x0

    return v0

    :cond_19
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaN()V

    :goto_1c
    return v1
.end method

.method private final zzaP()Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzt:Lcom/google/android/gms/internal/ads/zzsk;

    const/4 v7, 0x0

    if-eqz v0, :cond_232

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzW:I

    const/4 v8, 0x2

    if-eq v1, v8, :cond_232

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzad:Z

    if-eqz v1, :cond_10

    goto/16 :goto_232

    :cond_10
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzM:I

    if-gez v1, :cond_2a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsk;->zza()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzM:I

    if-gez v1, :cond_1d

    return v7

    :cond_1d
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzg:Lcom/google/android/gms/internal/ads/zzib;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzsk;->zzf(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzib;->zzc:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzg:Lcom/google/android/gms/internal/ads/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhv;->zzb()V

    :cond_2a
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzW:I

    const/4 v9, 0x1

    if-ne v1, v9, :cond_45

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzK:Z

    if-nez v1, :cond_42

    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzss;->zzZ:Z

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzM:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzsk;->zzj(IIIJI)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaK()V

    :cond_42
    iput v8, p0, Lcom/google/android/gms/internal/ads/zzss;->zzW:I

    return v7

    :cond_45
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzI:Z

    if-eqz v1, :cond_68

    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzss;->zzI:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzg:Lcom/google/android/gms/internal/ads/zzib;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzib;->zzc:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzss;->zzb:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzM:I

    const/4 v2, 0x0

    const/16 v3, 0x26

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzsk;->zzj(IIIJI)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaK()V

    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzss;->zzY:Z

    return v9

    :cond_68
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzV:I

    if-ne v1, v9, :cond_93

    const/4 v1, 0x0

    :goto_6d
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzu:Lcom/google/android/gms/internal/ads/zzam;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzam;->zzo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_91

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzu:Lcom/google/android/gms/internal/ads/zzam;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzam;->zzo:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzg:Lcom/google/android/gms/internal/ads/zzib;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzib;->zzc:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    :cond_91
    iput v8, p0, Lcom/google/android/gms/internal/ads/zzss;->zzV:I

    :cond_93
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzg:Lcom/google/android/gms/internal/ads/zzib;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzib;->zzc:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzj()Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v2

    :try_start_a2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzg:Lcom/google/android/gms/internal/ads/zzib;

    invoke-virtual {p0, v2, v3, v7}, Lcom/google/android/gms/internal/ads/zzik;->zzbe(Lcom/google/android/gms/internal/ads/zzkv;Lcom/google/android/gms/internal/ads/zzib;I)I

    move-result v3
    :try_end_a8
    .catch Lcom/google/android/gms/internal/ads/zzia; {:try_start_a2 .. :try_end_a8} :catch_227

    const/4 v4, -0x3

    if-ne v3, v4, :cond_b6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzO()Z

    move-result v0

    if-eqz v0, :cond_b5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzab:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzac:J

    :cond_b5
    return v7

    :cond_b6
    const/4 v5, -0x5

    if-ne v3, v5, :cond_c8

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzV:I

    if-ne v0, v8, :cond_c4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzg:Lcom/google/android/gms/internal/ads/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhv;->zzb()V

    iput v9, p0, Lcom/google/android/gms/internal/ads/zzss;->zzV:I

    :cond_c4
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzss;->zzaa(Lcom/google/android/gms/internal/ads/zzkv;)Lcom/google/android/gms/internal/ads/zzim;

    return v9

    :cond_c8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzg:Lcom/google/android/gms/internal/ads/zzib;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhv;->zzf()Z

    move-result v3

    if-eqz v3, :cond_10b

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzab:J

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzac:J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzV:I

    if-ne v1, v8, :cond_dd

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhv;->zzb()V

    iput v9, p0, Lcom/google/android/gms/internal/ads/zzss;->zzV:I

    :cond_dd
    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzss;->zzad:Z

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzY:Z

    if-nez v1, :cond_e7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaJ()V

    return v7

    :cond_e7
    :try_start_e7
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzK:Z

    if-nez v1, :cond_fa

    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzss;->zzZ:Z

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzM:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzsk;->zzj(IIIJI)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaK()V
    :try_end_fa
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_e7 .. :try_end_fa} :catch_fb

    :cond_fa
    return v7

    :catch_fb
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzm:Lcom/google/android/gms/internal/ads/zzam;

    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfs;->zzi(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzik;->zzi(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzam;ZI)Lcom/google/android/gms/internal/ads/zzit;

    move-result-object v0

    throw v0

    :cond_10b
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzY:Z

    if-nez v3, :cond_11f

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhv;->zzg()Z

    move-result v3

    if-nez v3, :cond_11f

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhv;->zzb()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzV:I

    if-ne v0, v8, :cond_11e

    iput v9, p0, Lcom/google/android/gms/internal/ads/zzss;->zzV:I

    :cond_11e
    return v9

    :cond_11f
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzib;->zzk()Z

    move-result v3

    if-eqz v3, :cond_12a

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzib;->zzb:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzhy;->zzb(I)V

    :cond_12a
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzC:Z

    if-eqz v1, :cond_187

    if-nez v3, :cond_187

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzg:Lcom/google/android/gms/internal/ads/zzib;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzib;->zzc:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgg;->zza:[B

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_13f
    add-int/lit8 v8, v5, 0x1

    if-ge v8, v2, :cond_174

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    const/4 v11, 0x3

    if-ne v6, v11, :cond_16b

    if-ne v10, v9, :cond_16f

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    and-int/lit8 v10, v10, 0x1f

    const/4 v11, 0x7

    if-ne v10, v11, :cond_169

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v6

    add-int/2addr v5, v4

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_177

    :cond_169
    const/4 v10, 0x1

    goto :goto_16f

    :cond_16b
    if-nez v10, :cond_16f

    add-int/lit8 v6, v6, 0x1

    :cond_16f
    :goto_16f
    if-eqz v10, :cond_172

    const/4 v6, 0x0

    :cond_172
    move v5, v8

    goto :goto_13f

    :cond_174
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_177
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzg:Lcom/google/android/gms/internal/ads/zzib;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzib;->zzc:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-nez v1, :cond_185

    return v9

    :cond_185
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzss;->zzC:Z

    :cond_187
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzg:Lcom/google/android/gms/internal/ads/zzib;

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzib;->zze:J

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzaf:Z

    if-eqz v1, :cond_1b8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzk:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1aa

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzk:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzsr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzsr;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzm:Lcom/google/android/gms/internal/ads/zzam;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzd(JLjava/lang/Object;)V

    goto :goto_1b6

    :cond_1aa
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzag:Lcom/google/android/gms/internal/ads/zzsr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzsr;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzm:Lcom/google/android/gms/internal/ads/zzam;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzd(JLjava/lang/Object;)V

    :goto_1b6
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzss;->zzaf:Z

    :cond_1b8
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzab:J

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzab:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzO()Z

    move-result v6

    if-nez v6, :cond_1ce

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzss;->zzg:Lcom/google/android/gms/internal/ads/zzib;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhv;->zzh()Z

    move-result v6

    if-eqz v6, :cond_1d0

    :cond_1ce
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzac:J

    :cond_1d0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzg:Lcom/google/android/gms/internal/ads/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzib;->zzj()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzg:Lcom/google/android/gms/internal/ads/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhv;->zze()Z

    move-result v2

    if-eqz v2, :cond_1e0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzss;->zzaf(Lcom/google/android/gms/internal/ads/zzib;)V

    :cond_1e0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzg:Lcom/google/android/gms/internal/ads/zzib;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzss;->zzax(Lcom/google/android/gms/internal/ads/zzib;)V

    if-eqz v3, :cond_1f3

    :try_start_1e7
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzM:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzg:Lcom/google/android/gms/internal/ads/zzib;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzib;->zzb:Lcom/google/android/gms/internal/ads/zzhy;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzsk;->zzk(IILcom/google/android/gms/internal/ads/zzhy;JI)V

    goto :goto_208

    :cond_1f3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzM:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzg:Lcom/google/android/gms/internal/ads/zzib;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzib;->zzc:Ljava/nio/ByteBuffer;
    :try_end_1f9
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1e7 .. :try_end_1f9} :catch_217

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    :try_start_1fd
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    const/4 v8, 0x0

    move v2, v3

    move v3, v6

    move v6, v8

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzsk;->zzj(IIIJI)V
    :try_end_208
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1fd .. :try_end_208} :catch_217

    :goto_208
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaK()V

    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzss;->zzY:Z

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzss;->zzV:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzil;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzil;->zzc:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzil;->zzc:I

    return v9

    :catch_217
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzm:Lcom/google/android/gms/internal/ads/zzam;

    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfs;->zzi(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzik;->zzi(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzam;ZI)Lcom/google/android/gms/internal/ads/zzit;

    move-result-object v0

    throw v0

    :catch_227
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzss;->zzag(Ljava/lang/Exception;)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzss;->zzaR(I)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzak()V

    return v9

    :cond_232
    :goto_232
    return v7
.end method

.method private final zzaQ()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzN:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private final zzaR(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzf:Lcom/google/android/gms/internal/ads/zzib;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzj()Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhv;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzf:Lcom/google/android/gms/internal/ads/zzib;

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzik;->zzbe(Lcom/google/android/gms/internal/ads/zzkv;Lcom/google/android/gms/internal/ads/zzib;I)I

    move-result p1

    const/4 v0, 0x1

    const/4 v2, -0x5

    if-ne p1, v2, :cond_19

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzss;->zzaa(Lcom/google/android/gms/internal/ads/zzkv;)Lcom/google/android/gms/internal/ads/zzim;

    return v0

    :cond_19
    const/4 v1, -0x4

    if-ne p1, v1, :cond_29

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzf:Lcom/google/android/gms/internal/ads/zzib;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhv;->zzf()Z

    move-result p1

    if-eqz p1, :cond_29

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzad:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaJ()V

    :cond_29
    const/4 p1, 0x0

    return p1
.end method

.method private final zzaS(J)Z
    .registers 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzq:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzh()Lcom/google/android/gms/internal/ads/zzeg;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzq:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p1, 0x0

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x1

    return p1
.end method

.method private final zzaT(Lcom/google/android/gms/internal/ads/zzam;)Z
    .registers 6
    .param p1    # Lcom/google/android/gms/internal/ads/zzam;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_8

    goto :goto_53

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzt:Lcom/google/android/gms/internal/ads/zzsk;

    if-eqz v0, :cond_53

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzX:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_53

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzbd()I

    move-result v0

    if-eqz v0, :cond_53

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzs:F

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzR()[Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v2

    invoke-virtual {p0, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzss;->zzX(FLcom/google/android/gms/internal/ads/zzam;[Lcom/google/android/gms/internal/ads/zzam;)F

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzx:F

    cmpl-float v2, v0, p1

    if-eqz v2, :cond_53

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, p1, v2

    if-nez v3, :cond_35

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzac()V

    const/4 p1, 0x0

    return p1

    :cond_35
    cmpl-float v0, v0, v2

    if-nez v0, :cond_3f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zze:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_53

    :cond_3f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzt:Lcom/google/android/gms/internal/ads/zzsk;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzsk;->zzp(Landroid/os/Bundle;)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzx:F

    :cond_53
    :goto_53
    return v1
.end method

.method private final zzab()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzT:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzi:Lcom/google/android/gms/internal/ads/zzsg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhv;->zzb()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzh:Lcom/google/android/gms/internal/ads/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhv;->zzb()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzS:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzR:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzl:Lcom/google/android/gms/internal/ads/zzrd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrd;->zzb()V

    return-void
.end method

.method private final zzac()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzY:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzW:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzX:I

    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaz()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzav()V

    return-void
.end method

.method private final zzak()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzt:Lcom/google/android/gms/internal/ads/zzsk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsk;->zzi()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaA()V

    return-void

    :catchall_c
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaA()V

    throw v0
.end method


# virtual methods
.method protected zzA()V
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaz()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzak:Lcom/google/android/gms/internal/ads/zzrs;

    return-void

    :catchall_a
    move-exception v1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzak:Lcom/google/android/gms/internal/ads/zzrs;

    throw v1
.end method

.method protected final zzD([Lcom/google/android/gms/internal/ads/zzam;JJLcom/google/android/gms/internal/ads/zzuk;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzss;->zzag:Lcom/google/android/gms/internal/ads/zzsr;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzsr;->zzd:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_21

    new-instance v1, Lcom/google/android/gms/internal/ads/zzsr;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v6, v1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzsr;-><init>(JJJ)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzss;->zzaM(Lcom/google/android/gms/internal/ads/zzsr;)V

    return-void

    :cond_21
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzss;->zzk:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzss;->zzab:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_39

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzss;->zzah:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_57

    cmp-long v7, v5, v1

    if-ltz v7, :cond_57

    :cond_39
    new-instance v1, Lcom/google/android/gms/internal/ads/zzsr;

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v8, v1

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzsr;-><init>(JJJ)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzss;->zzaM(Lcom/google/android/gms/internal/ads/zzsr;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzss;->zzag:Lcom/google/android/gms/internal/ads/zzsr;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzsr;->zzd:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_56

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzal()V

    :cond_56
    return-void

    :cond_57
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzss;->zzk:Ljava/util/ArrayDeque;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzsr;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzss;->zzab:J

    move-object v2, v9

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzsr;-><init>(JJJ)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzK(FF)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzr:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzs:F

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzu:Lcom/google/android/gms/internal/ads/zzam;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzss;->zzaT(Lcom/google/android/gms/internal/ads/zzam;)Z

    return-void
.end method

.method public zzT(JJ)V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    move-object/from16 v15, p0

    const/4 v14, 0x1

    const/4 v13, 0x0

    :try_start_4
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzae:Z

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzss;->zzam()V

    return-void

    :cond_c
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzm:Lcom/google/android/gms/internal/ads/zzam;

    const/4 v11, 0x2

    if-nez v0, :cond_19

    invoke-direct {v15, v11}, Lcom/google/android/gms/internal/ads/zzss;->zzaR(I)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    return-void

    :cond_19
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzss;->zzav()V

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzR:Z

    if-eqz v0, :cond_1dc

    const-string v0, "bypassRender"

    sget v1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_27
    :goto_27
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzae:Z

    xor-int/2addr v0, v14

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzi:Lcom/google/android/gms/internal/ads/zzsg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsg;->zzp()Z

    move-result v1
    :try_end_33
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_33} :catch_407

    const-string v11, "audio/opus"

    if-eqz v1, :cond_9f

    :try_start_37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsg;->zzm()J

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzik;->zzf()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_51

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzn:Lcom/google/android/gms/internal/ads/zzam;

    if-eqz v0, :cond_4f

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/zzso;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    :cond_4f
    const/4 v0, 0x1

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    :goto_52
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzi:Lcom/google/android/gms/internal/ads/zzsg;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzib;->zzc:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzss;->zzN:I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsg;->zzl()I

    move-result v10

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzib;->zze:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhv;->zzf()Z

    move-result v16

    iget-object v12, v15, Lcom/google/android/gms/internal/ads/zzss;->zzn:Lcom/google/android/gms/internal/ads/zzam;
    :try_end_64
    .catch Ljava/lang/IllegalStateException; {:try_start_37 .. :try_end_64} :catch_407

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v17, v4

    move-wide/from16 v4, p3

    move-object/from16 v20, v11

    move-object/from16 v19, v12

    move-wide/from16 v11, v17

    move v13, v0

    move/from16 v14, v16

    move-object/from16 v15, v19

    :try_start_7c
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzss;->zzan(JJLcom/google/android/gms/internal/ads/zzsk;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzam;)Z

    move-result v0
    :try_end_80
    .catch Ljava/lang/IllegalStateException; {:try_start_7c .. :try_end_80} :catch_99

    if-eqz v0, :cond_93

    move-object/from16 v15, p0

    :try_start_84
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzi:Lcom/google/android/gms/internal/ads/zzsg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsg;->zzm()J

    move-result-wide v0

    invoke-virtual {v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzss;->zzaw(J)V

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzi:Lcom/google/android/gms/internal/ads/zzsg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhv;->zzb()V

    goto :goto_a1

    :cond_93
    move-object/from16 v15, p0

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_1d3

    :catch_99
    move-exception v0

    const/4 v2, 0x1

    const/16 v19, 0x0

    goto/16 :goto_372

    :cond_9f
    move-object/from16 v20, v11

    :goto_a1
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzad:Z

    if-eqz v0, :cond_ab

    const/4 v14, 0x1

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzss;->zzae:Z

    const/4 v13, 0x0

    goto/16 :goto_1d3

    :cond_ab
    const/4 v14, 0x1

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzS:Z

    if-eqz v0, :cond_bf

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzi:Lcom/google/android/gms/internal/ads/zzsg;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzh:Lcom/google/android/gms/internal/ads/zzib;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzsg;->zzo(Lcom/google/android/gms/internal/ads/zzib;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    const/4 v13, 0x0

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzss;->zzS:Z

    goto :goto_c0

    :cond_bf
    const/4 v13, 0x0

    :goto_c0
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzT:Z

    if-eqz v0, :cond_d8

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzi:Lcom/google/android/gms/internal/ads/zzsg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsg;->zzp()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzss;->zzab()V

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzss;->zzT:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzss;->zzav()V

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzR:Z

    if-eqz v0, :cond_1d3

    :cond_d8
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzad:Z

    xor-int/2addr v0, v14

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzik;->zzj()Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v0

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzh:Lcom/google/android/gms/internal/ads/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhv;->zzb()V

    :goto_e7
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzh:Lcom/google/android/gms/internal/ads/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhv;->zzb()V

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzh:Lcom/google/android/gms/internal/ads/zzib;

    invoke-virtual {v15, v0, v1, v13}, Lcom/google/android/gms/internal/ads/zzik;->zzbe(Lcom/google/android/gms/internal/ads/zzkv;Lcom/google/android/gms/internal/ads/zzib;I)I

    move-result v1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_1b3

    const/4 v2, -0x4

    if-eq v1, v2, :cond_fa

    goto/16 :goto_1b6

    :cond_fa
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzh:Lcom/google/android/gms/internal/ads/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhv;->zzf()Z

    move-result v1

    if-eqz v1, :cond_106

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzss;->zzad:Z

    goto/16 :goto_1b6

    :cond_106
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzaf:Z

    if-eqz v1, :cond_14e

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzm:Lcom/google/android/gms/internal/ads/zzam;
    :try_end_10c
    .catch Ljava/lang/IllegalStateException; {:try_start_84 .. :try_end_10c} :catch_407

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_10f
    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzn:Lcom/google/android/gms/internal/ads/zzam;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    move-object/from16 v2, v20

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzso;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_145

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzn:Lcom/google/android/gms/internal/ads/zzam;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzam;->zzo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_145

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzn:Lcom/google/android/gms/internal/ads/zzam;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzam;->zzo:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzada;->zza([B)I

    move-result v1

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzss;->zzn:Lcom/google/android/gms/internal/ads/zzam;
    :try_end_135
    .catch Ljava/lang/IllegalStateException; {:try_start_10f .. :try_end_135} :catch_407

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_138
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzam;->zzb()Lcom/google/android/gms/internal/ads/zzak;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzE(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzn:Lcom/google/android/gms/internal/ads/zzam;

    :cond_145
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzn:Lcom/google/android/gms/internal/ads/zzam;

    const/4 v3, 0x0

    invoke-virtual {v15, v1, v3}, Lcom/google/android/gms/internal/ads/zzss;->zzaj(Lcom/google/android/gms/internal/ads/zzam;Landroid/media/MediaFormat;)V

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzss;->zzaf:Z

    goto :goto_150

    :cond_14e
    move-object/from16 v2, v20

    :goto_150
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzh:Lcom/google/android/gms/internal/ads/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzib;->zzj()V

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzn:Lcom/google/android/gms/internal/ads/zzam;

    if-eqz v1, :cond_17e

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzso;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17e

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzh:Lcom/google/android/gms/internal/ads/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhv;->zze()Z

    move-result v3

    if-eqz v3, :cond_170

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzss;->zzn:Lcom/google/android/gms/internal/ads/zzam;

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzib;->zza:Lcom/google/android/gms/internal/ads/zzam;

    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/ads/zzss;->zzaf(Lcom/google/android/gms/internal/ads/zzib;)V

    :cond_170
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzl:Lcom/google/android/gms/internal/ads/zzrd;

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzss;->zzh:Lcom/google/android/gms/internal/ads/zzib;

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzss;->zzn:Lcom/google/android/gms/internal/ads/zzam;
    :try_end_176
    .catch Ljava/lang/IllegalStateException; {:try_start_138 .. :try_end_176} :catch_407

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_179
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzam;->zzo:Ljava/util/List;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzrd;->zza(Lcom/google/android/gms/internal/ads/zzib;Ljava/util/List;)V

    :cond_17e
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzi:Lcom/google/android/gms/internal/ads/zzsg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsg;->zzp()Z

    move-result v3

    if-nez v3, :cond_187

    goto :goto_1a3

    :cond_187
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzik;->zzf()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsg;->zzm()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-ltz v7, :cond_195

    const/4 v5, 0x0

    goto :goto_196

    :cond_195
    const/4 v5, 0x1

    :goto_196
    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzss;->zzh:Lcom/google/android/gms/internal/ads/zzib;

    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/zzib;->zze:J

    cmp-long v8, v6, v3

    if-ltz v8, :cond_1a0

    const/4 v3, 0x0

    goto :goto_1a1

    :cond_1a0
    const/4 v3, 0x1

    :goto_1a1
    if-ne v5, v3, :cond_1b0

    :goto_1a3
    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzss;->zzh:Lcom/google/android/gms/internal/ads/zzib;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzsg;->zzo(Lcom/google/android/gms/internal/ads/zzib;)Z

    move-result v1

    if-nez v1, :cond_1ac

    goto :goto_1b0

    :cond_1ac
    move-object/from16 v20, v2

    goto/16 :goto_e7

    :cond_1b0
    :goto_1b0
    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzss;->zzS:Z

    goto :goto_1b6

    :cond_1b3
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/ads/zzss;->zzaa(Lcom/google/android/gms/internal/ads/zzkv;)Lcom/google/android/gms/internal/ads/zzim;

    :goto_1b6
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzi:Lcom/google/android/gms/internal/ads/zzsg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsg;->zzp()Z

    move-result v1

    if-eqz v1, :cond_1c1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzib;->zzj()V

    :cond_1c1
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzi:Lcom/google/android/gms/internal/ads/zzsg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsg;->zzp()Z

    move-result v0

    if-nez v0, :cond_27

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzad:Z

    if-nez v0, :cond_27

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzT:Z

    if-eqz v0, :cond_1d3

    goto/16 :goto_27

    :cond_1d3
    :goto_1d3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    move-object v1, v15

    const/4 v2, 0x1

    const/16 v19, 0x0

    goto/16 :goto_3fc

    :cond_1dc
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzt:Lcom/google/android/gms/internal/ads/zzsk;
    :try_end_1de
    .catch Ljava/lang/IllegalStateException; {:try_start_179 .. :try_end_1de} :catch_407

    if-eqz v0, :cond_3ea

    :try_start_1e0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzik;->zzh()Lcom/google/android/gms/internal/ads/zzeg;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-string v0, "drainAndFeed"

    sget v1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_1ee
    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzss;->zzt:Lcom/google/android/gms/internal/ads/zzsk;
    :try_end_1f0
    .catch Ljava/lang/IllegalStateException; {:try_start_1e0 .. :try_end_1f0} :catch_3e5

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1f3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaQ()Z

    move-result v0
    :try_end_1f7
    .catch Ljava/lang/IllegalStateException; {:try_start_1f3 .. :try_end_1f7} :catch_3e5

    if-nez v0, :cond_31e

    :try_start_1f9
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzG:Z

    if-eqz v0, :cond_213

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzZ:Z
    :try_end_1ff
    .catch Ljava/lang/IllegalStateException; {:try_start_1f9 .. :try_end_1ff} :catch_407

    if-eqz v0, :cond_213

    :try_start_201
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzj:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/ads/zzsk;->zzb(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0
    :try_end_207
    .catch Ljava/lang/IllegalStateException; {:try_start_201 .. :try_end_207} :catch_208

    goto :goto_219

    :catch_208
    :try_start_208
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaJ()V

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzae:Z

    if-eqz v0, :cond_256

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaz()V

    goto :goto_256

    :cond_213
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzj:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/ads/zzsk;->zzb(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0

    :goto_219
    if-gez v0, :cond_25c

    const/4 v1, -0x2

    if-ne v0, v1, :cond_247

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzss;->zzaa:Z

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzt:Lcom/google/android/gms/internal/ads/zzsk;
    :try_end_222
    .catch Ljava/lang/IllegalStateException; {:try_start_208 .. :try_end_222} :catch_407

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_225
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsk;->zzc()Landroid/media/MediaFormat;

    move-result-object v0

    iget v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzB:I

    if-eqz v1, :cond_242

    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_242

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_242

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzss;->zzJ:Z

    goto :goto_265

    :cond_242
    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzv:Landroid/media/MediaFormat;

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzss;->zzw:Z

    goto :goto_265

    :cond_247
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzK:Z

    if-eqz v0, :cond_256

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzad:Z

    if-nez v0, :cond_253

    iget v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzW:I

    if-ne v0, v11, :cond_256

    :cond_253
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaJ()V

    :cond_256
    :goto_256
    move-wide v2, v9

    move-object v1, v15

    const/16 v19, 0x0

    goto/16 :goto_3cd

    :cond_25c
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzJ:Z

    if-eqz v1, :cond_26d

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzss;->zzJ:Z

    invoke-interface {v6, v0, v13}, Lcom/google/android/gms/internal/ads/zzsk;->zzn(IZ)V

    :goto_265
    move-wide v2, v9

    move-object v1, v15

    const/16 v16, 0x2

    const/16 v19, 0x0

    goto/16 :goto_3bc

    :cond_26d
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzj:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_27d

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_27d

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaJ()V

    goto :goto_256

    :cond_27d
    iput v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzN:I

    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/ads/zzsk;->zzg(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzO:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_29a

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzj:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzO:Ljava/nio/ByteBuffer;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzj:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_29a
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzH:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2bd

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzj:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v7, 0x0

    cmp-long v5, v3, v7

    if-nez v5, :cond_2bd

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2bd

    iget-wide v3, v15, Lcom/google/android/gms/internal/ads/zzss;->zzab:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_2bd

    iget-wide v3, v15, Lcom/google/android/gms/internal/ads/zzss;->zzac:J

    iput-wide v3, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_2bd
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzj:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzik;->zzf()J

    move-result-wide v7

    cmp-long v0, v3, v7

    if-gez v0, :cond_2cb

    const/4 v0, 0x1

    goto :goto_2cc

    :cond_2cb
    const/4 v0, 0x0

    :goto_2cc
    iput-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzP:Z

    iget-wide v3, v15, Lcom/google/android/gms/internal/ads/zzss;->zzac:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2de

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzj:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v2, v3, v0

    if-gtz v2, :cond_2de

    const/4 v0, 0x1

    goto :goto_2df

    :cond_2de
    const/4 v0, 0x0

    :goto_2df
    iput-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzQ:Z

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzj:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzss;->zzag:Lcom/google/android/gms/internal/ads/zzsr;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzsr;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzc(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzam;

    if-nez v0, :cond_303

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzai:Z

    if-eqz v1, :cond_303

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzv:Landroid/media/MediaFormat;

    if-eqz v1, :cond_303

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzag:Lcom/google/android/gms/internal/ads/zzsr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsr;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzam;

    :cond_303
    if-eqz v0, :cond_308

    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzn:Lcom/google/android/gms/internal/ads/zzam;

    goto :goto_310

    :cond_308
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzw:Z

    if-eqz v0, :cond_31e

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzn:Lcom/google/android/gms/internal/ads/zzam;

    if-eqz v0, :cond_31e

    :goto_310
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzn:Lcom/google/android/gms/internal/ads/zzam;
    :try_end_312
    .catch Ljava/lang/IllegalStateException; {:try_start_225 .. :try_end_312} :catch_407

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_315
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzss;->zzv:Landroid/media/MediaFormat;

    invoke-virtual {v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzss;->zzaj(Lcom/google/android/gms/internal/ads/zzam;Landroid/media/MediaFormat;)V

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzss;->zzw:Z

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzss;->zzai:Z
    :try_end_31e
    .catch Ljava/lang/IllegalStateException; {:try_start_315 .. :try_end_31e} :catch_407

    :cond_31e
    :try_start_31e
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzG:Z
    :try_end_320
    .catch Ljava/lang/IllegalStateException; {:try_start_31e .. :try_end_320} :catch_3e5

    if-eqz v0, :cond_37b

    :try_start_322
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzZ:Z
    :try_end_324
    .catch Ljava/lang/IllegalStateException; {:try_start_322 .. :try_end_324} :catch_376

    if-eqz v0, :cond_37b

    :try_start_326
    iget-object v7, v15, Lcom/google/android/gms/internal/ads/zzss;->zzO:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzss;->zzN:I

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzj:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzP:Z

    iget-boolean v2, v15, Lcom/google/android/gms/internal/ads/zzss;->zzQ:Z

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzss;->zzn:Lcom/google/android/gms/internal/ads/zzam;
    :try_end_336
    .catch Ljava/lang/IllegalStateException; {:try_start_326 .. :try_end_336} :catch_35c

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move/from16 v17, v2

    move-object/from16 v18, v3

    move-wide/from16 v2, p1

    move-wide/from16 v19, v4

    move-wide/from16 v4, p3

    move-wide/from16 v21, v9

    move v9, v12

    move/from16 v10, v16

    const/16 v16, 0x2

    move-wide/from16 v11, v19

    const/16 v19, 0x0

    move v13, v0

    move/from16 v14, v17

    move-object/from16 v15, v18

    :try_start_357
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzss;->zzan(JJLcom/google/android/gms/internal/ads/zzsk;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzam;)Z

    move-result v0
    :try_end_35b
    .catch Ljava/lang/IllegalStateException; {:try_start_357 .. :try_end_35b} :catch_360

    goto :goto_3a0

    :catch_35c
    move-wide/from16 v21, v9

    const/16 v19, 0x0

    :catch_360
    :try_start_360
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaJ()V
    :try_end_363
    .catch Ljava/lang/IllegalStateException; {:try_start_360 .. :try_end_363} :catch_370

    move-object/from16 v15, p0

    :try_start_365
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzae:Z

    if-eqz v0, :cond_36c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaz()V

    :cond_36c
    move-object v1, v15

    :goto_36d
    move-wide/from16 v2, v21

    goto :goto_3cd

    :catch_370
    move-exception v0

    const/4 v2, 0x1

    :goto_372
    move-object/from16 v1, p0

    goto/16 :goto_40c

    :catch_376
    move-exception v0

    const/16 v19, 0x0

    goto/16 :goto_3e3

    :cond_37b
    move-wide/from16 v21, v9

    const/16 v16, 0x2

    const/16 v19, 0x0

    iget-object v7, v15, Lcom/google/android/gms/internal/ads/zzss;->zzO:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzss;->zzN:I

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzj:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v11, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzss;->zzP:Z

    iget-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzss;->zzQ:Z

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzss;->zzn:Lcom/google/android/gms/internal/ads/zzam;
    :try_end_391
    .catch Ljava/lang/IllegalStateException; {:try_start_365 .. :try_end_391} :catch_3e2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object v15, v0

    :try_start_39c
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzss;->zzan(JJLcom/google/android/gms/internal/ads/zzsk;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzam;)Z

    move-result v0
    :try_end_3a0
    .catch Ljava/lang/IllegalStateException; {:try_start_39c .. :try_end_3a0} :catch_3de

    :goto_3a0
    if-eqz v0, :cond_3ca

    move-object/from16 v1, p0

    :try_start_3a4
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzss;->zzj:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzss;->zzaw(J)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzss;->zzj:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaL()V

    if-eqz v0, :cond_3ba

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaJ()V

    goto :goto_36d

    :cond_3ba
    move-wide/from16 v2, v21

    :goto_3bc
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzss;->zzaS(J)Z

    move-result v0

    if-nez v0, :cond_3c3

    goto :goto_3cd

    :cond_3c3
    move-object v15, v1

    move-wide v9, v2

    const/4 v11, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_1ee

    :cond_3ca
    move-object/from16 v1, p0

    goto :goto_36d

    :cond_3cd
    :goto_3cd
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaP()Z

    move-result v0

    if-eqz v0, :cond_3d9

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzss;->zzaS(J)Z

    move-result v0

    if-nez v0, :cond_3cd

    :cond_3d9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v2, 0x1

    goto :goto_3fc

    :catch_3de
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_405

    :catch_3e2
    move-exception v0

    :goto_3e3
    move-object v1, v15

    goto :goto_405

    :catch_3e5
    move-exception v0

    move-object v1, v15

    const/16 v19, 0x0

    goto :goto_405

    :cond_3ea
    move-object v1, v15

    const/16 v19, 0x0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzil;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzil;->zzd:I

    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzik;->zzd(J)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzil;->zzd:I
    :try_end_3f8
    .catch Ljava/lang/IllegalStateException; {:try_start_3a4 .. :try_end_3f8} :catch_404

    const/4 v2, 0x1

    :try_start_3f9
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzss;->zzaR(I)Z

    :goto_3fc
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzil;->zza()V
    :try_end_401
    .catch Ljava/lang/IllegalStateException; {:try_start_3f9 .. :try_end_401} :catch_402

    return-void

    :catch_402
    move-exception v0

    goto :goto_40c

    :catch_404
    move-exception v0

    :goto_405
    const/4 v2, 0x1

    goto :goto_40c

    :catch_407
    move-exception v0

    move-object v1, v15

    const/4 v2, 0x1

    const/16 v19, 0x0

    :goto_40c
    sget v3, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_417

    instance-of v5, v0, Landroid/media/MediaCodec$CodecException;

    if-eqz v5, :cond_417

    goto :goto_42c

    :cond_417
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v6, v5

    if-lez v6, :cond_455

    aget-object v5, v5, v19

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.media.MediaCodec"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_455

    :goto_42c
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzss;->zzag(Ljava/lang/Exception;)V

    if-lt v3, v4, :cond_440

    instance-of v3, v0, Landroid/media/MediaCodec$CodecException;

    if-eqz v3, :cond_440

    move-object v3, v0

    check-cast v3, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v3}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result v3

    if-eqz v3, :cond_440

    const/4 v14, 0x1

    goto :goto_441

    :cond_440
    const/4 v14, 0x0

    :goto_441
    if-eqz v14, :cond_446

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaz()V

    :cond_446
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzss;->zzA:Lcom/google/android/gms/internal/ads/zzsn;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzss;->zzat(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzsn;)Lcom/google/android/gms/internal/ads/zzsl;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzss;->zzm:Lcom/google/android/gms/internal/ads/zzam;

    const/16 v3, 0xfa3

    invoke-virtual {v1, v0, v2, v14, v3}, Lcom/google/android/gms/internal/ads/zzik;->zzi(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzam;ZI)Lcom/google/android/gms/internal/ads/zzit;

    move-result-object v0

    throw v0

    :cond_455
    throw v0
.end method

.method public zzU()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzae:Z

    return v0
.end method

.method public zzV()Z
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzm:Lcom/google/android/gms/internal/ads/zzam;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzQ()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaQ()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzL:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzh()Lcom/google/android/gms/internal/ads/zzeg;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzss;->zzL:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2b

    goto :goto_2c

    :cond_2b
    return v1

    :cond_2c
    :goto_2c
    const/4 v1, 0x0

    :cond_2d
    return v1
.end method

.method public final zzW(Lcom/google/android/gms/internal/ads/zzam;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzd:Lcom/google/android/gms/internal/ads/zzsu;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzss;->zzY(Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzam;)I

    move-result p1
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zztb; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    const/16 v2, 0xfa2

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzik;->zzi(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzam;ZI)Lcom/google/android/gms/internal/ads/zzit;

    move-result-object p1

    throw p1
.end method

.method protected zzX(FLcom/google/android/gms/internal/ads/zzam;[Lcom/google/android/gms/internal/ads/zzam;)F
    .registers 4

    const/4 p1, 0x0

    throw p1
.end method

.method protected abstract zzY(Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzam;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztb;
        }
    .end annotation
.end method

.method protected zzZ(Lcom/google/android/gms/internal/ads/zzsn;Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzam;)Lcom/google/android/gms/internal/ads/zzim;
    .registers 4

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzaA()V
    .registers 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaK()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaL()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzL:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzZ:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzY:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzI:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzJ:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzP:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzQ:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzab:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzac:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzah:J

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzW:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzX:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzU:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzV:I

    return-void
.end method

.method protected final zzaB()V
    .registers 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaA()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzy:Ljava/util/ArrayDeque;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzA:Lcom/google/android/gms/internal/ads/zzsn;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzu:Lcom/google/android/gms/internal/ads/zzam;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzv:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzw:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzaa:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzx:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzB:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzC:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzD:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzE:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzF:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzG:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzH:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzK:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzU:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzV:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzp:Z

    return-void
.end method

.method protected final zzaC()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaD()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzav()V

    :cond_9
    return v0
.end method

.method protected final zzaD()Z
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzt:Lcom/google/android/gms/internal/ads/zzsk;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzX:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_45

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzD:Z

    if-nez v2, :cond_45

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzE:Z

    if-eqz v2, :cond_18

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzaa:Z

    if-eqz v2, :cond_45

    :cond_18
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzF:Z

    if-eqz v2, :cond_20

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzZ:Z

    if-nez v2, :cond_45

    :cond_20
    const/4 v2, 0x2

    if-ne v0, v2, :cond_41

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_2b

    const/4 v4, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x0

    :goto_2c
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    if-lt v0, v2, :cond_41

    :try_start_31
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaN()V
    :try_end_34
    .catch Lcom/google/android/gms/internal/ads/zzit; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_41

    :catch_35
    move-exception v0

    const-string v1, "MediaCodecRenderer"

    const-string v2, "Failed to update the DRM session, releasing the codec instead."

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaz()V

    return v3

    :cond_41
    :goto_41
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzak()V

    return v1

    :cond_45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaz()V

    return v3
.end method

.method protected final zzaE()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzR:Z

    return v0
.end method

.method protected final zzaF(Lcom/google/android/gms/internal/ads/zzam;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzak:Lcom/google/android/gms/internal/ads/zzrs;

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzss;->zzao(Lcom/google/android/gms/internal/ads/zzam;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method protected zzaG(Lcom/google/android/gms/internal/ads/zzsn;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method protected zzaa(Lcom/google/android/gms/internal/ads/zzkv;)Lcom/google/android/gms/internal/ads/zzim;
    .registers 13
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzaf:Z

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzkv;->zza:Lcom/google/android/gms/internal/ads/zzam;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_ed

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzkv;->zzb:Lcom/google/android/gms/internal/ads/zzrs;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzak:Lcom/google/android/gms/internal/ads/zzrs;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzss;->zzm:Lcom/google/android/gms/internal/ads/zzam;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzR:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_1b

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzT:Z

    return-object v3

    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzt:Lcom/google/android/gms/internal/ads/zzsk;

    if-nez v1, :cond_25

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzy:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzav()V

    return-object v3

    :cond_25
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzA:Lcom/google/android/gms/internal/ads/zzsn;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzss;->zzu:Lcom/google/android/gms/internal/ads/zzam;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzss;->zzaj:Lcom/google/android/gms/internal/ads/zzrs;

    if-ne v6, p1, :cond_dc

    if-eq p1, v6, :cond_37

    const/4 p1, 0x1

    goto :goto_38

    :cond_37
    const/4 p1, 0x0

    :goto_38
    if-eqz p1, :cond_43

    sget v6, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_41

    goto :goto_43

    :cond_41
    const/4 v6, 0x0

    goto :goto_44

    :cond_43
    :goto_43
    const/4 v6, 0x1

    :goto_44
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    invoke-virtual {p0, v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzss;->zzZ(Lcom/google/android/gms/internal/ads/zzsn;Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzam;)Lcom/google/android/gms/internal/ads/zzim;

    move-result-object v6

    iget v7, v6, Lcom/google/android/gms/internal/ads/zzim;->zzd:I

    const/4 v8, 0x3

    const/16 v9, 0x10

    const/4 v10, 0x2

    if-eqz v7, :cond_be

    if-eq v7, v0, :cond_95

    if-eq v7, v10, :cond_69

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzss;->zzaT(Lcom/google/android/gms/internal/ads/zzam;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_9b

    :cond_5e
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzss;->zzu:Lcom/google/android/gms/internal/ads/zzam;

    if-eqz p1, :cond_c1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaO()Z

    move-result p1

    if-nez p1, :cond_c1

    goto :goto_c2

    :cond_69
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzss;->zzaT(Lcom/google/android/gms/internal/ads/zzam;)Z

    move-result v7

    if-nez v7, :cond_70

    goto :goto_9b

    :cond_70
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzU:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzV:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzss;->zzB:I

    if-eq v7, v10, :cond_88

    if-ne v7, v0, :cond_87

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzam;->zzr:I

    iget v9, v5, Lcom/google/android/gms/internal/ads/zzam;->zzr:I

    if-ne v7, v9, :cond_87

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzam;->zzs:I

    iget v9, v5, Lcom/google/android/gms/internal/ads/zzam;->zzs:I

    if-ne v7, v9, :cond_87

    goto :goto_88

    :cond_87
    const/4 v0, 0x0

    :cond_88
    :goto_88
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzI:Z

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzss;->zzu:Lcom/google/android/gms/internal/ads/zzam;

    if-eqz p1, :cond_c1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaO()Z

    move-result p1

    if-nez p1, :cond_c1

    goto :goto_c2

    :cond_95
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzss;->zzaT(Lcom/google/android/gms/internal/ads/zzam;)Z

    move-result v7

    if-nez v7, :cond_9e

    :goto_9b
    const/16 v10, 0x10

    goto :goto_c2

    :cond_9e
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzss;->zzu:Lcom/google/android/gms/internal/ads/zzam;

    if-eqz p1, :cond_a9

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaO()Z

    move-result p1

    if-nez p1, :cond_c1

    goto :goto_c2

    :cond_a9
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzY:Z

    if-eqz p1, :cond_c1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzW:I

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzD:Z

    if-nez p1, :cond_bb

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzF:Z

    if-eqz p1, :cond_b8

    goto :goto_bb

    :cond_b8
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzX:I

    goto :goto_c1

    :cond_bb
    :goto_bb
    iput v8, p0, Lcom/google/android/gms/internal/ads/zzss;->zzX:I

    goto :goto_c2

    :cond_be
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzac()V

    :cond_c1
    :goto_c1
    const/4 v10, 0x0

    :goto_c2
    iget p1, v6, Lcom/google/android/gms/internal/ads/zzim;->zzd:I

    if-eqz p1, :cond_db

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzt:Lcom/google/android/gms/internal/ads/zzsk;

    if-ne p1, v1, :cond_ce

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzX:I

    if-ne p1, v8, :cond_db

    :cond_ce
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzsn;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzim;

    const/4 v0, 0x0

    move-object v1, p1

    move-object v3, v5

    move v5, v0

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzim;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzam;II)V

    return-object p1

    :cond_db
    return-object v6

    :cond_dc
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzac()V

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzsn;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzim;

    const/4 v0, 0x0

    const/16 v6, 0x80

    move-object v1, p1

    move-object v3, v5

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzim;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzam;II)V

    return-object p1

    :cond_ed
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/16 v0, 0xfa5

    invoke-virtual {p0, p1, v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzik;->zzi(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzam;ZI)Lcom/google/android/gms/internal/ads/zzit;

    move-result-object p1

    throw p1
.end method

.method protected abstract zzad(Lcom/google/android/gms/internal/ads/zzsn;Lcom/google/android/gms/internal/ads/zzam;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzsi;
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected abstract zzae(Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzam;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztb;
        }
    .end annotation
.end method

.method protected zzaf(Lcom/google/android/gms/internal/ads/zzib;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzag(Ljava/lang/Exception;)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzah(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzsi;JJ)V
    .registers 7

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzai(Ljava/lang/String;)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzaj(Lcom/google/android/gms/internal/ads/zzam;Landroid/media/MediaFormat;)V
    .registers 3
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzal()V
    .registers 1

    return-void
.end method

.method protected zzam()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    return-void
.end method

.method protected abstract zzan(JJLcom/google/android/gms/internal/ads/zzsk;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzam;)Z
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
.end method

.method protected zzao(Lcom/google/android/gms/internal/ads/zzam;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method protected final zzap()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzr:F

    return v0
.end method

.method protected final zzaq()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzag:Lcom/google/android/gms/internal/ads/zzsr;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzsr;->zzd:J

    return-wide v0
.end method

.method protected final zzar()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzag:Lcom/google/android/gms/internal/ads/zzsr;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzsr;->zzc:J

    return-wide v0
.end method

.method protected final zzas()Lcom/google/android/gms/internal/ads/zzsk;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzt:Lcom/google/android/gms/internal/ads/zzsk;

    return-object v0
.end method

.method protected zzat(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzsn;)Lcom/google/android/gms/internal/ads/zzsl;
    .registers 4
    .param p2    # Lcom/google/android/gms/internal/ads/zzsn;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsl;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsl;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzsn;)V

    return-object v0
.end method

.method protected final zzau()Lcom/google/android/gms/internal/ads/zzsn;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzA:Lcom/google/android/gms/internal/ads/zzsn;

    return-object v0
.end method

.method protected final zzav()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzt:Lcom/google/android/gms/internal/ads/zzsk;

    if-nez v0, :cond_10a

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzR:Z

    if-nez v0, :cond_10a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzm:Lcom/google/android/gms/internal/ads/zzam;

    if-nez v0, :cond_e

    goto/16 :goto_10a

    :cond_e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzss;->zzaF(Lcom/google/android/gms/internal/ads/zzam;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzm:Lcom/google/android/gms/internal/ads/zzam;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzab()V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3a

    const-string v1, "audio/mpeg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "audio/opus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzi:Lcom/google/android/gms/internal/ads/zzsg;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzsg;->zzn(I)V

    goto :goto_41

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzi:Lcom/google/android/gms/internal/ads/zzsg;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzsg;->zzn(I)V

    :goto_41
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzR:Z

    return-void

    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzak:Lcom/google/android/gms/internal/ads/zzrs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzaj:Lcom/google/android/gms/internal/ads/zzrs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzm:Lcom/google/android/gms/internal/ads/zzam;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_51

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzrt;->zza:Z

    :cond_51
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :try_start_55
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzy:Ljava/util/ArrayDeque;
    :try_end_57
    .catch Lcom/google/android/gms/internal/ads/zzsq; {:try_start_55 .. :try_end_57} :catch_100

    const/4 v3, 0x0

    if-nez v2, :cond_88

    :try_start_5a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzd:Lcom/google/android/gms/internal/ads/zzsu;

    invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzss;->zzae(Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzam;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzss;->zzy:Ljava/util/ArrayDeque;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7b

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzss;->zzy:Ljava/util/ArrayDeque;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzsn;

    invoke-virtual {v4, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_7b
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzz:Lcom/google/android/gms/internal/ads/zzsq;
    :try_end_7d
    .catch Lcom/google/android/gms/internal/ads/zztb; {:try_start_5a .. :try_end_7d} :catch_7e
    .catch Lcom/google/android/gms/internal/ads/zzsq; {:try_start_5a .. :try_end_7d} :catch_100

    goto :goto_88

    :catch_7e
    move-exception v2

    :try_start_7f
    new-instance v3, Lcom/google/android/gms/internal/ads/zzsq;

    const v4, -0xc34e

    invoke-direct {v3, v1, v2, v0, v4}, Lcom/google/android/gms/internal/ads/zzsq;-><init>(Lcom/google/android/gms/internal/ads/zzam;Ljava/lang/Throwable;ZI)V

    throw v3

    :cond_88
    :goto_88
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzy:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f7

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzy:Ljava/util/ArrayDeque;
    :try_end_92
    .catch Lcom/google/android/gms/internal/ads/zzsq; {:try_start_7f .. :try_end_92} :catch_100

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_95
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzsn;

    :goto_9b
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzss;->zzt:Lcom/google/android/gms/internal/ads/zzsk;

    if-nez v5, :cond_f4

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzsn;
    :try_end_a5
    .catch Lcom/google/android/gms/internal/ads/zzsq; {:try_start_95 .. :try_end_a5} :catch_100

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_a8
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzss;->zzaG(Lcom/google/android/gms/internal/ads/zzsn;)Z

    move-result v6
    :try_end_ac
    .catch Lcom/google/android/gms/internal/ads/zzsq; {:try_start_a8 .. :try_end_ac} :catch_100

    if-eqz v6, :cond_10a

    :try_start_ae
    invoke-direct {p0, v5, v3}, Lcom/google/android/gms/internal/ads/zzss;->zzaI(Lcom/google/android/gms/internal/ads/zzsn;Landroid/media/MediaCrypto;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b1} :catch_b2

    goto :goto_9b

    :catch_b2
    move-exception v6

    const-string v7, "MediaCodecRenderer"

    if-ne v5, v4, :cond_c5

    :try_start_b7
    const-string v6, "Preferred decoder instantiation failed. Sleeping for 50ms then retrying."

    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x32

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    invoke-direct {p0, v5, v3}, Lcom/google/android/gms/internal/ads/zzss;->zzaI(Lcom/google/android/gms/internal/ads/zzsn;Landroid/media/MediaCrypto;)V

    goto :goto_9b

    :cond_c5
    throw v6
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_c6} :catch_c6

    :catch_c6
    move-exception v6

    :try_start_c7
    iget-object v8, v5, Lcom/google/android/gms/internal/ads/zzsn;->zza:Ljava/lang/String;

    const-string v9, "Failed to initialize decoder: "

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/google/android/gms/internal/ads/zzez;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzsq;

    invoke-direct {v7, v1, v6, v0, v5}, Lcom/google/android/gms/internal/ads/zzsq;-><init>(Lcom/google/android/gms/internal/ads/zzam;Ljava/lang/Throwable;ZLcom/google/android/gms/internal/ads/zzsn;)V

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzss;->zzag(Ljava/lang/Exception;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzss;->zzz:Lcom/google/android/gms/internal/ads/zzsq;

    if-nez v5, :cond_e4

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzss;->zzz:Lcom/google/android/gms/internal/ads/zzsq;

    goto :goto_ea

    :cond_e4
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzsq;->zza(Lcom/google/android/gms/internal/ads/zzsq;Lcom/google/android/gms/internal/ads/zzsq;)Lcom/google/android/gms/internal/ads/zzsq;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzss;->zzz:Lcom/google/android/gms/internal/ads/zzsq;

    :goto_ea
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f1

    goto :goto_9b

    :cond_f1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzz:Lcom/google/android/gms/internal/ads/zzsq;

    throw v1

    :cond_f4
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzy:Ljava/util/ArrayDeque;

    return-void

    :cond_f7
    new-instance v2, Lcom/google/android/gms/internal/ads/zzsq;

    const v4, -0xc34f

    invoke-direct {v2, v1, v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzsq;-><init>(Lcom/google/android/gms/internal/ads/zzam;Ljava/lang/Throwable;ZI)V

    throw v2
    :try_end_100
    .catch Lcom/google/android/gms/internal/ads/zzsq; {:try_start_c7 .. :try_end_100} :catch_100

    :catch_100
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzm:Lcom/google/android/gms/internal/ads/zzam;

    const/16 v3, 0xfa1

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzik;->zzi(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzam;ZI)Lcom/google/android/gms/internal/ads/zzit;

    move-result-object v0

    throw v0

    :cond_10a
    :goto_10a
    return-void
.end method

.method protected zzaw(J)V
    .registers 6
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzah:J

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzk:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzk:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsr;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzsr;->zzb:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzk:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsr;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzss;->zzaM(Lcom/google/android/gms/internal/ads/zzsr;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzal()V

    goto :goto_2

    :cond_2a
    return-void
.end method

.method protected zzax(Lcom/google/android/gms/internal/ads/zzib;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    return-void
.end method

.method protected zzay(Lcom/google/android/gms/internal/ads/zzam;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    return-void
.end method

.method protected final zzaz()V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzt:Lcom/google/android/gms/internal/ads/zzsk;

    if-eqz v1, :cond_1a

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzsk;->zzl()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzil;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzil;->zzb:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzil;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzA:Lcom/google/android/gms/internal/ads/zzsn;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_24

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_15
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzsn;->zza:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzss;->zzai(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_24

    :cond_1a
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzt:Lcom/google/android/gms/internal/ads/zzsk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzo:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzaj:Lcom/google/android/gms/internal/ads/zzrs;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaB()V

    return-void

    :catchall_24
    move-exception v1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzt:Lcom/google/android/gms/internal/ads/zzsk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzo:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzaj:Lcom/google/android/gms/internal/ads/zzrs;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaB()V

    throw v1
.end method

.method public final zze()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method protected zzw()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzm:Lcom/google/android/gms/internal/ads/zzam;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzsr;->zza:Lcom/google/android/gms/internal/ads/zzsr;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzss;->zzaM(Lcom/google/android/gms/internal/ads/zzsr;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzk:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaD()Z

    return-void
.end method

.method protected zzx(ZZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/ads/zzil;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzil;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzil;

    return-void
.end method

.method protected zzy(JZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzad:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzae:Z

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzR:Z

    if-eqz p2, :cond_1b

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzi:Lcom/google/android/gms/internal/ads/zzsg;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhv;->zzb()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzh:Lcom/google/android/gms/internal/ads/zzib;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhv;->zzb()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzS:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzl:Lcom/google/android/gms/internal/ads/zzrd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzrd;->zzb()V

    goto :goto_1e

    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaC()Z

    :goto_1e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzag:Lcom/google/android/gms/internal/ads/zzsr;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzsr;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza()I

    move-result p2

    if-lez p2, :cond_2b

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzaf:Z

    :cond_2b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zze()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzk:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

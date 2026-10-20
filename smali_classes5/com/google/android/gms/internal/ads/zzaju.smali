###### Class com.google.android.gms.internal.ads.zzaju (com.google.android.gms.internal.ads.zzaju)
.class public final Lcom/google/android/gms/internal/ads/zzaju;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzajy;


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfi;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfj;

.field private final zze:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/ads/zzadk;

.field private zzh:Lcom/google/android/gms/internal/ads/zzadk;

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:Z

.field private zzm:Z

.field private zzn:I

.field private zzo:I

.field private zzp:I

.field private zzq:Z

.field private zzr:J

.field private zzs:I

.field private zzt:J

.field private zzu:Lcom/google/android/gms/internal/ads/zzadk;

.field private zzv:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaju;->zza:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfi;

    const/4 v1, 0x7

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfi;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzc:Lcom/google/android/gms/internal/ads/zzfi;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfj;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaju;->zza:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzd:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaju;->zzh()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzn:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzo:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzr:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzt:J

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzb:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaju;->zze:Ljava/lang/String;

    return-void
.end method

.method public static zzf(I)Z
    .registers 2

    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private final zzg()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzm:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaju;->zzh()V

    return-void
.end method

.method private final zzh()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzi:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzj:I

    const/16 v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzk:I

    return-void
.end method

.method private final zzi()V
    .registers 2

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzi:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzj:I

    return-void
.end method

.method private final zzj(Lcom/google/android/gms/internal/ads/zzadk;JII)V
    .registers 7

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzi:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzj:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzu:Lcom/google/android/gms/internal/ads/zzadk;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzv:J

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzs:I

    return-void
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzfj;[BI)Z
    .registers 6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzj:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzj:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzC([BII)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzj:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzj:I

    if-ne p1, p3, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method private static final zzl(BB)Z
    .registers 2

    and-int/lit16 p0, p1, 0xff

    const p1, 0xff00

    or-int/2addr p0, p1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaju;->zzf(I)Z

    move-result p0

    return p0
.end method

.method private static final zzm(Lcom/google/android/gms/internal/ads/zzfj;[BI)Z
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p2, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzfj;->zzC([BII)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfj;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcf;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzg:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    :cond_b
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v0

    if-lez v0, :cond_2c1

    iget v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzi:I

    const/16 v1, 0xd

    const/4 v2, 0x7

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v0, :cond_192

    if-eq v0, v10, :cond_157

    const/16 v5, 0xa

    if-eq v0, v9, :cond_12a

    if-eq v0, v4, :cond_5f

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v0

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzs:I

    iget v2, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzj:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzu:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-interface {v1, v7, v0}, Lcom/google/android/gms/internal/ads/zzadk;->zzr(Lcom/google/android/gms/internal/ads/zzfj;I)V

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzj:I

    add-int/2addr v1, v0

    iput v1, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzj:I

    iget v12, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzs:I

    if-ne v1, v12, :cond_b

    iget-wide v9, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzt:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v9, v0

    if-eqz v2, :cond_5b

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzu:Lcom/google/android/gms/internal/ads/zzadk;

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzadk;->zzt(JIIILcom/google/android/gms/internal/ads/zzadj;)V

    iget-wide v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzt:J

    iget-wide v2, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzv:J

    add-long/2addr v0, v2

    iput-wide v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzt:J

    :cond_5b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaju;->zzh()V

    goto :goto_b

    :cond_5f
    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzl:Z

    const/4 v11, 0x5

    if-eq v10, v0, :cond_66

    const/4 v0, 0x5

    goto :goto_67

    :cond_66
    const/4 v0, 0x7

    :goto_67
    iget-object v12, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzc:Lcom/google/android/gms/internal/ads/zzfi;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzfi;->zza:[B

    invoke-direct {v6, v7, v12, v0}, Lcom/google/android/gms/internal/ads/zzaju;->zzk(Lcom/google/android/gms/internal/ads/zzfj;[BI)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzc:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfi;->zzj(I)V

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzq:Z

    if-nez v0, :cond_105

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzc:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v0

    add-int/2addr v0, v10

    if-eq v0, v9, :cond_9e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Detected audio object type: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but assuming AAC LC."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "AdtsReader"

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9e
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzc:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzc:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v0

    iget v5, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzo:I

    sget v11, Lcom/google/android/gms/internal/ads/zzabc;->zza:I

    shr-int/lit8 v11, v5, 0x1

    and-int/2addr v11, v2

    new-array v9, v9, [B

    or-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    aput-byte v11, v9, v8

    shl-int/lit8 v2, v5, 0x7

    shl-int/2addr v0, v4

    and-int/lit16 v2, v2, 0x80

    and-int/lit8 v0, v0, 0x78

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v9, v10

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzabc;->zza([B)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzak;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzf:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzak;->zzJ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    const-string v4, "audio/mp4a-latm"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzak;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzabb;->zzc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzak;->zzz(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzabb;->zzb:I

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzak;->zzy(I)Lcom/google/android/gms/internal/ads/zzak;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzabb;->zza:I

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzak;->zzV(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzak;->zzK(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzak;

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zze:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzak;->zzM(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v0

    const-wide/32 v4, 0x3d090000

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzam;->zzA:I

    int-to-long v8, v2

    div-long/2addr v4, v8

    iput-wide v4, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzr:J

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzg:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzadk;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    iput-boolean v10, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzq:Z

    goto :goto_10a

    :cond_105
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzc:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :goto_10a
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzc:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzc:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    iget-boolean v1, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzl:Z

    if-eqz v1, :cond_11d

    add-int/lit8 v0, v0, -0x2

    :cond_11d
    move v5, v0

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzg:Lcom/google/android/gms/internal/ads/zzadk;

    iget-wide v2, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzr:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaju;->zzj(Lcom/google/android/gms/internal/ads/zzadk;JII)V

    goto/16 :goto_b

    :cond_12a
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzd:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v0

    invoke-direct {v6, v7, v0, v5}, Lcom/google/android/gms/internal/ads/zzaju;->zzk(Lcom/google/android/gms/internal/ads/zzfj;[BI)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzh:Lcom/google/android/gms/internal/ads/zzadk;

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzd:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-interface {v0, v1, v5}, Lcom/google/android/gms/internal/ads/zzadk;->zzr(Lcom/google/android/gms/internal/ads/zzfj;I)V

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzd:Lcom/google/android/gms/internal/ads/zzfj;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzh:Lcom/google/android/gms/internal/ads/zzadk;

    const-wide/16 v2, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzd:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzk()I

    move-result v0

    add-int/2addr v5, v0

    const/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaju;->zzj(Lcom/google/android/gms/internal/ads/zzadk;JII)V

    goto/16 :goto_b

    :cond_157
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzc:Lcom/google/android/gms/internal/ads/zzfi;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfi;->zza:[B

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v4

    aget-byte v2, v2, v4

    aput-byte v2, v1, v8

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfi;->zzj(I)V

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzc:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v0

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzo:I

    if-eq v1, v5, :cond_181

    if-eq v0, v1, :cond_181

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaju;->zzg()V

    goto/16 :goto_b

    :cond_181
    iget-boolean v1, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzm:Z

    if-nez v1, :cond_18d

    iput-boolean v10, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzm:Z

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzp:I

    iput v1, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzn:I

    iput v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzo:I

    :cond_18d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaju;->zzi()V

    goto/16 :goto_b

    :cond_192
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzd()I

    move-result v12

    :goto_19e
    if-ge v11, v12, :cond_2bc

    add-int/lit8 v13, v11, 0x1

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    iget v14, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzk:I

    const/16 v15, 0x200

    if-ne v14, v15, :cond_271

    int-to-byte v14, v11

    invoke-static {v5, v14}, Lcom/google/android/gms/internal/ads/zzaju;->zzl(BB)Z

    move-result v14

    if-eqz v14, :cond_271

    iget-boolean v14, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzm:Z

    if-nez v14, :cond_250

    add-int/lit8 v14, v13, -0x2

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    iget-object v15, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzc:Lcom/google/android/gms/internal/ads/zzfi;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzfi;->zza:[B

    invoke-static {v7, v15, v10}, Lcom/google/android/gms/internal/ads/zzaju;->zzm(Lcom/google/android/gms/internal/ads/zzfj;[BI)Z

    move-result v15

    if-nez v15, :cond_1ca

    goto/16 :goto_271

    :cond_1ca
    iget-object v15, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzc:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzfi;->zzj(I)V

    iget-object v15, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzc:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v15

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzn:I

    if-eq v8, v5, :cond_1db

    if-ne v15, v8, :cond_271

    :cond_1db
    iget v8, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzo:I

    if-eq v8, v5, :cond_1fe

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzc:Lcom/google/android/gms/internal/ads/zzfi;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzfi;->zza:[B

    invoke-static {v7, v8, v10}, Lcom/google/android/gms/internal/ads/zzaju;->zzm(Lcom/google/android/gms/internal/ads/zzfj;[BI)Z

    move-result v8

    if-nez v8, :cond_1ea

    goto :goto_250

    :cond_1ea
    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzc:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzfi;->zzj(I)V

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzc:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v8

    iget v9, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzo:I

    if-ne v8, v9, :cond_271

    add-int/lit8 v8, v14, 0x2

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    :cond_1fe
    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzc:Lcom/google/android/gms/internal/ads/zzfi;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzfi;->zza:[B

    invoke-static {v7, v8, v3}, Lcom/google/android/gms/internal/ads/zzaju;->zzm(Lcom/google/android/gms/internal/ads/zzfj;[BI)Z

    move-result v8

    if-eqz v8, :cond_250

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzc:Lcom/google/android/gms/internal/ads/zzfi;

    const/16 v9, 0xe

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzfi;->zzj(I)V

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzc:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v8

    if-lt v8, v2, :cond_271

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzd()I

    move-result v1

    add-int/2addr v14, v8

    if-ge v14, v1, :cond_250

    aget-byte v8, v9, v14

    if-ne v8, v5, :cond_238

    add-int/lit8 v14, v14, 0x1

    if-eq v14, v1, :cond_250

    aget-byte v1, v9, v14

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/ads/zzaju;->zzl(BB)Z

    move-result v8

    if-eqz v8, :cond_271

    and-int/lit8 v1, v1, 0x8

    shr-int/2addr v1, v4

    if-ne v1, v15, :cond_271

    goto :goto_250

    :cond_238
    const/16 v15, 0x49

    if-ne v8, v15, :cond_271

    add-int/lit8 v8, v14, 0x1

    if-eq v8, v1, :cond_250

    aget-byte v8, v9, v8

    const/16 v15, 0x44

    if-ne v8, v15, :cond_271

    add-int/lit8 v14, v14, 0x2

    if-eq v14, v1, :cond_250

    aget-byte v1, v9, v14

    const/16 v8, 0x33

    if-ne v1, v8, :cond_271

    :cond_250
    :goto_250
    and-int/lit8 v0, v11, 0x8

    shr-int/2addr v0, v4

    iput v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzp:I

    and-int/lit8 v0, v11, 0x1

    xor-int/2addr v0, v10

    if-eq v10, v0, :cond_25c

    const/4 v0, 0x0

    goto :goto_25d

    :cond_25c
    const/4 v0, 0x1

    :goto_25d
    iput-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzl:Z

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzm:Z

    if-nez v0, :cond_269

    iput v10, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzi:I

    const/4 v0, 0x0

    iput v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzj:I

    goto :goto_26c

    :cond_269
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaju;->zzi()V

    :goto_26c
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    goto/16 :goto_b

    :cond_271
    :goto_271
    iget v1, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzk:I

    or-int v8, v1, v11

    const/16 v9, 0x149

    if-eq v8, v9, :cond_2b0

    const/16 v9, 0x1ff

    if-eq v8, v9, :cond_2ab

    const/16 v9, 0x344

    if-eq v8, v9, :cond_2a6

    const/16 v9, 0x433

    if-eq v8, v9, :cond_294

    const/16 v8, 0x100

    if-eq v1, v8, :cond_291

    iput v8, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzk:I

    add-int/lit8 v11, v13, -0x1

    const/16 v1, 0xd

    const/4 v8, 0x0

    goto :goto_2b9

    :cond_291
    const/4 v1, 0x2

    const/4 v8, 0x0

    goto :goto_2b6

    :cond_294
    const/4 v1, 0x2

    iput v1, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzi:I

    iput v4, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzj:I

    const/4 v8, 0x0

    iput v8, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzs:I

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzd:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    goto/16 :goto_b

    :cond_2a6
    const/4 v1, 0x2

    const/4 v8, 0x0

    const/16 v9, 0x400

    goto :goto_2b4

    :cond_2ab
    const/4 v1, 0x2

    const/4 v8, 0x0

    const/16 v9, 0x200

    goto :goto_2b4

    :cond_2b0
    const/4 v1, 0x2

    const/4 v8, 0x0

    const/16 v9, 0x300

    :goto_2b4
    iput v9, v6, Lcom/google/android/gms/internal/ads/zzaju;->zzk:I

    :goto_2b6
    move v11, v13

    const/16 v1, 0xd

    :goto_2b9
    const/4 v9, 0x2

    goto/16 :goto_19e

    :cond_2bc
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    goto/16 :goto_b

    :cond_2c1
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzach;Lcom/google/android/gms/internal/ads/zzalk;)V
    .registers 5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzalk;->zzc()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzalk;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzf:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzalk;->zza()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzach;->zzw(II)Lcom/google/android/gms/internal/ads/zzadk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzg:Lcom/google/android/gms/internal/ads/zzadk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzu:Lcom/google/android/gms/internal/ads/zzadk;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzb:Z

    if-eqz v0, :cond_41

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzalk;->zzc()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzalk;->zza()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzach;->zzw(II)Lcom/google/android/gms/internal/ads/zzadk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzh:Lcom/google/android/gms/internal/ads/zzadk;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzak;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzalk;->zzb()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzak;->zzJ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    const-string p2, "application/id3"

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzak;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzadk;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    return-void

    :cond_41
    new-instance p1, Lcom/google/android/gms/internal/ads/zzacd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzacd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzh:Lcom/google/android/gms/internal/ads/zzadk;

    return-void
.end method

.method public final zzc(Z)V
    .registers 2

    return-void
.end method

.method public final zzd(JI)V
    .registers 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_b

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzt:J

    :cond_b
    return-void
.end method

.method public final zze()V
    .registers 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzt:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaju;->zzg()V

    return-void
.end method

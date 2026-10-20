###### Class com.google.android.gms.internal.ads.zzals (com.google.android.gms.internal.ads.zzals)
.class public final Lcom/google/android/gms/internal/ads/zzals;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzace;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzacl;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/ads/zzach;

.field private zzc:Lcom/google/android/gms/internal/ads/zzadk;

.field private zzd:I

.field private zze:J

.field private zzf:Lcom/google/android/gms/internal/ads/zzalq;

.field private zzg:I

.field private zzh:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzalo;->zza:Lcom/google/android/gms/internal/ads/zzalo;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzals;->zza:Lcom/google/android/gms/internal/ads/zzacl;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzals;->zzd:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzals;->zze:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzals;->zzg:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzals;->zzh:J

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzacf;Lcom/google/android/gms/internal/ads/zzadb;)I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzals;->zzc:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    sget v2, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzals;->zzd:I

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_159

    const/4 v7, 0x2

    const-wide/16 v8, -0x1

    if-eq v2, v5, :cond_124

    const/4 v10, 0x3

    if-eq v2, v7, :cond_a2

    if-eq v2, v10, :cond_3c

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzals;->zzh:J

    cmp-long v2, v10, v8

    if-eqz v2, :cond_24

    goto :goto_25

    :cond_24
    const/4 v5, 0x0

    :goto_25
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzals;->zzh:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v7

    sub-long/2addr v4, v7

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzals;->zzf:Lcom/google/android/gms/internal/ads/zzalq;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzalq;->zzc(Lcom/google/android/gms/internal/ads/zzacf;J)Z

    move-result v1

    if-eqz v1, :cond_3b

    return v3

    :cond_3b
    return v6

    :cond_3c
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzalv;->zza(Lcom/google/android/gms/internal/ads/zzacf;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzals;->zzg:I

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzals;->zze:J

    cmp-long v5, v10, v8

    if-eqz v5, :cond_62

    const-wide v12, 0xffffffffL

    cmp-long v5, v2, v12

    if-nez v5, :cond_62

    move-wide v2, v10

    :cond_62
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzals;->zzg:I

    int-to-long v10, v5

    add-long/2addr v10, v2

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzals;->zzh:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzd()J

    move-result-wide v1

    cmp-long v3, v1, v8

    if-eqz v3, :cond_95

    cmp-long v3, v10, v1

    if-lez v3, :cond_95

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data exceeds input length: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "WavExtractor"

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzals;->zzh:J

    move-wide v10, v1

    :cond_95
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzals;->zzf:Lcom/google/android/gms/internal/ads/zzalq;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzals;->zzg:I

    invoke-interface {v1, v2, v10, v11}, Lcom/google/android/gms/internal/ads/zzalq;->zza(IJ)V

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzals;->zzd:I

    return v6

    :cond_a2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzalv;->zzb(Lcom/google/android/gms/internal/ads/zzacf;)Lcom/google/android/gms/internal/ads/zzalt;

    move-result-object v15

    iget v1, v15, Lcom/google/android/gms/internal/ads/zzalt;->zza:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_b8

    new-instance v1, Lcom/google/android/gms/internal/ads/zzalp;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzals;->zzb:Lcom/google/android/gms/internal/ads/zzach;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzals;->zzc:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-direct {v1, v2, v3, v15}, Lcom/google/android/gms/internal/ads/zzalp;-><init>(Lcom/google/android/gms/internal/ads/zzach;Lcom/google/android/gms/internal/ads/zzadk;Lcom/google/android/gms/internal/ads/zzalt;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzals;->zzf:Lcom/google/android/gms/internal/ads/zzalq;

    goto :goto_10b

    :cond_b8
    const/4 v2, 0x6

    if-ne v1, v2, :cond_cc

    new-instance v1, Lcom/google/android/gms/internal/ads/zzalr;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzals;->zzb:Lcom/google/android/gms/internal/ads/zzach;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzals;->zzc:Lcom/google/android/gms/internal/ads/zzadk;

    const/16 v17, -0x1

    const-string v16, "audio/g711-alaw"

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzalr;-><init>(Lcom/google/android/gms/internal/ads/zzach;Lcom/google/android/gms/internal/ads/zzadk;Lcom/google/android/gms/internal/ads/zzalt;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzals;->zzf:Lcom/google/android/gms/internal/ads/zzalq;

    goto :goto_10b

    :cond_cc
    const/4 v2, 0x7

    if-ne v1, v2, :cond_e0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzalr;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzals;->zzb:Lcom/google/android/gms/internal/ads/zzach;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzals;->zzc:Lcom/google/android/gms/internal/ads/zzadk;

    const/16 v17, -0x1

    const-string v16, "audio/g711-mlaw"

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzalr;-><init>(Lcom/google/android/gms/internal/ads/zzach;Lcom/google/android/gms/internal/ads/zzadk;Lcom/google/android/gms/internal/ads/zzalt;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzals;->zzf:Lcom/google/android/gms/internal/ads/zzalq;

    goto :goto_10b

    :cond_e0
    iget v2, v15, Lcom/google/android/gms/internal/ads/zzalt;->zze:I

    if-eq v1, v5, :cond_f5

    if-eq v1, v10, :cond_ee

    const v3, 0xfffe

    if-eq v1, v3, :cond_f5

    :cond_eb
    const/16 v17, 0x0

    goto :goto_fb

    :cond_ee
    const/16 v3, 0x20

    if-ne v2, v3, :cond_eb

    const/16 v17, 0x4

    goto :goto_fb

    :cond_f5
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfs;->zzk(I)I

    move-result v4

    move/from16 v17, v4

    :goto_fb
    if-eqz v17, :cond_10e

    new-instance v1, Lcom/google/android/gms/internal/ads/zzalr;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzals;->zzb:Lcom/google/android/gms/internal/ads/zzach;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzals;->zzc:Lcom/google/android/gms/internal/ads/zzadk;

    const-string v16, "audio/raw"

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzalr;-><init>(Lcom/google/android/gms/internal/ads/zzach;Lcom/google/android/gms/internal/ads/zzadk;Lcom/google/android/gms/internal/ads/zzalt;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzals;->zzf:Lcom/google/android/gms/internal/ads/zzalq;

    :goto_10b
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzals;->zzd:I

    return v6

    :cond_10e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported WAV format type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v1

    throw v1

    :cond_124
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfj;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(I)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzalu;->zza(Lcom/google/android/gms/internal/ads/zzacf;Lcom/google/android/gms/internal/ads/zzfj;)Lcom/google/android/gms/internal/ads/zzalu;

    move-result-object v4

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzalu;->zza:I

    const v10, 0x64733634

    if-eq v5, v10, :cond_13a

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzj()V

    goto :goto_154

    :cond_13a
    check-cast v1, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {v1, v3, v6}, Lcom/google/android/gms/internal/ads/zzabu;->zzl(IZ)Z

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v5

    invoke-virtual {v1, v5, v6, v3, v6}, Lcom/google/android/gms/internal/ads/zzabu;->zzm([BIIZ)Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzq()J

    move-result-wide v8

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzalu;->zzb:J

    long-to-int v2, v4

    add-int/2addr v2, v3

    invoke-virtual {v1, v2, v6}, Lcom/google/android/gms/internal/ads/zzabu;->zzo(IZ)Z

    :goto_154
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzals;->zze:J

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzals;->zzd:I

    return v6

    :cond_159
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-nez v2, :cond_165

    const/4 v2, 0x1

    goto :goto_166

    :cond_165
    const/4 v2, 0x0

    :goto_166
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzals;->zzg:I

    if-eq v2, v3, :cond_175

    check-cast v1, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {v1, v2, v6}, Lcom/google/android/gms/internal/ads/zzabu;->zzo(IZ)Z

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzals;->zzd:I

    goto :goto_18c

    :cond_175
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzalv;->zzc(Lcom/google/android/gms/internal/ads/zzacf;)Z

    move-result v2

    if-eqz v2, :cond_18d

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zze()J

    move-result-wide v2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v7

    sub-long/2addr v2, v7

    check-cast v1, Lcom/google/android/gms/internal/ads/zzabu;

    long-to-int v3, v2

    invoke-virtual {v1, v3, v6}, Lcom/google/android/gms/internal/ads/zzabu;->zzo(IZ)Z

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzals;->zzd:I

    :goto_18c
    return v6

    :cond_18d
    const/4 v1, 0x0

    const-string v2, "Unsupported or unrecognized wav file type."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v1

    throw v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzach;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzals;->zzb:Lcom/google/android/gms/internal/ads/zzach;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzach;->zzw(II)Lcom/google/android/gms/internal/ads/zzadk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzals;->zzc:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzach;->zzD()V

    return-void
.end method

.method public final zzd(JJ)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_8

    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    const/4 p1, 0x4

    :goto_9
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzals;->zzd:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzals;->zzf:Lcom/google/android/gms/internal/ads/zzalq;

    if-eqz p1, :cond_12

    invoke-interface {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzalq;->zzb(J)V

    :cond_12
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzacf;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzalv;->zzc(Lcom/google/android/gms/internal/ads/zzacf;)Z

    move-result p1

    return p1
.end method

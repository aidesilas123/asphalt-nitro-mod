###### Class com.google.android.gms.internal.ads.zzuf (com.google.android.gms.internal.ads.zzuf)
.class public final Lcom/google/android/gms/internal/ads/zzuf;
.super Lcom/google/android/gms/internal/ads/zzwn;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcz;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcx;

.field private zze:Lcom/google/android/gms/internal/ads/zzud;

.field private zzf:Lcom/google/android/gms/internal/ads/zzuc;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzg:Z

.field private zzh:Z

.field private zzi:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzum;Z)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwn;-><init>(Lcom/google/android/gms/internal/ads/zzum;)V

    if-eqz p2, :cond_a

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzum;->zzv()Z

    const/4 p2, 0x1

    goto :goto_b

    :cond_a
    const/4 p2, 0x0

    :goto_b
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzb:Z

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcz;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzcz;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzc:Lcom/google/android/gms/internal/ads/zzcz;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcx;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzcx;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzd:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzum;->zzM()Lcom/google/android/gms/internal/ads/zzda;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzum;->zzJ()Lcom/google/android/gms/internal/ads/zzbs;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzud;->zzq(Lcom/google/android/gms/internal/ads/zzbs;)Lcom/google/android/gms/internal/ads/zzud;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuf;->zze:Lcom/google/android/gms/internal/ads/zzud;

    return-void
.end method

.method private final zzK(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zze:Lcom/google/android/gms/internal/ads/zzud;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzud;->zzs(Lcom/google/android/gms/internal/ads/zzud;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/google/android/gms/internal/ads/zzud;->zzd:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzuf;->zze:Lcom/google/android/gms/internal/ads/zzud;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzud;->zzs(Lcom/google/android/gms/internal/ads/zzud;)Ljava/lang/Object;

    move-result-object p1

    :cond_16
    return-object p1
.end method

.method private final zzL(J)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzf:Lcom/google/android/gms/internal/ads/zzuc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuf;->zze:Lcom/google/android/gms/internal/ads/zzud;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzuc;->zza:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzty;->zza(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    return-void

    :cond_10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzuf;->zze:Lcom/google/android/gms/internal/ads/zzud;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzd:Lcom/google/android/gms/internal/ads/zzcx;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzda;->zzd(ILcom/google/android/gms/internal/ads/zzcx;Z)Lcom/google/android/gms/internal/ads/zzcx;

    iget-wide v1, v3, Lcom/google/android/gms/internal/ads/zzcx;->zze:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_30

    cmp-long v3, p1, v1

    if-ltz v3, :cond_30

    const-wide/16 p1, 0x0

    const-wide/16 v3, -0x1

    add-long/2addr v1, v3

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    :cond_30
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzuc;->zzs(J)V

    return-void
.end method


# virtual methods
.method public final zzC()Lcom/google/android/gms/internal/ads/zzda;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zze:Lcom/google/android/gms/internal/ads/zzud;

    return-object v0
.end method

.method protected final zzD(Lcom/google/android/gms/internal/ads/zzuk;)Lcom/google/android/gms/internal/ads/zzuk;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zze:Lcom/google/android/gms/internal/ads/zzud;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzud;->zzs(Lcom/google/android/gms/internal/ads/zzud;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zze:Lcom/google/android/gms/internal/ads/zzud;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzud;->zzs(Lcom/google/android/gms/internal/ads/zzud;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v1, Lcom/google/android/gms/internal/ads/zzud;->zzd:Ljava/lang/Object;

    :cond_18
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzuk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzuk;

    move-result-object p1

    return-object p1
.end method

.method protected final zzE(Lcom/google/android/gms/internal/ads/zzda;)V
    .registers 16

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzh:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zze:Lcom/google/android/gms/internal/ads/zzud;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzud;->zzp(Lcom/google/android/gms/internal/ads/zzda;)Lcom/google/android/gms/internal/ads/zzud;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuf;->zze:Lcom/google/android/gms/internal/ads/zzud;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzf:Lcom/google/android/gms/internal/ads/zzuc;

    if-eqz p1, :cond_9b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzuc;->zzn()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzuf;->zzL(J)V

    goto/16 :goto_9b

    :cond_1a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzda;->zzo()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzi:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zze:Lcom/google/android/gms/internal/ads/zzud;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzud;->zzp(Lcom/google/android/gms/internal/ads/zzda;)Lcom/google/android/gms/internal/ads/zzud;

    move-result-object p1

    goto :goto_33

    :cond_2b
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcz;->zza:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzud;->zzd:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzud;->zzr(Lcom/google/android/gms/internal/ads/zzda;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzud;

    move-result-object p1

    :goto_33
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuf;->zze:Lcom/google/android/gms/internal/ads/zzud;

    goto :goto_9b

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzc:Lcom/google/android/gms/internal/ads/zzcz;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzda;->zze(ILcom/google/android/gms/internal/ads/zzcz;J)Lcom/google/android/gms/internal/ads/zzcz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzc:Lcom/google/android/gms/internal/ads/zzcz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcz;->zzc:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzf:Lcom/google/android/gms/internal/ads/zzuc;

    if-eqz v5, :cond_62

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzuc;->zzq()J

    move-result-wide v6

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzuf;->zze:Lcom/google/android/gms/internal/ads/zzud;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzd:Lcom/google/android/gms/internal/ads/zzcx;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzuc;->zza:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    invoke-virtual {v8, v5, v9}, Lcom/google/android/gms/internal/ads/zzda;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzcx;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzuf;->zze:Lcom/google/android/gms/internal/ads/zzud;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzc:Lcom/google/android/gms/internal/ads/zzcz;

    invoke-virtual {v5, v2, v8, v3, v4}, Lcom/google/android/gms/internal/ads/zzda;->zze(ILcom/google/android/gms/internal/ads/zzcz;J)Lcom/google/android/gms/internal/ads/zzcz;

    cmp-long v2, v6, v3

    if-eqz v2, :cond_62

    move-wide v12, v6

    goto :goto_63

    :cond_62
    move-wide v12, v3

    :goto_63
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzc:Lcom/google/android/gms/internal/ads/zzcz;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzd:Lcom/google/android/gms/internal/ads/zzcx;

    const/4 v11, 0x0

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzda;->zzl(Lcom/google/android/gms/internal/ads/zzcz;Lcom/google/android/gms/internal/ads/zzcx;IJ)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzi:Z

    if-eqz v2, :cond_82

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zze:Lcom/google/android/gms/internal/ads/zzud;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzud;->zzp(Lcom/google/android/gms/internal/ads/zzda;)Lcom/google/android/gms/internal/ads/zzud;

    move-result-object p1

    goto :goto_86

    :cond_82
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/internal/ads/zzud;->zzr(Lcom/google/android/gms/internal/ads/zzda;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzud;

    move-result-object p1

    :goto_86
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuf;->zze:Lcom/google/android/gms/internal/ads/zzud;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzf:Lcom/google/android/gms/internal/ads/zzuc;

    if-eqz p1, :cond_9b

    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/internal/ads/zzuf;->zzL(J)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzuc;->zza:Lcom/google/android/gms/internal/ads/zzuk;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzuf;->zzK(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzuk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzuk;

    move-result-object v1

    :cond_9b
    :goto_9b
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzi:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzh:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzuf;->zze:Lcom/google/android/gms/internal/ads/zzud;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zztl;->zzo(Lcom/google/android/gms/internal/ads/zzda;)V

    if-eqz v1, :cond_af

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzf:Lcom/google/android/gms/internal/ads/zzuc;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzuc;->zzr(Lcom/google/android/gms/internal/ads/zzuk;)V

    :cond_af
    return-void
.end method

.method public final zzF()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzb:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzg:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwn;->zza:Lcom/google/android/gms/internal/ads/zzum;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zztt;->zzB(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzum;)V

    :cond_d
    return-void
.end method

.method public final zzG(Lcom/google/android/gms/internal/ads/zzui;)V
    .registers 3

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzuc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzuc;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzf:Lcom/google/android/gms/internal/ads/zzuc;

    if-ne p1, v0, :cond_d

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzf:Lcom/google/android/gms/internal/ads/zzuc;

    :cond_d
    return-void
.end method

.method public final zzH(Lcom/google/android/gms/internal/ads/zzuk;Lcom/google/android/gms/internal/ads/zzyn;J)Lcom/google/android/gms/internal/ads/zzuc;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzuc;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzuc;-><init>(Lcom/google/android/gms/internal/ads/zzuk;Lcom/google/android/gms/internal/ads/zzyn;J)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzwn;->zza:Lcom/google/android/gms/internal/ads/zzum;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzuc;->zzu(Lcom/google/android/gms/internal/ads/zzum;)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzh:Z

    if-eqz p2, :cond_1c

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzuf;->zzK(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzuk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzuk;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzuc;->zzr(Lcom/google/android/gms/internal/ads/zzuk;)V

    goto :goto_2b

    :cond_1c
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzf:Lcom/google/android/gms/internal/ads/zzuc;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzg:Z

    if-nez p1, :cond_2b

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzg:Z

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzwn;->zza:Lcom/google/android/gms/internal/ads/zzum;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zztt;->zzB(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzum;)V

    :cond_2b
    :goto_2b
    return-object v0
.end method

.method public final bridge synthetic zzI(Lcom/google/android/gms/internal/ads/zzuk;Lcom/google/android/gms/internal/ads/zzyn;J)Lcom/google/android/gms/internal/ads/zzui;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzuf;->zzH(Lcom/google/android/gms/internal/ads/zzuk;Lcom/google/android/gms/internal/ads/zzyn;J)Lcom/google/android/gms/internal/ads/zzuc;

    move-result-object p1

    return-object p1
.end method

.method public final zzq()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzg:Z

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zztt;->zzq()V

    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zzbs;)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzi:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zze:Lcom/google/android/gms/internal/ads/zzud;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzwj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzuf;->zze:Lcom/google/android/gms/internal/ads/zzud;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzda;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzwj;-><init>(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzbs;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzud;->zzp(Lcom/google/android/gms/internal/ads/zzda;)Lcom/google/android/gms/internal/ads/zzud;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zze:Lcom/google/android/gms/internal/ads/zzud;

    goto :goto_1c

    :cond_16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzud;->zzq(Lcom/google/android/gms/internal/ads/zzbs;)Lcom/google/android/gms/internal/ads/zzud;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zze:Lcom/google/android/gms/internal/ads/zzud;

    :goto_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwn;->zza:Lcom/google/android/gms/internal/ads/zzum;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzum;->zzt(Lcom/google/android/gms/internal/ads/zzbs;)V

    return-void
.end method

.method public final zzz()V
    .registers 1

    return-void
.end method

###### Class com.google.android.gms.internal.measurement.zznq (com.google.android.gms.internal.measurement.zznq)
.class public final Lcom/google/android/gms/internal/measurement/zznq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzif;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zznq;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzif;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zznq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zznq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzns;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzns;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzij;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzij;->zza(Lcom/google/android/gms/internal/measurement/zzif;)Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zznq;->zzb:Lcom/google/android/gms/internal/measurement/zzif;

    return-void
.end method

.method public static zzA()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzz()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzB()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzA()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzC()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzB()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzD()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzC()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzE()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzD()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzF()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzE()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzG()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzF()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzH()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzG()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzJ()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzH()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzK()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzL()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzJ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzb()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zza()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzc()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzd()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zze()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzd()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzf()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zze()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzg()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzf()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzh()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzg()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzi()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzh()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzj()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzi()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzk()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzj()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzl()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzk()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzm()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzl()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzn()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzm()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzo()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzn()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzp()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzo()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzq()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzp()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzr()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzq()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzs()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzr()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzt()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzu()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzt()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzv()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzu()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzw()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzv()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzx()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzw()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzy()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzx()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzz()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzy()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final zzI()Lcom/google/android/gms/internal/measurement/zznr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznq;->zzb:Lcom/google/android/gms/internal/measurement/zzif;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznr;

    return-object v0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zznq;->zzI()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    return-object v0
.end method

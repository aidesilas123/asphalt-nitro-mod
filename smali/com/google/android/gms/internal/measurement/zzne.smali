###### Class com.google.android.gms.internal.measurement.zzne (com.google.android.gms.internal.measurement.zzne)
.class public final Lcom/google/android/gms/internal/measurement/zzne;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzif;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzne;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzif;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzne;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzne;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzng;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzng;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzij;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzij;->zza(Lcom/google/android/gms/internal/measurement/zzif;)Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzne;->zzb:Lcom/google/android/gms/internal/measurement/zzif;

    return-void
.end method

.method public static zzc()Z
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->zzb()Lcom/google/android/gms/internal/measurement/zznf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zza()Z

    const/4 v0, 0x1

    return v0
.end method

.method public static zzd()Z
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->zzb()Lcom/google/android/gms/internal/measurement/zznf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzb()Z

    move-result v0

    return v0
.end method

.method public static zze()Z
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->zzb()Lcom/google/android/gms/internal/measurement/zznf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzc()Z

    move-result v0

    return v0
.end method

.method public static zzf()Z
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->zzb()Lcom/google/android/gms/internal/measurement/zznf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzd()Z

    move-result v0

    return v0
.end method

.method public static zzg()Z
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->zzb()Lcom/google/android/gms/internal/measurement/zznf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zze()Z

    move-result v0

    return v0
.end method

.method public static zzh()Z
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->zzb()Lcom/google/android/gms/internal/measurement/zznf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzf()Z

    move-result v0

    return v0
.end method

.method public static zzi()Z
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->zzb()Lcom/google/android/gms/internal/measurement/zznf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzg()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzne;->zzb()Lcom/google/android/gms/internal/measurement/zznf;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zznf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzne;->zzb:Lcom/google/android/gms/internal/measurement/zzif;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznf;

    return-object v0
.end method

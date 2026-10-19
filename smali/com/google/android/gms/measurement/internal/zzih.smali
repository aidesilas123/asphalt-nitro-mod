###### Class com.google.android.gms.measurement.internal.zzih (com.google.android.gms.measurement.internal.zzih)
.class final Lcom/google/android/gms/measurement/internal/zzih;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzah;

.field final synthetic zzb:J

.field final synthetic zzc:I

.field final synthetic zzd:J

.field final synthetic zze:Z

.field final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzah;

.field final synthetic zzg:Lcom/google/android/gms/measurement/internal/zzin;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzin;Lcom/google/android/gms/measurement/internal/zzah;JIJZLcom/google/android/gms/measurement/internal/zzah;)V
    .registers 10

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzg:Lcom/google/android/gms/measurement/internal/zzin;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzih;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzb:J

    iput p5, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzc:I

    iput-wide p6, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzd:J

    iput-boolean p8, p0, Lcom/google/android/gms/measurement/internal/zzih;->zze:Z

    iput-object p9, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzf:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzg:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzin;->zzX(Lcom/google/android/gms/measurement/internal/zzah;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzg:Lcom/google/android/gms/measurement/internal/zzin;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzb:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzin;->zzM(JZ)V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzg:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzih;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    iget v6, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzc:I

    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzd:J

    iget-boolean v10, p0, Lcom/google/android/gms/measurement/internal/zzih;->zze:Z

    const/4 v9, 0x1

    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzin;->zzw(Lcom/google/android/gms/measurement/internal/zzin;Lcom/google/android/gms/measurement/internal/zzah;IJZZ)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpp;->zzc()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzg:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzhb;->zzs:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzel;->zzaI:Lcom/google/android/gms/measurement/internal/zzek;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzg:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzf:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzin;->zzv(Lcom/google/android/gms/measurement/internal/zzin;Lcom/google/android/gms/measurement/internal/zzah;Lcom/google/android/gms/measurement/internal/zzah;)V

    :cond_3a
    return-void
.end method

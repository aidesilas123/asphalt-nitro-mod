###### Class com.google.android.gms.internal.play_billing.zzt (com.google.android.gms.internal.play_billing.zzt)
.class final Lcom/google/android/gms/internal/play_billing/zzt;
.super Lcom/google/android/gms/internal/play_billing/zzu;
.source "com.android.billingclient:billing@@6.0.1"


# instance fields
.field final transient zza:I

.field final transient zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/play_billing/zzu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_billing/zzu;II)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zzc:Lcom/google/android/gms/internal/play_billing/zzu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzu;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zzb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zzb:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzm;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zzc:Lcom/google/android/gms/internal/play_billing/zzu;

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zza:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zzb:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzu;->zzh(II)Lcom/google/android/gms/internal/play_billing/zzu;

    move-result-object p1

    return-object p1
.end method

.method final zzb()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zzc:Lcom/google/android/gms/internal/play_billing/zzu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzr;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zza:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zzb:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzc()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zzc:Lcom/google/android/gms/internal/play_billing/zzu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzr;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zza:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzf()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final zzg()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zzc:Lcom/google/android/gms/internal/play_billing/zzu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzr;->zzg()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzh(II)Lcom/google/android/gms/internal/play_billing/zzu;
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zzb:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzm;->zzd(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zzc:Lcom/google/android/gms/internal/play_billing/zzu;

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zza:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzu;->zzh(II)Lcom/google/android/gms/internal/play_billing/zzu;

    move-result-object p1

    return-object p1
.end method

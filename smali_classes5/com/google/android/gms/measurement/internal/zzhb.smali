###### Class com.google.android.gms.measurement.internal.zzhb (com.google.android.gms.measurement.internal.zzhb)
.class Lcom/google/android/gms/measurement/internal/zzhb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzhd;


# instance fields
.field protected final zzs:Lcom/google/android/gms/measurement/internal/zzgi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgi;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzs:Lcom/google/android/gms/measurement/internal/zzgi;

    return-void
.end method


# virtual methods
.method public final zzaA()Lcom/google/android/gms/measurement/internal/zzgf;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzav()Landroid/content/Context;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzaw()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzax()Lcom/google/android/gms/measurement/internal/zzaa;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public zzay()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzs:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzaA()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhb;->zzay()V

    return-void
.end method

.method public final zzaz()Lcom/google/android/gms/measurement/internal/zzey;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public zzg()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzs:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzaA()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhb;->zzg()V

    return-void
.end method

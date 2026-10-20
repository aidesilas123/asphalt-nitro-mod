###### Class com.google.android.gms.measurement.internal.zzke (com.google.android.gms.measurement.internal.zzke)
.class public final synthetic Lcom/google/android/gms/measurement/internal/zzke;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzki;

.field public final synthetic zzb:I

.field public final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzey;

.field public final synthetic zzd:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzki;ILcom/google/android/gms/measurement/internal/zzey;Landroid/content/Intent;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zza:Lcom/google/android/gms/measurement/internal/zzki;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzc:Lcom/google/android/gms/measurement/internal/zzey;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzd:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zza:Lcom/google/android/gms/measurement/internal/zzki;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzc:Lcom/google/android/gms/measurement/internal/zzey;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzke;->zzd:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzc(ILcom/google/android/gms/measurement/internal/zzey;Landroid/content/Intent;)V

    return-void
.end method

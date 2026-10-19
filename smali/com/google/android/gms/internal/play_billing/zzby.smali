###### Class com.google.android.gms.internal.play_billing.zzby (com.google.android.gms.internal.play_billing.zzby)
.class public abstract Lcom/google/android/gms/internal/play_billing/zzby;
.super Lcom/google/android/gms/internal/play_billing/zzcb;
.source "com.android.billingclient:billing@@6.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzdg;


# instance fields
.field protected final zzb:Lcom/google/android/gms/internal/play_billing/zzbs;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzcb;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbs;->zza()Lcom/google/android/gms/internal/play_billing/zzbs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzby;->zzb:Lcom/google/android/gms/internal/play_billing/zzbs;

    return-void
.end method

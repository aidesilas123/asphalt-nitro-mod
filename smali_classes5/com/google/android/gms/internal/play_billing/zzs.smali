###### Class com.google.android.gms.internal.play_billing.zzs (com.google.android.gms.internal.play_billing.zzs)
.class final Lcom/google/android/gms/internal/play_billing/zzs;
.super Lcom/google/android/gms/internal/play_billing/zzo;
.source "com.android.billingclient:billing@@6.0.1"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_billing/zzu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_billing/zzu;I)V
    .registers 4

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/zzo;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzs;->zza:Lcom/google/android/gms/internal/play_billing/zzu;

    return-void
.end method


# virtual methods
.method protected final zza(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzs;->zza:Lcom/google/android/gms/internal/play_billing/zzu;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

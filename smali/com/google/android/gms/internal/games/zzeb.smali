###### Class com.google.android.gms.internal.games.zzeb (com.google.android.gms.internal.games.zzeb)
.class final Lcom/google/android/gms/internal/games/zzeb;
.super Lcom/google/android/gms/internal/games/zzec;


# instance fields
.field private final synthetic zzkp:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzdy;Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .registers 4

    iput p3, p0, Lcom/google/android/gms/internal/games/zzeb;->zzkp:I

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/games/zzec;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/games/zzdz;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/zze;

    iget v0, p0, Lcom/google/android/gms/internal/games/zzeb;->zzkp:I

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/zze;->zzb(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;I)V

    return-void
.end method

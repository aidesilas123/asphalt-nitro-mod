###### Class com.google.android.gms.internal.games.zzan (com.google.android.gms.internal.games.zzan)
.class final Lcom/google/android/gms/internal/games/zzan;
.super Lcom/google/android/gms/internal/games/zzau;


# instance fields
.field private final synthetic zzjg:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzam;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .registers 4

    iput-boolean p3, p0, Lcom/google/android/gms/internal/games/zzan;->zzjg:Z

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/games/zzau;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/games/zzan;)V

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

    iget-boolean v0, p0, Lcom/google/android/gms/internal/games/zzan;->zzjg:Z

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/zze;->zzb(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Z)V

    return-void
.end method

###### Class com.google.android.gms.games.zzao (com.google.android.gms.games.zzao)
.class final Lcom/google/android/gms/games/zzao;
.super Lcom/google/android/gms/internal/games/zzah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/games/zzah<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzbx:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/NotificationsClient;I)V
    .registers 3

    iput p2, p0, Lcom/google/android/gms/games/zzao;->zzbx:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/games/zzah;-><init>()V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/games/internal/zze;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/internal/zze;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/games/zzao;->zzbx:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/games/internal/zze;->zzk(I)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method

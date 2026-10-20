###### Class com.google.android.gms.internal.games.zzbd (com.google.android.gms.internal.games.zzbd)
.class public final Lcom/google/android/gms/internal/games/zzbd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/Notifications;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/zze;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1, p2}, Lcom/google/android/gms/games/internal/zze;->zzl(I)V

    :cond_a
    return-void
.end method

.method public final clearAll(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    const/16 v0, 0x3f

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzbd;->clear(Lcom/google/android/gms/common/api/GoogleApiClient;I)V

    return-void
.end method

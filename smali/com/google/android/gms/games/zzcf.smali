###### Class com.google.android.gms.games.zzcf (com.google.android.gms.games.zzcf)
.class final Lcom/google/android/gms/games/zzcf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/internal/zzq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/games/internal/zzq<",
        "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic release(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;->getMatches()Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;->getMatches()Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->release()V

    :cond_f
    return-void
.end method

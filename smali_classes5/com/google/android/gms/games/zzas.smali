###### Class com.google.android.gms.games.zzas (com.google.android.gms.games.zzas)
.class final Lcom/google/android/gms/games/zzas;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter<",
        "Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;",
        "Lcom/google/android/gms/games/stats/PlayerStats;",
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
.method public final synthetic convert(Lcom/google/android/gms/common/api/Result;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;

    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;->getPlayerStats()Lcom/google/android/gms/games/stats/PlayerStats;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcom/google/android/gms/common/data/Freezable;->freeze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/stats/PlayerStats;

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

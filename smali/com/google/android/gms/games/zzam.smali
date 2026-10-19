###### Class com.google.android.gms.games.zzam (com.google.android.gms.games.zzam)
.class final Lcom/google/android/gms/games/zzam;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter<",
        "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
        "Lcom/google/android/gms/games/leaderboard/Leaderboard;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;)Lcom/google/android/gms/games/leaderboard/Leaderboard;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;->getLeaderboards()Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    move-result-object p0

    if-eqz p0, :cond_26

    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/EntityBuffer;->getCount()I

    move-result v1

    if-lez v1, :cond_26

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/EntityBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/leaderboard/Leaderboard;

    invoke-interface {v0}, Lcom/google/android/gms/common/data/Freezable;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/leaderboard/Leaderboard;
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_21

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->release()V

    return-object v0

    :catchall_21
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->release()V

    throw v0

    :cond_26
    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->release()V

    :cond_2b
    return-object v0
.end method


# virtual methods
.method public final synthetic convert(Lcom/google/android/gms/common/api/Result;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;

    invoke-static {p1}, Lcom/google/android/gms/games/zzam;->zza(Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;)Lcom/google/android/gms/games/leaderboard/Leaderboard;

    move-result-object p1

    return-object p1
.end method

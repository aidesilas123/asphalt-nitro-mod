###### Class com.google.android.gms.games.internal.zze.zzar (com.google.android.gms.games.internal.zze$zzar)
.class final Lcom/google/android/gms/games/internal/zze$zzar;
.super Lcom/google/android/gms/games/internal/zze$zzw;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadPlayerScoreResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzar"
.end annotation


# instance fields
.field private final zzgz:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zze$zzw;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_8
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result p1

    if-lez p1, :cond_1e

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    invoke-interface {p1}, Lcom/google/android/gms/common/data/Freezable;->freeze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zze$zzar;->zzgz:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;

    goto :goto_21

    :cond_1e
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zze$zzar;->zzgz:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_25

    :goto_21
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->release()V

    return-void

    :catchall_25
    move-exception p1

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->release()V

    throw p1
.end method


# virtual methods
.method public final getScore()Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zze$zzar;->zzgz:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;

    return-object v0
.end method

###### Class com.google.android.gms.internal.games.zzbt (com.google.android.gms.internal.games.zzbt)
.class abstract Lcom/google/android/gms/internal/games/zzbt;
.super Lcom/google/android/gms/games/Games$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$zza<",
        "Lcom/google/android/gms/games/quest/Quests$AcceptQuestResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/games/zzbp;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/games/zzbt;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/games/zzbu;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/games/zzbu;-><init>(Lcom/google/android/gms/internal/games/zzbt;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

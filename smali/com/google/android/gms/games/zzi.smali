###### Class com.google.android.gms.games.zzi (com.google.android.gms.games.zzi)
.class final Lcom/google/android/gms/games/zzi;
.super Lcom/google/android/gms/games/Games$zzb;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/Games$zzb;-><init>(Lcom/google/android/gms/games/zzi;)V

    return-void
.end method


# virtual methods
.method public final synthetic getImpliedScopes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    sget-object p1, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

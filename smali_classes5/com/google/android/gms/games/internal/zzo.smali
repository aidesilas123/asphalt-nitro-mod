###### Class com.google.android.gms.games.internal.zzo (com.google.android.gms.games.internal.zzo)
.class final synthetic Lcom/google/android/gms/games/internal/zzo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/internal/zzr;


# static fields
.field static final zziz:Lcom/google/android/gms/games/internal/zzr;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/internal/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/zzo;->zziz:Lcom/google/android/gms/games/internal/zzr;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;)Z
    .registers 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result p1

    return p1
.end method

###### Class com.google.android.gms.internal.drive.zzdk (com.google.android.gms.internal.drive.zzdk)
.class final Lcom/google/android/gms/internal/drive/zzdk;
.super Lcom/google/android/gms/internal/drive/zzl;


# instance fields
.field private final synthetic zzfu:Lcom/google/android/gms/internal/drive/zzch;

.field private final zzgh:Lcom/google/android/gms/drive/events/ListenerToken;

.field private final zzgi:Lcom/google/android/gms/common/api/internal/ListenerHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "Lcom/google/android/gms/drive/events/OpenFileCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/events/ListenerToken;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/events/ListenerToken;",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "Lcom/google/android/gms/drive/events/OpenFileCallback;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzdk;->zzfu:Lcom/google/android/gms/internal/drive/zzch;

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzl;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzdk;->zzgh:Lcom/google/android/gms/drive/events/ListenerToken;

    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzdk;->zzgi:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/drive/zzdg;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/drive/zzdg<",
            "Lcom/google/android/gms/drive/events/OpenFileCallback;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdk;->zzgi:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    new-instance v1, Lcom/google/android/gms/internal/drive/zzdo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/drive/zzdo;-><init>(Lcom/google/android/gms/internal/drive/zzdk;Lcom/google/android/gms/internal/drive/zzdg;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/drive/zzdl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzdl;-><init>(Lcom/google/android/gms/internal/drive/zzdk;Lcom/google/android/gms/common/api/Status;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzdk;->zza(Lcom/google/android/gms/internal/drive/zzdg;)V

    return-void
.end method

.method final synthetic zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/events/OpenFileCallback;)V
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ApiExceptionUtil;->fromStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/drive/events/OpenFileCallback;->onError(Ljava/lang/Exception;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzdk;->zzfu:Lcom/google/android/gms/internal/drive/zzch;

    iget-object p2, p0, Lcom/google/android/gms/internal/drive/zzdk;->zzgh:Lcom/google/android/gms/drive/events/ListenerToken;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/drive/DriveResourceClient;->cancelOpenFileCallback(Lcom/google/android/gms/drive/events/ListenerToken;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzfb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/drive/zzdn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzdn;-><init>(Lcom/google/android/gms/internal/drive/zzdk;Lcom/google/android/gms/internal/drive/zzfb;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzdk;->zza(Lcom/google/android/gms/internal/drive/zzdg;)V

    return-void
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/drive/zzfb;Lcom/google/android/gms/drive/events/OpenFileCallback;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/drive/zzbi;

    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzfb;->zzeq:Lcom/google/android/gms/drive/Contents;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/drive/zzbi;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/drive/events/OpenFileCallback;->onContents(Lcom/google/android/gms/drive/DriveContents;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzdk;->zzfu:Lcom/google/android/gms/internal/drive/zzch;

    iget-object p2, p0, Lcom/google/android/gms/internal/drive/zzdk;->zzgh:Lcom/google/android/gms/drive/events/ListenerToken;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/drive/DriveResourceClient;->cancelOpenFileCallback(Lcom/google/android/gms/drive/events/ListenerToken;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzff;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/drive/zzdm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/drive/zzdm;-><init>(Lcom/google/android/gms/internal/drive/zzff;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzdk;->zza(Lcom/google/android/gms/internal/drive/zzdg;)V

    return-void
.end method

###### Class com.google.android.gms.internal.drive.zzdl (com.google.android.gms.internal.drive.zzdl)
.class final synthetic Lcom/google/android/gms/internal/drive/zzdl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzdg;


# instance fields
.field private final zzgj:Lcom/google/android/gms/internal/drive/zzdk;

.field private final zzgk:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzdk;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzdl;->zzgj:Lcom/google/android/gms/internal/drive/zzdk;

    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzdl;->zzgk:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdl;->zzgj:Lcom/google/android/gms/internal/drive/zzdk;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzdl;->zzgk:Lcom/google/android/gms/common/api/Status;

    check-cast p1, Lcom/google/android/gms/drive/events/OpenFileCallback;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/drive/zzdk;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/events/OpenFileCallback;)V

    return-void
.end method

###### Class com.google.android.gms.internal.drive.zzdm (com.google.android.gms.internal.drive.zzdm)
.class final synthetic Lcom/google/android/gms/internal/drive/zzdm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzdg;


# instance fields
.field private final zzgl:Lcom/google/android/gms/internal/drive/zzff;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzff;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzdm;->zzgl:Lcom/google/android/gms/internal/drive/zzff;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdm;->zzgl:Lcom/google/android/gms/internal/drive/zzff;

    check-cast p1, Lcom/google/android/gms/drive/events/OpenFileCallback;

    iget-wide v1, v0, Lcom/google/android/gms/internal/drive/zzff;->zzhi:J

    iget-wide v3, v0, Lcom/google/android/gms/internal/drive/zzff;->zzhj:J

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/google/android/gms/drive/events/OpenFileCallback;->onProgress(JJ)V

    return-void
.end method

###### Class com.google.android.gms.internal.drive.zzdn (com.google.android.gms.internal.drive.zzdn)
.class final synthetic Lcom/google/android/gms/internal/drive/zzdn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzdg;


# instance fields
.field private final zzgj:Lcom/google/android/gms/internal/drive/zzdk;

.field private final zzgm:Lcom/google/android/gms/internal/drive/zzfb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzdk;Lcom/google/android/gms/internal/drive/zzfb;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzdn;->zzgj:Lcom/google/android/gms/internal/drive/zzdk;

    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzdn;->zzgm:Lcom/google/android/gms/internal/drive/zzfb;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdn;->zzgj:Lcom/google/android/gms/internal/drive/zzdk;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzdn;->zzgm:Lcom/google/android/gms/internal/drive/zzfb;

    check-cast p1, Lcom/google/android/gms/drive/events/OpenFileCallback;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/drive/zzdk;->zza(Lcom/google/android/gms/internal/drive/zzfb;Lcom/google/android/gms/drive/events/OpenFileCallback;)V

    return-void
.end method

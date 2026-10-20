###### Class com.google.android.gms.drive.OpenFileActivityBuilder (com.google.android.gms.drive.OpenFileActivityBuilder)
.class public Lcom/google/android/gms/drive/OpenFileActivityBuilder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final EXTRA_RESPONSE_DRIVE_ID:Ljava/lang/String; = "response_drive_id"


# instance fields
.field private zzay:Ljava/lang/String;

.field private zzaz:[Ljava/lang/String;

.field private zzba:Lcom/google/android/gms/drive/query/Filter;

.field private zzbb:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/IntentSender;
    .registers 7

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    const-string v1, "Client must be connected"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzba:Lcom/google/android/gms/drive/query/Filter;

    if-nez v0, :cond_12

    const/4 v0, 0x0

    goto :goto_19

    :cond_12
    new-instance v0, Lcom/google/android/gms/drive/query/internal/FilterHolder;

    iget-object v1, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzba:Lcom/google/android/gms/drive/query/Filter;

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/FilterHolder;-><init>(Lcom/google/android/gms/drive/query/Filter;)V

    :goto_19
    :try_start_19
    sget-object v1, Lcom/google/android/gms/drive/Drive;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getClient(Lcom/google/android/gms/common/api/Api$AnyClientKey;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzeo;

    new-instance v1, Lcom/google/android/gms/internal/drive/zzgg;

    iget-object v2, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzay:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzaz:[Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzbb:Lcom/google/android/gms/drive/DriveId;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/drive/zzgg;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/query/internal/FilterHolder;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzgg;)Landroid/content/IntentSender;

    move-result-object p1
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_36} :catch_37

    return-object p1

    :catch_37
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to connect Drive Play Service"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method final getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzay:Ljava/lang/String;

    return-object v0
.end method

.method public setActivityStartFolder(Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/OpenFileActivityBuilder;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/drive/DriveId;

    iput-object p1, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzbb:Lcom/google/android/gms/drive/DriveId;

    return-object p0
.end method

.method public setActivityTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/OpenFileActivityBuilder;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzay:Ljava/lang/String;

    return-object p0
.end method

.method public setMimeType([Ljava/lang/String;)Lcom/google/android/gms/drive/OpenFileActivityBuilder;
    .registers 4

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "mimeTypes may not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzaz:[Ljava/lang/String;

    return-object p0
.end method

.method public setSelectionFilter(Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/OpenFileActivityBuilder;
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    const-string v2, "filter may not be null"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/drive/query/internal/zzk;->zza(Lcom/google/android/gms/drive/query/Filter;)Z

    move-result v1

    xor-int/2addr v0, v1

    const-string v1, "FullTextSearchFilter cannot be used as a selection filter"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzba:Lcom/google/android/gms/drive/query/Filter;

    return-object p0
.end method

.method final zzf()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzaz:[Ljava/lang/String;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzaz:[Ljava/lang/String;

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzaz:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzba:Lcom/google/android/gms/drive/query/Filter;

    if-nez v0, :cond_13

    goto :goto_1b

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use a selection filter and set mimetypes simultaneously"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_1b
    return-void
.end method

.method final zzr()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzaz:[Ljava/lang/String;

    return-object v0
.end method

.method final zzs()Lcom/google/android/gms/drive/query/Filter;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzba:Lcom/google/android/gms/drive/query/Filter;

    return-object v0
.end method

.method final zzt()Lcom/google/android/gms/drive/DriveId;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzbb:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

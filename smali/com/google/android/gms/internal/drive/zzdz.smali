###### Class com.google.android.gms.internal.drive.zzdz (com.google.android.gms.internal.drive.zzdz)
.class final Lcom/google/android/gms/internal/drive/zzdz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveResource$MetadataResult;


# instance fields
.field private final zzdw:Lcom/google/android/gms/common/api/Status;

.field private final zzgp:Lcom/google/android/gms/drive/Metadata;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Metadata;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzdz;->zzdw:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzdz;->zzgp:Lcom/google/android/gms/drive/Metadata;

    return-void
.end method


# virtual methods
.method public final getMetadata()Lcom/google/android/gms/drive/Metadata;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdz;->zzgp:Lcom/google/android/gms/drive/Metadata;

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdz;->zzdw:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

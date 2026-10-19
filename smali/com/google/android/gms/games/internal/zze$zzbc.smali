###### Class com.google.android.gms.games.internal.zze.zzbc (com.google.android.gms.games.internal.zze$zzbc)
.class final Lcom/google/android/gms/games/internal/zze$zzbc;
.super Lcom/google/android/gms/games/internal/zze$zzw;

# interfaces
.implements Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzbc"
.end annotation


# instance fields
.field private final zzei:Ljava/lang/String;

.field private final zzhi:Lcom/google/android/gms/games/snapshot/Snapshot;

.field private final zzhj:Lcom/google/android/gms/games/snapshot/Snapshot;

.field private final zzhk:Lcom/google/android/gms/games/snapshot/SnapshotContents;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/Contents;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zze$zzbc;-><init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V
    .registers 11

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zze$zzw;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_8
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    iput-object v2, p0, Lcom/google/android/gms/games/internal/zze$zzbc;->zzhi:Lcom/google/android/gms/games/snapshot/Snapshot;

    :goto_11
    iput-object v2, p0, Lcom/google/android/gms/games/internal/zze$zzbc;->zzhj:Lcom/google/android/gms/games/snapshot/Snapshot;

    goto :goto_6f

    :cond_14
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_41

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result p1

    const/16 p4, 0xfa4

    if-eq p1, p4, :cond_25

    goto :goto_26

    :cond_25
    const/4 v4, 0x0

    :goto_26
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    new-instance p1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-direct {p1, p4}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    new-instance p4, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    new-instance v1, Lcom/google/android/gms/games/snapshot/zza;

    invoke-direct {v1, p3}, Lcom/google/android/gms/games/snapshot/zza;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-direct {p4, p1, v1}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/games/snapshot/zza;)V

    iput-object p4, p0, Lcom/google/android/gms/games/internal/zze$zzbc;->zzhi:Lcom/google/android/gms/games/snapshot/Snapshot;

    goto :goto_11

    :cond_41
    new-instance p1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-direct {p1, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    new-instance v2, Lcom/google/android/gms/games/snapshot/zza;

    invoke-direct {v2, p3}, Lcom/google/android/gms/games/snapshot/zza;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/games/snapshot/zza;)V

    iput-object v1, p0, Lcom/google/android/gms/games/internal/zze$zzbc;->zzhi:Lcom/google/android/gms/games/snapshot/Snapshot;

    new-instance p1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-direct {p1, p3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    new-instance p3, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    new-instance v1, Lcom/google/android/gms/games/snapshot/zza;

    invoke-direct {v1, p4}, Lcom/google/android/gms/games/snapshot/zza;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-direct {p3, p1, v1}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/games/snapshot/zza;)V

    iput-object p3, p0, Lcom/google/android/gms/games/internal/zze$zzbc;->zzhj:Lcom/google/android/gms/games/snapshot/Snapshot;
    :try_end_6f
    .catchall {:try_start_8 .. :try_end_6f} :catchall_7c

    :goto_6f
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->release()V

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zze$zzbc;->zzei:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/games/snapshot/zza;

    invoke-direct {p1, p5}, Lcom/google/android/gms/games/snapshot/zza;-><init>(Lcom/google/android/gms/drive/Contents;)V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zze$zzbc;->zzhk:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    return-void

    :catchall_7c
    move-exception p1

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->release()V

    throw p1
.end method


# virtual methods
.method public final getConflictId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zze$zzbc;->zzei:Ljava/lang/String;

    return-object v0
.end method

.method public final getConflictingSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zze$zzbc;->zzhj:Lcom/google/android/gms/games/snapshot/Snapshot;

    return-object v0
.end method

.method public final getResolutionSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zze$zzbc;->zzhk:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    return-object v0
.end method

.method public final getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zze$zzbc;->zzhi:Lcom/google/android/gms/games/snapshot/Snapshot;

    return-object v0
.end method

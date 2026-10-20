###### Class com.google.android.gms.games.quest.zzb (com.google.android.gms.games.quest.zzb)
.class public final Lcom/google/android/gms/games/quest/zzb;
.super Lcom/google/android/gms/common/data/DataBufferRef;

# interfaces
.implements Lcom/google/android/gms/games/quest/Milestone;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataBufferRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/games/quest/MilestoneEntity;->zza(Lcom/google/android/gms/games/quest/Milestone;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic freeze()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lcom/google/android/gms/games/quest/MilestoneEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;-><init>(Lcom/google/android/gms/games/quest/Milestone;)V

    return-object v0
.end method

.method public final getCompletionRewardData()[B
    .registers 2

    const-string v0, "completion_reward_data"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentProgress()J
    .registers 10

    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/zzb;->getState()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_32

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    const/4 v1, 0x4

    if-eq v0, v1, :cond_13

    goto :goto_32

    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/zzb;->getTargetProgress()J

    move-result-wide v0

    goto :goto_33

    :cond_18
    const-string v0, "current_value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v4, "quest_state"

    invoke-virtual {p0, v4}, Lcom/google/android/gms/common/data/DataBufferRef;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_33

    const-string v4, "initial_value"

    invoke-virtual {p0, v4}, Lcom/google/android/gms/common/data/DataBufferRef;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    goto :goto_33

    :cond_32
    :goto_32
    move-wide v0, v2

    :cond_33
    :goto_33
    const-string v4, "MilestoneRef"

    cmp-long v5, v0, v2

    if-gez v5, :cond_3f

    const-string v0, "Current progress should never be negative"

    invoke-static {v4, v0}, Lcom/google/android/gms/games/internal/zzh;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    :cond_3f
    move-wide v2, v0

    :goto_40
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/zzb;->getTargetProgress()J

    move-result-wide v0

    cmp-long v5, v2, v0

    if-lez v5, :cond_51

    const-string v0, "Current progress should never exceed target progress"

    invoke-static {v4, v0}, Lcom/google/android/gms/games/internal/zzh;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/zzb;->getTargetProgress()J

    move-result-wide v2

    :cond_51
    return-wide v2
.end method

.method public final getEventId()Ljava/lang/String;
    .registers 2

    const-string v0, "external_event_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMilestoneId()Ljava/lang/String;
    .registers 2

    const-string v0, "external_milestone_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getState()I
    .registers 2

    const-string v0, "milestone_state"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getTargetProgress()J
    .registers 3

    const-string v0, "target_value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;->zza(Lcom/google/android/gms/games/quest/Milestone;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzb(Lcom/google/android/gms/games/quest/Milestone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/zzb;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/quest/Milestone;

    check-cast v0, Lcom/google/android/gms/games/quest/MilestoneEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/quest/MilestoneEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

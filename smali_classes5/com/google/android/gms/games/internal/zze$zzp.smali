###### Class com.google.android.gms.games.internal.zze.zzp (com.google.android.gms.games.internal.zze$zzp)
.class final Lcom/google/android/gms/games/internal/zze$zzp;
.super Lcom/google/android/gms/games/internal/zze$zzw;

# interfaces
.implements Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzp"
.end annotation


# instance fields
.field private final zzgd:Lcom/google/android/gms/games/quest/Quest;

.field private final zzgm:Lcom/google/android/gms/games/quest/Milestone;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zze$zzw;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/quest/QuestBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/quest/QuestBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_8
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/EntityBuffer;->getCount()I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_49

    new-instance p1, Lcom/google/android/gms/games/quest/QuestEntity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/data/EntityBuffer;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/quest/Quest;

    invoke-direct {p1, v3}, Lcom/google/android/gms/games/quest/QuestEntity;-><init>(Lcom/google/android/gms/games/quest/Quest;)V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zze$zzp;->zzgd:Lcom/google/android/gms/games/quest/Quest;

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->zzcj()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    :goto_25
    if-ge v2, v3, :cond_46

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/games/quest/Milestone;

    invoke-interface {v4}, Lcom/google/android/gms/games/quest/Milestone;->getMilestoneId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/quest/Milestone;

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zze$zzp;->zzgm:Lcom/google/android/gms/games/quest/Milestone;
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_51

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->release()V

    return-void

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_46
    :try_start_46
    iput-object v1, p0, Lcom/google/android/gms/games/internal/zze$zzp;->zzgm:Lcom/google/android/gms/games/quest/Milestone;

    goto :goto_4d

    :cond_49
    iput-object v1, p0, Lcom/google/android/gms/games/internal/zze$zzp;->zzgm:Lcom/google/android/gms/games/quest/Milestone;

    iput-object v1, p0, Lcom/google/android/gms/games/internal/zze$zzp;->zzgd:Lcom/google/android/gms/games/quest/Quest;
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_51

    :goto_4d
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->release()V

    return-void

    :catchall_51
    move-exception p1

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->release()V

    throw p1
.end method


# virtual methods
.method public final getMilestone()Lcom/google/android/gms/games/quest/Milestone;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zze$zzp;->zzgm:Lcom/google/android/gms/games/quest/Milestone;

    return-object v0
.end method

.method public final getQuest()Lcom/google/android/gms/games/quest/Quest;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zze$zzp;->zzgd:Lcom/google/android/gms/games/quest/Quest;

    return-object v0
.end method

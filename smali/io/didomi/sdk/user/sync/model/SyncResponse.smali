###### Class io.didomi.drawable.user.sync.model.SyncResponse (io.didomi.sdk.user.sync.model.SyncResponse)
.class public final Lio/didomi/sdk/user/sync/model/SyncResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0008J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J&\u0010\u000e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00032\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u0007\u0010\u0008R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/didomi/sdk/user/sync/model/SyncResponse;",
        "",
        "synced",
        "",
        "user",
        "Lio/didomi/sdk/user/sync/model/ResponseUser;",
        "(Ljava/lang/Boolean;Lio/didomi/sdk/user/sync/model/ResponseUser;)V",
        "getSynced",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getUser",
        "()Lio/didomi/sdk/user/sync/model/ResponseUser;",
        "component1",
        "component2",
        "copy",
        "(Ljava/lang/Boolean;Lio/didomi/sdk/user/sync/model/ResponseUser;)Lio/didomi/sdk/user/sync/model/SyncResponse;",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final synced:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/r/c;
        value = "synced"
    .end annotation
.end field

.field private final user:Lio/didomi/sdk/user/sync/model/ResponseUser;
    .annotation runtime Lcom/google/gson/r/c;
        value = "user"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lio/didomi/sdk/user/sync/model/SyncResponse;-><init>(Ljava/lang/Boolean;Lio/didomi/sdk/user/sync/model/ResponseUser;ILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Lio/didomi/sdk/user/sync/model/ResponseUser;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/user/sync/model/SyncResponse;->synced:Ljava/lang/Boolean;

    iput-object p2, p0, Lio/didomi/sdk/user/sync/model/SyncResponse;->user:Lio/didomi/sdk/user/sync/model/ResponseUser;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Boolean;Lio/didomi/sdk/user/sync/model/ResponseUser;ILkotlin/jvm/internal/n;)V
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    const/4 p2, 0x0

    :cond_b
    invoke-direct {p0, p1, p2}, Lio/didomi/sdk/user/sync/model/SyncResponse;-><init>(Ljava/lang/Boolean;Lio/didomi/sdk/user/sync/model/ResponseUser;)V

    return-void
.end method

.method public static synthetic copy$default(Lio/didomi/sdk/user/sync/model/SyncResponse;Ljava/lang/Boolean;Lio/didomi/sdk/user/sync/model/ResponseUser;ILjava/lang/Object;)Lio/didomi/sdk/user/sync/model/SyncResponse;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lio/didomi/sdk/user/sync/model/SyncResponse;->synced:Ljava/lang/Boolean;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lio/didomi/sdk/user/sync/model/SyncResponse;->user:Lio/didomi/sdk/user/sync/model/ResponseUser;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/user/sync/model/SyncResponse;->copy(Ljava/lang/Boolean;Lio/didomi/sdk/user/sync/model/ResponseUser;)Lio/didomi/sdk/user/sync/model/SyncResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/user/sync/model/SyncResponse;->synced:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component2()Lio/didomi/sdk/user/sync/model/ResponseUser;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/user/sync/model/SyncResponse;->user:Lio/didomi/sdk/user/sync/model/ResponseUser;

    return-object v0
.end method

.method public final copy(Ljava/lang/Boolean;Lio/didomi/sdk/user/sync/model/ResponseUser;)Lio/didomi/sdk/user/sync/model/SyncResponse;
    .registers 4

    new-instance v0, Lio/didomi/sdk/user/sync/model/SyncResponse;

    invoke-direct {v0, p1, p2}, Lio/didomi/sdk/user/sync/model/SyncResponse;-><init>(Ljava/lang/Boolean;Lio/didomi/sdk/user/sync/model/ResponseUser;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/user/sync/model/SyncResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/user/sync/model/SyncResponse;

    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/SyncResponse;->synced:Ljava/lang/Boolean;

    iget-object v3, p1, Lio/didomi/sdk/user/sync/model/SyncResponse;->synced:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/SyncResponse;->user:Lio/didomi/sdk/user/sync/model/ResponseUser;

    iget-object p1, p1, Lio/didomi/sdk/user/sync/model/SyncResponse;->user:Lio/didomi/sdk/user/sync/model/ResponseUser;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getSynced()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/user/sync/model/SyncResponse;->synced:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getUser()Lio/didomi/sdk/user/sync/model/ResponseUser;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/user/sync/model/SyncResponse;->user:Lio/didomi/sdk/user/sync/model/ResponseUser;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/user/sync/model/SyncResponse;->synced:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/didomi/sdk/user/sync/model/SyncResponse;->user:Lio/didomi/sdk/user/sync/model/ResponseUser;

    if-nez v2, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {v2}, Lio/didomi/sdk/user/sync/model/ResponseUser;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncResponse(synced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/SyncResponse;->synced:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/SyncResponse;->user:Lio/didomi/sdk/user/sync/model/ResponseUser;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

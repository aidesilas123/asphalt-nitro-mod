###### Class io.didomi.drawable.user.sync.model.SyncRequest (io.didomi.sdk.user.sync.model.SyncRequest)
.class public final Lio/didomi/sdk/user/sync/model/SyncRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lio/didomi/sdk/user/sync/model/SyncRequest;",
        "",
        "source",
        "Lio/didomi/sdk/user/sync/model/RequestSource;",
        "user",
        "Lio/didomi/sdk/user/sync/model/RequestUser;",
        "(Lio/didomi/sdk/user/sync/model/RequestSource;Lio/didomi/sdk/user/sync/model/RequestUser;)V",
        "getSource",
        "()Lio/didomi/sdk/user/sync/model/RequestSource;",
        "getUser",
        "()Lio/didomi/sdk/user/sync/model/RequestUser;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
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
.field private final source:Lio/didomi/sdk/user/sync/model/RequestSource;
    .annotation runtime Lcom/google/gson/r/c;
        value = "source"
    .end annotation
.end field

.field private final user:Lio/didomi/sdk/user/sync/model/RequestUser;
    .annotation runtime Lcom/google/gson/r/c;
        value = "user"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/didomi/sdk/user/sync/model/RequestSource;Lio/didomi/sdk/user/sync/model/RequestUser;)V
    .registers 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/user/sync/model/SyncRequest;->source:Lio/didomi/sdk/user/sync/model/RequestSource;

    iput-object p2, p0, Lio/didomi/sdk/user/sync/model/SyncRequest;->user:Lio/didomi/sdk/user/sync/model/RequestUser;

    return-void
.end method

.method public static synthetic copy$default(Lio/didomi/sdk/user/sync/model/SyncRequest;Lio/didomi/sdk/user/sync/model/RequestSource;Lio/didomi/sdk/user/sync/model/RequestUser;ILjava/lang/Object;)Lio/didomi/sdk/user/sync/model/SyncRequest;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lio/didomi/sdk/user/sync/model/SyncRequest;->source:Lio/didomi/sdk/user/sync/model/RequestSource;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lio/didomi/sdk/user/sync/model/SyncRequest;->user:Lio/didomi/sdk/user/sync/model/RequestUser;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/user/sync/model/SyncRequest;->copy(Lio/didomi/sdk/user/sync/model/RequestSource;Lio/didomi/sdk/user/sync/model/RequestUser;)Lio/didomi/sdk/user/sync/model/SyncRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/didomi/sdk/user/sync/model/RequestSource;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/user/sync/model/SyncRequest;->source:Lio/didomi/sdk/user/sync/model/RequestSource;

    return-object v0
.end method

.method public final component2()Lio/didomi/sdk/user/sync/model/RequestUser;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/user/sync/model/SyncRequest;->user:Lio/didomi/sdk/user/sync/model/RequestUser;

    return-object v0
.end method

.method public final copy(Lio/didomi/sdk/user/sync/model/RequestSource;Lio/didomi/sdk/user/sync/model/RequestUser;)Lio/didomi/sdk/user/sync/model/SyncRequest;
    .registers 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/user/sync/model/SyncRequest;

    invoke-direct {v0, p1, p2}, Lio/didomi/sdk/user/sync/model/SyncRequest;-><init>(Lio/didomi/sdk/user/sync/model/RequestSource;Lio/didomi/sdk/user/sync/model/RequestUser;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/user/sync/model/SyncRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/user/sync/model/SyncRequest;

    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/SyncRequest;->source:Lio/didomi/sdk/user/sync/model/RequestSource;

    iget-object v3, p1, Lio/didomi/sdk/user/sync/model/SyncRequest;->source:Lio/didomi/sdk/user/sync/model/RequestSource;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/SyncRequest;->user:Lio/didomi/sdk/user/sync/model/RequestUser;

    iget-object p1, p1, Lio/didomi/sdk/user/sync/model/SyncRequest;->user:Lio/didomi/sdk/user/sync/model/RequestUser;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getSource()Lio/didomi/sdk/user/sync/model/RequestSource;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/user/sync/model/SyncRequest;->source:Lio/didomi/sdk/user/sync/model/RequestSource;

    return-object v0
.end method

.method public final getUser()Lio/didomi/sdk/user/sync/model/RequestUser;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/user/sync/model/SyncRequest;->user:Lio/didomi/sdk/user/sync/model/RequestUser;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/user/sync/model/SyncRequest;->source:Lio/didomi/sdk/user/sync/model/RequestSource;

    invoke-virtual {v0}, Lio/didomi/sdk/user/sync/model/RequestSource;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/SyncRequest;->user:Lio/didomi/sdk/user/sync/model/RequestUser;

    invoke-virtual {v1}, Lio/didomi/sdk/user/sync/model/RequestUser;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncRequest(source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/SyncRequest;->source:Lio/didomi/sdk/user/sync/model/RequestSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/SyncRequest;->user:Lio/didomi/sdk/user/sync/model/RequestUser;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

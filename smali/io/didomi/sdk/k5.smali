###### Class io.didomi.drawable.RemoteFile (io.didomi.sdk.k5)
.class public final Lio/didomi/sdk/k5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008%\u0008\u0086\u0008\u0018\u00002\u00020\u0001BU\u0008\u0007\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\r\u0010\u0013\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J\u0010\u0010\u0014\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0007H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001a\u0010\u0019\u001a\u00020\u00042\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u0015R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010\u0011R\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u001c\u001a\u0004\u0008!\u0010\u0015R\u0017\u0010\u0008\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008\u001e\u0010\u0017R\u0019\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u001c\u001a\u0004\u0008\"\u0010\u0015R\u0017\u0010\n\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001f\u001a\u0004\u0008%\u0010\u0011R\"\u0010\u000c\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008&\u0010(\"\u0004\u0008)\u0010*R\"\u0010\r\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010\u001f\u001a\u0004\u0008+\u0010\u0011\"\u0004\u0008\u001b\u0010,R$\u0010.\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010\u001c\u001a\u0004\u0008$\u0010\u0015\"\u0004\u0008\u001b\u0010-R\u0017\u0010/\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u001c\u001a\u0004\u0008\u001b\u0010\u0015\u00a8\u00060"
    }
    d2 = {
        "Lio/didomi/sdk/k5;",
        "",
        "",
        "remoteFileURL",
        "",
        "validateRemoteFileAsJSON",
        "cacheFileName",
        "",
        "cacheFileExpirationInSeconds",
        "fallbackFilePathInAssets",
        "isUpdateCacheImmediately",
        "",
        "updateTimeout",
        "isBlockUntilUpdated",
        "<init>",
        "(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZJZ)V",
        "m",
        "()Z",
        "j",
        "k",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Ljava/lang/String;",
        "f",
        "b",
        "Z",
        "h",
        "c",
        "d",
        "I",
        "e",
        "l",
        "g",
        "J",
        "()J",
        "setUpdateTimeout",
        "(J)V",
        "i",
        "(Z)V",
        "(Ljava/lang/String;)V",
        "remoteFileContent",
        "cacheFileDateKey",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private g:J

.field private h:Z

.field private i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZJZ)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/k5;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lio/didomi/sdk/k5;->b:Z

    iput-object p3, p0, Lio/didomi/sdk/k5;->c:Ljava/lang/String;

    iput p4, p0, Lio/didomi/sdk/k5;->d:I

    iput-object p5, p0, Lio/didomi/sdk/k5;->e:Ljava/lang/String;

    iput-boolean p6, p0, Lio/didomi/sdk/k5;->f:Z

    iput-wide p7, p0, Lio/didomi/sdk/k5;->g:J

    iput-boolean p9, p0, Lio/didomi/sdk/k5;->h:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Didomi_CacheDate_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/k5;->j:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZJZILkotlin/jvm/internal/n;)V
    .registers 24

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    const/4 v8, 0x1

    goto :goto_b

    :cond_9
    move/from16 v8, p6

    :goto_b
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_13

    const-wide/16 v1, 0x0

    move-wide v9, v1

    goto :goto_15

    :cond_13
    move-wide/from16 v9, p7

    :goto_15
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    const/4 v11, 0x0

    goto :goto_1e

    :cond_1c
    move/from16 v11, p9

    :goto_1e
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v11}, Lio/didomi/sdk/k5;-><init>(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZJZ)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k5;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/k5;->i:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/didomi/sdk/k5;->h:Z

    return-void
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/k5;->d:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k5;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k5;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k5;->i:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/k5;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/k5;

    iget-object v1, p0, Lio/didomi/sdk/k5;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/k5;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Lio/didomi/sdk/k5;->b:Z

    iget-boolean v3, p1, Lio/didomi/sdk/k5;->b:Z

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lio/didomi/sdk/k5;->c:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/k5;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget v1, p0, Lio/didomi/sdk/k5;->d:I

    iget v3, p1, Lio/didomi/sdk/k5;->d:I

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lio/didomi/sdk/k5;->e:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/k5;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v2

    :cond_3b
    iget-boolean v1, p0, Lio/didomi/sdk/k5;->f:Z

    iget-boolean v3, p1, Lio/didomi/sdk/k5;->f:Z

    if-eq v1, v3, :cond_42

    return v2

    :cond_42
    iget-wide v3, p0, Lio/didomi/sdk/k5;->g:J

    iget-wide v5, p1, Lio/didomi/sdk/k5;->g:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4b

    return v2

    :cond_4b
    iget-boolean v1, p0, Lio/didomi/sdk/k5;->h:Z

    iget-boolean p1, p1, Lio/didomi/sdk/k5;->h:Z

    if-eq v1, p1, :cond_52

    return v2

    :cond_52
    return v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k5;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final g()J
    .registers 3

    iget-wide v0, p0, Lio/didomi/sdk/k5;->g:J

    return-wide v0
.end method

.method public final h()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/k5;->b:Z

    return v0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/k5;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lio/didomi/sdk/k5;->b:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    :cond_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/didomi/sdk/k5;->c:Ljava/lang/String;

    if-nez v2, :cond_1c

    const/4 v2, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_20
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lio/didomi/sdk/k5;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/didomi/sdk/k5;->e:Ljava/lang/String;

    if-nez v2, :cond_2d

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_31
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/didomi/sdk/k5;->f:Z

    if-eqz v1, :cond_39

    const/4 v1, 0x1

    :cond_39
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/didomi/sdk/k5;->g:J

    invoke-static {v1, v2}, Landroidx/privacysandbox/ads/adservices/adselection/b;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/didomi/sdk/k5;->h:Z

    if-eqz v1, :cond_4a

    goto :goto_4b

    :cond_4a
    move v3, v1

    :goto_4b
    add-int/2addr v0, v3

    return v0
.end method

.method public final i()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/k5;->h:Z

    return v0
.end method

.method public final j()Z
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/k5;->c:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-static {v0}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    xor-int/2addr v0, v1

    return v0
.end method

.method public final k()Z
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/k5;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-static {v0}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    xor-int/2addr v0, v1

    return v0
.end method

.method public final l()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/k5;->f:Z

    return v0
.end method

.method public final m()Z
    .registers 6

    iget-boolean v0, p0, Lio/didomi/sdk/k5;->h:Z

    if-nez v0, :cond_f

    iget-wide v0, p0, Lio/didomi/sdk/k5;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteFile(remoteFileURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", validateRemoteFileAsJSON="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/didomi/sdk/k5;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cacheFileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k5;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cacheFileExpirationInSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/didomi/sdk/k5;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fallbackFilePathInAssets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k5;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isUpdateCacheImmediately="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/didomi/sdk/k5;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", updateTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/didomi/sdk/k5;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isBlockUntilUpdated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/didomi/sdk/k5;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

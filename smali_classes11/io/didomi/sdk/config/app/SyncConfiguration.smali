###### Class io.didomi.drawable.config.app.SyncConfiguration (io.didomi.sdk.config.app.SyncConfiguration)
.class public final Lio/didomi/sdk/config/app/SyncConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/config/app/SyncConfiguration$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0087\u0008\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001eB%\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\t\u001a\u00020\u0004H\u00c2\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\r\u0010\nJ.\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0013\u0010\nJ\u001a\u0010\u0015\u001a\u00020\u00022\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u000cR\u001a\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0019\u001a\u0004\u0008\u001a\u0010\nR\u0014\u0010\u0006\u001a\u00020\u00048\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0019R\u0011\u0010\u001c\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\n\u00a8\u0006\u001f"
    }
    d2 = {
        "Lio/didomi/sdk/config/app/SyncConfiguration;",
        "",
        "",
        "enabled",
        "",
        "timeout",
        "internalFrequency",
        "<init>",
        "(ZII)V",
        "component3",
        "()I",
        "component1",
        "()Z",
        "component2",
        "copy",
        "(ZII)Lio/didomi/sdk/config/app/SyncConfiguration;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Z",
        "getEnabled",
        "I",
        "getTimeout",
        "getFrequency",
        "frequency",
        "Companion",
        "a",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lio/didomi/sdk/config/app/SyncConfiguration$a;

.field public static final DEFAULT_FREQUENCY:I = 0x15180

.field public static final DEFAULT_TIMEOUT:I = 0xbb8

.field public static final MINIMUM_FREQUENCY:I = 0x5460


# instance fields
.field private final enabled:Z
    .annotation runtime Lcom/google/gson/r/c;
        value = "enabled"
    .end annotation
.end field

.field private final internalFrequency:I
    .annotation runtime Lcom/google/gson/r/c;
        value = "frequency"
    .end annotation
.end field

.field private final timeout:I
    .annotation runtime Lcom/google/gson/r/c;
        value = "timeout"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/config/app/SyncConfiguration$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/config/app/SyncConfiguration$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/config/app/SyncConfiguration;->Companion:Lio/didomi/sdk/config/app/SyncConfiguration$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/didomi/sdk/config/app/SyncConfiguration;-><init>(ZIIILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/didomi/sdk/config/app/SyncConfiguration;->enabled:Z

    iput p2, p0, Lio/didomi/sdk/config/app/SyncConfiguration;->timeout:I

    iput p3, p0, Lio/didomi/sdk/config/app/SyncConfiguration;->internalFrequency:I

    return-void
.end method

.method public synthetic constructor <init>(ZIIILkotlin/jvm/internal/n;)V
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_b

    const/16 p2, 0xbb8

    :cond_b
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    const p3, 0x15180

    :cond_12
    invoke-direct {p0, p1, p2, p3}, Lio/didomi/sdk/config/app/SyncConfiguration;-><init>(ZII)V

    return-void
.end method

.method private final component3()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/config/app/SyncConfiguration;->internalFrequency:I

    return v0
.end method

.method public static synthetic copy$default(Lio/didomi/sdk/config/app/SyncConfiguration;ZIIILjava/lang/Object;)Lio/didomi/sdk/config/app/SyncConfiguration;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-boolean p1, p0, Lio/didomi/sdk/config/app/SyncConfiguration;->enabled:Z

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lio/didomi/sdk/config/app/SyncConfiguration;->timeout:I

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget p3, p0, Lio/didomi/sdk/config/app/SyncConfiguration;->internalFrequency:I

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lio/didomi/sdk/config/app/SyncConfiguration;->copy(ZII)Lio/didomi/sdk/config/app/SyncConfiguration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/config/app/SyncConfiguration;->enabled:Z

    return v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/config/app/SyncConfiguration;->timeout:I

    return v0
.end method

.method public final copy(ZII)Lio/didomi/sdk/config/app/SyncConfiguration;
    .registers 5

    new-instance v0, Lio/didomi/sdk/config/app/SyncConfiguration;

    invoke-direct {v0, p1, p2, p3}, Lio/didomi/sdk/config/app/SyncConfiguration;-><init>(ZII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/config/app/SyncConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/config/app/SyncConfiguration;

    iget-boolean v1, p0, Lio/didomi/sdk/config/app/SyncConfiguration;->enabled:Z

    iget-boolean v3, p1, Lio/didomi/sdk/config/app/SyncConfiguration;->enabled:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lio/didomi/sdk/config/app/SyncConfiguration;->timeout:I

    iget v3, p1, Lio/didomi/sdk/config/app/SyncConfiguration;->timeout:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lio/didomi/sdk/config/app/SyncConfiguration;->internalFrequency:I

    iget p1, p1, Lio/didomi/sdk/config/app/SyncConfiguration;->internalFrequency:I

    if-eq v1, p1, :cond_21

    return v2

    :cond_21
    return v0
.end method

.method public final getEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/config/app/SyncConfiguration;->enabled:Z

    return v0
.end method

.method public final getFrequency()I
    .registers 3

    iget v0, p0, Lio/didomi/sdk/config/app/SyncConfiguration;->internalFrequency:I

    const/16 v1, 0x5460

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getTimeout()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/config/app/SyncConfiguration;->timeout:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-boolean v0, p0, Lio/didomi/sdk/config/app/SyncConfiguration;->enabled:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :cond_5
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/didomi/sdk/config/app/SyncConfiguration;->timeout:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/didomi/sdk/config/app/SyncConfiguration;->internalFrequency:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncConfiguration(enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/didomi/sdk/config/app/SyncConfiguration;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/didomi/sdk/config/app/SyncConfiguration;->timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", internalFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/didomi/sdk/config/app/SyncConfiguration;->internalFrequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

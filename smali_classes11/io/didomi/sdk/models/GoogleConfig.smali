###### Class io.didomi.drawable.models.GoogleConfig (io.didomi.sdk.models.GoogleConfig)
.class public final Lio/didomi/sdk/models/GoogleConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0015\u0010\u0008\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000c\u001a\u00020\rH\u00d6\u0001J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/didomi/sdk/models/GoogleConfig;",
        "",
        "additionalConsent",
        "Lio/didomi/sdk/models/AdditionalConsent;",
        "(Lio/didomi/sdk/models/AdditionalConsent;)V",
        "getAdditionalConsent",
        "()Lio/didomi/sdk/models/AdditionalConsent;",
        "component1",
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
.field private final additionalConsent:Lio/didomi/sdk/models/AdditionalConsent;
    .annotation runtime Lcom/google/gson/r/c;
        value = "additionalConsent"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/didomi/sdk/models/AdditionalConsent;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/models/GoogleConfig;->additionalConsent:Lio/didomi/sdk/models/AdditionalConsent;

    return-void
.end method

.method public static synthetic copy$default(Lio/didomi/sdk/models/GoogleConfig;Lio/didomi/sdk/models/AdditionalConsent;ILjava/lang/Object;)Lio/didomi/sdk/models/GoogleConfig;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lio/didomi/sdk/models/GoogleConfig;->additionalConsent:Lio/didomi/sdk/models/AdditionalConsent;

    :cond_6
    invoke-virtual {p0, p1}, Lio/didomi/sdk/models/GoogleConfig;->copy(Lio/didomi/sdk/models/AdditionalConsent;)Lio/didomi/sdk/models/GoogleConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/didomi/sdk/models/AdditionalConsent;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/GoogleConfig;->additionalConsent:Lio/didomi/sdk/models/AdditionalConsent;

    return-object v0
.end method

.method public final copy(Lio/didomi/sdk/models/AdditionalConsent;)Lio/didomi/sdk/models/GoogleConfig;
    .registers 3

    new-instance v0, Lio/didomi/sdk/models/GoogleConfig;

    invoke-direct {v0, p1}, Lio/didomi/sdk/models/GoogleConfig;-><init>(Lio/didomi/sdk/models/AdditionalConsent;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/models/GoogleConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/models/GoogleConfig;

    iget-object v1, p0, Lio/didomi/sdk/models/GoogleConfig;->additionalConsent:Lio/didomi/sdk/models/AdditionalConsent;

    iget-object p1, p1, Lio/didomi/sdk/models/GoogleConfig;->additionalConsent:Lio/didomi/sdk/models/AdditionalConsent;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getAdditionalConsent()Lio/didomi/sdk/models/AdditionalConsent;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/GoogleConfig;->additionalConsent:Lio/didomi/sdk/models/AdditionalConsent;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/GoogleConfig;->additionalConsent:Lio/didomi/sdk/models/AdditionalConsent;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lio/didomi/sdk/models/AdditionalConsent;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GoogleConfig(additionalConsent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/GoogleConfig;->additionalConsent:Lio/didomi/sdk/models/AdditionalConsent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

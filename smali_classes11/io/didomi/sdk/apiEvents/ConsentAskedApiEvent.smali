###### Class io.didomi.drawable.apiEvents.ConsentAskedApiEvent (io.didomi.sdk.apiEvents.ConsentAskedApiEvent)
.class public final Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/e;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0008\u0087\u0008\u0018\u00002\u00020\u0001B?\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\tH\u00c6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0004\u0008\u0018\u0010\u0019JN\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u0010J\u0010\u0010\u001e\u001a\u00020\u001dH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001a\u0010#\u001a\u00020\"2\u0008\u0010!\u001a\u0004\u0018\u00010 H\u00d6\u0003\u00a2\u0006\u0004\u0008#\u0010$R\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010%\u001a\u0004\u0008&\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u00028\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010%\u001a\u0004\u0008\'\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u00058\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010(\u001a\u0004\u0008)\u0010\u0013R\u001a\u0010\u0008\u001a\u00020\u00078\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010*\u001a\u0004\u0008+\u0010\u0015R\u001a\u0010\n\u001a\u00020\t8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010,\u001a\u0004\u0008-\u0010\u0017R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010.\u001a\u0004\u0008/\u0010\u0019\u00a8\u00060"
    }
    d2 = {
        "Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;",
        "Lio/didomi/sdk/e;",
        "",
        "type",
        "timestamp",
        "",
        "rate",
        "Lio/didomi/sdk/apiEvents/User;",
        "user",
        "Lio/didomi/sdk/apiEvents/Source;",
        "source",
        "Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;",
        "parameters",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;FLio/didomi/sdk/apiEvents/User;Lio/didomi/sdk/apiEvents/Source;Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;)V",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "component3",
        "()F",
        "component4",
        "()Lio/didomi/sdk/apiEvents/User;",
        "component5",
        "()Lio/didomi/sdk/apiEvents/Source;",
        "component6",
        "()Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;FLio/didomi/sdk/apiEvents/User;Lio/didomi/sdk/apiEvents/Source;Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;)Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;",
        "toString",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getType",
        "getTimestamp",
        "F",
        "getRate",
        "Lio/didomi/sdk/apiEvents/User;",
        "getUser",
        "Lio/didomi/sdk/apiEvents/Source;",
        "getSource",
        "Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;",
        "getParameters",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final parameters:Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;

.field private final rate:F

.field private final source:Lio/didomi/sdk/apiEvents/Source;

.field private final timestamp:Ljava/lang/String;

.field private final type:Ljava/lang/String;

.field private final user:Lio/didomi/sdk/apiEvents/User;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FLio/didomi/sdk/apiEvents/User;Lio/didomi/sdk/apiEvents/Source;Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;)V
    .registers 8

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestamp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->type:Ljava/lang/String;

    iput-object p2, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->timestamp:Ljava/lang/String;

    iput p3, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->rate:F

    iput-object p4, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->user:Lio/didomi/sdk/apiEvents/User;

    iput-object p5, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->source:Lio/didomi/sdk/apiEvents/Source;

    iput-object p6, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->parameters:Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;FLio/didomi/sdk/apiEvents/User;Lio/didomi/sdk/apiEvents/Source;Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;ILkotlin/jvm/internal/n;)V
    .registers 16

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    const-string p1, "consent.asked"

    :cond_6
    move-object v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_15

    sget-object p1, Lio/didomi/sdk/v0;->a:Lio/didomi/sdk/v0;

    invoke-virtual {p1}, Lio/didomi/sdk/v0;->b()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    :cond_15
    move-object v2, p2

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_21

    const p3, 0x3e4ccccd    # 0.2f

    const v3, 0x3e4ccccd    # 0.2f

    goto :goto_22

    :cond_21
    move v3, p3

    :goto_22
    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;-><init>(Ljava/lang/String;Ljava/lang/String;FLio/didomi/sdk/apiEvents/User;Lio/didomi/sdk/apiEvents/Source;Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;)V

    return-void
.end method

.method public static synthetic copy$default(Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;Ljava/lang/String;Ljava/lang/String;FLio/didomi/sdk/apiEvents/User;Lio/didomi/sdk/apiEvents/Source;Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;ILjava/lang/Object;)Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;
    .registers 13

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget-object p1, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->type:Ljava/lang/String;

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget-object p2, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->timestamp:Ljava/lang/String;

    :cond_c
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_13

    iget p3, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->rate:F

    :cond_13
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->user:Lio/didomi/sdk/apiEvents/User;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->source:Lio/didomi/sdk/apiEvents/Source;

    :cond_21
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_28

    iget-object p6, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->parameters:Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;

    :cond_28
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->copy(Ljava/lang/String;Ljava/lang/String;FLio/didomi/sdk/apiEvents/User;Lio/didomi/sdk/apiEvents/Source;Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;)Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()F
    .registers 2

    iget v0, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->rate:F

    return v0
.end method

.method public final component4()Lio/didomi/sdk/apiEvents/User;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->user:Lio/didomi/sdk/apiEvents/User;

    return-object v0
.end method

.method public final component5()Lio/didomi/sdk/apiEvents/Source;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->source:Lio/didomi/sdk/apiEvents/Source;

    return-object v0
.end method

.method public final component6()Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->parameters:Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;FLio/didomi/sdk/apiEvents/User;Lio/didomi/sdk/apiEvents/Source;Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;)Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;
    .registers 15

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestamp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;-><init>(Ljava/lang/String;Ljava/lang/String;FLio/didomi/sdk/apiEvents/User;Lio/didomi/sdk/apiEvents/Source;Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->type:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->timestamp:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->timestamp:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget v1, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->rate:F

    iget v3, p1, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->rate:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->user:Lio/didomi/sdk/apiEvents/User;

    iget-object v3, p1, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->user:Lio/didomi/sdk/apiEvents/User;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->source:Lio/didomi/sdk/apiEvents/Source;

    iget-object v3, p1, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->source:Lio/didomi/sdk/apiEvents/Source;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->parameters:Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;

    iget-object p1, p1, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->parameters:Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    return v2

    :cond_4e
    return v0
.end method

.method public getParameters()Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->parameters:Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lio/didomi/sdk/i;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->getParameters()Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;

    move-result-object v0

    return-object v0
.end method

.method public getRate()F
    .registers 2

    iget v0, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->rate:F

    return v0
.end method

.method public getSource()Lio/didomi/sdk/apiEvents/Source;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->source:Lio/didomi/sdk/apiEvents/Source;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lio/didomi/sdk/apiEvents/User;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->user:Lio/didomi/sdk/apiEvents/User;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->timestamp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->rate:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->user:Lio/didomi/sdk/apiEvents/User;

    invoke-virtual {v1}, Lio/didomi/sdk/apiEvents/User;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->source:Lio/didomi/sdk/apiEvents/Source;

    invoke-virtual {v1}, Lio/didomi/sdk/apiEvents/Source;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->parameters:Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;

    if-nez v1, :cond_32

    const/4 v1, 0x0

    goto :goto_36

    :cond_32
    invoke-virtual {v1}, Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;->hashCode()I

    move-result v1

    :goto_36
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConsentAskedApiEvent(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->rate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->user:Lio/didomi/sdk/apiEvents/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->source:Lio/didomi/sdk/apiEvents/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEvent;->parameters:Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

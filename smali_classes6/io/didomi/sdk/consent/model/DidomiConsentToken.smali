###### Class io.didomi.drawable.consent.model.DidomiConsentToken (io.didomi.sdk.consent.model.DidomiConsentToken)
.class public final Lio/didomi/sdk/consent/model/DidomiConsentToken;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/consent/model/DidomiConsentToken$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001,B[\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u000fJ\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u000fJ\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0014J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0014Jj\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00022\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u000fJ\u0010\u0010\u001c\u001a\u00020\u001bH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001a\u0010 \u001a\u00020\u001f2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008 \u0010!R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\"\u001a\u0004\u0008#\u0010\u000fR\u001a\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\"\u001a\u0004\u0008$\u0010\u000fR\u001a\u0010\u0005\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\"\u001a\u0004\u0008%\u0010\u000fR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\"\u001a\u0004\u0008&\u0010\u000fR\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\'\u001a\u0004\u0008(\u0010\u0014R\u001c\u0010\t\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\'\u001a\u0004\u0008)\u0010\u0014R\u001c\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\'\u001a\u0004\u0008*\u0010\u0014R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\'\u001a\u0004\u0008+\u0010\u0014\u00a8\u0006-"
    }
    d2 = {
        "Lio/didomi/sdk/consent/model/DidomiConsentToken;",
        "",
        "",
        "userId",
        "created",
        "updated",
        "sync",
        "Lio/didomi/sdk/consent/model/DidomiConsentToken$a;",
        "vendors",
        "purposes",
        "vendorsLI",
        "purposesLI",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;)V",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "component3",
        "component4",
        "component5",
        "()Lio/didomi/sdk/consent/model/DidomiConsentToken$a;",
        "component6",
        "component7",
        "component8",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;)Lio/didomi/sdk/consent/model/DidomiConsentToken;",
        "toString",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getUserId",
        "getCreated",
        "getUpdated",
        "getSync",
        "Lio/didomi/sdk/consent/model/DidomiConsentToken$a;",
        "getVendors",
        "getPurposes",
        "getVendorsLI",
        "getPurposesLI",
        "a",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final created:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "created"
    .end annotation
.end field

.field private final purposes:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;
    .annotation runtime Lcom/google/gson/r/c;
        value = "purposes"
    .end annotation
.end field

.field private final purposesLI:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;
    .annotation runtime Lcom/google/gson/r/c;
        value = "purposes_li"
    .end annotation
.end field

.field private final sync:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "sync"
    .end annotation
.end field

.field private final updated:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "updated"
    .end annotation
.end field

.field private final userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "user_id"
    .end annotation
.end field

.field private final vendors:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;
    .annotation runtime Lcom/google/gson/r/c;
        value = "vendors"
    .end annotation
.end field

.field private final vendorsLI:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;
    .annotation runtime Lcom/google/gson/r/c;
        value = "vendors_li"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;)V
    .registers 10

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "created"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updated"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->userId:Ljava/lang/String;

    iput-object p2, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->created:Ljava/lang/String;

    iput-object p3, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->updated:Ljava/lang/String;

    iput-object p4, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->sync:Ljava/lang/String;

    iput-object p5, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->vendors:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    iput-object p6, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->purposes:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    iput-object p7, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->vendorsLI:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    iput-object p8, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->purposesLI:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;ILkotlin/jvm/internal/n;)V
    .registers 23

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v7, v2

    goto :goto_b

    :cond_9
    move-object/from16 v7, p4

    :goto_b
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_11

    move-object v8, v2

    goto :goto_13

    :cond_11
    move-object/from16 v8, p5

    :goto_13
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_19

    move-object v9, v2

    goto :goto_1b

    :cond_19
    move-object/from16 v9, p6

    :goto_1b
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_21

    move-object v10, v2

    goto :goto_23

    :cond_21
    move-object/from16 v10, p7

    :goto_23
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_29

    move-object v11, v2

    goto :goto_2b

    :cond_29
    move-object/from16 v11, p8

    :goto_2b
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v11}, Lio/didomi/sdk/consent/model/DidomiConsentToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;)V

    return-void
.end method

.method public static synthetic copy$default(Lio/didomi/sdk/consent/model/DidomiConsentToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;ILjava/lang/Object;)Lio/didomi/sdk/consent/model/DidomiConsentToken;
    .registers 20

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->userId:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->created:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->updated:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->sync:Ljava/lang/String;

    goto :goto_23

    :cond_22
    move-object v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->vendors:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    goto :goto_2b

    :cond_2a
    move-object v6, p5

    :goto_2b
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_32

    iget-object v7, v0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->purposes:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    goto :goto_33

    :cond_32
    move-object v7, p6

    :goto_33
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3a

    iget-object v8, v0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->vendorsLI:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    goto :goto_3c

    :cond_3a
    move-object/from16 v8, p7

    :goto_3c
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_43

    iget-object v1, v0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->purposesLI:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    goto :goto_45

    :cond_43
    move-object/from16 v1, p8

    :goto_45
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lio/didomi/sdk/consent/model/DidomiConsentToken;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;)Lio/didomi/sdk/consent/model/DidomiConsentToken;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->created:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->updated:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->sync:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lio/didomi/sdk/consent/model/DidomiConsentToken$a;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->vendors:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    return-object v0
.end method

.method public final component6()Lio/didomi/sdk/consent/model/DidomiConsentToken$a;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->purposes:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    return-object v0
.end method

.method public final component7()Lio/didomi/sdk/consent/model/DidomiConsentToken$a;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->vendorsLI:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    return-object v0
.end method

.method public final component8()Lio/didomi/sdk/consent/model/DidomiConsentToken$a;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->purposesLI:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;)Lio/didomi/sdk/consent/model/DidomiConsentToken;
    .registers 19

    const-string v0, "userId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "created"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updated"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/consent/model/DidomiConsentToken;

    move-object v1, v0

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lio/didomi/sdk/consent/model/DidomiConsentToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;Lio/didomi/sdk/consent/model/DidomiConsentToken$a;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/consent/model/DidomiConsentToken;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/consent/model/DidomiConsentToken;

    iget-object v1, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->userId:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/consent/model/DidomiConsentToken;->userId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->created:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/consent/model/DidomiConsentToken;->created:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->updated:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/consent/model/DidomiConsentToken;->updated:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->sync:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/consent/model/DidomiConsentToken;->sync:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->vendors:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    iget-object v3, p1, Lio/didomi/sdk/consent/model/DidomiConsentToken;->vendors:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->purposes:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    iget-object v3, p1, Lio/didomi/sdk/consent/model/DidomiConsentToken;->purposes:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->vendorsLI:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    iget-object v3, p1, Lio/didomi/sdk/consent/model/DidomiConsentToken;->vendorsLI:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->purposesLI:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    iget-object p1, p1, Lio/didomi/sdk/consent/model/DidomiConsentToken;->purposesLI:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_64

    return v2

    :cond_64
    return v0
.end method

.method public final getCreated()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->created:Ljava/lang/String;

    return-object v0
.end method

.method public final getPurposes()Lio/didomi/sdk/consent/model/DidomiConsentToken$a;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->purposes:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    return-object v0
.end method

.method public final getPurposesLI()Lio/didomi/sdk/consent/model/DidomiConsentToken$a;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->purposesLI:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    return-object v0
.end method

.method public final getSync()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->sync:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdated()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->updated:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final getVendors()Lio/didomi/sdk/consent/model/DidomiConsentToken$a;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->vendors:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    return-object v0
.end method

.method public final getVendorsLI()Lio/didomi/sdk/consent/model/DidomiConsentToken$a;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->vendorsLI:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->created:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->updated:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->sync:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_21

    const/4 v1, 0x0

    goto :goto_25

    :cond_21
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_25
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->vendors:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    if-nez v1, :cond_2e

    const/4 v1, 0x0

    goto :goto_32

    :cond_2e
    invoke-virtual {v1}, Lio/didomi/sdk/consent/model/DidomiConsentToken$a;->hashCode()I

    move-result v1

    :goto_32
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->purposes:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    if-nez v1, :cond_3b

    const/4 v1, 0x0

    goto :goto_3f

    :cond_3b
    invoke-virtual {v1}, Lio/didomi/sdk/consent/model/DidomiConsentToken$a;->hashCode()I

    move-result v1

    :goto_3f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->vendorsLI:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    if-nez v1, :cond_48

    const/4 v1, 0x0

    goto :goto_4c

    :cond_48
    invoke-virtual {v1}, Lio/didomi/sdk/consent/model/DidomiConsentToken$a;->hashCode()I

    move-result v1

    :goto_4c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->purposesLI:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    if-nez v1, :cond_54

    goto :goto_58

    :cond_54
    invoke-virtual {v1}, Lio/didomi/sdk/consent/model/DidomiConsentToken$a;->hashCode()I

    move-result v2

    :goto_58
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DidomiConsentToken(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->created:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->updated:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->sync:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vendors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->vendors:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", purposes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->purposes:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vendorsLI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->vendorsLI:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", purposesLI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/consent/model/DidomiConsentToken;->purposesLI:Lio/didomi/sdk/consent/model/DidomiConsentToken$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

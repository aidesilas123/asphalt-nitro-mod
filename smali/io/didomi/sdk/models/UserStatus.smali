###### Class io.didomi.drawable.models.UserStatus (io.didomi.sdk.models.UserStatus)
.class public final Lio/didomi/sdk/models/UserStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/models/UserStatus$Ids;,
        Lio/didomi/sdk/models/UserStatus$Purposes;,
        Lio/didomi/sdk/models/UserStatus$Vendors;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0003./0B_\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010 \u001a\u00020\u0007H\u00c6\u0003J\t\u0010!\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0007H\u00c6\u0003J\t\u0010#\u001a\u00020\u0007H\u00c6\u0003J\t\u0010$\u001a\u00020\u0007H\u00c6\u0003J\t\u0010%\u001a\u00020\u0007H\u00c6\u0003J\t\u0010&\u001a\u00020\u0007H\u00c2\u0003Jc\u0010\'\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\r\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010(\u001a\u00020)2\u0008\u0010*\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010+\u001a\u00020,H\u00d6\u0001J\t\u0010-\u001a\u00020\u0007H\u00d6\u0001R\u0016\u0010\u000b\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\n\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0016\u0010\u0008\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010R\u0016\u0010\u000c\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0010R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0010\u0010\r\u001a\u00020\u00078\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0010R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0010R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u00061"
    }
    d2 = {
        "Lio/didomi/sdk/models/UserStatus;",
        "",
        "purposes",
        "Lio/didomi/sdk/models/UserStatus$Purposes;",
        "vendors",
        "Lio/didomi/sdk/models/UserStatus$Vendors;",
        "userId",
        "",
        "created",
        "updated",
        "consentString",
        "additionalConsent",
        "didomiDcs",
        "regulationString",
        "(Lio/didomi/sdk/models/UserStatus$Purposes;Lio/didomi/sdk/models/UserStatus$Vendors;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getAdditionalConsent",
        "()Ljava/lang/String;",
        "getConsentString",
        "getCreated",
        "getDidomiDcs",
        "getPurposes",
        "()Lio/didomi/sdk/models/UserStatus$Purposes;",
        "regulation",
        "Lio/didomi/sdk/Regulation;",
        "getRegulation",
        "()Lio/didomi/sdk/Regulation;",
        "getUpdated",
        "getUserId",
        "getVendors",
        "()Lio/didomi/sdk/models/UserStatus$Vendors;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "Ids",
        "Purposes",
        "Vendors",
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
.field private final additionalConsent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "addtl_consent"
    .end annotation
.end field

.field private final consentString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "consent_string"
    .end annotation
.end field

.field private final created:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "created"
    .end annotation
.end field

.field private final didomiDcs:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "didomi_dcs"
    .end annotation
.end field

.field private final purposes:Lio/didomi/sdk/models/UserStatus$Purposes;
    .annotation runtime Lcom/google/gson/r/c;
        value = "purposes"
    .end annotation
.end field

.field private final transient regulation:Lio/didomi/sdk/Regulation;

.field private final regulationString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "regulation"
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

.field private final vendors:Lio/didomi/sdk/models/UserStatus$Vendors;
    .annotation runtime Lcom/google/gson/r/c;
        value = "vendors"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lio/didomi/sdk/models/UserStatus;-><init>(Lio/didomi/sdk/models/UserStatus$Purposes;Lio/didomi/sdk/models/UserStatus$Vendors;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Lio/didomi/sdk/models/UserStatus$Purposes;Lio/didomi/sdk/models/UserStatus$Vendors;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const-string v0, "purposes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "created"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updated"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentString"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalConsent"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "didomiDcs"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regulationString"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/models/UserStatus;->purposes:Lio/didomi/sdk/models/UserStatus$Purposes;

    iput-object p2, p0, Lio/didomi/sdk/models/UserStatus;->vendors:Lio/didomi/sdk/models/UserStatus$Vendors;

    iput-object p3, p0, Lio/didomi/sdk/models/UserStatus;->userId:Ljava/lang/String;

    iput-object p4, p0, Lio/didomi/sdk/models/UserStatus;->created:Ljava/lang/String;

    iput-object p5, p0, Lio/didomi/sdk/models/UserStatus;->updated:Ljava/lang/String;

    iput-object p6, p0, Lio/didomi/sdk/models/UserStatus;->consentString:Ljava/lang/String;

    iput-object p7, p0, Lio/didomi/sdk/models/UserStatus;->additionalConsent:Ljava/lang/String;

    iput-object p8, p0, Lio/didomi/sdk/models/UserStatus;->didomiDcs:Ljava/lang/String;

    iput-object p9, p0, Lio/didomi/sdk/models/UserStatus;->regulationString:Ljava/lang/String;

    sget-object p1, Lio/didomi/sdk/Regulation;->Companion:Lio/didomi/sdk/Regulation$a;

    invoke-virtual {p1, p9}, Lio/didomi/sdk/Regulation$a;->a(Ljava/lang/String;)Lio/didomi/sdk/Regulation;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/models/UserStatus;->regulation:Lio/didomi/sdk/Regulation;

    return-void
.end method

.method public synthetic constructor <init>(Lio/didomi/sdk/models/UserStatus$Purposes;Lio/didomi/sdk/models/UserStatus$Vendors;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/n;)V
    .registers 23

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_14

    new-instance v1, Lio/didomi/sdk/models/UserStatus$Purposes;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lio/didomi/sdk/models/UserStatus$Purposes;-><init>(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;ILkotlin/jvm/internal/n;)V

    goto :goto_15

    :cond_14
    move-object v1, p1

    :goto_15
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_28

    new-instance v2, Lio/didomi/sdk/models/UserStatus$Vendors;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1f

    const/4 v10, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lio/didomi/sdk/models/UserStatus$Vendors;-><init>(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;ILkotlin/jvm/internal/n;)V

    goto :goto_29

    :cond_28
    move-object v2, p2

    :goto_29
    and-int/lit8 v3, v0, 0x4

    const-string v4, ""

    if-eqz v3, :cond_31

    move-object v3, v4

    goto :goto_32

    :cond_31
    move-object v3, p3

    :goto_32
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_38

    move-object v5, v4

    goto :goto_39

    :cond_38
    move-object v5, p4

    :goto_39
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_3f

    move-object v6, v4

    goto :goto_41

    :cond_3f
    move-object/from16 v6, p5

    :goto_41
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_47

    move-object v7, v4

    goto :goto_49

    :cond_47
    move-object/from16 v7, p6

    :goto_49
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_4f

    move-object v8, v4

    goto :goto_51

    :cond_4f
    move-object/from16 v8, p7

    :goto_51
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_56

    goto :goto_58

    :cond_56
    move-object/from16 v4, p8

    :goto_58
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_63

    sget-object v0, Lio/didomi/sdk/Regulation;->GDPR:Lio/didomi/sdk/Regulation;

    invoke-virtual {v0}, Lio/didomi/sdk/Regulation;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    :cond_63
    move-object/from16 v0, p9

    :goto_65
    move-object p1, p0

    move-object p2, v1

    move-object p3, v2

    move-object p4, v3

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v4

    move-object/from16 p10, v0

    invoke-direct/range {p1 .. p10}, Lio/didomi/sdk/models/UserStatus;-><init>(Lio/didomi/sdk/models/UserStatus$Purposes;Lio/didomi/sdk/models/UserStatus$Vendors;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final component9()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus;->regulationString:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic copy$default(Lio/didomi/sdk/models/UserStatus;Lio/didomi/sdk/models/UserStatus$Purposes;Lio/didomi/sdk/models/UserStatus$Vendors;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/didomi/sdk/models/UserStatus;
    .registers 22

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lio/didomi/sdk/models/UserStatus;->purposes:Lio/didomi/sdk/models/UserStatus$Purposes;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lio/didomi/sdk/models/UserStatus;->vendors:Lio/didomi/sdk/models/UserStatus$Vendors;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lio/didomi/sdk/models/UserStatus;->userId:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lio/didomi/sdk/models/UserStatus;->created:Ljava/lang/String;

    goto :goto_23

    :cond_22
    move-object v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lio/didomi/sdk/models/UserStatus;->updated:Ljava/lang/String;

    goto :goto_2b

    :cond_2a
    move-object v6, p5

    :goto_2b
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_32

    iget-object v7, v0, Lio/didomi/sdk/models/UserStatus;->consentString:Ljava/lang/String;

    goto :goto_34

    :cond_32
    move-object/from16 v7, p6

    :goto_34
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3b

    iget-object v8, v0, Lio/didomi/sdk/models/UserStatus;->additionalConsent:Ljava/lang/String;

    goto :goto_3d

    :cond_3b
    move-object/from16 v8, p7

    :goto_3d
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_44

    iget-object v9, v0, Lio/didomi/sdk/models/UserStatus;->didomiDcs:Ljava/lang/String;

    goto :goto_46

    :cond_44
    move-object/from16 v9, p8

    :goto_46
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_4d

    iget-object v1, v0, Lio/didomi/sdk/models/UserStatus;->regulationString:Ljava/lang/String;

    goto :goto_4f

    :cond_4d
    move-object/from16 v1, p9

    :goto_4f
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lio/didomi/sdk/models/UserStatus;->copy(Lio/didomi/sdk/models/UserStatus$Purposes;Lio/didomi/sdk/models/UserStatus$Vendors;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/didomi/sdk/models/UserStatus;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lio/didomi/sdk/models/UserStatus$Purposes;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus;->purposes:Lio/didomi/sdk/models/UserStatus$Purposes;

    return-object v0
.end method

.method public final component2()Lio/didomi/sdk/models/UserStatus$Vendors;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus;->vendors:Lio/didomi/sdk/models/UserStatus$Vendors;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus;->created:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus;->updated:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus;->consentString:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus;->additionalConsent:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus;->didomiDcs:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lio/didomi/sdk/models/UserStatus$Purposes;Lio/didomi/sdk/models/UserStatus$Vendors;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/didomi/sdk/models/UserStatus;
    .registers 21

    const-string v0, "purposes"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendors"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "created"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updated"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentString"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalConsent"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "didomiDcs"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regulationString"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/models/UserStatus;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lio/didomi/sdk/models/UserStatus;-><init>(Lio/didomi/sdk/models/UserStatus$Purposes;Lio/didomi/sdk/models/UserStatus$Vendors;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/models/UserStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/models/UserStatus;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->purposes:Lio/didomi/sdk/models/UserStatus$Purposes;

    iget-object v3, p1, Lio/didomi/sdk/models/UserStatus;->purposes:Lio/didomi/sdk/models/UserStatus$Purposes;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->vendors:Lio/didomi/sdk/models/UserStatus$Vendors;

    iget-object v3, p1, Lio/didomi/sdk/models/UserStatus;->vendors:Lio/didomi/sdk/models/UserStatus$Vendors;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->userId:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/UserStatus;->userId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->created:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/UserStatus;->created:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->updated:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/UserStatus;->updated:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->consentString:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/UserStatus;->consentString:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->additionalConsent:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/UserStatus;->additionalConsent:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->didomiDcs:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/UserStatus;->didomiDcs:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    :cond_64
    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->regulationString:Ljava/lang/String;

    iget-object p1, p1, Lio/didomi/sdk/models/UserStatus;->regulationString:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f

    return v2

    :cond_6f
    return v0
.end method

.method public final getAdditionalConsent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus;->additionalConsent:Ljava/lang/String;

    return-object v0
.end method

.method public final getConsentString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus;->consentString:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreated()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus;->created:Ljava/lang/String;

    return-object v0
.end method

.method public final getDidomiDcs()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus;->didomiDcs:Ljava/lang/String;

    return-object v0
.end method

.method public final getPurposes()Lio/didomi/sdk/models/UserStatus$Purposes;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus;->purposes:Lio/didomi/sdk/models/UserStatus$Purposes;

    return-object v0
.end method

.method public final getRegulation()Lio/didomi/sdk/Regulation;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus;->regulation:Lio/didomi/sdk/Regulation;

    return-object v0
.end method

.method public final getUpdated()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus;->updated:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final getVendors()Lio/didomi/sdk/models/UserStatus$Vendors;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus;->vendors:Lio/didomi/sdk/models/UserStatus$Vendors;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus;->purposes:Lio/didomi/sdk/models/UserStatus$Purposes;

    invoke-virtual {v0}, Lio/didomi/sdk/models/UserStatus$Purposes;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->vendors:Lio/didomi/sdk/models/UserStatus$Vendors;

    invoke-virtual {v1}, Lio/didomi/sdk/models/UserStatus$Vendors;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->userId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->created:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->updated:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->consentString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->additionalConsent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->didomiDcs:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->regulationString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserStatus(purposes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->purposes:Lio/didomi/sdk/models/UserStatus$Purposes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vendors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->vendors:Lio/didomi/sdk/models/UserStatus$Vendors;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->created:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->updated:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", consentString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->consentString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", additionalConsent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->additionalConsent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", didomiDcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->didomiDcs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", regulationString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus;->regulationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.drawable.models.UserStatus.Ids (io.didomi.sdk.models.UserStatus$Ids)
.class public final Lio/didomi/sdk/models/UserStatus$Ids;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/models/UserStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ids"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B%\u0012\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0006J\u000f\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u000f\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J)\u0010\u000c\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0001J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0004H\u00d6\u0001R\u001c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/didomi/sdk/models/UserStatus$Ids;",
        "",
        "disabled",
        "",
        "",
        "enabled",
        "(Ljava/util/Set;Ljava/util/Set;)V",
        "getDisabled",
        "()Ljava/util/Set;",
        "getEnabled",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final disabled:Ljava/util/Set;
    .annotation runtime Lcom/google/gson/r/c;
        value = "disabled"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final enabled:Ljava/util/Set;
    .annotation runtime Lcom/google/gson/r/c;
        value = "enabled"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "disabled"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enabled"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/models/UserStatus$Ids;->disabled:Ljava/util/Set;

    iput-object p2, p0, Lio/didomi/sdk/models/UserStatus$Ids;->enabled:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/n;)V
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_8

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object p1

    :cond_8
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_10

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object p2

    :cond_10
    invoke-direct {p0, p1, p2}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic copy$default(Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;Ljava/util/Set;ILjava/lang/Object;)Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lio/didomi/sdk/models/UserStatus$Ids;->disabled:Ljava/util/Set;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lio/didomi/sdk/models/UserStatus$Ids;->enabled:Ljava/util/Set;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/models/UserStatus$Ids;->copy(Ljava/util/Set;Ljava/util/Set;)Lio/didomi/sdk/models/UserStatus$Ids;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Ids;->disabled:Ljava/util/Set;

    return-object v0
.end method

.method public final component2()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Ids;->enabled:Ljava/util/Set;

    return-object v0
.end method

.method public final copy(Ljava/util/Set;Ljava/util/Set;)Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/didomi/sdk/models/UserStatus$Ids;"
        }
    .end annotation

    const-string v0, "disabled"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enabled"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-direct {v0, p1, p2}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/models/UserStatus$Ids;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/models/UserStatus$Ids;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Ids;->disabled:Ljava/util/Set;

    iget-object v3, p1, Lio/didomi/sdk/models/UserStatus$Ids;->disabled:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Ids;->enabled:Ljava/util/Set;

    iget-object p1, p1, Lio/didomi/sdk/models/UserStatus$Ids;->enabled:Ljava/util/Set;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getDisabled()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Ids;->disabled:Ljava/util/Set;

    return-object v0
.end method

.method public final getEnabled()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Ids;->enabled:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Ids;->disabled:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Ids;->enabled:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ids(disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Ids;->disabled:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Ids;->enabled:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.drawable.models.UserStatus.Purposes (io.didomi.sdk.models.UserStatus$Purposes)
.class public final Lio/didomi/sdk/models/UserStatus$Purposes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/models/UserStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Purposes"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B3\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0003J7\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0008H\u00d6\u0001R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\u00a8\u0006\u001b"
    }
    d2 = {
        "Lio/didomi/sdk/models/UserStatus$Purposes;",
        "",
        "global",
        "Lio/didomi/sdk/models/UserStatus$Ids;",
        "consent",
        "legitimateInterest",
        "essential",
        "",
        "",
        "(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;)V",
        "getConsent",
        "()Lio/didomi/sdk/models/UserStatus$Ids;",
        "getEssential",
        "()Ljava/util/Set;",
        "getGlobal",
        "getLegitimateInterest",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final consent:Lio/didomi/sdk/models/UserStatus$Ids;
    .annotation runtime Lcom/google/gson/r/c;
        value = "consent"
    .end annotation
.end field

.field private final essential:Ljava/util/Set;
    .annotation runtime Lcom/google/gson/r/c;
        value = "essential"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final global:Lio/didomi/sdk/models/UserStatus$Ids;
    .annotation runtime Lcom/google/gson/r/c;
        value = "global"
    .end annotation
.end field

.field private final legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;
    .annotation runtime Lcom/google/gson/r/c;
        value = "legitimate_interest"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/didomi/sdk/models/UserStatus$Purposes;-><init>(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;ILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/models/UserStatus$Ids;",
            "Lio/didomi/sdk/models/UserStatus$Ids;",
            "Lio/didomi/sdk/models/UserStatus$Ids;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "global"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legitimateInterest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "essential"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->global:Lio/didomi/sdk/models/UserStatus$Ids;

    iput-object p2, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->consent:Lio/didomi/sdk/models/UserStatus$Ids;

    iput-object p3, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    iput-object p4, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->essential:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;ILkotlin/jvm/internal/n;)V
    .registers 9

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p6, :cond_f

    new-instance p1, Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object p6

    invoke-direct {p1, p6, v1, v0, v1}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/n;)V

    :cond_f
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1c

    new-instance p2, Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object p6

    invoke-direct {p2, p6, v1, v0, v1}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/n;)V

    :cond_1c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_29

    new-instance p3, Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object p6

    invoke-direct {p3, p6, v1, v0, v1}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/n;)V

    :cond_29
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_31

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object p4

    :cond_31
    invoke-direct {p0, p1, p2, p3, p4}, Lio/didomi/sdk/models/UserStatus$Purposes;-><init>(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic copy$default(Lio/didomi/sdk/models/UserStatus$Purposes;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;ILjava/lang/Object;)Lio/didomi/sdk/models/UserStatus$Purposes;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->global:Lio/didomi/sdk/models/UserStatus$Ids;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->consent:Lio/didomi/sdk/models/UserStatus$Ids;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->essential:Ljava/util/Set;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/didomi/sdk/models/UserStatus$Purposes;->copy(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;)Lio/didomi/sdk/models/UserStatus$Purposes;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->global:Lio/didomi/sdk/models/UserStatus$Ids;

    return-object v0
.end method

.method public final component2()Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->consent:Lio/didomi/sdk/models/UserStatus$Ids;

    return-object v0
.end method

.method public final component3()Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    return-object v0
.end method

.method public final component4()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->essential:Ljava/util/Set;

    return-object v0
.end method

.method public final copy(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;)Lio/didomi/sdk/models/UserStatus$Purposes;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/models/UserStatus$Ids;",
            "Lio/didomi/sdk/models/UserStatus$Ids;",
            "Lio/didomi/sdk/models/UserStatus$Ids;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/didomi/sdk/models/UserStatus$Purposes;"
        }
    .end annotation

    const-string v0, "global"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legitimateInterest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "essential"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/models/UserStatus$Purposes;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/didomi/sdk/models/UserStatus$Purposes;-><init>(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/models/UserStatus$Purposes;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/models/UserStatus$Purposes;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->global:Lio/didomi/sdk/models/UserStatus$Ids;

    iget-object v3, p1, Lio/didomi/sdk/models/UserStatus$Purposes;->global:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->consent:Lio/didomi/sdk/models/UserStatus$Ids;

    iget-object v3, p1, Lio/didomi/sdk/models/UserStatus$Purposes;->consent:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    iget-object v3, p1, Lio/didomi/sdk/models/UserStatus$Purposes;->legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->essential:Ljava/util/Set;

    iget-object p1, p1, Lio/didomi/sdk/models/UserStatus$Purposes;->essential:Ljava/util/Set;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getConsent()Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->consent:Lio/didomi/sdk/models/UserStatus$Ids;

    return-object v0
.end method

.method public final getEssential()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->essential:Ljava/util/Set;

    return-object v0
.end method

.method public final getGlobal()Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->global:Lio/didomi/sdk/models/UserStatus$Ids;

    return-object v0
.end method

.method public final getLegitimateInterest()Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->global:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-virtual {v0}, Lio/didomi/sdk/models/UserStatus$Ids;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->consent:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-virtual {v1}, Lio/didomi/sdk/models/UserStatus$Ids;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-virtual {v1}, Lio/didomi/sdk/models/UserStatus$Ids;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->essential:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purposes(global="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->global:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", consent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->consent:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", legitimateInterest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", essential="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->essential:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.drawable.models.UserStatus.Vendors (io.didomi.sdk.models.UserStatus$Vendors)
.class public final Lio/didomi/sdk/models/UserStatus$Vendors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/models/UserStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vendors"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B7\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J;\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nR\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u001c"
    }
    d2 = {
        "Lio/didomi/sdk/models/UserStatus$Vendors;",
        "",
        "global",
        "Lio/didomi/sdk/models/UserStatus$Ids;",
        "globalConsent",
        "globalLegitimateInterest",
        "consent",
        "legitimateInterest",
        "(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;)V",
        "getConsent",
        "()Lio/didomi/sdk/models/UserStatus$Ids;",
        "getGlobal",
        "getGlobalConsent",
        "getGlobalLegitimateInterest",
        "getLegitimateInterest",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
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
.field private final consent:Lio/didomi/sdk/models/UserStatus$Ids;
    .annotation runtime Lcom/google/gson/r/c;
        value = "consent"
    .end annotation
.end field

.field private final global:Lio/didomi/sdk/models/UserStatus$Ids;
    .annotation runtime Lcom/google/gson/r/c;
        value = "global"
    .end annotation
.end field

.field private final globalConsent:Lio/didomi/sdk/models/UserStatus$Ids;
    .annotation runtime Lcom/google/gson/r/c;
        value = "global_consent"
    .end annotation
.end field

.field private final globalLegitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;
    .annotation runtime Lcom/google/gson/r/c;
        value = "global_li"
    .end annotation
.end field

.field private final legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;
    .annotation runtime Lcom/google/gson/r/c;
        value = "legitimate_interest"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lio/didomi/sdk/models/UserStatus$Vendors;-><init>(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;ILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;)V
    .registers 7

    const-string v0, "global"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalConsent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalLegitimateInterest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legitimateInterest"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->global:Lio/didomi/sdk/models/UserStatus$Ids;

    iput-object p2, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->globalConsent:Lio/didomi/sdk/models/UserStatus$Ids;

    iput-object p3, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->globalLegitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    iput-object p4, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->consent:Lio/didomi/sdk/models/UserStatus$Ids;

    iput-object p5, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    return-void
.end method

.method public synthetic constructor <init>(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;ILkotlin/jvm/internal/n;)V
    .registers 12

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p7, :cond_b

    new-instance p1, Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-direct {p1, v1, v1, v0, v1}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/n;)V

    :cond_b
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_14

    new-instance p2, Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-direct {p2, v1, v1, v0, v1}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/n;)V

    :cond_14
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1e

    new-instance p3, Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-direct {p3, v1, v1, v0, v1}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/n;)V

    :cond_1e
    move-object v2, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_28

    new-instance p4, Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-direct {p4, v1, v1, v0, v1}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/n;)V

    :cond_28
    move-object v3, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_32

    new-instance p5, Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-direct {p5, v1, v1, v0, v1}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/n;)V

    :cond_32
    move-object v0, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v2

    move-object p6, v3

    move-object p7, v0

    invoke-direct/range {p2 .. p7}, Lio/didomi/sdk/models/UserStatus$Vendors;-><init>(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;)V

    return-void
.end method

.method public static synthetic copy$default(Lio/didomi/sdk/models/UserStatus$Vendors;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;ILjava/lang/Object;)Lio/didomi/sdk/models/UserStatus$Vendors;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->global:Lio/didomi/sdk/models/UserStatus$Ids;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->globalConsent:Lio/didomi/sdk/models/UserStatus$Ids;

    :cond_c
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->globalLegitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->consent:Lio/didomi/sdk/models/UserStatus$Ids;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    :cond_21
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lio/didomi/sdk/models/UserStatus$Vendors;->copy(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;)Lio/didomi/sdk/models/UserStatus$Vendors;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->global:Lio/didomi/sdk/models/UserStatus$Ids;

    return-object v0
.end method

.method public final component2()Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->globalConsent:Lio/didomi/sdk/models/UserStatus$Ids;

    return-object v0
.end method

.method public final component3()Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->globalLegitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    return-object v0
.end method

.method public final component4()Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->consent:Lio/didomi/sdk/models/UserStatus$Ids;

    return-object v0
.end method

.method public final component5()Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    return-object v0
.end method

.method public final copy(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;)Lio/didomi/sdk/models/UserStatus$Vendors;
    .registers 13

    const-string v0, "global"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalConsent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalLegitimateInterest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legitimateInterest"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/models/UserStatus$Vendors;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lio/didomi/sdk/models/UserStatus$Vendors;-><init>(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/models/UserStatus$Vendors;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/models/UserStatus$Vendors;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->global:Lio/didomi/sdk/models/UserStatus$Ids;

    iget-object v3, p1, Lio/didomi/sdk/models/UserStatus$Vendors;->global:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->globalConsent:Lio/didomi/sdk/models/UserStatus$Ids;

    iget-object v3, p1, Lio/didomi/sdk/models/UserStatus$Vendors;->globalConsent:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->globalLegitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    iget-object v3, p1, Lio/didomi/sdk/models/UserStatus$Vendors;->globalLegitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->consent:Lio/didomi/sdk/models/UserStatus$Ids;

    iget-object v3, p1, Lio/didomi/sdk/models/UserStatus$Vendors;->consent:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    iget-object p1, p1, Lio/didomi/sdk/models/UserStatus$Vendors;->legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    return v2

    :cond_43
    return v0
.end method

.method public final getConsent()Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->consent:Lio/didomi/sdk/models/UserStatus$Ids;

    return-object v0
.end method

.method public final getGlobal()Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->global:Lio/didomi/sdk/models/UserStatus$Ids;

    return-object v0
.end method

.method public final getGlobalConsent()Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->globalConsent:Lio/didomi/sdk/models/UserStatus$Ids;

    return-object v0
.end method

.method public final getGlobalLegitimateInterest()Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->globalLegitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    return-object v0
.end method

.method public final getLegitimateInterest()Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->global:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-virtual {v0}, Lio/didomi/sdk/models/UserStatus$Ids;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->globalConsent:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-virtual {v1}, Lio/didomi/sdk/models/UserStatus$Ids;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->globalLegitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-virtual {v1}, Lio/didomi/sdk/models/UserStatus$Ids;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->consent:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-virtual {v1}, Lio/didomi/sdk/models/UserStatus$Ids;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-virtual {v1}, Lio/didomi/sdk/models/UserStatus$Ids;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vendors(global="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->global:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", globalConsent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->globalConsent:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", globalLegitimateInterest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->globalLegitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", consent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->consent:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", legitimateInterest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Vendors;->legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

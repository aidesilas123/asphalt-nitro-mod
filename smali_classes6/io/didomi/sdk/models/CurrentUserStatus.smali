###### Class io.didomi.drawable.models.CurrentUserStatus (io.didomi.sdk.models.CurrentUserStatus)
.class public final Lio/didomi/sdk/models/CurrentUserStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/models/CurrentUserStatus$PurposeStatus;,
        Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0002./Bw\u0012\u0014\u0008\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0014\u0008\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u000fJ\u0015\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u00c6\u0003J\u0015\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0004H\u00c6\u0003J\t\u0010!\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0004H\u00c6\u0003J\t\u0010#\u001a\u00020\u0004H\u00c6\u0003J\t\u0010$\u001a\u00020\u0004H\u00c6\u0003J\t\u0010%\u001a\u00020\u0004H\u00c6\u0003J\t\u0010&\u001a\u00020\u0004H\u00c2\u0003J{\u0010\'\u001a\u00020\u00002\u0014\u0008\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0014\u0008\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00042\u0008\u0008\u0002\u0010\t\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00042\u0008\u0008\u0002\u0010\r\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0004H\u00c6\u0001J\u0013\u0010(\u001a\u00020)2\u0008\u0010*\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010+\u001a\u00020,H\u00d6\u0001J\t\u0010-\u001a\u00020\u0004H\u00d6\u0001R\u0016\u0010\u000c\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0016\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u0016\u0010\r\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011R\"\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0010\u0010\u000e\u001a\u00020\u00048\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0011R\u0016\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0011R\"\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0016\u00a8\u00060"
    }
    d2 = {
        "Lio/didomi/sdk/models/CurrentUserStatus;",
        "",
        "purposes",
        "",
        "",
        "Lio/didomi/sdk/models/CurrentUserStatus$PurposeStatus;",
        "vendors",
        "Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;",
        "userId",
        "created",
        "updated",
        "consentString",
        "additionalConsent",
        "didomiDcs",
        "regulationString",
        "(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getAdditionalConsent",
        "()Ljava/lang/String;",
        "getConsentString",
        "getCreated",
        "getDidomiDcs",
        "getPurposes",
        "()Ljava/util/Map;",
        "regulation",
        "Lio/didomi/sdk/Regulation;",
        "getRegulation",
        "()Lio/didomi/sdk/Regulation;",
        "getUpdated",
        "getUserId",
        "getVendors",
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
        "PurposeStatus",
        "VendorStatus",
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

.field private final purposes:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/r/c;
        value = "purposes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/CurrentUserStatus$PurposeStatus;",
            ">;"
        }
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

.field private final vendors:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/r/c;
        value = "vendors"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;",
            ">;"
        }
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

    invoke-direct/range {v0 .. v11}, Lio/didomi/sdk/models/CurrentUserStatus;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/CurrentUserStatus$PurposeStatus;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

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

    iput-object p1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->purposes:Ljava/util/Map;

    iput-object p2, p0, Lio/didomi/sdk/models/CurrentUserStatus;->vendors:Ljava/util/Map;

    iput-object p3, p0, Lio/didomi/sdk/models/CurrentUserStatus;->userId:Ljava/lang/String;

    iput-object p4, p0, Lio/didomi/sdk/models/CurrentUserStatus;->created:Ljava/lang/String;

    iput-object p5, p0, Lio/didomi/sdk/models/CurrentUserStatus;->updated:Ljava/lang/String;

    iput-object p6, p0, Lio/didomi/sdk/models/CurrentUserStatus;->consentString:Ljava/lang/String;

    iput-object p7, p0, Lio/didomi/sdk/models/CurrentUserStatus;->additionalConsent:Ljava/lang/String;

    iput-object p8, p0, Lio/didomi/sdk/models/CurrentUserStatus;->didomiDcs:Ljava/lang/String;

    iput-object p9, p0, Lio/didomi/sdk/models/CurrentUserStatus;->regulationString:Ljava/lang/String;

    sget-object p1, Lio/didomi/sdk/Regulation;->Companion:Lio/didomi/sdk/Regulation$a;

    invoke-virtual {p1, p9}, Lio/didomi/sdk/Regulation$a;->a(Ljava/lang/String;)Lio/didomi/sdk/Regulation;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->regulation:Lio/didomi/sdk/Regulation;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/n;)V
    .registers 22

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_b

    invoke-static {}, Lkotlin/collections/d0;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_c

    :cond_b
    move-object v1, p1

    :goto_c
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_15

    invoke-static {}, Lkotlin/collections/d0;->emptyMap()Ljava/util/Map;

    move-result-object v2

    goto :goto_16

    :cond_15
    move-object v2, p2

    :goto_16
    and-int/lit8 v3, v0, 0x4

    const-string v4, ""

    if-eqz v3, :cond_1e

    move-object v3, v4

    goto :goto_1f

    :cond_1e
    move-object v3, p3

    :goto_1f
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_25

    move-object v5, v4

    goto :goto_26

    :cond_25
    move-object v5, p4

    :goto_26
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_2c

    move-object v6, v4

    goto :goto_2d

    :cond_2c
    move-object v6, p5

    :goto_2d
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_33

    move-object v7, v4

    goto :goto_35

    :cond_33
    move-object/from16 v7, p6

    :goto_35
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_3b

    move-object v8, v4

    goto :goto_3d

    :cond_3b
    move-object/from16 v8, p7

    :goto_3d
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_42

    goto :goto_44

    :cond_42
    move-object/from16 v4, p8

    :goto_44
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_4f

    sget-object v0, Lio/didomi/sdk/Regulation;->GDPR:Lio/didomi/sdk/Regulation;

    invoke-virtual {v0}, Lio/didomi/sdk/Regulation;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_51

    :cond_4f
    move-object/from16 v0, p9

    :goto_51
    move-object p1, p0

    move-object p2, v1

    move-object p3, v2

    move-object p4, v3

    move-object p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v4

    move-object/from16 p10, v0

    invoke-direct/range {p1 .. p10}, Lio/didomi/sdk/models/CurrentUserStatus;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final component9()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/CurrentUserStatus;->regulationString:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic copy$default(Lio/didomi/sdk/models/CurrentUserStatus;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/didomi/sdk/models/CurrentUserStatus;
    .registers 22

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lio/didomi/sdk/models/CurrentUserStatus;->purposes:Ljava/util/Map;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lio/didomi/sdk/models/CurrentUserStatus;->vendors:Ljava/util/Map;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lio/didomi/sdk/models/CurrentUserStatus;->userId:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lio/didomi/sdk/models/CurrentUserStatus;->created:Ljava/lang/String;

    goto :goto_23

    :cond_22
    move-object v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lio/didomi/sdk/models/CurrentUserStatus;->updated:Ljava/lang/String;

    goto :goto_2b

    :cond_2a
    move-object v6, p5

    :goto_2b
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_32

    iget-object v7, v0, Lio/didomi/sdk/models/CurrentUserStatus;->consentString:Ljava/lang/String;

    goto :goto_34

    :cond_32
    move-object/from16 v7, p6

    :goto_34
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3b

    iget-object v8, v0, Lio/didomi/sdk/models/CurrentUserStatus;->additionalConsent:Ljava/lang/String;

    goto :goto_3d

    :cond_3b
    move-object/from16 v8, p7

    :goto_3d
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_44

    iget-object v9, v0, Lio/didomi/sdk/models/CurrentUserStatus;->didomiDcs:Ljava/lang/String;

    goto :goto_46

    :cond_44
    move-object/from16 v9, p8

    :goto_46
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_4d

    iget-object v1, v0, Lio/didomi/sdk/models/CurrentUserStatus;->regulationString:Ljava/lang/String;

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

    invoke-virtual/range {p0 .. p9}, Lio/didomi/sdk/models/CurrentUserStatus;->copy(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/didomi/sdk/models/CurrentUserStatus;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/CurrentUserStatus$PurposeStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/CurrentUserStatus;->purposes:Ljava/util/Map;

    return-object v0
.end method

.method public final component2()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/CurrentUserStatus;->vendors:Ljava/util/Map;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/CurrentUserStatus;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/CurrentUserStatus;->created:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/CurrentUserStatus;->updated:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/CurrentUserStatus;->consentString:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/CurrentUserStatus;->additionalConsent:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/CurrentUserStatus;->didomiDcs:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/didomi/sdk/models/CurrentUserStatus;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/CurrentUserStatus$PurposeStatus;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/didomi/sdk/models/CurrentUserStatus;"
        }
    .end annotation

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

    new-instance v0, Lio/didomi/sdk/models/CurrentUserStatus;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lio/didomi/sdk/models/CurrentUserStatus;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/models/CurrentUserStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/models/CurrentUserStatus;

    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->purposes:Ljava/util/Map;

    iget-object v3, p1, Lio/didomi/sdk/models/CurrentUserStatus;->purposes:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->vendors:Ljava/util/Map;

    iget-object v3, p1, Lio/didomi/sdk/models/CurrentUserStatus;->vendors:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->userId:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/CurrentUserStatus;->userId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->created:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/CurrentUserStatus;->created:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->updated:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/CurrentUserStatus;->updated:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->consentString:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/CurrentUserStatus;->consentString:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->additionalConsent:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/CurrentUserStatus;->additionalConsent:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->didomiDcs:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/CurrentUserStatus;->didomiDcs:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    :cond_64
    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->regulationString:Ljava/lang/String;

    iget-object p1, p1, Lio/didomi/sdk/models/CurrentUserStatus;->regulationString:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f

    return v2

    :cond_6f
    return v0
.end method

.method public final getAdditionalConsent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/CurrentUserStatus;->additionalConsent:Ljava/lang/String;

    return-object v0
.end method

.method public final getConsentString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/CurrentUserStatus;->consentString:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreated()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/CurrentUserStatus;->created:Ljava/lang/String;

    return-object v0
.end method

.method public final getDidomiDcs()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/CurrentUserStatus;->didomiDcs:Ljava/lang/String;

    return-object v0
.end method

.method public final getPurposes()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/CurrentUserStatus$PurposeStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/CurrentUserStatus;->purposes:Ljava/util/Map;

    return-object v0
.end method

.method public final getRegulation()Lio/didomi/sdk/Regulation;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/CurrentUserStatus;->regulation:Lio/didomi/sdk/Regulation;

    return-object v0
.end method

.method public final getUpdated()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/CurrentUserStatus;->updated:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/CurrentUserStatus;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final getVendors()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/CurrentUserStatus;->vendors:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/models/CurrentUserStatus;->purposes:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->vendors:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->userId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->created:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->updated:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->consentString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->additionalConsent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->didomiDcs:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->regulationString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CurrentUserStatus(purposes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->purposes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vendors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->vendors:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->created:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->updated:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", consentString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->consentString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", additionalConsent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->additionalConsent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", didomiDcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->didomiDcs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", regulationString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/CurrentUserStatus;->regulationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

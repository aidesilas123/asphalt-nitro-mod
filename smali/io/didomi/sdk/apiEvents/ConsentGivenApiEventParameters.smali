###### Class io.didomi.drawable.apiEvents.ConsentGivenApiEventParameters (io.didomi.sdk.apiEvents.ConsentGivenApiEventParameters)
.class public final Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/i;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u00010Bc\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J\u0010\u0010\u0013\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0010J\u0010\u0010\u0014\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0010J\u0010\u0010\u0015\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0010J\u0010\u0010\u0016\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0010J\u0010\u0010\u0017\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0010J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0004\u0008\u0018\u0010\u0019Jl\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u00022\u0008\u0008\u0002\u0010\n\u001a\u00020\u00022\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u000bH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u0019J\u0010\u0010\u001e\u001a\u00020\u001dH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001a\u0010#\u001a\u00020\"2\u0008\u0010!\u001a\u0004\u0018\u00010 H\u00d6\u0003\u00a2\u0006\u0004\u0008#\u0010$R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010%\u001a\u0004\u0008&\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010%\u001a\u0004\u0008\'\u0010\u0010R\u001a\u0010\u0005\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010%\u001a\u0004\u0008(\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010%\u001a\u0004\u0008)\u0010\u0010R\u001a\u0010\u0007\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010%\u001a\u0004\u0008*\u0010\u0010R\u001a\u0010\u0008\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010%\u001a\u0004\u0008+\u0010\u0010R\u001a\u0010\t\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010%\u001a\u0004\u0008,\u0010\u0010R\u001a\u0010\n\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010%\u001a\u0004\u0008-\u0010\u0010R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010.\u001a\u0004\u0008/\u0010\u0019\u00a8\u00061"
    }
    d2 = {
        "Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;",
        "Lio/didomi/sdk/i;",
        "Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;",
        "purposes",
        "legitimatePurposes",
        "previousPurposes",
        "previousLegitimatePurposes",
        "vendors",
        "vendorsLegInt",
        "previousVendors",
        "previousVendorsLegInt",
        "",
        "action",
        "<init>",
        "(Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Ljava/lang/String;)V",
        "component1",
        "()Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "()Ljava/lang/String;",
        "copy",
        "(Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Ljava/lang/String;)Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;",
        "toString",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;",
        "getPurposes",
        "getLegitimatePurposes",
        "getPreviousPurposes",
        "getPreviousLegitimatePurposes",
        "getVendors",
        "getVendorsLegInt",
        "getPreviousVendors",
        "getPreviousVendorsLegInt",
        "Ljava/lang/String;",
        "getAction",
        "ConsentStatus",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final action:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "action"
    .end annotation
.end field

.field private final legitimatePurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .annotation runtime Lcom/google/gson/r/c;
        value = "purposes_li"
    .end annotation
.end field

.field private final previousLegitimatePurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .annotation runtime Lcom/google/gson/r/c;
        value = "previous_purposes_li"
    .end annotation
.end field

.field private final previousPurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .annotation runtime Lcom/google/gson/r/c;
        value = "previous_purposes"
    .end annotation
.end field

.field private final previousVendors:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .annotation runtime Lcom/google/gson/r/c;
        value = "previous_vendors"
    .end annotation
.end field

.field private final previousVendorsLegInt:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .annotation runtime Lcom/google/gson/r/c;
        value = "previous_vendors_li"
    .end annotation
.end field

.field private final purposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .annotation runtime Lcom/google/gson/r/c;
        value = "purposes"
    .end annotation
.end field

.field private final vendors:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .annotation runtime Lcom/google/gson/r/c;
        value = "vendors"
    .end annotation
.end field

.field private final vendorsLegInt:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .annotation runtime Lcom/google/gson/r/c;
        value = "vendors_li"
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

    invoke-direct/range {v0 .. v11}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;-><init>(Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Ljava/lang/String;ILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Ljava/lang/String;)V
    .registers 11

    const-string v0, "purposes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legitimatePurposes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousPurposes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousLegitimatePurposes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendors"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendorsLegInt"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousVendors"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousVendorsLegInt"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->purposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    iput-object p2, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->legitimatePurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    iput-object p3, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousPurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    iput-object p4, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousLegitimatePurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    iput-object p5, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->vendors:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    iput-object p6, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->vendorsLegInt:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    iput-object p7, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousVendors:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    iput-object p8, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousVendorsLegInt:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    iput-object p9, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->action:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Ljava/lang/String;ILkotlin/jvm/internal/n;)V
    .registers 23

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_e

    new-instance v1, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-direct {v1, v3, v3, v2, v3}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;-><init>(Ljava/util/Collection;Ljava/util/Collection;ILkotlin/jvm/internal/n;)V

    goto :goto_f

    :cond_e
    move-object v1, p1

    :goto_f
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_19

    new-instance v4, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-direct {v4, v3, v3, v2, v3}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;-><init>(Ljava/util/Collection;Ljava/util/Collection;ILkotlin/jvm/internal/n;)V

    goto :goto_1a

    :cond_19
    move-object v4, p2

    :goto_1a
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_24

    new-instance v5, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-direct {v5, v3, v3, v2, v3}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;-><init>(Ljava/util/Collection;Ljava/util/Collection;ILkotlin/jvm/internal/n;)V

    goto :goto_25

    :cond_24
    move-object v5, p3

    :goto_25
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_2f

    new-instance v6, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-direct {v6, v3, v3, v2, v3}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;-><init>(Ljava/util/Collection;Ljava/util/Collection;ILkotlin/jvm/internal/n;)V

    goto :goto_30

    :cond_2f
    move-object v6, p4

    :goto_30
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_3a

    new-instance v7, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-direct {v7, v3, v3, v2, v3}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;-><init>(Ljava/util/Collection;Ljava/util/Collection;ILkotlin/jvm/internal/n;)V

    goto :goto_3c

    :cond_3a
    move-object/from16 v7, p5

    :goto_3c
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_46

    new-instance v8, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-direct {v8, v3, v3, v2, v3}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;-><init>(Ljava/util/Collection;Ljava/util/Collection;ILkotlin/jvm/internal/n;)V

    goto :goto_48

    :cond_46
    move-object/from16 v8, p6

    :goto_48
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_52

    new-instance v9, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-direct {v9, v3, v3, v2, v3}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;-><init>(Ljava/util/Collection;Ljava/util/Collection;ILkotlin/jvm/internal/n;)V

    goto :goto_54

    :cond_52
    move-object/from16 v9, p7

    :goto_54
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_5e

    new-instance v10, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-direct {v10, v3, v3, v2, v3}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;-><init>(Ljava/util/Collection;Ljava/util/Collection;ILkotlin/jvm/internal/n;)V

    goto :goto_60

    :cond_5e
    move-object/from16 v10, p8

    :goto_60
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_65

    goto :goto_67

    :cond_65
    move-object/from16 v3, p9

    :goto_67
    move-object p1, p0

    move-object p2, v1

    move-object p3, v4

    move-object p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v3

    invoke-direct/range {p1 .. p10}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;-><init>(Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Ljava/lang/String;ILjava/lang/Object;)Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;
    .registers 22

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->purposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->legitimatePurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousPurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousLegitimatePurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    goto :goto_23

    :cond_22
    move-object v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->vendors:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    goto :goto_2b

    :cond_2a
    move-object v6, p5

    :goto_2b
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_32

    iget-object v7, v0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->vendorsLegInt:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    goto :goto_34

    :cond_32
    move-object/from16 v7, p6

    :goto_34
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3b

    iget-object v8, v0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousVendors:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    goto :goto_3d

    :cond_3b
    move-object/from16 v8, p7

    :goto_3d
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_44

    iget-object v9, v0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousVendorsLegInt:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    goto :goto_46

    :cond_44
    move-object/from16 v9, p8

    :goto_46
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_4d

    iget-object v1, v0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->action:Ljava/lang/String;

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

    invoke-virtual/range {p0 .. p9}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->copy(Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Ljava/lang/String;)Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->purposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    return-object v0
.end method

.method public final component2()Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->legitimatePurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    return-object v0
.end method

.method public final component3()Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousPurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    return-object v0
.end method

.method public final component4()Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousLegitimatePurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    return-object v0
.end method

.method public final component5()Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->vendors:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    return-object v0
.end method

.method public final component6()Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->vendorsLegInt:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    return-object v0
.end method

.method public final component7()Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousVendors:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    return-object v0
.end method

.method public final component8()Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousVendorsLegInt:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->action:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Ljava/lang/String;)Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;
    .registers 21

    const-string v0, "purposes"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legitimatePurposes"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousPurposes"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousLegitimatePurposes"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendors"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendorsLegInt"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousVendors"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousVendorsLegInt"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;

    move-object v1, v0

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;-><init>(Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->purposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    iget-object v3, p1, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->purposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->legitimatePurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    iget-object v3, p1, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->legitimatePurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousPurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    iget-object v3, p1, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousPurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousLegitimatePurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    iget-object v3, p1, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousLegitimatePurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->vendors:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    iget-object v3, p1, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->vendors:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->vendorsLegInt:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    iget-object v3, p1, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->vendorsLegInt:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousVendors:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    iget-object v3, p1, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousVendors:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousVendorsLegInt:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    iget-object v3, p1, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousVendorsLegInt:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    :cond_64
    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->action:Ljava/lang/String;

    iget-object p1, p1, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->action:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f

    return v2

    :cond_6f
    return v0
.end method

.method public final getAction()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->action:Ljava/lang/String;

    return-object v0
.end method

.method public final getLegitimatePurposes()Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->legitimatePurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    return-object v0
.end method

.method public final getPreviousLegitimatePurposes()Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousLegitimatePurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    return-object v0
.end method

.method public final getPreviousPurposes()Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousPurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    return-object v0
.end method

.method public final getPreviousVendors()Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousVendors:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    return-object v0
.end method

.method public final getPreviousVendorsLegInt()Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousVendorsLegInt:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    return-object v0
.end method

.method public final getPurposes()Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->purposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    return-object v0
.end method

.method public final getVendors()Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->vendors:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    return-object v0
.end method

.method public final getVendorsLegInt()Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->vendorsLegInt:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->purposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-virtual {v0}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->legitimatePurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-virtual {v1}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousPurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-virtual {v1}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousLegitimatePurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-virtual {v1}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->vendors:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-virtual {v1}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->vendorsLegInt:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-virtual {v1}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousVendors:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-virtual {v1}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousVendorsLegInt:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-virtual {v1}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->action:Ljava/lang/String;

    if-nez v1, :cond_4d

    const/4 v1, 0x0

    goto :goto_51

    :cond_4d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_51
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConsentGivenApiEventParameters(purposes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->purposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", legitimatePurposes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->legitimatePurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", previousPurposes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousPurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", previousLegitimatePurposes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousLegitimatePurposes:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vendors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->vendors:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vendorsLegInt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->vendorsLegInt:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", previousVendors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousVendors:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", previousVendorsLegInt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->previousVendorsLegInt:Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.drawable.apiEvents.ConsentGivenApiEventParameters.ConsentStatus (io.didomi.sdk.apiEvents.ConsentGivenApiEventParameters$ConsentStatus)
.class public final Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConsentStatus"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B%\u0012\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0006J\u000f\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u000f\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J)\u0010\u000c\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0001J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0004H\u00d6\u0001R\u001c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;",
        "",
        "disabled",
        "",
        "",
        "enabled",
        "(Ljava/util/Collection;Ljava/util/Collection;)V",
        "getDisabled",
        "()Ljava/util/Collection;",
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
.field private final disabled:Ljava/util/Collection;
    .annotation runtime Lcom/google/gson/r/c;
        value = "disabled"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final enabled:Ljava/util/Collection;
    .annotation runtime Lcom/google/gson/r/c;
        value = "enabled"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
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

    invoke-direct {p0, v0, v0, v1, v0}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;-><init>(Ljava/util/Collection;Ljava/util/Collection;ILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "disabled"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enabled"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->disabled:Ljava/util/Collection;

    iput-object p2, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->enabled:Ljava/util/Collection;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Collection;Ljava/util/Collection;ILkotlin/jvm/internal/n;)V
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_8

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_8
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_10

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_10
    invoke-direct {p0, p1, p2}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method public static synthetic copy$default(Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Ljava/util/Collection;Ljava/util/Collection;ILjava/lang/Object;)Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->disabled:Ljava/util/Collection;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->enabled:Ljava/util/Collection;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->copy(Ljava/util/Collection;Ljava/util/Collection;)Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->disabled:Ljava/util/Collection;

    return-object v0
.end method

.method public final component2()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->enabled:Ljava/util/Collection;

    return-object v0
.end method

.method public final copy(Ljava/util/Collection;Ljava/util/Collection;)Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;"
        }
    .end annotation

    const-string v0, "disabled"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enabled"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-direct {v0, p1, p2}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->disabled:Ljava/util/Collection;

    iget-object v3, p1, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->disabled:Ljava/util/Collection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->enabled:Ljava/util/Collection;

    iget-object p1, p1, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->enabled:Ljava/util/Collection;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getDisabled()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->disabled:Ljava/util/Collection;

    return-object v0
.end method

.method public final getEnabled()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->enabled:Ljava/util/Collection;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->disabled:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->enabled:Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConsentStatus(disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->disabled:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->enabled:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

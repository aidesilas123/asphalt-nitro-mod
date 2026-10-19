###### Class io.didomi.drawable.C1763f6 (io.didomi.sdk.f6)
.class public final Lio/didomi/sdk/f6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/h3;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0093\u0001\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000c2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000c2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000c2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000c2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000c2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u000c2\u0006\u0010\u0014\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ!\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000c2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d\u00a2\u0006\u0004\u0008\u0016\u0010 J#\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u000c2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020!0\u000cH\u0000\u00a2\u0006\u0004\u0008\u0016\u0010#J#\u0010\u0016\u001a\u00020\u00082\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000c2\u0006\u0010%\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0016\u0010&JE\u0010\u0016\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010(\u001a\u00020\'2\u0006\u0010*\u001a\u00020)2\u0006\u0010,\u001a\u00020+2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020!0\u000c2\u0006\u0010-\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010.J\u001f\u0010\u0016\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u00100\u001a\u00020/H\u0016\u00a2\u0006\u0004\u0008\u0016\u00101J\u0019\u0010\u0016\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u0016\u00102R\u001a\u00106\u001a\u00020\u00048\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u001b\u00103\u001a\u0004\u00084\u00105R\u0014\u00108\u001a\u00020\u00048\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u00087\u00103R\u0014\u0010:\u001a\u00020\u00048\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u00089\u00103R\u0014\u0010<\u001a\u00020\u00048\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008;\u00103R\u001a\u0010?\u001a\u00020\u00048\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008=\u00103\u001a\u0004\u0008>\u00105\u00a8\u0006@"
    }
    d2 = {
        "Lio/didomi/sdk/f6;",
        "Lio/didomi/sdk/h3;",
        "<init>",
        "()V",
        "",
        "cmpId",
        "Ljava/util/Date;",
        "updated",
        "",
        "consentLanguage",
        "vendorListVersion",
        "tcfPolicyVersion",
        "",
        "specialFeaturesOptIns",
        "purposesConsents",
        "purposesLITransparency",
        "vendorsConsent",
        "vendorsLI",
        "Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;",
        "publisherRestrictionEntries",
        "publisherCountry",
        "Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;",
        "a",
        "(ILjava/util/Date;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;",
        "Landroid/content/SharedPreferences;",
        "sharedPreferences",
        "",
        "b",
        "(Landroid/content/SharedPreferences;)V",
        "",
        "Lio/didomi/sdk/models/InternalVendor;",
        "vendors",
        "(Ljava/lang/Iterable;)Ljava/util/List;",
        "Lio/didomi/sdk/k4;",
        "publisherRestrictions",
        "(Ljava/util/List;)Ljava/util/List;",
        "ids",
        "size",
        "(Ljava/util/List;I)Ljava/lang/String;",
        "Lio/didomi/sdk/consent/model/ConsentToken;",
        "consentToken",
        "Lio/didomi/sdk/k;",
        "appConfiguration",
        "Lio/didomi/sdk/d3;",
        "vendorList",
        "languageCode",
        "(Landroid/content/SharedPreferences;Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/k;Lio/didomi/sdk/d3;Ljava/util/List;Ljava/lang/String;)V",
        "",
        "subjectToGDPR",
        "(Landroid/content/SharedPreferences;Z)V",
        "(Landroid/content/SharedPreferences;)Ljava/lang/String;",
        "I",
        "getTcfVersion",
        "()I",
        "tcfVersion",
        "c",
        "consentScreen",
        "d",
        "sizeSpecialFeaturesOptins",
        "e",
        "sizePurposes",
        "f",
        "getVersion",
        "version",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lio/didomi/sdk/f6;->b:I

    const/16 v1, 0xc

    iput v1, p0, Lio/didomi/sdk/f6;->d:I

    const/16 v1, 0x18

    iput v1, p0, Lio/didomi/sdk/f6;->e:I

    iput v0, p0, Lio/didomi/sdk/f6;->f:I

    const-string v1, "Enabling support for TCFv2"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Lio/didomi/sdk/Log;->d$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method private final a(ILjava/util/Date;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;"
        }
    .end annotation

    new-instance v0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    invoke-direct {v0}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;-><init>()V

    iget v1, p0, Lio/didomi/sdk/f6;->b:I

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->version(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->created(Ljava/util/Date;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->lastUpdated(Ljava/util/Date;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->cmpId(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->cmpVersion(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    move-result-object p1

    iget v0, p0, Lio/didomi/sdk/f6;->c:I

    invoke-virtual {p1, v0}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->consentScreen(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->consentLanguage(Ljava/lang/String;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorListVersion(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->tcfPolicyVersion(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->isServiceSpecific(Z)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->useNonStandardStacks(Z)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposeOneTreatment(Z)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    move-result-object p1

    invoke-virtual {p1, p12}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->publisherCC(Ljava/lang/String;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    move-result-object p1

    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_43
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_57

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->addSpecialFeatureOptIns(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    goto :goto_43

    :cond_57
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->addPurposesConsent(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    goto :goto_5b

    :cond_6f
    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_73
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_87

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->addPurposesLITransparency(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    goto :goto_73

    :cond_87
    invoke-interface {p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->addVendorConsent(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    goto :goto_8b

    :cond_9f
    invoke-interface {p10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->addVendorLegitimateInterest(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    goto :goto_a3

    :cond_b7
    invoke-interface {p11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_bb
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_cb

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;

    invoke-virtual {p1, p3}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->addPublisherRestrictionEntry(Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    goto :goto_bb

    :cond_cb
    const-string p2, "tcStringBuilder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .registers 4

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "IABTCF_TCString"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;I)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, ""

    if-gt v0, p2, :cond_26

    :goto_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eq v0, p2, :cond_26

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_26
    return-object v1
.end method

.method public final a(Ljava/lang/Iterable;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "vendors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {v1}, Lio/didomi/sdk/models/InternalVendor;->getNamespace()Ljava/lang/String;

    move-result-object v2

    const-string v3, "iab"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "\" cannot be converted to an integer"

    const/4 v4, 0x0

    if-eqz v2, :cond_54

    :try_start_29
    invoke-virtual {v1}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_35} :catch_37

    :goto_35
    move-object v4, v1

    goto :goto_85

    :catch_37
    move-exception v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid vendor ID \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lio/didomi/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_85

    :cond_54
    invoke-virtual {v1}, Lio/didomi/sdk/models/InternalVendor;->getIabId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_85

    :try_start_5a
    invoke-virtual {v1}, Lio/didomi/sdk/models/InternalVendor;->getIabId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_85

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_68} :catch_69

    goto :goto_35

    :catch_69
    move-exception v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid IAB vendor ID \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lio/didomi/sdk/models/InternalVendor;->getIabId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lio/didomi/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_85
    :goto_85
    if-eqz v4, :cond_e

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_8b
    invoke-static {v0}, Lkotlin/collections/p;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/didomi/sdk/k4;",
            ">;)",
            "Ljava/util/List<",
            "Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;",
            ">;"
        }
    .end annotation

    const-string v0, "publisherRestrictions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/k4;

    invoke-virtual {v1}, Lio/didomi/sdk/k4;->d()Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_51

    :cond_21
    invoke-virtual {v1}, Lio/didomi/sdk/k4;->e()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_51

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_51

    :cond_2e
    invoke-static {}, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;->newBuilder()Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lio/didomi/sdk/k4;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;->purposeId(I)Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lio/didomi/sdk/k4;->c()Lio/didomi/iabtcf/decoder/v2/RestrictionType;

    move-result-object v1

    invoke-virtual {v3, v1}, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;->restrictionType(Lio/didomi/iabtcf/decoder/v2/RestrictionType;)Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;

    move-result-object v1

    sget-object v3, Lio/didomi/sdk/o3;->a:Lio/didomi/sdk/o3;

    invoke-virtual {v3, v2}, Lio/didomi/sdk/o3;->a(Ljava/util/Set;)Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;->addVendor(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;->build()Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;

    move-result-object v1

    goto :goto_52

    :cond_51
    :goto_51
    const/4 v1, 0x0

    :goto_52
    if-eqz v1, :cond_e

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_58
    return-object v0
.end method

.method public a(Landroid/content/SharedPreferences;Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/k;Lio/didomi/sdk/d3;Ljava/util/List;Ljava/lang/String;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Lio/didomi/sdk/consent/model/ConsentToken;",
            "Lio/didomi/sdk/k;",
            "Lio/didomi/sdk/d3;",
            "Ljava/util/List<",
            "Lio/didomi/sdk/k4;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    const-string v2, "sharedPreferences"

    move-object/from16 v14, p1

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "consentToken"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "appConfiguration"

    move-object/from16 v15, p3

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "vendorList"

    move-object/from16 v12, p4

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "publisherRestrictions"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "languageCode"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lio/didomi/sdk/l;->d(Lio/didomi/sdk/k;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "2.2"

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-static/range {p3 .. p3}, Lio/didomi/sdk/l;->a(Lio/didomi/sdk/k;)I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledPurposes()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4b
    :goto_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lio/didomi/sdk/models/InternalPurpose;

    if-eqz v2, :cond_60

    invoke-virtual {v7}, Lio/didomi/sdk/models/InternalPurpose;->getIabConsentRequired$android_release()Z

    move-result v8

    if-eqz v8, :cond_4b

    :cond_60
    invoke-virtual {v7}, Lio/didomi/sdk/models/InternalPurpose;->isSpecialFeature()Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_6a
    invoke-static {v5}, Lio/didomi/sdk/p3;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledPurposes()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7f
    :goto_7f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lio/didomi/sdk/models/InternalPurpose;

    if-eqz v2, :cond_94

    invoke-virtual {v7}, Lio/didomi/sdk/models/InternalPurpose;->getIabConsentRequired$android_release()Z

    move-result v8

    if-eqz v8, :cond_7f

    :cond_94
    invoke-virtual {v7}, Lio/didomi/sdk/models/InternalPurpose;->isSpecialFeature()Z

    move-result v7

    if-nez v7, :cond_7f

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    :cond_9e
    invoke-static {v5}, Lio/didomi/sdk/p3;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledLegitimatePurposes()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b3
    :goto_b3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_cc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lio/didomi/sdk/models/InternalPurpose;

    if-eqz v2, :cond_c8

    invoke-virtual {v7}, Lio/didomi/sdk/models/InternalPurpose;->getIabLiRequired$android_release()Z

    move-result v7

    if-eqz v7, :cond_b3

    :cond_c8
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b3

    :cond_cc
    invoke-static {v5}, Lio/didomi/sdk/p3;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledVendors()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v13, v2}, Lio/didomi/sdk/f6;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledLegitimateVendors()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v13, v2}, Lio/didomi/sdk/f6;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v13, v0}, Lio/didomi/sdk/f6;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/l;->b(Lio/didomi/sdk/k$a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lio/didomi/sdk/consent/model/ConsentToken;->getUpdated()Ljava/util/Date;

    move-result-object v2

    const/4 v0, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v0, "substring(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p4 .. p4}, Lio/didomi/sdk/d3;->getVersion()I

    move-result v17

    invoke-interface/range {p4 .. p4}, Lio/didomi/sdk/d3;->getTcfPolicyVersion()I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v19, v1

    move v1, v10

    const/4 v14, 0x0

    move-object/from16 v3, v19

    move-object/from16 p2, v4

    move/from16 v4, v17

    move-object/from16 p5, v5

    move/from16 v5, v18

    move-object/from16 p6, v6

    move-object v6, v9

    move-object/from16 v17, v7

    move-object v7, v8

    move-object/from16 v20, v8

    move-object/from16 v8, v17

    move-object/from16 v21, v9

    move-object/from16 v9, p6

    move v14, v10

    move-object/from16 v10, p5

    move-object v15, v11

    move-object/from16 v11, v16

    move-object/from16 v12, p2

    invoke-direct/range {v0 .. v12}, Lio/didomi/sdk/f6;->a(ILjava/util/Date;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->encode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IABTCF_TCString"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lio/didomi/sdk/h3;->a:Lio/didomi/sdk/h3$a;

    const-string v2, "editor"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v14}, Lio/didomi/sdk/h3$a;->a(Landroid/content/SharedPreferences$Editor;I)V

    invoke-interface/range {p4 .. p4}, Lio/didomi/sdk/d3;->getTcfPolicyVersion()I

    move-result v0

    const-string v2, "IABTCF_PolicyVersion"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "IABTCF_PublisherCC"

    move-object/from16 v2, p2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "IABTCF_PurposeOneTreatment"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static/range {p3 .. p3}, Lio/didomi/sdk/l;->d(Lio/didomi/sdk/k;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_172

    const-string v0, "IABTCF_UseNonStandardTexts"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_177

    :cond_172
    const-string v0, "IABTCF_UseNonStandardStacks"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_177
    iget v0, v13, Lio/didomi/sdk/f6;->d:I

    move-object/from16 v2, v21

    invoke-virtual {v13, v2, v0}, Lio/didomi/sdk/f6;->a(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "IABTCF_SpecialFeaturesOptIns"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget v0, v13, Lio/didomi/sdk/f6;->e:I

    move-object/from16 v2, v20

    invoke-virtual {v13, v2, v0}, Lio/didomi/sdk/f6;->a(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "IABTCF_PurposeConsents"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget v0, v13, Lio/didomi/sdk/f6;->e:I

    move-object/from16 v2, v17

    invoke-virtual {v13, v2, v0}, Lio/didomi/sdk/f6;->a(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "IABTCF_PurposeLegitimateInterests"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {p4 .. p4}, Lio/didomi/sdk/d3;->f()I

    move-result v0

    move-object/from16 v2, p6

    invoke-virtual {v13, v2, v0}, Lio/didomi/sdk/f6;->a(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "IABTCF_VendorConsents"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {p4 .. p4}, Lio/didomi/sdk/d3;->f()I

    move-result v0

    move-object/from16 v2, p5

    invoke-virtual {v13, v2, v0}, Lio/didomi/sdk/f6;->a(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "IABTCF_VendorLegitimateInterests"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;Z)V
    .registers 5

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "IABTCF_gdprApplies"

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p2, :cond_19

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_19
    return-void
.end method

.method public a(Lio/didomi/sdk/H;Landroid/content/SharedPreferences;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/didomi/sdk/h3$b;->a(Lio/didomi/sdk/h3;Lio/didomi/sdk/H;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public b(Landroid/content/SharedPreferences;)V
    .registers 8

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/e6;->a:Lio/didomi/sdk/e6;

    const-string v1, "IABConsent_CMPPresent"

    const-string v2, "IABConsent_SubjectToGDPR"

    const-string v3, "IABConsent_ConsentString"

    const-string v4, "IABConsent_ParsedPurposeConsents"

    const-string v5, "IABConsent_ParsedVendorConsents"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/didomi/sdk/e6;->a(Landroid/content/SharedPreferences;[Ljava/lang/String;)V

    return-void
.end method

.method public getVersion()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/f6;->f:I

    return v0
.end method

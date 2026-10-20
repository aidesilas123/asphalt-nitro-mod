###### Class io.didomi.drawable.V8 (io.didomi.sdk.V8)
.class public final Lio/didomi/sdk/V8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/V8$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\"\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0019\u0018\u0000 N2\u00020\u0001:\u0001\u001aB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u0017\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0017\u0010\u0015J!\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00182\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001b\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00182\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u0011\u0010\u001eJ\u0017\u0010 \u001a\u0004\u0018\u00010\u001f2\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010\"\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\"\u0010#J!\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00182\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0018\u00a2\u0006\u0004\u0008\u0011\u0010\u001bJ\u001b\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020%0\u00182\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u0014\u0010\u001eJ\u001b\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020&0\u00182\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001a\u0010\u001eJ\u0017\u0010\u001a\u001a\u0004\u0018\u00010&2\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u001a\u0010\'J\u001b\u0010\u0014\u001a\u00020\n2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0018\u00a2\u0006\u0004\u0008\u0014\u0010)J\r\u0010*\u001a\u00020\n\u00a2\u0006\u0004\u0008*\u0010\u000cJ\u0019\u0010+\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u000eH\u0000\u00a2\u0006\u0004\u0008+\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010,R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010-R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010.R#\u00102\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00130/8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u00100\u001a\u0004\u0008 \u00101R\u001a\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u001c038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u00104R\u001a\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u00106R#\u00109\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u001c0/8\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u00100\u001a\u0004\u00088\u00101R\u001a\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u00106R\u001d\u0010?\u001a\u0008\u0012\u0004\u0012\u00020<038\u0006\u00a2\u0006\u000c\n\u0004\u0008=\u00104\u001a\u0004\u0008\u0017\u0010>R\u001d\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00188\u0006\u00a2\u0006\u000c\n\u0004\u0008@\u00106\u001a\u0004\u0008A\u0010BR\u001d\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00188\u0006\u00a2\u0006\u000c\n\u0004\u0008D\u00106\u001a\u0004\u0008D\u0010BR\u001d\u0010H\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00188\u0006\u00a2\u0006\u000c\n\u0004\u0008F\u00106\u001a\u0004\u0008G\u0010BR\u001d\u0010K\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u00188\u0006\u00a2\u0006\u000c\n\u0004\u0008I\u00106\u001a\u0004\u0008J\u0010BR\u001d\u0010O\u001a\u0008\u0012\u0004\u0012\u00020L038\u0006\u00a2\u0006\u000c\n\u0004\u0008M\u00104\u001a\u0004\u0008N\u0010>R!\u0010R\u001a\u0008\u0012\u0004\u0012\u00020L038FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008P\u0010Q\u001a\u0004\u0008+\u0010>R\u0017\u0010W\u001a\u00020S8\u0006\u00a2\u0006\u000c\n\u0004\u0008T\u0010U\u001a\u0004\u0008:\u0010VR\u001b\u0010[\u001a\u00020X8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008A\u0010Q\u001a\u0004\u0008Y\u0010ZR\u001b\u0010]\u001a\u00020X8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\\\u0010Q\u001a\u0004\u0008\u0011\u0010ZR\u001b\u0010_\u001a\u00020X8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008^\u0010Q\u001a\u0004\u0008\u0014\u0010ZR!\u0010a\u001a\u0008\u0012\u0004\u0012\u00020&0\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008`\u0010Q\u001a\u0004\u0008\u001a\u0010BR\u0017\u0010b\u001a\u0008\u0012\u0004\u0012\u00020%0\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010BR\u0017\u0010c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010BR\u0017\u0010d\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008F\u0010BR\u0017\u0010e\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010BR\u0017\u0010f\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010BR\u0017\u0010g\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008@\u0010BR\u0017\u0010h\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008^\u0010BR\u0017\u0010i\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008\\\u0010BR\u0017\u0010j\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008P\u0010BR\u0017\u0010k\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008`\u0010BR\u0017\u0010l\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008T\u0010BR\u0017\u0010n\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008m\u0010BR\u0017\u0010p\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008o\u0010B\u00a8\u0006q"
    }
    d2 = {
        "Lio/didomi/sdk/V8;",
        "",
        "Lio/didomi/sdk/H;",
        "configurationRepository",
        "Lio/didomi/sdk/v3;",
        "languagesHelper",
        "Lio/didomi/sdk/Z4;",
        "purposesTranslationsRepository",
        "<init>",
        "(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;Lio/didomi/sdk/Z4;)V",
        "",
        "A",
        "()V",
        "y",
        "",
        "id",
        "Lio/didomi/sdk/models/Feature;",
        "b",
        "(Ljava/lang/String;)Lio/didomi/sdk/models/Feature;",
        "Lio/didomi/sdk/models/InternalPurpose;",
        "c",
        "(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;",
        "iabId",
        "d",
        "",
        "purposeIds",
        "a",
        "(Ljava/util/Set;)Ljava/util/Set;",
        "Lio/didomi/sdk/models/InternalVendor;",
        "vendor",
        "(Lio/didomi/sdk/models/InternalVendor;)Ljava/util/Set;",
        "Lio/didomi/sdk/models/SpecialPurpose;",
        "f",
        "(Ljava/lang/String;)Lio/didomi/sdk/models/SpecialPurpose;",
        "g",
        "(Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;",
        "vendorIds",
        "Lio/didomi/sdk/o0;",
        "Lio/didomi/sdk/models/DataCategory;",
        "(Ljava/lang/String;)Lio/didomi/sdk/models/DataCategory;",
        "essentialPurposes",
        "(Ljava/util/Set;)V",
        "z",
        "e",
        "Lio/didomi/sdk/H;",
        "Lio/didomi/sdk/v3;",
        "Lio/didomi/sdk/Z4;",
        "",
        "Ljava/util/Map;",
        "()Ljava/util/Map;",
        "purposes",
        "",
        "Ljava/util/List;",
        "didomiVendors",
        "Ljava/util/Set;",
        "customVendors",
        "getVendors",
        "vendors",
        "h",
        "nonFilteredRequiredVendors",
        "Lio/didomi/sdk/k4;",
        "i",
        "()Ljava/util/List;",
        "publisherRestrictions",
        "j",
        "q",
        "()Ljava/util/Set;",
        "requiredVendors",
        "k",
        "requiredPurposes",
        "l",
        "getRequiredFeatures",
        "requiredFeatures",
        "m",
        "getRequiredSpecialPurposes",
        "requiredSpecialPurposes",
        "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
        "n",
        "u",
        "spiCategories",
        "o",
        "Lkotlin/Lazy;",
        "purposeCategories",
        "Lio/didomi/sdk/r5;",
        "p",
        "Lio/didomi/sdk/r5;",
        "()Lio/didomi/sdk/r5;",
        "requiredIds",
        "",
        "v",
        "()I",
        "totalVendorCount",
        "r",
        "iabVendorCount",
        "s",
        "nonIabVendorCount",
        "t",
        "dataCategories",
        "requiredAdditionalDataProcessing",
        "requiredPurposeIds",
        "requiredPurposesConsent",
        "requiredPurposesConsentIds",
        "requiredPurposesLegInt",
        "requiredPurposeLegIntIds",
        "requiredVendorsIds",
        "requiredVendorsConsent",
        "requiredVendorConsentIds",
        "requiredVendorsLegInt",
        "requiredVendorLegIntIds",
        "w",
        "vendorIDsWithEssentialPurposesOnly",
        "x",
        "vendorIDsWithNoConsentNorLIPurposes",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final u:Lio/didomi/sdk/V8$a;


# instance fields
.field private final a:Lio/didomi/sdk/H;

.field private final b:Lio/didomi/sdk/v3;

.field private final c:Lio/didomi/sdk/Z4;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/didomi/sdk/k4;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/Feature;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/SpecialPurpose;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lkotlin/i;

.field private final p:Lio/didomi/sdk/r5;

.field private final q:Lkotlin/i;

.field private final r:Lkotlin/i;

.field private final s:Lkotlin/i;

.field private final t:Lkotlin/i;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/V8$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/V8$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/V8;->u:Lio/didomi/sdk/V8$a;

    return-void
.end method

.method public constructor <init>(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;Lio/didomi/sdk/Z4;)V
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "configurationRepository"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "languagesHelper"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "purposesTranslationsRepository"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lio/didomi/sdk/V8;->a:Lio/didomi/sdk/H;

    iput-object v2, v0, Lio/didomi/sdk/V8;->b:Lio/didomi/sdk/v3;

    iput-object v3, v0, Lio/didomi/sdk/V8;->c:Lio/didomi/sdk/Z4;

    sget-object v3, Lio/didomi/sdk/T8;->a:Lio/didomi/sdk/T8;

    invoke-virtual {v3, v1, v2}, Lio/didomi/sdk/T8;->a(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lio/didomi/sdk/V8;->d:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/H;->f()Lio/didomi/sdk/u5;

    move-result-object v1

    invoke-interface {v1}, Lio/didomi/sdk/u5;->a()Ljava/util/List;

    move-result-object v1

    new-instance v6, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalVendor;

    move-object v7, v2

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object v26

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const v28, 0xbffff

    const/16 v29, 0x0

    invoke-static/range {v7 .. v29}, Lio/didomi/sdk/models/InternalVendor;->copy$default(Lio/didomi/sdk/models/InternalVendor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/Vendor$Namespaces;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;ZLjava/lang/String;Ljava/util/Set;Lio/didomi/sdk/models/InternalVendor$a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/didomi/sdk/models/InternalVendor;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_7b
    iput-object v6, v0, Lio/didomi/sdk/V8;->e:Ljava/util/List;

    iget-object v1, v0, Lio/didomi/sdk/V8;->a:Lio/didomi/sdk/H;

    invoke-virtual {v1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$a;->m()Lio/didomi/sdk/k$a$b;

    move-result-object v1

    invoke-static {v1}, Lio/didomi/sdk/l;->a(Lio/didomi/sdk/k$a$b;)Ljava/util/Set;

    move-result-object v12

    iput-object v12, v0, Lio/didomi/sdk/V8;->f:Ljava/util/Set;

    sget-object v1, Lio/didomi/sdk/T8;->a:Lio/didomi/sdk/T8;

    iget-object v3, v0, Lio/didomi/sdk/V8;->d:Ljava/util/Map;

    iget-object v2, v0, Lio/didomi/sdk/V8;->a:Lio/didomi/sdk/H;

    invoke-virtual {v2}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v2

    invoke-static {v2}, Lio/didomi/sdk/l;->b(Lio/didomi/sdk/k;)Z

    move-result v4

    iget-object v2, v0, Lio/didomi/sdk/V8;->a:Lio/didomi/sdk/H;

    invoke-virtual {v2}, Lio/didomi/sdk/H;->d()Lio/didomi/sdk/d3;

    move-result-object v2

    invoke-interface {v2}, Lio/didomi/sdk/d3;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    move-object v2, v1

    move-object v7, v12

    invoke-virtual/range {v2 .. v7}, Lio/didomi/sdk/T8;->a(Ljava/util/Map;ZLjava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v8

    iput-object v8, v0, Lio/didomi/sdk/V8;->g:Ljava/util/Map;

    iget-object v2, v0, Lio/didomi/sdk/V8;->a:Lio/didomi/sdk/H;

    invoke-static {v2}, Lio/didomi/sdk/I;->d(Lio/didomi/sdk/H;)Z

    move-result v9

    iget-object v2, v0, Lio/didomi/sdk/V8;->a:Lio/didomi/sdk/H;

    invoke-virtual {v2}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/k$a;->m()Lio/didomi/sdk/k$a$b;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/k$a$b;->d()Lio/didomi/sdk/k$a$b$a;

    move-result-object v10

    iget-object v2, v0, Lio/didomi/sdk/V8;->a:Lio/didomi/sdk/H;

    invoke-virtual {v2}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/k$a;->m()Lio/didomi/sdk/k$a$b;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/k$a$b;->b()Ljava/util/Set;

    move-result-object v11

    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, Lio/didomi/sdk/T8;->a(Ljava/util/Map;ZLio/didomi/sdk/k$a$b$a;Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Lio/didomi/sdk/V8;->h:Ljava/util/Set;

    iget-object v3, v0, Lio/didomi/sdk/V8;->a:Lio/didomi/sdk/H;

    iget-object v4, v0, Lio/didomi/sdk/V8;->d:Ljava/util/Map;

    invoke-virtual {v1, v3, v4, v2}, Lio/didomi/sdk/T8;->a(Lio/didomi/sdk/H;Ljava/util/Map;Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lio/didomi/sdk/V8;->i:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f9
    :goto_f9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_110

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lio/didomi/sdk/models/InternalVendor;

    invoke-static {v4}, Lio/didomi/sdk/q3;->a(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v4

    if-eqz v4, :cond_f9

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f9

    :cond_110
    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lio/didomi/sdk/W8;->b(Lio/didomi/sdk/V8;Ljava/util/Set;)V

    iput-object v1, v0, Lio/didomi/sdk/V8;->j:Ljava/util/Set;

    sget-object v2, Lio/didomi/sdk/T8;->a:Lio/didomi/sdk/T8;

    iget-object v3, v0, Lio/didomi/sdk/V8;->d:Ljava/util/Map;

    invoke-virtual {v2, v3, v1}, Lio/didomi/sdk/T8;->a(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, v0, Lio/didomi/sdk/V8;->k:Ljava/util/Set;

    iget-object v3, v0, Lio/didomi/sdk/V8;->a:Lio/didomi/sdk/H;

    invoke-virtual {v2, v3, v1}, Lio/didomi/sdk/T8;->a(Lio/didomi/sdk/H;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, v0, Lio/didomi/sdk/V8;->l:Ljava/util/Set;

    iget-object v3, v0, Lio/didomi/sdk/V8;->a:Lio/didomi/sdk/H;

    invoke-virtual {v2, v3, v1}, Lio/didomi/sdk/T8;->b(Lio/didomi/sdk/H;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lio/didomi/sdk/V8;->m:Ljava/util/Set;

    iget-object v1, v0, Lio/didomi/sdk/V8;->a:Lio/didomi/sdk/H;

    invoke-virtual {v1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k;->f()Lio/didomi/sdk/k$g;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$g;->f()Lio/didomi/sdk/S5;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V8;->i()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lio/didomi/sdk/T8;->a(Lio/didomi/sdk/S5;Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lio/didomi/sdk/V8;->n:Ljava/util/List;

    new-instance v1, Lio/didomi/sdk/V8$f;

    invoke-direct {v1, v0}, Lio/didomi/sdk/V8$f;-><init>(Lio/didomi/sdk/V8;)V

    invoke-static {v1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v1

    iput-object v1, v0, Lio/didomi/sdk/V8;->o:Lkotlin/i;

    new-instance v1, Lio/didomi/sdk/r5;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V8;->m()Ljava/util/Set;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V8;->j()Ljava/util/Set;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V8;->o()Ljava/util/Set;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V8;->p()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lio/didomi/sdk/r5;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    iput-object v1, v0, Lio/didomi/sdk/V8;->p:Lio/didomi/sdk/r5;

    new-instance v1, Lio/didomi/sdk/V8$g;

    invoke-direct {v1, v0}, Lio/didomi/sdk/V8$g;-><init>(Lio/didomi/sdk/V8;)V

    invoke-static {v1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v1

    iput-object v1, v0, Lio/didomi/sdk/V8;->q:Lkotlin/i;

    new-instance v1, Lio/didomi/sdk/V8$d;

    invoke-direct {v1, v0}, Lio/didomi/sdk/V8$d;-><init>(Lio/didomi/sdk/V8;)V

    invoke-static {v1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v1

    iput-object v1, v0, Lio/didomi/sdk/V8;->r:Lkotlin/i;

    new-instance v1, Lio/didomi/sdk/V8$e;

    invoke-direct {v1, v0}, Lio/didomi/sdk/V8$e;-><init>(Lio/didomi/sdk/V8;)V

    invoke-static {v1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v1

    iput-object v1, v0, Lio/didomi/sdk/V8;->s:Lkotlin/i;

    new-instance v1, Lio/didomi/sdk/V8$b;

    invoke-direct {v1, v0}, Lio/didomi/sdk/V8$b;-><init>(Lio/didomi/sdk/V8;)V

    invoke-static {v1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v1

    iput-object v1, v0, Lio/didomi/sdk/V8;->t:Lkotlin/i;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V8;->z()V

    return-void
.end method

.method private final A()V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/V8;->b:Lio/didomi/sdk/v3;

    invoke-virtual {p0}, Lio/didomi/sdk/V8;->v()I

    move-result v1

    invoke-virtual {p0}, Lio/didomi/sdk/V8;->b()I

    move-result v2

    invoke-virtual {p0}, Lio/didomi/sdk/V8;->c()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lio/didomi/sdk/v3;->a(III)V

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/V8;)Lio/didomi/sdk/H;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/V8;->a:Lio/didomi/sdk/H;

    return-object p0
.end method

.method private final a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/DataCategory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/V8;->t:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private final y()V
    .registers 6

    iget-object v0, p0, Lio/didomi/sdk/V8;->c:Lio/didomi/sdk/Z4;

    invoke-virtual {v0}, Lio/didomi/sdk/Z4;->c()Lio/didomi/sdk/Y4;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Lio/didomi/sdk/V8;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v4}, Lio/didomi/sdk/models/InternalPurpose;->getIabId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_18

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_32

    goto :goto_18

    :cond_32
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_36
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3a
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalPurpose;->getIabId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalPurpose;->isSpecialFeature()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-virtual {v0}, Lio/didomi/sdk/Y4;->d()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/didomi/sdk/A;

    goto :goto_6a

    :cond_60
    invoke-virtual {v0}, Lio/didomi/sdk/Y4;->c()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/didomi/sdk/A;

    :goto_6a
    if-eqz v3, :cond_3a

    invoke-static {v2, v3}, Lio/didomi/sdk/s0;->a(Lio/didomi/sdk/o0;Lio/didomi/sdk/A;)V

    goto :goto_3a

    :cond_70
    iget-object v1, p0, Lio/didomi/sdk/V8;->l:Ljava/util/Set;

    invoke-virtual {v0}, Lio/didomi/sdk/Y4;->b()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lio/didomi/sdk/s0;->a(Ljava/util/Set;Ljava/util/Map;)V

    iget-object v1, p0, Lio/didomi/sdk/V8;->m:Ljava/util/Set;

    invoke-virtual {v0}, Lio/didomi/sdk/Y4;->e()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lio/didomi/sdk/s0;->a(Ljava/util/Set;Ljava/util/Map;)V

    invoke-direct {p0}, Lio/didomi/sdk/V8;->a()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0}, Lio/didomi/sdk/Y4;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lio/didomi/sdk/s0;->a(Ljava/util/Set;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lio/didomi/sdk/models/DataCategory;
    .registers 5

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/didomi/sdk/V8;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/didomi/sdk/models/DataCategory;

    invoke-virtual {v2}, Lio/didomi/sdk/models/DataCategory;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    check-cast v1, Lio/didomi/sdk/models/DataCategory;

    return-object v1
.end method

.method public final a(Lio/didomi/sdk/models/InternalVendor;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/models/InternalVendor;",
            ")",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/DataCategory;",
            ">;"
        }
    .end annotation

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/didomi/sdk/V8;->a()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/didomi/sdk/models/DataCategory;

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getDataDeclaration()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v3}, Lio/didomi/sdk/models/DataCategory;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_34
    new-instance p1, Lio/didomi/sdk/V8$c;

    invoke-direct {p1}, Lio/didomi/sdk/V8$c;-><init>()V

    invoke-static {v1, p1}, Lkotlin/collections/p;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    const-string v0, "purposeIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lio/didomi/sdk/V8;->c(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_24
    invoke-static {v0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final b()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/V8;->r:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Lio/didomi/sdk/models/Feature;
    .registers 5

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/V8;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/didomi/sdk/models/Feature;

    invoke-virtual {v2}, Lio/didomi/sdk/models/Feature;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    check-cast v1, Lio/didomi/sdk/models/Feature;

    return-object v1
.end method

.method public final b(Lio/didomi/sdk/models/InternalVendor;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/models/InternalVendor;",
            ")",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getEssentialPurposeIds()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lio/didomi/sdk/V8;->c(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_28
    invoke-static {v0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation

    const-string v0, "vendorIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lio/didomi/sdk/V8;->g(Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_24
    invoke-static {v0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final c()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/V8;->s:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;
    .registers 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/V8;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/models/InternalPurpose;

    return-object p1
.end method

.method public final c(Lio/didomi/sdk/models/InternalVendor;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/models/InternalVendor;",
            ")",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/o0;",
            ">;"
        }
    .end annotation

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getFeatureIds()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lio/didomi/sdk/V8;->b(Ljava/lang/String;)Lio/didomi/sdk/models/Feature;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2d
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getSpecialFeatureIds()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3d
    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lio/didomi/sdk/V8;->e(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v3

    if-eqz v3, :cond_3d

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_53
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getSpecialPurposeIds()Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_63
    :goto_63
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lio/didomi/sdk/V8;->f(Ljava/lang/String;)Lio/didomi/sdk/models/SpecialPurpose;

    move-result-object v2

    if-eqz v2, :cond_63

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_63

    :cond_79
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final c(Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;)V"
        }
    .end annotation

    const-string v0, "essentialPurposes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalPurpose;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/models/InternalPurpose;->setEssential(Z)V

    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/V8;->j:Ljava/util/Set;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalVendor;->getPurposeIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalVendor;->getLegIntPurposeIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v3, :cond_43

    if-eqz v4, :cond_23

    :cond_43
    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalVendor;->getEssentialPurposeIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_4b
    return-void
.end method

.method public final d(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;
    .registers 6

    const-string v0, "iabId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/V8;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v3}, Lio/didomi/sdk/models/InternalPurpose;->isSpecialFeature()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_2b
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalPurpose;->getIabId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_48

    :cond_47
    const/4 v1, 0x0

    :goto_48
    check-cast v1, Lio/didomi/sdk/models/InternalPurpose;

    return-object v1
.end method

.method public final d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/k4;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/V8;->i:Ljava/util/List;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;
    .registers 6

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/V8;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalPurpose;->isSpecialFeature()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalPurpose;->getIabId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    check-cast v1, Lio/didomi/sdk/models/InternalPurpose;

    return-object v1
.end method

.method public final e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/V8;->o:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)Lio/didomi/sdk/models/SpecialPurpose;
    .registers 5

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/V8;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/didomi/sdk/models/SpecialPurpose;

    invoke-virtual {v2}, Lio/didomi/sdk/models/SpecialPurpose;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    check-cast v1, Lio/didomi/sdk/models/SpecialPurpose;

    return-object v1
.end method

.method public final f()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/V8;->d:Ljava/util/Map;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;
    .registers 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/V8;->g:Ljava/util/Map;

    invoke-static {v0, p1}, Lio/didomi/sdk/q3;->b(Ljava/util/Map;Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;

    move-result-object p1

    return-object p1
.end method

.method public final g()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/o0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/V8;->m:Ljava/util/Set;

    iget-object v1, p0, Lio/didomi/sdk/V8;->l:Ljava/util/Set;

    invoke-static {v0, v1}, Lkotlin/collections/h0;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lio/didomi/sdk/r5;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/V8;->p:Lio/didomi/sdk/r5;

    return-object v0
.end method

.method public final i()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/V8;->k:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_25
    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/V8;->n()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_27
    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/V8;->k:Ljava/util/Set;

    return-object v0
.end method

.method public final l()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/V8;->k:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v3}, Lio/didomi/sdk/models/InternalPurpose;->isConsentNotEssential()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_22
    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/V8;->l()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_27
    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final n()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/V8;->k:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v3}, Lio/didomi/sdk/models/InternalPurpose;->isLegitimateInterestNotEssential()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_22
    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final o()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/V8;->r()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_27
    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final p()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/V8;->t()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_27
    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final q()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/V8;->j:Ljava/util/Set;

    return-object v0
.end method

.method public final r()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/V8;->j:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {v3}, Lio/didomi/sdk/models/InternalVendor;->getPurposeIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_26
    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final s()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/V8;->j:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_25
    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final t()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/V8;->j:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {v3}, Lio/didomi/sdk/models/InternalVendor;->getLegIntPurposeIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_26
    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/V8;->n:Ljava/util/List;

    return-object v0
.end method

.method public final v()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/V8;->q:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final w()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/V8;->j:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/didomi/sdk/models/InternalVendor;

    invoke-static {v3}, Lio/didomi/sdk/q3;->b(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_22
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_45
    invoke-static {v0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final x()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/V8;->j:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/didomi/sdk/models/InternalVendor;

    invoke-static {v3}, Lio/didomi/sdk/q3;->c(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_22
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_45
    invoke-static {v0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final z()V
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/V8;->a:Lio/didomi/sdk/H;

    invoke-virtual {v0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/CustomPurpose;

    invoke-virtual {v1}, Lio/didomi/sdk/CustomPurpose;->component1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lio/didomi/sdk/CustomPurpose;->component2()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1}, Lio/didomi/sdk/CustomPurpose;->component3()Ljava/util/Map;

    move-result-object v1

    iget-object v4, p0, Lio/didomi/sdk/V8;->d:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalPurpose;

    if-eqz v2, :cond_12

    iget-object v4, p0, Lio/didomi/sdk/V8;->b:Lio/didomi/sdk/v3;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v4, v3, v5, v6, v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/util/Map;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/didomi/sdk/models/InternalPurpose;->setName(Ljava/lang/String;)V

    iget-object v3, p0, Lio/didomi/sdk/V8;->b:Lio/didomi/sdk/v3;

    invoke-static {v3, v1, v5, v6, v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/util/Map;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/didomi/sdk/models/InternalPurpose;->setDescription(Ljava/lang/String;)V

    goto :goto_12

    :cond_49
    invoke-direct {p0}, Lio/didomi/sdk/V8;->y()V

    invoke-direct {p0}, Lio/didomi/sdk/V8;->A()V

    return-void
.end method
